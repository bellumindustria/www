<?php

namespace App\Multigaming\Outputters;

use CVEPDB\Services\Outputters\AbsLaravelOutputter;
use CVEPDB\Requests\IFormRequest;
use App\Multigaming\Outputters\SitemapFormats\TeamFormat as TeamSitemapFormat;
use App\Multigaming\Outputters\SitemapFormats\CocFormat as CocSitemapFormat;
use App\Multigaming\Outputters\FeedsFormats\TeamFormat as TeamFeedsFormat;
use App\Multigaming\Repositories\TeamRepository;
use App\Multigaming\Repositories\UserRepository;

use ToniPeric\Clash\Clan as COCClan;
use ToniPeric\Clash\Member as COCMember;
use ToniPeric\Clash\Members as COCMembers;
use ToniPeric\Clash\Http\Client as COCClient;

class TeamOutputter extends AbsLaravelOutputter
{
    /**
     * @var TeamRepository|null
     */
    protected $teams = null;

    /**
     * @var UserRepository|null
     */
    protected $users = null;

    protected $groups_restrictions = ['admin', 'gamer-admin'];

    public function __construct(TeamRepository $r_team, UserRepository $r_user)
    {
        parent::__construct();

        $this->teams = $r_team;
        $this->users = $r_user;

        $this->addBreadcrumb('Home', '/');
        $this->setBreadcrumbDivider('<i class="icon-right-dir"></i>');
    }

    /**
     * @param $data
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $this->addBreadcrumb('Teams', 'teams');
        return $this->output(
            'cvepdb.multigaming.teams.index',
            [
                'teams' => $this->teams->paginate(5)
            ]
        );
    }

    /**
     * @param $data
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function show($id)
    {
        if (!$id || !is_numeric($id)) {
            $this->redirectTeamIndexWithErrorNoTeamId();
        }

        $team = $this->teams->find($id);

        // Todo : check si l'objet n'est pas vide en terme de donnee
//        if (!$team) {
//            $this->Outputter->redirectTeamIndexWithErrorTeamNotExists();
//        }

        $this->addBreadcrumb('Teams', 'teams');
        $this->addBreadcrumb($team->name, 'teams/' . $id);

        return $this->output(
            'cvepdb.multigaming.teams.show',
            [
                'team' => $team,
                'users' => $this->users->dropdown()
            ]
        );
    }

    public function store(IFormRequest $request)
    {
        if (!\Auth::check()) {
            $this->redirectTeamRecordWithErrorAuth();
        }

        $this->teams->create([
            'name' => $request->get('name')
        ]);
        return $this->redirectTeamRecordWithSuccess();
    }

    public function update($id, IFormRequest $request)
    {
        if (!\Auth::check()) {
            $this->redirectTeamUpdateWithErrorAuth();
        }

        if (!$id || !is_numeric($id)) {
            $this->redirectTeamUpdateWithErrorNoTeamId();
        }

        $team = $this->teams->find($id);

        // Todo : check si l'objet n'est pas vide en terme de donnee
//        if (!$team) {
//            $this->Outputter->redirectTeamUpdateWithErrorTeamNotExists();
//        }

        $this->teams->update($team, [
            'name' => $request->get('name')
        ]);


        $users = $request->only('members');

        if (count($users['members']) > 0) {

            $team->users()->detach();

            foreach ($users as $user_id) {
                $team->users()->attach($user_id);
            }
        }

        return $this->redirectTeamUpdateWithSuccess();
    }

    public function delete($id)
    {
        if (!\Auth::check()) {
            $this->redirectTeamDeleteWithErrorAuth();
        }

        $this->teams->deleteById($id);

        return $this->redirectTeamDeleteWithSuccess();
    }

    /**
     * @param $teams
     * @return mixed
     */
    public function sitemap()
    {
        $teams = $this->teams->all();

        return $this->generateSitemap(
            new TeamSitemapFormat,
            $teams->toArray(),
            'teams/',
            'sitemap-multigaming-teams-',
            'sitemap-multigaming-teams'
        );
    }

    /**
     * @param $teams
     * @return mixed
     */
    public function sitemapcoc()
    {
        $coc_clan = COCClient::getClanDetails('#PY2UJ8C0');

        return $this->generateSitemap(
            new CocSitemapFormat,
            [
                [
                    'tag' => urlencode($coc_clan->tag()),
                    'name' => $coc_clan->name()
                ]
            ],
            'https://set7z18fgf.execute-api.us-east-1.amazonaws.com/prod/?route=getClanDetails&clanTag=',
            'sitemap-multigaming-coc-',
            'sitemap-multigaming-coc'
        );
    }

    /**
     * @param $teams
     * @return mixed
     */
    public function feeds()
    {
        $teams = $this->teams->all();
        return $this->generateFeeds(
            new TeamFeedsFormat,
            $teams->toArray(),
            'multigaming/teams/',
            'sitemap-multigaming-teams'
        );
    }

    /**
     * @return mixed
     */
    public function redirectTeamIndexWithErrorNoTeamId()
    {
        return $this->routeTo('teams.index')
            ->with('message', 'You must specify a team id to use this functionality!')
            ->with('alert-class', 'warning-box');
    }

    /**
     * @return mixed
     */
    public function redirectTeamIndexWithErrorTeamNotExists()
    {
        return $this->routeTo('teams.index')
            ->with('message', 'The team was not deleted because no team exists!')
            ->with('alert-class', 'warning-box');
    }

    /**
     * @return mixed
     */
    public function redirectTeamRecordWithSuccess()
    {
        return $this->routeTo('teams.index')
            ->with('message', 'The team was successfully added!')
            ->with('alert-class', 'download-box');
    }

    /**
     * @return mixed
     */
    public function redirectTeamRecordWithErrorAuth()
    {
        return $this->routeTo('teams.index')
            ->with('message', 'You must be authentificated to use this functionality!')
            ->with('alert-class', 'warning-box');
    }

    /**
     * @return mixed
     */
    public function redirectTeamUpdateWithSuccess()
    {
        return $this->routeTo('teams.index')
            ->with('message', 'The team was successfully edited!')
            ->with('alert-class', 'download-box');
    }

    /**
     * @return mixed
     */
    public function redirectTeamUpdateWithErrorNoTeamId()
    {
        return $this->routeTo('teams.index')
            ->with('message', 'You must specify a team id to use this functionality!')
            ->with('alert-class', 'warning-box');
    }

    /**
     * @return mixed
     */
    public function redirectTeamUpdateWithErrorTeamNotExists()
    {
        return $this->routeTo('teams.index')
            ->with('message', 'The team was not deleted because no team exists!')
            ->with('alert-class', 'warning-box');
    }

    /**
     * @return mixed
     */
    public function redirectTeamUpdateWithErrorAuth()
    {
        return $this->routeTo('teams.index')
            ->with('message', 'You must be authentificated to use this functionality!')
            ->with('alert-class', 'warning-box');
    }

    /**
     * @return mixed
     */
    public function redirectTeamDeleteWithSuccess()
    {
        return $this->routeTo('teams.index')
            ->with('message', 'The team was successfully removed!')
            ->with('alert-class', 'download-box');
    }

    /**
     * @return mixed
     */
    public function redirectTeamDeleteWithErrorAuth()
    {
        return $this->routeTo('teams.index')
            ->with('message', 'You must be authentificated to use this functionality!')
            ->with('alert-class', 'warning-box');
    }
}
<?php

namespace App\Admin\Outputters;

use CVEPDB\Outputters\AbsLaravelOutputter;
use CVEPDB\Requests\Request;
use CVEPDB\Repositories\Users\UserRepositoryEloquent;

class UserOutputter extends AbsLaravelOutputter
{
    /**
     * @var null UserRepositoryEloquent
     */
    private $r_user = null;

    public function __construct(UserRepositoryEloquent $r_user)
    {
        parent::__construct();

        $this->r_user = $r_user;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $users = $this->r_user->paginate(null, ['*']);

        return $this->output(
            'cvepdb.admin.users.index',
            [
                'users' => $users
            ]
        );
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return $this->output(
            'cvepdb.admin.users.create',
            []
        );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     *
     * @return Response
     */
    public function store(IFormRequest $request)
    {
        $this->r_user->create_user(
            $request->get('first_name'),
            $request->get('last_name'),
            $request->get('email')
        );
        return redirect('admin/users');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id, IFormRequest $request)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {
        return 'T\'es pas fou! On supprime pas les utilisateurs!';
    }

    public function createClient($id)
    {
        $contact = $this->r_LogContact->get($id);

        return $this->output(
            'cvepdb.admin.contacts.create_client',
            [
                'contact' => $contact
            ]
        );
    }
}
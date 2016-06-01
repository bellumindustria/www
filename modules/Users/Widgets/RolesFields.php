<?php namespace Modules\Users\Widgets;

use Core\Domain\Environments\Facades\EnvironmentFacade;
use Core\Domain\Environments\Repositories\EnvironmentRepositoryEloquent;
use Core\Domain\Roles\Repositories\PermissionRepositoryEloquent;
use Illuminate\Support\Facades\Auth;
use Widget;
use CVEPDB\Contracts\Widgets;
use Core\Domain\Settings\Repositories\SettingsRepository;
use Modules\Users\Repositories\RoleRepositoryEloquent;

class RolesFields implements Widgets
{

	/**
	 * @var string Widget title
	 */
	protected $title = 'Roles field';

	/**
	 * @var string Widget description
	 */
	protected $description = 'Display roles input field';

	/**
	 * @var string View namespace ('dashboard::'|null)
	 */
	protected $view_prefix = 'users::';

	/**
	 * @var string
	 */
	protected $module = 'users::';

	/**
	 * @var SettingsRepository|null
	 */
	private $r_settings = null;

	/**
	 * @var RoleRepositoryEloquent|null
	 */
	private $r_role = null;

	public function __construct(SettingsRepository $r_settings, RoleRepositoryEloquent $r_role)
	{
		$this->r_settings = $r_settings;
		$this->r_role = $r_role;
	}

	public function setTitle($title)
	{
		$this->title = $title;
	}

	public function getTitlte()
	{
		return $this->title;
	}

	public function setDescription($description)
	{
		$this->description = $description;
	}

	public function getDescription()
	{
		return $this->description;
	}

	public function setModuleName($module_name)
	{
		$this->module = $module_name . '::';
	}

	public function getModuleName()
	{
		return $this->module;
	}

	public function output($view, $data = [])
	{
		return cmsview($view, $data, $this->view_prefix, $this->module);
	}

	public function widgetInformation()
	{
		return [
			'title'       => $this->getTitlte(),
			'description' => $this->getDescription(),
		];
	}

	public function register($name = 'roles[]', $attributes = [])
	{
		$user_can_see_environment = cmsuser_can_see_env();

		if (!$user_can_see_environment)
		{
			$this->r_role->filterEnvironments([EnvironmentFacade::currentId()]);
		}
		$roles = $this->r_role->all(['roles.display_name', 'roles.id']);

		$roles_list = [];
		foreach ($roles as $role)
		{
			$roles_list[$role->id] = trans($role->display_name);
		}

		return $this->output(
			'users.widgets.rolesfields',
			[
				'roles'       => $roles_list,
				'name'        => $name,
				'value'       => array_key_exists('value', $attributes) ? $attributes['value'] : '',
				'old_value'   => preg_replace("/[^A-Za-z0-9 ]/", '', $name),
				'placeholder' => array_key_exists('placeholder', $attributes) ? trans($attributes['placeholder']) : '',
				'class'       => array_key_exists('class', $attributes) ? $attributes['class'] : ''
			]
		);
	}
}

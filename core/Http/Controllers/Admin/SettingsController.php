<?php namespace Core\Http\Controllers\Admin;

use Core\Http\Controllers\CoreAdminController;
use Core\Http\Outputters\Admin\SettingsOutputter;
use Core\Http\Requests\Admin\SettingsGetFormRequest;
use Core\Http\Requests\Admin\SettingsSetFormRequest;
use Core\Http\Requests\Admin\SettingsStoreFormRequest;

/**
 * Class SettingsController
 * @package Core\Http\Controllers\Admin
 */
class SettingsController extends CoreAdminController
{
    /**
     * @var SettingsOutputter|null
     */
    protected $outputter = null;

    public function __construct(SettingsOutputter $outputter)
    {
        $this->outputter = $outputter;
    }

    /**
     * @return mixed
     */
    public function index()
    {
        return $this->outputter->index();
    }

    /**
     * @return mixed
     */
    public function store(SettingsStoreFormRequest $request)
    {
        return $this->outputter->store($request);
    }

    /**
     * Ajax method to get settings
     *
     * @param SettingsGetFormRequest $request
     * @return array
     */
    public function get(SettingsGetFormRequest $request)
    {
        return $this->outputter->get($request);
    }

    /**
     * Ajax method to set settings
     *
     * @param SettingsSetFormRequest $request
     * @return array
     */
    public function set(SettingsSetFormRequest $request)
    {
        return $this->outputter->set($request);
    }
}

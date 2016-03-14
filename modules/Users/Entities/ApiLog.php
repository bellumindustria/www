<?php namespace Modules\Users\Entities;

use Chrisbjr\ApiGuard\Models\ApiLog as ApiLogApiGuard;
use Prettus\Repository\Contracts\Transformable;
use Prettus\Repository\Traits\TransformableTrait;

class ApiLog extends ApiLogApiGuard implements Transformable
{
    use TransformableTrait;

    protected $fillable = [];

    /**
     * The apikeys that belong to the user.
     */
    public function apikey()
    {
        return $this->hasOne('Modules\Entities\Users\ApiKey', 'api_key_id');
    }
}

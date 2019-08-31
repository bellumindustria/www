<?php namespace obsession\Domain\Users\Profiles;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\MediaLibrary\
{
    HasMedia\HasMedia,
    HasMedia\HasMediaTrait
};
use obsession\Infrastructure\
{
    Interfaces\Domain\Users\Profiles\ProfileFamiliesSituationsInterface,
    Contracts\Model\ModelAbstract,
    Contracts\Model\TimeStampsTz,
    Contracts\Model\SoftDeletesTz
};
use obsession\Domain\Users\
{
    Users\User
};

class Profile extends ModelAbstract implements ProfileFamiliesSituationsInterface, HasMedia
{

    use HasMediaTrait;
    use SoftDeletes;
    use TimeStampsTz;
    use SoftDeletesTz;

    /**
     * @var string
     */
    protected $table = 'users_profiles';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id',
        'birth_date',
        'family_situation',
        'maiden_name',
    ];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = [
        'deleted_at',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
    ];

    /**
     * Date mutator to obtain a variable "birth_date_carbon".
     *
     * @return Carbon
     * @throws \Exception
     */
    public function getBirthDateCarbonAttribute(): ?Carbon
    {
        return is_null($this->birth_date)
            ? null
            : new Carbon($this->birth_date);
    }

    /**
     * Get the user record associated with the trainer profile.
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}

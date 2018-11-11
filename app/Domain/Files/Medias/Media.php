<?php namespace bellumindustria\Domain\Files\Medias;

use Spatie\MediaLibrary\Media as SpatieMedia;
use Illuminate\Database\Eloquent\SoftDeletes;

class Media extends SpatieMedia
{

	use SoftDeletes;

	protected $table = 'medias';

	/**
	 * The attributes that should be mutated to dates.
	 *
	 * @var array
	 */
	protected $dates = [
		'deleted_at'
	];
}
<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
		Schema::create('posts', function (Blueprint $table) {
			$table->increments('id');
			$table->string('uniqid', 13)->unique()->index();
			$table->unsignedInteger('category_id')->index();
			$table->string('title', 100);
			$table->string('slug', 100)->unique()->index();
			$table->string('image_path');
			$table->text('synopsis');
			$table->longText('article');
			$table->timestampsTz();
			$table->softDeletesTz();
			$table
				->foreign('category_id')
				->references('id')
				->on('posts_categories')
				->onUpdate('no action')
				->onDelete('no action');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::dropIfExists('posts');
    }
}

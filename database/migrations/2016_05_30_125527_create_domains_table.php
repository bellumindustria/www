<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDomainsTable extends Migration
{

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('domains', function (Blueprint $table)
		{
			$table->increments('id');

			$table
				->string('name')
				->index();

			$table
				->string('reference')
				->index()
				->unique('reference');

			$table
				->string('domain')
				->index()
				->unique('domain');

			$table->timestamps();

			$table->softDeletes();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('domains');
	}
}
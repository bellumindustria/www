<?php

return [

	/*
	|--------------------------------------------------------------------------
	| PDO Fetch Style
	|--------------------------------------------------------------------------
	|
	| By default, database results will be returned as instances of the PHP
	| stdClass object; however, you may desire to retrieve records in an
	| array format for simplicity. Here you can tweak the fetch style.
	|
	*/

	'fetch' => PDO::FETCH_CLASS,

	/*
	|--------------------------------------------------------------------------
	| Default Database Connection Name
	|--------------------------------------------------------------------------
	|
	| Here you may specify which of the database connections below you wish
	| to use as your default connection for all database work. Of course
	| you may use many connections at once using the Database library.
	|
	*/

	'default' => env('CORE_DB_CONNECTION', 'mysql'),

	/*
	|--------------------------------------------------------------------------
	| Database Connections
	|--------------------------------------------------------------------------
	|
	| Here are each of the database connections setup for your application.
	| Of course, examples of configuring each database platform that is
	| supported by Laravel is shown below to make development simple.
	|
	|
	| All database work in Laravel is done through the PHP PDO facilities
	| so make sure you have the driver for your particular database of
	| choice installed on your machine before you begin development.
	|
	*/

	'connections' => [

		'mysql' => [
			'driver'                        => 'mysql',
			'host'                          => env('CORE_DB_HOST', '127.0.0.1'),
			'database'                      => env('CORE_DB_DATABASE', 'forge'),
			'username'                      => env('CORE_DB_USERNAME', 'forge'),
			'password'                      => env('CORE_DB_PASSWORD', ''),
			'charset'                       => 'utf8',
			'collation'                     => 'utf8_unicode_ci',
			'prefix'                        => '',
			'strict'                        => false,
			'engine'                        => null,
			'unix_socket'                   => env('CORE_DB_SOCKET', ''),
			// laravel-backups
			'dump_command_path'             => env('CORE_DB_COMMAND_PATH', '/usr/bin'), // only the path, so without 'mysqldump' or 'pg_dump'
			'dump_command_timeout'          => 60 * 5, // 5 minute timeout
			'dump_using_single_transaction' => true, // perform dump using a single transaction
		],

		'testing' => [
			'driver'      => 'mysql',
			'host'        => env('CORE_DB_HOST', '127.0.0.1'),
			'database'    => env('CORE_DB_DATABASE', 'cvepdb_cms_testing'),
			'username'    => env('CORE_DB_USERNAME', 'cvepdb_testing'),
			'password'    => env('CORE_DB_PASSWORD', ''),
			'charset'     => 'utf8',
			'collation'   => 'utf8_unicode_ci',
			'prefix'      => '',
			'strict'      => false,
			'engine'      => null,
			'unix_socket' => env('CORE_DB_SOCKET', ''),
		],

		'mysql_multigaming' => [
			'driver'                        => 'mysql',
			'host'                          => env('CVEPDB_MMG_DB_HOST', '127.0.0.1'),
			'database'                      => env('CVEPDB_MMG_DB_DATABASE', 'forge'),
			'username'                      => env('CVEPDB_MMG_DB_USERNAME', 'forge'),
			'password'                      => env('CVEPDB_MMG_DB_PASSWORD', ''),
			'charset'                       => 'utf8',
			'collation'                     => 'utf8_unicode_ci',
			'prefix'                        => '',
			'strict'                        => false,
			'engine'                        => null,
			'unix_socket'                   => env('CVEPDB_MMG_DB_UNIX_SOCKET_MMG', ''),
			// laravel-backups
			'dump_command_path'             => env('CORE_DB_COMMAND_PATH', '/usr/bin'), // only the path, so without 'mysqldump' or 'pg_dump'
			'dump_command_timeout'          => 60 * 5, // 5 minute timeout
			'dump_using_single_transaction' => true, // perform dump using a single transaction
		],

		'testing_multigaming' => [
			'driver'      => 'mysql',
			'host'        => env('CVEPDB_MMG_DB_HOST', '127.0.0.1'),
			'database'    => env('CVEPDB_MMG_DB_DATABASE', 'cvepdb_smwa_testing'),
			'username'    => env('CVEPDB_MMG_DB_USERNAME', 'cvepdb_testing'),
			'password'    => env('CVEPDB_MMG_DB_PASSWORD', ''),
			'charset'     => 'utf8',
			'collation'   => 'utf8_unicode_ci',
			'prefix'      => '',
			'strict'      => false,
			'engine'      => null,
			'unix_socket' => env('CVEPDB_MMG_DB_UNIX_SOCKET_MMG', ''),
		],

		'pgsql' => [
			'driver'   => 'pgsql',
			'host'     => env('CORE_DB_HOST', '127.0.0.1'),
			'database' => env('CORE_DB_DATABASE', 'forge'),
			'username' => env('CORE_DB_USERNAME', 'forge'),
			'password' => env('CORE_DB_PASSWORD', ''),
			'charset'  => 'utf8',
			'prefix'   => '',
			'schema'   => 'public',
			// laravel-backups
			'dump_command_path'             => env('CORE_DB_COMMAND_PATH', '/usr/bin'), // only the path, so without 'mysqldump' or 'pg_dump'
			'dump_command_timeout'          => 60 * 5, // 5 minute timeout
			'dump_using_single_transaction' => true, // perform dump using a single transaction
		],

	],

	/*
	|--------------------------------------------------------------------------
	| Migration Repository Table
	|--------------------------------------------------------------------------
	|
	| This table keeps track of all the migrations that have already run for
	| your application. Using this information, we can determine which of
	| the migrations on disk haven't actually been run in the database.
	|
	*/

	'migrations' => 'migrations',

	/*
	|--------------------------------------------------------------------------
	| Redis Databases
	|--------------------------------------------------------------------------
	|
	| Redis is an open source, fast, and advanced key-value store that also
	| provides a richer set of commands than a typical key-value systems
	| such as APC or Memcached. Laravel makes it easy to dig right in.
	|
	*/

	'redis' => [

		'cluster' => false,

		'default' => [
			'host'     => env('CORE_REDIS_HOST', 'localhost'),
			'password' => env('CORE_REDIS_PASSWORD', null),
			'port'     => env('CORE_REDIS_PORT', 6379),
			'database' => 0,
		],

	],

];

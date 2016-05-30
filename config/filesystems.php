<?php

return [

<<<<<<< HEAD
    /*
    |--------------------------------------------------------------------------
    | Default Filesystem Disk
    |--------------------------------------------------------------------------
    |
    | Here you may specify the default filesystem disk that should be used
    | by the framework. A "local" driver, as well as a variety of cloud
    | based drivers are available for your choosing. Just store away!
    |
    | Supported: "local", "ftp", "s3", "rackspace"
    |
    */

    'default' => 'local',

    /*
    |--------------------------------------------------------------------------
    | Default Cloud Filesystem Disk
    |--------------------------------------------------------------------------
    |
    | Many applications store files both locally and in the cloud. For this
    | reason, you may specify a default "cloud" driver here. This driver
    | will be bound as the Cloud disk implementation in the container.
    |
    */

    'cloud' => 's3',

    /*
    |--------------------------------------------------------------------------
    | Filesystem Disks
    |--------------------------------------------------------------------------
    |
    | Here you may configure as many filesystem "disks" as you wish, and you
    | may even configure multiple disks of the same driver. Defaults have
    | been setup for each driver as an example of the required options.
    |
    */

    'disks' => [

        'local' => [
            'driver' => 'local',
            'root'   => storage_path('app'),
        ],

        'ftp' => [
            'driver'   => 'ftp',
            'host'     => 'ftp.example.com',
            'username' => 'your-username',
            'password' => 'your-password',

            // Optional FTP Settings...
            // 'port'     => 21,
            // 'root'     => '',
            // 'passive'  => true,
            // 'ssl'      => true,
            // 'timeout'  => 30,
        ],

        's3' => [
            'driver' => 's3',
            'key'    => env('AWSS3_KEY'),
            'secret' => env('AWSS3_SECRET'),
            'region' => env('AWSS3_REGION'),
            'bucket' => env('AWSS3_BUCKET')
        ],

    ],

=======
	/*
	|--------------------------------------------------------------------------
	| Default Filesystem Disk
	|--------------------------------------------------------------------------
	|
	| Here you may specify the default filesystem disk that should be used
	| by the framework. A "local" driver, as well as a variety of cloud
	| based drivers are available for your choosing. Just store away!
	|
	| Supported: "local", "ftp", "s3", "rackspace"
	|
	*/

	'default' => 'uploads',

	/*
	|--------------------------------------------------------------------------
	| Default Cloud Filesystem Disk
	|--------------------------------------------------------------------------
	|
	| Many applications store files both locally and in the cloud. For this
	| reason, you may specify a default "cloud" driver here. This driver
	| will be bound as the Cloud disk implementation in the container.
	|
	*/

	'cloud' => 's3',

	/*
	|--------------------------------------------------------------------------
	| Filesystem Disks
	|--------------------------------------------------------------------------
	|
	| Here you may configure as many filesystem "disks" as you wish, and you
	| may even configure multiple disks of the same driver. Defaults have
	| been setup for each driver as an example of the required options.
	|
	*/

	'disks' => [

		'uploads' => [
			'driver'     => 'local',
			'root'       => public_path('uploads'),
			'visibility' => 'public',
		],

		'backups' => [
			'driver' => 'local',
			'root'   => storage_path('app/backups'),
		],

		'dropbox' => [
			'driver'      => 'dropbox',
			'appSecret'   => env('DROPBOX_SECRET'),
			'accessToken' => env('DROPBOX_KEY'),
		],

		's3' => [
			'driver'     => 's3',
			'key'        => env('AWSS3_KEY'),
			'secret'     => env('AWSS3_SECRET'),
			'region'     => env('AWSS3_REGION'),
			'bucket'     => env('AWSS3_BUCKET'),
			'version'    => 'latest',
			'visibility' => 'public',
			'ACL'        => 'public-read',
		],

	],
>>>>>>> e3011fbb5aedfa377b00e2740ac2dca3d5e31406
];

<?php

/*
|--------------------------------------------------------------------------
| Create The Application
|--------------------------------------------------------------------------
|
| The first thing we will do is create a new Laravel application instance
| which serves as the "glue" for all the components of Laravel, and is
| the IoC container for the system binding all of the various parts.
|
*/

<<<<<<< HEAD
$app = new Illuminate\Foundation\Application(
    realpath(__DIR__.'/../')
);
=======
$app = new Illuminate\Foundation\Application(realpath(__DIR__ . '/../'));
>>>>>>> e3011fbb5aedfa377b00e2740ac2dca3d5e31406

/*
|--------------------------------------------------------------------------
| Bind Important Interfaces
|--------------------------------------------------------------------------
|
| Next, we need to bind some important interfaces into the container so
| we will be able to resolve them when needed. The kernels serve the
| incoming requests to this application from both the web and CLI.
|
*/

<<<<<<< HEAD
$app->singleton(
    Illuminate\Contracts\Http\Kernel::class,
    App\Http\Kernel::class
);

$app->singleton(
    Illuminate\Contracts\Console\Kernel::class,
    App\Console\Kernel::class
);

$app->singleton(
    Illuminate\Contracts\Debug\ExceptionHandler::class,
    App\Exceptions\Handler::class
);
=======
$app->singleton(Illuminate\Contracts\Http\Kernel::class, Core\Http\Kernel::class);
$app->singleton(Illuminate\Contracts\Console\Kernel::class, Core\Console\Kernel::class);
$app->singleton(Illuminate\Contracts\Debug\ExceptionHandler::class, Core\Exceptions\Handler::class);

/*
|--------------------------------------------------------------------------
| Detect The Application Environment
|--------------------------------------------------------------------------
|
| Laravel takes a dead simple approach to your application environments
| so you can just specify a machine name for the host that matches a
| given environment, then we will automatically detect it for you.
|
*/

$env = $app->detectEnvironment(function ()
{

	$environmentPath = __DIR__ . '/../.env';

	if (file_exists($environmentPath))
	{
		$setEnv = trim(file_get_contents($environmentPath));
	}
	else
	{
		$setEnv = 'installer';
	}

	putenv('CORE_ENV=' . $setEnv);

	$dotenv = new \Dotenv\Dotenv(__DIR__ . '/../', '.env' . '.' . getenv('CORE_ENV')); // Laravel 5.2
	$dotenv->overload(); //this is important
});
>>>>>>> e3011fbb5aedfa377b00e2740ac2dca3d5e31406

/*
|--------------------------------------------------------------------------
| Return The Application
|--------------------------------------------------------------------------
|
| This script returns the application instance. The instance is given to
| the calling script so we can separate the building of the instances
| from the actual running of the application and sending responses.
|
*/

return $app;

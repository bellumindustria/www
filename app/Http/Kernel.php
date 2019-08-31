<?php

namespace obsession\Http;

use Illuminate\Foundation\Http\Kernel as HttpKernel;
use obsession\Infrastructure\Interfaces\Domain\Users\Users\UserRolesInterface;

class Kernel extends HttpKernel
{

    /**
     * The application's global HTTP middleware stack.
     *
     * These middleware are run during every request to your application.
     *
     * @var array
     */
    protected $middleware = [
        \Illuminate\Foundation\Http\Middleware\CheckForMaintenanceMode::class,
        \Illuminate\Foundation\Http\Middleware\ValidatePostSize::class,
        \obsession\Http\Middleware\TrimStrings::class,
        \Illuminate\Foundation\Http\Middleware\ConvertEmptyStringsToNull::class,
        \obsession\Http\Middleware\TrustProxies::class,
    ];

    /**
     * The application's route middleware groups.
     *
     * @var array
     */
    protected $middlewareGroups = [
        'web' => [
            \obsession\Http\Middleware\EncryptCookies::class,
            \Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse::class,
            \Illuminate\Session\Middleware\StartSession::class,
            // \Illuminate\Session\Middleware\AuthenticateSession::class,
            \Illuminate\View\Middleware\ShareErrorsFromSession::class,
            \obsession\Http\Middleware\VerifyCsrfToken::class,
            \Illuminate\Routing\Middleware\SubstituteBindings::class,
            \obsession\Http\Middleware\Locale::class,
            \obsession\Http\Middleware\TimeZones::class,
        ],
        'ajax' => [
            \obsession\Http\Middleware\EncryptCookies::class,
            \Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse::class,
            \Illuminate\Session\Middleware\StartSession::class,
            // \Illuminate\Session\Middleware\AuthenticateSession::class,
            \Illuminate\View\Middleware\ShareErrorsFromSession::class,
            \obsession\Http\Middleware\VerifyCsrfToken::class,
            \Illuminate\Routing\Middleware\SubstituteBindings::class,
            \obsession\Http\Middleware\AllowOnlyAjaxRequests::class,
            \obsession\Http\Middleware\Locale::class,
            \obsession\Http\Middleware\TimeZones::class,
        ],
        'api' => [
            'throttle:60,1',
            'bindings',
        ],
        UserRolesInterface::ROLE_ADMINISTRATOR => [
            'auth',
            'role:' => UserRolesInterface::ROLE_ADMINISTRATOR,
        ],
        UserRolesInterface::ROLE_CUSTOMER => [
            'auth',
            'role:' => UserRolesInterface::ROLE_CUSTOMER,
        ],
    ];

    /**
     * The application's route middleware.
     *
     * These middleware may be assigned to groups or used individually.
     *
     * @var array
     */
    protected $routeMiddleware = [
        'auth' => \Illuminate\Auth\Middleware\Authenticate::class,
        'auth.basic' => \Illuminate\Auth\Middleware\AuthenticateWithBasicAuth::class,
        'bindings' => \Illuminate\Routing\Middleware\SubstituteBindings::class,
        'can' => \Illuminate\Auth\Middleware\Authorize::class,
        'guest' => \obsession\Http\Middleware\RedirectIfAuthenticated::class,
        'throttle' => \Illuminate\Routing\Middleware\ThrottleRequests::class,
        'role' => \obsession\Http\Middleware\AuthenticatedUserHasRole::class,
    ];
}

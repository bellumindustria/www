<?php

return [
    'name' => 'Files',
    'admin' => [
        'sidebar' => [
            'shortcuts' => [
                'route' => null,
                'icon' => null,
            ],
            'menu' => [
                'route' => 'admin.files.index',
                'icon' => 'fa fa-folder'
            ],
            'settings' => [
                'route' => null,
                'icon' => null
            ]
        ],
        'settings' => [
            'icon' => 'fa fa-folder',
            'widgets' => [
                'setup_files'
            ]
        ]
    ]
];

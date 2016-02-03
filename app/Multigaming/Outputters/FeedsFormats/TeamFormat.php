<?php

namespace App\Multigaming\Outputters\FeedsFormats;

use CVEPDB\Services\Outputters\AbsOutputterFeedsFormat;

class TeamFormat extends AbsOutputterFeedsFormat
{
    public function __construct()
    {
        $this->header = [
            'title' => 'Feed title',
            'description' => 'Feed title',
            'logo_url' => 'Feed title',
            'site_url' => 'Feed title',
            'first_post' => date('Y/m/d'), // date du premier post
            'lang' => 'Feed title',
        ];
    }

    public function getTitle()
    {
        return 'name';
    }

    public function getAuthor()
    {
        return null;
    }

    public function getId()
    {
        return 'id';
    }

    public function getCreated()
    {
        return null;
    }

    public function getDescription()
    {
        return null;
    }

    public function getContent()
    {
        return null;
    }
}
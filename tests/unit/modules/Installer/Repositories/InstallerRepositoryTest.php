<?php namespace modules\Installer\Repositories;

/**
 * Class InstallerRepositoryTest
 * @package modules\Installer\Repositories
 *
 * @group installer
 */
class InstallerRepositoryTest extends \Codeception\TestCase\Test
{
    //protected $r_installer = null;

    /**
     * @var \UnitTester
     */
    protected $tester;

    protected function _before()
    {
    }

    protected function _after()
    {
    }

    protected function setUp(/*InstallerRepository $r_installer*/)
    {
//        $this->r_installer = $r_installer;
        parent::setUp();
    }

    // tests
    public function testMe()
    {
        $this->assertEquals(true, 1);
    }
}
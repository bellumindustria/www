<?php namespace abenevaut\Http\Controllers\Backend;

use abenevaut\Infrastructure\Contracts\Controllers\ControllerAbstract;
use abenevaut\Domain\Posts\PostsCategories\Repositories\PostsCategoriesRepositoryEloquent;

class PostsCategoriesController extends ControllerAbstract
{

	/**
	 * @var PostsCategoriesRepositoryEloquent|null
	 */
	protected $r_posts_categories = null;

	/**
	 * FilesController constructor.
	 *
	 * @param PostsCategoriesRepositoryEloquent $r_posts_categories
	 */
	public function __construct(PostsCategoriesRepositoryEloquent $r_posts_categories)
	{
		$this->r_posts_categories = $r_posts_categories;

		$this->before();
	}

	/**
	 * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
	 */
	public function index()
	{
		return $this->r_posts_categories->backendIndexView();
	}
}
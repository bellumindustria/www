<?php namespace cms\Vitrine\Repositories;

use SimplePie;

/**
 * Class RssRepository
 * @package cms\Vitrine\Repositories
 */
class RssRepository
{

	/**
	 * http://cavaencoreparlerdebits.fr/blog/rss/all.rss
	 *
	 * @return array|null
	 */
	public function get_cvepdb_blog_items()
	{
		$feed = new SimplePie();
		$feed->set_feed_url("http://cavaencoreparlerdebits.fr/blog/rss/all.rss");
		$feed->enable_cache(true);
		$feed->set_cache_location(storage_path('framework/cache'));
		$feed->set_cache_duration(60 * 60 * 12);
		$feed->set_output_encoding('utf-8');
		$feed->init();

		return $feed->get_items(0, 2);
	}

}
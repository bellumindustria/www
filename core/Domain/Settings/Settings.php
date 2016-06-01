<?php namespace Core\Domain\Settings;

use Illuminate\Database\DatabaseManager;
use Illuminate\Support\Facades\Config;
use CVEPDB\Settings\Settings as CVEPDBSettings;
use CVEPDB\Settings\Cache;

/**
 * Class Settings
 * @package CVEPDB\Settings
 */
class Settings extends CVEPDBSettings
{

	/**
	 * Gets a value
	 *
	 * @param  string $key
	 * @param  string $default
	 *
	 * @return mixed
	 */
	public function get($key, $default = null)
	{
		$value = $this->fetch($key);

		if (!is_null($value))
		{
			return $value;
		}
		else if ($default != null)
		{
			return $default;
		}
		else if ($this->config['fallback'])
		{
			return Config::get($key, null);
		}
		else
		{
			return $default;
		}
	}

	/**
	 * @param $key
	 *
	 * @return mixed|null
	 */
	private function fetch($key)
	{

		if ($this->cache->hasKey($key))
		{
			return $this->cache->get($key);
		}

		$row = $this->database->table($this->config['db_table'])->where('setting_key', $key)->first(['setting_value']);

		return (!is_null($row)) ? $this->cache->set($key, unserialize($row->setting_value)) : null;
	}


	/**
	 * Checks if setting exists
	 *
	 * @param $key
	 *
	 * @return bool
	 */
	public function hasKey($key)
	{
		if ($this->cache->hasKey($key))
		{
			return true;
		}
		$row = $this->database->table($this->config['db_table'])->where('setting_key', $key)->first(['setting_value']);

		return (count($row) > 0);
	}

	/**
	 * Store value into registry
	 *
	 * @param  string $key
	 * @param  mixed  $value
	 *
	 * @return mixed
	 */
	public function set($key, $value)
	{
		$value = serialize($value);

		$setting = $this->database->table($this->config['db_table'])->where('setting_key', $key)->first();

		if (is_null($setting))
		{
			$this->database->table($this->config['db_table'])
				->insert(['setting_key' => $key, 'setting_value' => $value]);
		}
		else
		{
			$this->database->table($this->config['db_table'])
				->where('setting_key', $key)
				->update(['setting_value' => $value]);
		}

		$this->cache->set($key, unserialize($value));

		return $value;
	}


	/**
	 * Remove a setting
	 *
	 * @param  string $key
	 *
	 * @return void
	 */
	public function forget($key)
	{
		$this->database->table($this->config['db_table'])->where('setting_key', $key)->delete();
		$this->cache->forget($key);
	}

	/**
	 * Remove all settings
	 *
	 * @return bool
	 */
	public function flush()
	{
		$this->cache->flush();

		return $this->database->table($this->config['db_table'])->delete();
	}

	/**
	 * Fetch all values
	 *
	 * @return mixed
	 */
	public function getAll()
	{
		return $this->cache->getAll();
	}


}

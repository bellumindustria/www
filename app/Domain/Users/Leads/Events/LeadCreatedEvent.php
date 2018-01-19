<?php

namespace abenevaut\Domain\Users\Leads\Events;

use abenevaut\Infractucture\Contracts\Events\EventAbstract;
use abenevaut\Domain\Users\Leads\Lead;

class LeadCreatedEvent extends EventAbstract
{

	/**
	 * @var Lead|null
	 */
	public $lead = null;

	/**
	 * LeadUpdatedEvent constructor.
	 *
	 * @param Lead $lead
	 */
	public function __construct(Lead $lead)
	{
		$this->lead = $lead;
	}
}
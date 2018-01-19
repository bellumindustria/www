<?php namespace abenevaut\Http\Request\Ajax\Users\Users;

use abenevaut\Infrastructure\Contracts\Request\RequestAbstract;

class CheckUserEmailFormRequest extends RequestAbstract
{

	/**
	 * Determine if the user is authorized to make this request.
	 *
	 * @return bool
	 */
	public function authorize()
	{
		return true;
	}

	/**
	 * Get the validation rules that apply to the request.
	 *
	 * @return array
	 */
	public function rules()
	{
		$rules = [
			'email'       => 'required|max:255',
			'not_user_id' => 'integer|exists:users,id',
		];

		return $rules;
	}
}

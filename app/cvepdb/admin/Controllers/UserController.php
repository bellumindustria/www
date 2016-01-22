<?php

namespace App\CVEPDB\Admin\Controllers;

use App\CVEPDB\Admin\Controllers\Abs\AbsController as Controller;
use App\User;
use App\CVEPDB\Admin\Requests\UserFormRequest;

class UserController extends Controller
{
    public function index()
    {
        $users = User::paginate(15);


//        try {
//            $geocode = \Geocoder::geocode('10 rue Gambetta, Paris, France');
//            // The GoogleMapsProvider will return a result
//            var_dump($geocode); exit;
//        } catch (\Exception $e) {
//            // No exception will be thrown here
//            echo $e->getMessage(); exit;
//        }

        return view('cvepdb.admin.user', ['users' => $users]);
    }

    public function postAddUser(UserFormRequest $request)
    {

        User::create([
            'first_name' => $request->get('first_name'),
            'last_siret' => $request->get('last_siret'),
            'email' => $request->get('email'),
        ]);

        return redirect('admin/users');
    }
}

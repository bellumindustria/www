<?php

namespace App\CVEPDB\Admin\Controllers;

use App\CVEPDB\Admin\Controllers\Abs\AbsController as Controller;
use App\User;
use App\Role;
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

        return view('cvepdb.admin.users.index', ['users' => $users]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        return view('cvepdb.admin.users.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     *
     * @return Response
     */
    public function store(UserFormRequest $request)
    {
        $user = User::create([
            'first_name' => $request->get('first_name'),
            'last_name' => $request->get('last_name'),
            'email' => $request->get('email'),
        ]);

        $client = Role::where('name', 'client')->first();

        if (is_null($client)) {
//            $client = new Role();
//            $client->name         = 'client';
//            $client->display_name = 'User Customer'; // optional
//            $client->description  = 'User is allowed to manage and edit projects'; // optional
//            $client->save();

            $client = new Role();
            $client->name         = 'user';
            $client->display_name = 'User'; // optional
            $client->description  = 'User is allowed to visit'; // optional
            $client->save();
        }

        $user->attachRole($client);

        return redirect('admin/users');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {
        //
    }
}

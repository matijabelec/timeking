<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AuthController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Create user token and log in user.
     *
     * @return Illuminate\Http\jsonResponse
     */
    public function login(Request $request){
      $username = $request->get('username', null);
      $password = $request->get('password', null);

      if(is_null($username) || is_null($password) ){
        return response()->json([
          'error' => 'invalid parameters or parameter values',
        ], 422);
      }

      $user = \DB::table('users AS u')
                ->select('u.id AS id',
                         'u.username AS username',
                         'us.name AS status')
                ->join('user_statuses AS us', 'u.id_user_status', '=', 'us.id')
                ->where('u.username', $username)
                ->where('u.password', $password)
                ->first();

      if(!$user){
        return response()->json([
          'error' => 'username and password combination dont match any user',
        ], 404);
      }

      return response()->json([
        'id' => $user->id,
        'token' => 'test123',
      ]);
    }

    public function logout(){

    }

    public function register(){

    }
}

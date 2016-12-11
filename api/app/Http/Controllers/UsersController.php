<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UsersController extends Controller
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
     * Return list of users from DB.
     *
     * @return Illuminate\Http\jsonResponse
     */
    public function index(){
      $results = \DB::select("
SELECT
  u.id AS 'id',
  u.username AS 'username',
  us.name AS 'status'
FROM users u
LEFT JOIN user_statuses us ON u.id_user_status = us.id");
      return response()->json([
        'records' => $results,
      ]);
    }

    public function create(){
      
    }

    /**
     * Get user details from DB.
     *
     * @return Illuminate\Http\jsonResponse
     */
    public function read($id){
      $results = \DB::select("
SELECT
u.id AS 'id',
u.username AS 'username',
us.name AS 'status'
FROM users u
LEFT JOIN user_statuses us ON u.id_user_status = us.id
WHERE u.id = :id", ['id' => $id]);
      if(count($results) === 1){
        return response()->json([
          'record' => $results[0],
        ]);
      }
    }

    public function update($id){

    }

    public function delete($id){

    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SchedulesController extends Controller
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

    public function index(){
      $results = \DB::select("
SELECT
  s.id AS 'id',
  s.name AS 'name'
FROM schedules s");
      return response()->json([
        'records' => $results,
      ]);
    }

    public function create(Request $request){
      $name = $request->input('name', false);
      if($name){
        if(\DB::insert("INSERT INTO schedules(name) VALUES(?)", [$name]) ){
          return response()->json([
            'status' => 'success',
          ]);
        }
      }
    }

    public function read($id){
      $results = \DB::select("
SELECT
  s.id AS 'id',
  s.name AS 'name'
FROM schedules s
WHERE s.id = :id", ['id' => $id]);
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

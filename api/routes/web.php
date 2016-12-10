<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

use Illuminate\Http\Request;

$app->get('/users/{user}', function($userId) use ($app){
  $results = DB::select("
SELECT
  u.id AS 'id',
  u.username AS 'username',
  us.name AS 'status'
FROM users u
LEFT JOIN user_statuses us ON u.id_user_status = us.id
WHERE u.id = :id", ['id' => $userId]);
  if(count($results) === 1){
    return response()->json([
      'record' => $results[0],
    ]);
  }
});

$app->get('/users', function() use ($app){
  $results = DB::select("
SELECT
  u.id AS 'id',
  u.username AS 'username',
  us.name AS 'status'
FROM users u
LEFT JOIN user_statuses us ON u.id_user_status = us.id");
  return response()->json([
    'records' => $results,
  ]);
});


$app->get('/schedules/{schedule}', function($scheduleId){
  $results = DB::select("
SELECT
  s.id AS 'id',
  s.name AS 'name'
FROM schedules s
WHERE s.id = :id", ['id' => $scheduleId]);
  if(count($results) === 1){
    return response()->json([
      'record' => $results[0],
    ]);
  }
});

$app->post('/schedules', function(Request $request){
  $name = $request->input('name', false);
  if($name){
    if(DB::insert("INSERT INTO schedules(name) VALUES(?)", [$name]) ){
      return response()->json([
        'status' => 'success',
      ]);
    }
  }
});
$app->get('/schedules', function(){
  $results = DB::select("
SELECT
  s.id AS 'id',
  s.name AS 'name'
FROM schedules s");
  return response()->json([
    'records' => $results,
  ]);
});


$app->get('/', function() use ($app){
  return $app->version();
});

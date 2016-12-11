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

$app->post  ('login', 'AuthController@login');
$app->post  ('logout', 'AuthController@logout');
$app->post  ('register', 'AuthController@register');

$app->get   ('users/{id}', 'UsersController@read');
$app->get   ('users', 'UsersController@index');

$app->get   ('schedules/{id}', 'SchedulesController@read');
$app->post  ('schedules', 'SchedulesController@create');
$app->get   ('schedules', 'SchedulesController@index');

$app->get('/', 'HomeController@index');

<?php

use Illuminate\Routing\Router;
use App\Admin\Controllers\PageController;
use App\Admin\Controllers\NavbarController;
use App\Admin\Controllers\CategoryController;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('categories', CategoryController::class);
    $router->resource('pages', PageController::class);
    $router->resource('navbars', NavbarController::class);
    $router->resource('sliders', SliderController::class);
    $router->resource('partners', PartnerController::class);
    $router->resource('layanans', LayananController::class);

});

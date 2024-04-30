<?php

use App\Http\Controllers\LootController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/loot', LootController::class);

<?php

use App\Http\Controllers\LootController;
use App\Http\Controllers\SmithController;
use App\Http\Controllers\WitchController;
use App\Http\Controllers\MedicController;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Route;

Route::get('/loot', LootController::class);
Route::get('/smith', SmithController::class);
Route::get('/witch', WitchController::class);
Route::get('/medic', MedicController::class);
Route::get('/purge-cache', static function () {
    Cache::flush();
    return redirect()->back();
});

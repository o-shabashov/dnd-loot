<?php

namespace App\Console\Commands;

use App\Models\Item;
use App\Models\Perishable;
use App\Models\Prefix;
use App\Models\Suffix;
use Illuminate\Console\Command;
use Illuminate\Support\Str;

class NormalizeDicePlusRolls extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:normalize-dice-plus-rolls';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        foreach (Item::all() as $model) {
            $model->cost = Str::replace("\xc2\xa0", '', $model->cost);
            $model->dice_raw = Str::replace('+', '-100', $model->dice_raw);
            $model->effect = Str::replace('Id', '1d', $model->effect);
            $model->effect = Str::replace('ld', '1d', $model->effect);
            $model->save();
        }

        foreach (Perishable::all() as $model) {
            $model->cost = Str::replace("\xc2\xa0", '', $model->cost);
            $model->dice_raw = Str::replace('+', '-100', $model->dice_raw);
            $model->effect = Str::replace('Id', '1d', $model->effect);
            $model->effect = Str::replace('ld', '1d', $model->effect);
            $model->save();
        }

        foreach (Prefix::all() as $model) {
            $model->cost = Str::replace("\xc2\xa0", '', $model->cost);
            $model->dice_raw = Str::replace('+', '-100', $model->dice_raw);
            $model->effect = Str::replace('Id', '1d', $model->effect);
            $model->effect = Str::replace('ld', '1d', $model->effect);
            $model->save();
        }

        foreach (Suffix::all() as $model) {
            $model->cost = Str::replace("\xc2\xa0", '', $model->cost);
            $model->dice_raw = Str::replace('+', '-100', $model->dice_raw);
            $model->effect = Str::replace('Id', '1d', $model->effect);
            $model->effect = Str::replace('ld', '1d', $model->effect);
            $model->save();
        }
    }
}

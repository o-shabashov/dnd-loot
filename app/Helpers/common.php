<?php

namespace App\Helpers;

use App\Models\Perishable;
use Illuminate\Database\Eloquent\Model;

function d20(): int
{
    return mt_rand(1, 20);
}

function d60(): int
{
    return mt_rand(1, 60);
}

function d100(): int
{
    return mt_rand(1, 100);
}

function baseItem(int $dice, bool $usePrefix = false, bool $useSuffix = false, int $dungeonLevel = 1): Model
{
    // Perishables
    if ($dice >= 91) {
        $d100 = d100();
        return Perishable::whereRaw(
            "CAST(SUBSTRING_INDEX(dice_raw, '-', 1) AS UNSIGNED) <= ? AND CAST(SUBSTRING_INDEX(dice_raw, '-', -1) AS UNSIGNED) >= ?",
            [$d100, $d100]
        )
            ->get()
            ->first();
    }
    //    $model = Item::where();
}

<?php

namespace App\Helpers;

use App\Models\Item;
use App\Models\Perishable;
use App\Models\Prefix;
use App\Models\Suffix;

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

function baseItem(int $dice, bool $usePrefix = false, bool $useSuffix = false, int $dungeonLevel = 1): string
{
    $d20plusLevel = d20() + $dungeonLevel;
    $prefix = $suffix = null;

    // Item
    $item = Item::ofDice($dice, 'group_dice_raw')->ofDice($d20plusLevel, 'dice_raw')->get()->first();

    // Perishable
    if ($dice >= 91) {
        $item = Perishable::ofDice(d100(), 'dice_raw')->get()->first();
    }

    if ($usePrefix) {
        $prefix = Prefix::ofDice($dice, 'group_dice_raw')->ofDice($d20plusLevel, 'dice_raw')->get()->first();
    }

    if ($useSuffix) {
        $suffix = Suffix::ofDice($dice, 'group_dice_raw')->ofDice($d20plusLevel, 'dice_raw')->get()->first();
    }

    return $prefix?->name . ' '. $item?->name . ' '. $suffix?->name. '<br>' .$item?->effect . '<br>' .$item?->cost . ' золотых монет';
}

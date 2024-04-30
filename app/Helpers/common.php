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
        $prefix = Prefix::ofDice(d100(), 'group_dice_raw')->ofDice($d20plusLevel, 'dice_raw')->get()->first();
    }

    if ($useSuffix) {
        $suffix = Suffix::ofDice(d100(), 'group_dice_raw')->ofDice($d20plusLevel, 'dice_raw')->get()->first();
    }

    return "Suffix name: " . $suffix?->name . "<br>" .
           "Suffix effect: " . $suffix?->effect . "<br>" .
           "Suffix cost: " . $suffix?->cost . "<br>" .
           "Group name: " . $item?->group->name . "<br>" .
           "Item name: " . $item?->name . "<br>" .
           "Item effect: " . $item?->effect . "<br>" .
           "Item cost: " . $item?->cost . "<br>" .
           "Prefix name: " . $prefix?->name . "<br>" .
           "Prefix effect: " . $prefix?->effect . "<br>" .
           "Prefix cost: " . $prefix?->cost . "<br>";
}

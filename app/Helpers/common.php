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

function dSmith(): int
{
    return mt_rand(1, 65);
}

function dWitch(): int
{
    return mt_rand(65, 90);
}

function dHeal(): int
{
    return mt_rand(91, 100);
}


function generateItem(int $dice, bool $usePrefix = false, bool $useSuffix = false, int $dungeonLevel = 1): array
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

    return [$prefix, $item, $suffix];
}

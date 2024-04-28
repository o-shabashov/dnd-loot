<?php

namespace App\Models;

use function App\Http\Controllers\d20;

class Prefix
{
    public static function getPrefix(int $dice, int $dungeonLevel): Prefix
    {
        return match ($dice) {
            1, 2, 3, 4 => new Prefix(name: 'Cape', effect: 'AC 1', cost: 5, dungeonLevel: $dungeonLevel, usePrefix: $usePrefix, useSuffix: $useSuffix),
        };
    }

}

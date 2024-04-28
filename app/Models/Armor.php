<?php

namespace App\Models;

use function App\Http\Controllers\d20;
use function App\Http\Controllers\d60;

class Armor
{
    public function __construct(
        public string $name,
        public string $effect,
        public int $cost,
        public int $dungeonLevel,
        public bool $usePrefix = false,
        public bool $useSuffix = false,
    ) {
    }

    public static function getItem(bool $usePrefix = false, bool $useSuffix = false, int $dungeonLevel = 1): Armor
    {
        $params = ['dungeonLevel' => $dungeonLevel, 'usePrefix' => $usePrefix, 'useSuffix' => $useSuffix];

        $params = array_merge($params, match (d20() + $dungeonLevel) {
            1, 2, 3, 4 => ['name' => 'Cape', 'effect' => 'AC 1', 'cost' => 5],
        });

        return new Armor(...$params);
    }

    public function getPrefix(): Prefix
    {
        return Prefix::getPrefix(dice: d60() + $this->dungeonLevel, dungeonLevel: $this->dungeonLevel);
    }
}

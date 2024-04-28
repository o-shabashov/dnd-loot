<?php

namespace App\Models;


abstract class BaseItem
{
    public function __construct(
        public string $name,
        public string $effect,
        public int    $cost,
        private int    $dungeonLevel,
        private bool   $usePrefix = false,
        private bool   $useSuffix = false,
    ) {}

    public function getPrefix(): ?Prefix
    {
        if (! $this->usePrefix) {
            return null;
        }

        return new Prefix(name: $this->name, effect: $this->effect, cost: $this->cost, dungeonLevel: $this->dungeonLevel, usePrefix: $this->usePrefix, useSuffix: $this->useSuffix);
    }

    public function getSuffix()
    {
    }

    public static function getItem(bool $usePrefix = false, bool $useSuffix = false, int $dungeonLevel = 1)
    {
    }
}

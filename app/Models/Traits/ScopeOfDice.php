<?php

namespace App\Models\Traits;

trait ScopeOfDice
{
    public function scopeOfDice($query, $dice, $type): void
    {
        $query->whereRaw(
            "CAST(SUBSTRING_INDEX($type, '-', 1) AS UNSIGNED) <= ? AND CAST(SUBSTRING_INDEX($type, '-', -1) AS UNSIGNED) >= ?",
            [$dice, $dice]
        );
    }
}

<?php

namespace App\Models;

use App\Models\Traits\ScopeOfDice;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * Class Prefix
 *
 * @property int    $id
 * @property string $group_dice_raw
 * @property string $dice_raw
 * @property string $name
 * @property string $effect
 * @property string $cost
 *
 * @package App\Models
 */
class Prefix extends Model
{
    use ScopeOfDice;

    public    $timestamps = false;
    protected $table      = 'prefixes';
    protected $fillable = [
        'group_dice_raw',
        'dice_raw',
        'name',
        'effect',
        'cost',
    ];

    public function group(): BelongsTo
    {
        return $this->belongsTo(PrefixesGroup::class, 'group_dice_raw', 'dice_raw');
    }
}

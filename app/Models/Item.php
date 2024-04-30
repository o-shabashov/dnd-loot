<?php

namespace App\Models;

use App\Models\Traits\scopeOfDice;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * Class Item
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
class Item extends Model
{
    use ScopeOfDice;

    public    $timestamps = false;
    protected $table      = 'items';
    protected $fillable = [
        'group_dice_raw',
        'dice_raw',
        'name',
        'effect',
        'cost',
    ];

    public function group(): BelongsTo
    {
        return $this->belongsTo(ItemsGroup::class, 'group_dice_raw', 'dice_raw');
    }
}

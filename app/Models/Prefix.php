<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

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
    public    $timestamps = false;
    protected $table      = 'prefixes';
    protected $fillable = [
        'group_dice_raw',
        'dice_raw',
        'name',
        'effect',
        'cost',
    ];
}

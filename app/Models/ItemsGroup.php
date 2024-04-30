<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class ItemsGroup
 *
 * @property int    $id
 * @property string $dice_raw
 * @property string $name
 *
 * @package App\Models
 */
class ItemsGroup extends Model
{
    public    $timestamps = false;
    protected $table      = 'items_groups';
    protected $fillable = [
        'dice_raw',
        'name',
    ];
}

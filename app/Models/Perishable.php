<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Perishable
 *
 * @property int    $id
 * @property string $dice_raw
 * @property string $name
 * @property string $effect
 * @property string $cost
 *
 * @package App\Models
 */
class Perishable extends Model
{
    public    $timestamps = false;
    protected $table      = 'perishables';
    protected $fillable = [
        'dice_raw',
        'name',
        'effect',
        'cost',
    ];
}

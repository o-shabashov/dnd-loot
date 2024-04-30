<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class PrefixesGroup
 *
 * @property int    $id
 * @property string $dice_raw
 * @property string $name
 *
 * @package App\Models
 */
class PrefixesGroup extends Model
{
    public    $timestamps = false;
    protected $table      = 'prefixes_groups';
    protected $fillable = [
        'dice_raw',
        'name',
    ];
}

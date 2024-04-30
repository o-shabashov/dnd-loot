<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class SuffixesGroup
 *
 * @property int    $id
 * @property string $dice_raw
 * @property string $name
 *
 * @package App\Models
 */
class SuffixesGroup extends Model
{
    public    $timestamps = false;
    protected $table      = 'suffixes_groups';
    protected $fillable   = [
        'dice_raw',
        'name',
    ];
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

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

    public function suffixes(): HasMany
    {
        return $this->hasMany(Suffix::class, 'group_dice_raw', 'dice_raw');
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Newlyreleased
 *
 * @property int $id
 * @property string $name
 * @property string $duration
 * @property string $link
 * @property string $image
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|Newlyreleased newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Newlyreleased newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Newlyreleased query()
 * @method static \Illuminate\Database\Eloquent\Builder|Newlyreleased whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Newlyreleased whereDuration($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Newlyreleased whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Newlyreleased whereImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Newlyreleased whereLink($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Newlyreleased whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Newlyreleased whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Newlyreleased extends Model
{
    protected $table = 'newly_released';

    public function released(){
        return $this->all();
    }
}

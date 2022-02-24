<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\MoviesCategories
 *
 * @property int $id
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $name
 * @property string $slug
 * @method static \Illuminate\Database\Eloquent\Builder|MoviesCategories newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MoviesCategories newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MoviesCategories query()
 * @method static \Illuminate\Database\Eloquent\Builder|MoviesCategories whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MoviesCategories whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MoviesCategories whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MoviesCategories whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MoviesCategories whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class MoviesCategories extends Model
{
    use HasFactory;
}

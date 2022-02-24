<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\SeriesCategories
 *
 * @property int $id
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $name
 * @property string $slug
 * @method static \Illuminate\Database\Eloquent\Builder|SeriesCategories newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SeriesCategories newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SeriesCategories query()
 * @method static \Illuminate\Database\Eloquent\Builder|SeriesCategories whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SeriesCategories whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SeriesCategories whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SeriesCategories whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SeriesCategories whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class SeriesCategories extends Model
{
    use HasFactory;
    protected $table = 'series_categories';
}

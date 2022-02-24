<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Cast
 *
 * @property int $id
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property int $movies_id
 * @property int $new_movies_id
 * @property string $name
 * @property string $slug
 * @property string $image
 * @method static \Illuminate\Database\Eloquent\Builder|Cast newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Cast newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Cast query()
 * @method static \Illuminate\Database\Eloquent\Builder|Cast whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cast whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cast whereImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cast whereMoviesId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cast whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cast whereNewMoviesId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cast whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Cast whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Cast extends Model
{
    use HasFactory;
    protected $table = 'cast';

    public function player($filmadi){
        return \DB::table('cast_movies')
            ->select('*')
            ->join('movies' ,'movies.id','=','cast_movies.movies_id')
            ->join('cast','cast.id','=','cast_movies.cast_id')
            ->where('movies.movie_slug', '=', $filmadi)
            ->get();
    }
}

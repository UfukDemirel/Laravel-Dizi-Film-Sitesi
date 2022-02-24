<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Date;

/**
 * App\Models\Movies
 *
 * @property int $id
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property int $category_id
 * @property string $movie_name
 * @property string|null $movie_director
 * @property string|null $movie_slug
 * @property string $movie_image
 * @property string $movie_desc
 * @property string|null $movie_imdb
 * @property string|null $movie_date
 * @property string|null $movie_time
 * @property string $movies
 * @property string|null $emoji
 * @method static \Illuminate\Database\Eloquent\Builder|Movies newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Movies newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Movies query()
 * @method static \Illuminate\Database\Eloquent\Builder|Movies whereCategoryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Movies whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Movies whereEmoji($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Movies whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Movies whereMovieDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Movies whereMovieDesc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Movies whereMovieDirector($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Movies whereMovieImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Movies whereMovieImdb($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Movies whereMovieName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Movies whereMovieSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Movies whereMovieTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Movies whereMovies($value)
 * @mixin \Eloquent
 */
class Movies extends Model
{
    use HasFactory;
    protected $table = 'movies';

    public function getMovie(string $movieName) {
        return $this->where('movie_slug', $movieName)->first();
    }

    public function getMovieNameBySlug(string $slug){
        return $this->where('movie_slug', $slug)->get(['emoji', 'movie_name','id']);
    }

    public function newMovies(){
        return $this->where('movie_date','>','2020')->get();
    }

    public function trailer($filmadi){
        return \DB::table('movies_categories')
            ->join('movies' ,'movies.category_id','=','movies_categories.id')
            ->where('movies.movie_slug', '=', $filmadi)
            ->get();
    }

    public function fullmovie(){
        return $this->all();
    }

    public function score($filmadi){
        return \DB::table('score')
            ->select('*')
            ->join('movies','movies.id','=','score.movies_id')
            ->where('movies.movie_slug', '=', $filmadi)
            ->orderBy('score.id','desc')
            ->get();
    }

    public function ort($com){
        return \DB::table('score')
            ->join('movies','movies.id','=','score.movies_id')
            ->where('score.movies_id', '=', $com->id)
            ->avg('rating');
    }

    public function getAll(){
        return $this->all();
    }

    public function movieCategory($categorySlug){
        return $this->select('*')
            ->join('movies_categories', 'movies.category_id', '=', 'movies_categories.id')
            ->where('movies_categories.slug', '=', $categorySlug)
            ->get();
    }

    public function movieCategoryName($categorySlug){
        return $this->select('name')
            ->join('movies_categories', 'movies.category_id', '=', 'movies_categories.id')
            ->where('movies_categories.slug', '=', $categorySlug)
            ->groupBy('name')
            ->get();
    }

}

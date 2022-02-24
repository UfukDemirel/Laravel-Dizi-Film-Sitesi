<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Series
 *
 * @property int $id
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property int $category_id
 * @property string $series_name
 * @property string|null $series_director
 * @property string|null $series_season
 * @property string|null $series_part
 * @property string|null $series_trailer
 * @property string|null $series_slug
 * @property string $series_image
 * @property string $series_desc
 * @property string $series_imdb
 * @property string|null $series_date
 * @method static \Illuminate\Database\Eloquent\Builder|Series newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Series newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Series query()
 * @method static \Illuminate\Database\Eloquent\Builder|Series whereCategoryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Series whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Series whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Series whereSeriesDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Series whereSeriesDesc($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Series whereSeriesDirector($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Series whereSeriesImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Series whereSeriesImdb($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Series whereSeriesName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Series whereSeriesPart($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Series whereSeriesSeason($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Series whereSeriesSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Series whereSeriesTrailer($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Series whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Series extends Model
{
    use HasFactory;
    protected $table = 'series';

    public function getSeries(string $seriesName) {
        return $this->where('series_slug',$seriesName)->first();
    }

    public function getSeriesNameBySlug(string $slug){
        return $this->where('series_slug', $slug)->get(['emoji','series_name','id']);
    }

    public function ort1($com){
        return \DB::table('score')
            ->join('series','series.id','=','score.series_id')
            ->where('score.series_id', '=', $com->id)
            ->avg('rating');
    }

    public function score($slug){
        return \DB::table('score')
            ->select('*')
            ->join('series','series.id','=','score.series_id')
            ->where('series.series_slug', '=', $slug)
            ->orderBy('score.id','desc')
            ->get();
    }

    public function series($slug){
        return \DB::table('series')
        ->select('*')
        ->where('series_slug','=',$slug)
        ->get();
    }

    public function seriesJoin($seriesSlug){
       return \DB::table('series')
            ->select('*')
            ->join('series_categories', 'series.category_id', '=', 'series_categories.id')
            ->where('series_categories.slug', '=', $seriesSlug)
            ->get();
    }

    public function seriesName($seriesSlug){
        return \DB::table('series')
            ->select('name')
            ->join('series_categories', 'series.category_id', '=', 'series_categories.id')
            ->where('series_categories.slug', '=', $seriesSlug)
            ->groupBy('name')
            ->get();
    }

    public function fullseries(){
        return $this->all();
    }

}

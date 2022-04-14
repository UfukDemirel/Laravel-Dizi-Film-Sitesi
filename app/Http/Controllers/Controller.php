<?php

namespace App\Http\Controllers;

use App\Models\Cast;
use App\Models\Movies;
use App\Models\Newlyreleased;
use App\Models\MoviesCategories;
use App\Models\Series;
use App\Models\SeriesCategories;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    /**@var Movies|Model
     * @param Movies $movies
     * @param Newlyreleased $newly_released
     * @param Cast $cast
     * @param Series $series
     */

    public $movies;
    public $newly_released;
    public $cast;
    public $trailer;
    public $score;
    public $ort;
    public $ort1;
    public $series;

    public function __construct (Movies $movies, Newlyreleased $newly_released,Cast $cast,Series $series){
        $this->movies = $movies;
        $this->newly_released = $newly_released;
        $this->cast = $cast;
        $this->series = $series;
    }

    public function welcome(){
        $new = $this->movies->newMovies();
        $watch = $this->movies->fullmovie();
        $newly= $this->newly_released->released();
        $series=Series::all();
        $movies=Movies::all();
        $moviesCategories = MoviesCategories::all();
        $seriesCategories = SeriesCategories::all();
        return view('welcome', compact('moviesCategories', 'seriesCategories',
            'movies', 'watch','new','series','newly'));
    }

    public function search(Request $request){
        $moviesCategories = MoviesCategories::all();
        $seriesCategories = SeriesCategories::all();
        $search = $request->get('search');
        $posts= DB::table('movies')
            ->where('movie_name','like',$search.'%')->get();
            return view('search',compact('posts','moviesCategories','seriesCategories'));
    }

    public function izle(string $filmadi){
        $com = $this->movies->getMovie($filmadi);
        $player= $this->cast->player($filmadi);
        $trailer=$this->movies->trailer($filmadi);
        $comment=$this->movies->score($filmadi);
        $ort=$this->movies->ort($com);
        $ort = number_format($ort,2);
        $dem = DB::table('movies')
            ->where('movie_slug',$filmadi)
            ->update(
                ['movie_avg_score' => $ort]);
        $movies = $this->movies->getAll();
        $moviesCategories = MoviesCategories::all();
        $seriesCategories = SeriesCategories::all();
        return view('izle',compact('player','trailer', 'com','comment','dem',
            'ort','movies','moviesCategories','seriesCategories'));
    }

    public function dizizle(string $slug){
        $com = $this->series->getSeries($slug);
        $ort=$this->series->ort1($com);
        $ort = number_format($ort,2);
        $comment=$this->series->score($slug);
        $dizi = $this->series->series($slug);
        $series=Series::all();
        $moviesCategories = MoviesCategories::all();
        $seriesCategories = SeriesCategories::all();
        return view('dizizle',compact('dizi','comment','series'
            ,'ort','com','seriesCategories','moviesCategories'));
    }

    public function dizipuan($slug){
        $series = $this->series->getSeriesNameBySlug($slug);
        $movie = $this->movies->getMovieNameBySlug($slug);
        return view('dizipuan',compact('movie','series'));
    }

    public function dizipuanpost(Request $request){
        $watch = $this->movies->fullmovie();
        $new = $this->movies->newMovies();
        $newly= $this->newly_released->released();
        $request->validate([
            'score_name'=>'required',
            'score_date'=>'required',
            'score_comment'=>'required',
            'rating'=>'required'
        ]);
        $nice=DB::table("score")->insert([
            "score_name"=>$request->score_name,
            "score_date"=>$request->score_date,
            "score_comment"=>$request->score_comment,
            "rating"=>$request->rating,
            "series_id"=>$request->series_id
        ]);
        if($nice){
            Alert::alert('Başarılı', 'Yorum yaptınız...', 'success');
        }else{
            Alert::alert('Hata', 'Yorum yapamadınız...', 'error');
        }
        $series=Series::all();
        $movies = $this->movies->getAll();
        $moviesCategories = MoviesCategories::all();
        $seriesCategories = SeriesCategories::all();
        return view('welcome', compact('moviesCategories', 'seriesCategories',
            'movies', 'watch','new','series','newly'));

    }

    public function puan($slug){
        $movie = $this->movies->getMovieNameBySlug($slug);
        $moviesCategories = MoviesCategories::all();
        $seriesCategories = SeriesCategories::all();
        return view('puan',compact('movie','moviesCategories','seriesCategories'));
    }

    public function puanpost(Request $request){
        $request->validate([
            'score_name'=>'required',
            'score_date'=>'required',
            'score_comment'=>'required',
            'rating'=>'required'
        ]);
        $nice=DB::table("score")->insert([
            "score_name"=>$request->score_name,
            "score_date"=>$request->score_date,
            "score_comment"=>$request->score_comment,
            "rating"=>$request->rating,
            "movies_id"=>$request->movies_id
        ]);
        if($nice){
            Alert::alert('Başarılı', 'Yorum yaptınız...', 'success');
            return back();
        }else{
            Alert::alert('Hata', 'Yorum yapamadınız...', 'error');
        }
        return back();
    }

    public function movieCategory(string $categorySlug){
        $movies = $this->movies->movieCategory($categorySlug);
        $movieCategoryName  = $this->movies->movieCategoryName($categorySlug);
        $newly= $this->newly_released->released();
        $moviesCategories = MoviesCategories::all();
        $seriesCategories = SeriesCategories::all();
        return view('moviecategory', compact('movies', 'movieCategoryName'
            ,'newly','moviesCategories','seriesCategories'));
    }

    public function serieCategory(string $seriesSlug){
        $newly = $this->newly_released->released();
        $series = $this->series->seriesJoin($seriesSlug);
        $serie = $this->series->seriesName($seriesSlug);
        $moviesCategories = MoviesCategories::all();
        $seriesCategories = SeriesCategories::all();
        return view('seriecategory', compact('series','serie','newly',
            'seriesCategories', 'moviesCategories'));
    }
}

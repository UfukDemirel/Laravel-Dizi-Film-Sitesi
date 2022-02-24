<?php

namespace App\Http\Controllers;

use App\Models\Cast;
use App\Models\Movies;
use App\Models\Newlyreleased;
use App\Models\Series;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Str;

class PanelController extends BaseController
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

    public function index(){
        return view('backend.default.index');
    }

    public function filmler(){
        $data=$this->movies->fullmovie();
        return view('backend.filmler.index',compact('data'));
    }

    public function edit($id){
        $filmler=Movies::where('id',$id)->first();
        return view('backend.filmler.edit')->with('filmler',$filmler);
    }
    public function update(Request $request, $id){

        if (strlen($request->movie_slug) > 2) {
            $slug = Str::slug($request->movie_slug);
        } else {
            $slug = Str::slug($request->movie_name);
        }

        if ($request->hasFile('movie_image')) {
            $request->validate([
                'category_id' => 'required',
                'movie_name' => 'required',
                'movie_director' => 'required',
                'movie_slug' => 'required',
                'movie_image' => 'required|image|mimes:jpeg,jpg,png|max:5000',
                'movie_desc' => 'required',
                'movie_imdb' => 'required',
                'movie_date' => 'required',
                'movie_time' => 'required',
                'movies' => 'required',
                'emoji' => 'required',
            ]);
            $file_name = uniqid() . '.' . \request()->movie_image->getClientOriginalExtension();
            $request->movie_image->move(public_path('/images/movies'), $file_name);

            $filmler = Movies::where('id',$id)->update([
                "category_id" => $request->category_id,
                "movie_name" => $request->movie_name,
                "movie_director" => $request->movie_director,
                "movie_slug" => $slug,
                "movie_image" => $file_name,
                "movie_desc" => $request->movie_desc,
                "movie_imdb" => $request->movie_imdb,
                "movie_date" => $request->movie_date,
                "movie_time" => $request->movie_time,
                "movies" => $request->movies,
                "emoji" => $request->emoji
            ]);

            $path='/images/movies/'.$request->old_file;
            if (file_exists($path))
            {
                @unlink(public_path($path));
            }

        } else {
            $filmler = Movies::where('id',$id)->update([
                "category_id" => $request->category_id,
                "movie_name" => $request->movie_name,
                "movie_director" => $request->movie_director,
                "movie_slug" => $slug,
                "movie_desc" => $request->movie_desc,
                "movie_imdb" => $request->movie_imdb,
                "movie_date" => $request->movie_date,
                "movie_time" => $request->movie_time,
                "movies" => $request->movies,
                "emoji" => $request->emoji
            ]);
        }
        if ($filmler) {
            \Alert::alert('Başarılı','Düzenleme İşlemi Başarılı..');
            return redirect(route('filmler'))->with('success', 'İşlem Başarılı..');
        } else {
            return back()->with('error', 'İşlem Başarısız..');
        }
    }
}

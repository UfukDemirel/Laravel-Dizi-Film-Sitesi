<?php

namespace App\Http\Controllers;

use App\Models\Cast;
use App\Models\Newlyreleased;
use App\Models\Series;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use RealRashid\SweetAlert\Facades\Alert;

class DiziController extends Controller
{
    /**@var Series|Model
     * @param Newlyreleased $newly_released
     * @param Cast $cast
     * @param Series $series
     */

    public $newly_released;
    public $cast;
    public $trailer;
    public $score;
    public $ort;
    public $ort1;
    public $series;

    public function __construct (Newlyreleased $newly_released,Cast $cast,Series $series){
        $this->newly_released = $newly_released;
        $this->cast = $cast;
        $this->series = $series;
    }

    public function diziler(){
        $data=$this->series->fullseries();
        return view('backend.diziler.index',compact('data'));
    }

    public function edit($id){
        $diziler=Series::where('id',$id)->first();
        return view('backend.diziler.edit')->with('diziler',$diziler);
    }

    public function update(Request $request, $id){

        if (strlen($request->series_slug) > 2) {
            $slug = Str::slug($request->series_slug);
        } else {
            $slug = Str::slug($request->series_name);
        }

        if ($request->hasFile('series_image')) {
            $request->validate([
                'category_id' => 'required',
                'series_name' => 'required',
                'series_director' => 'required',
                'series_slug' => 'required',
                'series_image' => 'required|image|mimes:jpeg,jpg,png|max:5000',
                'series_desc' => 'required',
                'series_imdb' => 'required',
                'series_date' => 'required',
                'series_part' => 'required',
                'series_trailer' => 'required',
                'emoji' => 'required',
            ]);
            $file_name = uniqid() . '.' . \request()->series_image->getClientOriginalExtension();
            $request->series_image->move(public_path('/images/series'), $file_name);

            $filmler = Series::where('id',$id)->update([
                "category_id" => $request->category_id,
                "series_name" => $request->series_name,
                "series_director" => $request->series_director,
                "series_slug" => $slug,
                "series_image" => $file_name,
                "series_desc" => $request->series_desc,
                "series_imdb" => $request->series_imdb,
                "series_date" => $request->series_date,
                "series_part" => $request->series_part,
                "series_trailer" => $request->series_trailer,
                "emoji" => $request->emoji
            ]);

            $path='/images/series/'.$request->old_file;
            if (file_exists($path))
            {
                @unlink(public_path($path));
            }

        } else {
            $diziler = Series::where('id',$id)->update([
                "category_id" => $request->category_id,
                "series_name" => $request->series_name,
                "series_director" => $request->series_director,
                "series_slug" => $slug,
                "series_desc" => $request->series_desc,
                "series_imdb" => $request->series_imdb,
                "series_date" => $request->series_date,
                "series_part" => $request->series_part,
                "series_trailer" => $request->series_trailer,
                "emoji" => $request->emoji
            ]);
        }
        if ($diziler) {
            Alert::success( 'Düzenleme İşlemi Başarılı..');
            return redirect(route('diziler'));
        } else {
            return back()->with('error', 'İşlem Başarısız..');
        }
    }
}

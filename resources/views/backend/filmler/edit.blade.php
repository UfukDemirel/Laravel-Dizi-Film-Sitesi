@extends('backend.layout')
@section('content')
    <div class="d-flex flex-column-fluid">
        <!--begin::Container-->
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!--begin::Card-->
                    <div class="card card-custom gutter-b example example-compact">
                        <div class="card-header">
                            <h3 class="card-title">FİLM DÜZENLE</h3>
                            <div align="right">
                                <br>
                                <a href="{{route('filmler')}}"><button class="btn btn-success">GERİ</button></a>
                            </div>
                        </div>
                        <form class="form" action="{{route('filmler.update',$filmler->id)}}" method="post">
                            @csrf
                            <div class="card-body">
                                @isset($filmler->movie_image)
                                    <div class="form-group">
                                        <label>Yüklü Görsel</label>
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <img width="100" src="/images/movies/{{$filmler->movie_image}}" alt="">
                                            </div>
                                        </div>
                                    </div>
                                @endisset

                                <div class="form-group">
                                    <label for="exampleFormControlFile1">Movie İmage:</label>
                                    <input type="file" name="movie_image" class="form-control-file">
                                </div>
                                <div class="form-group">
                                    <label for="exampleFormControlSelect1">Kategori İD</label>
                                    <select class="form-control" name="category_id" required value="{{$filmler->category_id}}" id="exampleFormControlSelect1">
                                        <option></option>
                                        <option value="1">1 - Bilim Kurgu </option>
                                        <option value="2">2 - Çizgi Film </option>
                                        <option value="3">3 - Macera </option>
                                        <option value="4">4 - Polisiye </option>
                                        <option value="5">5 - Western </option>
                                        <option value="6">6 - Dram </option>
                                        <option value="7">7 - Fantastik </option>
                                        <option value="8">8 - Aksiyon </option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Movie Name:</label>
                                    <input type="text" class="form-control form-control-solid" name="movie_name" value="{{$filmler->movie_name}}"/>
                                </div>
                                <div class="form-group">
                                    <label>Movie Director:</label>
                                    <input type="text" class="form-control form-control-solid" name="movie_director" value="{{$filmler->movie_director}}"/>
                                </div>
                                <div class="form-group">
                                    <label>Movie Slug:</label>
                                    <input type="text" class="form-control form-control-solid" name="movie_slug" value="{{$filmler->movie_slug}}"/>
                                </div>
                                <div class="form-group">
                                    <label>Movie Desc:</label>
                                    <div class="row">
                                        <div class="col-lg-12">
                                    <textarea class="form-control"
                                              required name="movie_desc">{{$filmler->movie_desc}}
                                    </textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Movie İMDB:</label>
                                    <input type="text" class="form-control form-control-solid" name="movie_imdb" value="{{$filmler->movie_imdb}}"/>
                                </div>
                                <div class="form-group">
                                    <label>Movie Date:</label>
                                    <input type="text" class="form-control form-control-solid" name="movie_date" value="{{$filmler->movie_date}}"/>
                                </div>
                                <div class="form-group">
                                    <label>Movie Time:</label>
                                    <input type="text" class="form-control form-control-solid" name="movie_time" value="{{$filmler->movie_time}}"/>
                                </div>
                                <div class="form-group">
                                    <label>Movie Trailer:</label>
                                    <input type="text" class="form-control form-control-solid" name="movies" value="{{$filmler->movies}}"/>
                                </div>
                                <div class="form-group">
                                    <label>Movie Emoji:</label>
                                    <input type="text" class="form-control form-control-solid" name="emoji" value="{{$filmler->emoji}}"/>
                                </div>

                                    <input type="hidden" name="old_file" value="{{$filmler->movie_image}}">
                            <div class="card-footer">
                                <div align="right"><button type="submit" class="btn btn-primary mr-2">DÜZENLE</button></div>
                            </div>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('css')@endsection
@section('js')@endsection


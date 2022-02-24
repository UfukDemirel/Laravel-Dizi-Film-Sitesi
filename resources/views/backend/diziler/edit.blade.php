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
                            <h3 class="card-title">DİZİ DÜZENLE</h3>
                            <div align="right">
                                <br>
                                <a href="{{route('diziler')}}"><button class="btn btn-success">GERİ</button></a>
                            </div>
                        </div>
                        <form class="form" action="{{route('diziler.update',$diziler->id)}}" method="post">
                            @csrf
                            <div class="card-body">
                                @isset($diziler->series_image)
                                    <div class="form-group">
                                        <label>Yüklü Görsel</label>
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <img width="100" src="/images/seriess/{{$diziler->series_image}}" alt="">
                                            </div>
                                        </div>
                                    </div>
                                @endisset

                                <div class="form-group">
                                    <label for="exampleFormControlFile1">Series İmage:</label>
                                    <input type="file" name="series_image" class="form-control-file">
                                </div>
                                <div class="form-group">
                                    <label for="exampleFormControlSelect1">Kategori İD</label>
                                    <select class="form-control" name="category_id" required value="{{$diziler->category_id}}" id="exampleFormControlSelect1">
                                        <option></option>
                                        <option value="1">1 - Aksiyon </option>
                                        <option value="2">2 - Psikolojik Gerilim </option>
                                        <option value="3">3 - Macera </option>
                                        <option value="4">4 - Korku </option>
                                        <option value="5">5 - Western </option>
                                        <option value="6">6 - Gizem </option>
                                        <option value="7">7 - Bilim Kurgu </option>
                                        <option value="8">8 - Komedi </option>
                                        <option value="9">9 - Polisiye </option>
                                        <option value="10">10 - Dram </option>
                                        <option value="11">11 - Fantastik </option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Series Name:</label>
                                    <input type="text" class="form-control form-control-solid" name="series_name" value="{{$diziler->series_name}}"/>
                                </div>
                                <div class="form-group">
                                    <label>Series Director:</label>
                                    <input type="text" class="form-control form-control-solid" name="series_director" value="{{$diziler->series_director}}"/>
                                </div>
                                <div class="form-group">
                                    <label>Series Slug:</label>
                                    <input type="text" class="form-control form-control-solid" name="series_slug" value="{{$diziler->series_slug}}"/>
                                </div>
                                <div class="form-group">
                                    <label>Series Desc:</label>
                                    <div class="row">
                                        <div class="col-lg-12">
                                    <textarea class="form-control"
                                              required name="series_desc">{{$diziler->series_desc}}
                                    </textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Series İMDB:</label>
                                    <input type="text" class="form-control form-control-solid" name="series_imdb" value="{{$diziler->series_imdb}}"/>
                                </div>
                                <div class="form-group">
                                    <label>Series Date:</label>
                                    <input type="text" class="form-control form-control-solid" name="series_date" value="{{$diziler->series_date}}"/>
                                </div>
                                <div class="form-group">
                                    <label>Series Part:</label>
                                    <input type="text" class="form-control form-control-solid" name="series_part" value="{{$diziler->series_part}}"/>
                                </div>
                                <div class="form-group">
                                    <label>Series Trailer:</label>
                                    <input type="text" class="form-control form-control-solid" name="series_trailer" value="{{$diziler->series_trailer}}"/>
                                </div>
                                <div class="form-group">
                                    <label>Series Emoji:</label>
                                    <input type="text" class="form-control form-control-solid" name="emoji" value="{{$diziler->emoji}}"/>
                                </div>

                                    <input type="hidden" name="old_file" value="{{$diziler->series_image}}">
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


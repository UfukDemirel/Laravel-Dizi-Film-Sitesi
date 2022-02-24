@extends('backend.layout')
@section('content')

    <table class="table table-hover table-striped table-dark">
        <thead>
        <tr>
            <th scope="col">İD</th>
            <th scope="col">K.İD</th>
            <th scope="col">NAME</th>
            <th scope="col">DİRECTOR</th>
            <th scope="col">İMAGE</th>
            <th scope="col">DESC</th>
            <th scope="col">İMDB</th>
            <th scope="col">DATE</th>
            <th scope="col">SEASON</th>
            <th scope="col">PART</th>
            <th scope="col">TRAİLER</th>
            <th scope="col">SLUG</th>
            <th>İŞLEMLER</th>
            <th></th>
        </tr>
        </thead>
        @foreach($data as $key)
        <tbody>
        <tr>
            <th scope="row">{{$key->id}}</th>
            <td>{{$key->category_id}}</td>
            <td>{{$key->series_name}}</td>
            <td>{{$key->series_director}}</td>
            <td>{!! substr($key->series_image,0,20) !!}</td>
            <td>{!! substr($key->series_desc,0,20) !!}</td>
            <td>{{$key->series_imdb}}</td>
            <td>{{$key->series_date}}</td>
            <td>{{$key->series_season}}</td>
            <td>{{$key->series_part}}</td>
            <td>{!! substr($key->series_trailer,0,20) !!}</td>
            <td>{{$key->series_slug}}</td>
            <td width="5"><a href="{{route('diziler.edit',['id'=>$key->id])}}"><button type="button" class="btn btn-dark">DÜZENLE</button></a></td>
            <td width="5"><a href=""><button type="button" class="btn btn-danger">SİL</button></a></td>
        </tr>
        </tbody>
        @endforeach
    </table>
@endsection
@section('css')@endsection
@section('js')@endsection


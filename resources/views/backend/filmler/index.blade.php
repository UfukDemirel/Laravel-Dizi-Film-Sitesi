@extends('backend.layout')
@section('content')

    <table class="table table-hover table-striped table-dark">
        <thead>
        <tr>
            <th scope="col">İD</th>
            <th scope="col">K.İD</th>
            <th scope="col">NAME</th>
            <th scope="col">DİRECTOR</th>
            <th scope="col">SLUG</th>
            <th scope="col">İMAGE</th>
            <th scope="col">DESC</th>
            <th scope="col">İMDB</th>
            <th scope="col">DATE</th>
            <th scope="col">TİME</th>
            <th scope="col">TRAİLER</th>
            <th scope="col">AVG</th>
            <th>İŞLEMLER</th>
            <th></th>
        </tr>
        </thead>
        @foreach($data as $key)
        <tbody>
        <tr>
            <th scope="row">{{$key->id}}</th>
            <td>{{$key->category_id}}</td>
            <td>{{$key->movie_name}}</td>
            <td>{{$key->movie_director}}</td>
            <td>{{$key->movie_slug}}</td>
            <td>{!! substr($key->movie_image,0,20) !!}</td>
            <td>{!! substr($key->movie_desc,0,20) !!}</td>
            <td>{{$key->movie_imdb}}</td>
            <td>{{$key->movie_date}}</td>
            <td>{{$key->movie_time}}</td>
            <td>{!! substr($key->movies,0,20) !!}</td>
            <td>{{$key->movie_avg_score}}</td>
            <td width="5"><a href="{{route('filmler.edit',['id'=>$key->id])}}"><button type="button" class="btn btn-dark">DÜZENLE</button></a></td>
            <td width="5"><a href=""><button type="button" class="btn btn-danger">SİL</button></a></td>
        </tr>
        </tbody>
        @endforeach
    </table>
@endsection
@section('css')@endsection
@section('js')@endsection


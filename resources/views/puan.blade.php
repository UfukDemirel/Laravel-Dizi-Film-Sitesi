<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="/rating.css">
    <title>FİLM DEĞERLENDİRME</title>
</head>
<body>
<section class="hero-area" id="home">
    <div class="container">
        <div class="hero-area-slider">
        <div class="container my-5">
            <br>
            <br>
            <br>
            <br>
            <div align="right"><a href="{{route('welcome')}}"><button type="button" class="btn btn-warning">Ana Sayfaya Dön..</button></a></div>
        <div class="row">
        <div class="col-md-6 mx-auto">
            <div class="card border-0 shadow-sm mb-3">
                <div class="card-body">
                    @foreach($movie as $key)
                        <h4 class="mb-3"><img src="{{$key->emoji}}" alt=""> {{$key->movie_name}}</h4>
                    <form action="{{route('puanpost')}}" method="post">
                        @csrf
                        <div class="form-group">
                            <input type="text" class="form-control" name="score_name" value="{{old('score_name')}}" placeholder="Adınız ve Soyadınız..">
                        </div>
                        <br>
                        <div class="form-group">
                            <input type="text" class="form-control" name="score_date" value="{{old('score_date')}}" placeholder="00/00/0000">
                        </div>
                        <br>
                        <div class="form-floating mb-3">
                            <textarea name="score_comment" value="{{old('score_comment')}}" class="form-control" style="height: 100px;" required></textarea>
                            <label for="floatingTextarea">Yorumunuz</label>
                        </div>
                        <div align="center">
                            <div class="rate fs-5 rate-yellow mb-3">
                            <input name="rating" type="radio" id="star1" value="1" required>
                            <input name="rating" type="radio" id="star2" value="2" required>
                            <input name="rating" type="radio" id="star3" value="3" required>
                            <input name="rating" type="radio" id="star4" value="4" required>
                            <input name="rating" type="radio" id="star5" value="5" required>

                            <label for="star1" class="bi bi-star"></label>
                            <label for="star2" class="bi bi-star"></label>
                            <label for="star3" class="bi bi-star"></label>
                            <label for="star4" class="bi bi-star"></label>
                            <label for="star5" class="bi bi-star"></label>
                            </div>
                        </div>
                        @endforeach
                        <input type="hidden" name="movies_id" value="{{($key->id)}}">
                        <div align="center"><input type="submit" class="btn btn-warning" value="GÖNDER"></div>
                    </form>
                </div>
            </div>
        </div>
        </div>
        </div>
    </div>
</div>
</section>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
    $("input[name='rating']").click(function () {
        var star = $('.bi');
        var select = $(this).val();
        star.slice(0,5).removeClass("bi-star-fill");
        star.slice(0,5).addClass("bi-star");
        star.slice(0, select).removeClass("bi-star");
        star.slice(0, select).addClass("bi-star-fill");
    });
</script>
@include('sweetalert::alert')
</body>
</html>

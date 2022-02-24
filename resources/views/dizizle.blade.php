@include('layouts.app')
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<section class="transformers-area">
    <div class="container">
        <div class="transformers-box">
                @foreach($dizi as $key)
            <div class="row flexbox-center">
                <div class="col-lg-5 text-lg-left text-center">
                    <div class="transformers-content">
                        <img src="{{$key->series_image}}" alt="about" />
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="transformers-content">
                        <h2>{{$key->series_name}}</h2>
                        <ul>
                            <li>
                                <div class="transformers-left">
                                    DİRECTOR:
                                </div>
                                <div class="transformers-right">
                                    <b><b>{{$key->series_director}}</b></b>
                                </div>
                            </li>
                            <li>
                                <div class="transformers-left">
                                    SEASON:
                                </div>
                                <div class="transformers-right">
                                    <b><b>{{$key->series_season}}</b></b>
                                </div>
                            </li>
                            <li>
                                <div class="transformers-left">
                                    PART:
                                </div>
                                <div class="transformers-right">
                                    <b><b>{{$key->series_part}}</b></b>
                                </div>
                            </li>
                            <li>
                                <div class="transformers-left">
                                    RELEASE DATE:
                                </div>
                                <div class="transformers-right">
                                    <b><b>{{$key->series_date}}</b></b>
                                </div>
                            </li>
                            <li>
                                <div class="transformers-left">
                                    TRAİLER:
                                </div>
                            <div class="transformers-right">
                                <a href="{{$key->series_trailer}}" style="width: 750px" class="popup-youtube"><button type="button" class="btn btn-warning">WATCH</button></a>
                            </div>
                            </li>
                            <br>
                            <li>
                                <div class="transformers-left">
                                    CAST:
                                </div>
                                <div class="transformers-right">
                                </div>
                            </li>
                            <li>
                                <div class="transformers-left">
                                    İMDB:
                                </div>
                                <div class="transformers-right">
                                    <div class="author-review">
                                        <i class="icofont icofont-star"></i>
                                    </div>
                                    <b><b>{{$ort}}</b></b>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
<section class="details-area">
    <div class="container">
        <br>
        <br>
        <div class="container">
            <div align="center">
                <div class="row">
                    <div class="detail  s-content">
                        <div align="right"><a href="{{route("dizipuan",['slug' => $com->series_slug])}}"><button type="button" class="btn btn-warning">YORUM YAP & PUANLA</button></a></div>
                        <h2>Overview</h2>
                        <br>
                        <p>{{$com->series_desc}}</p>
                    </div>
                </div>
            </div>
            <hr />
            <div class="row col-md-13">
                <div class="col-md-12">
                    <div class="video-slider mt-20">
                        @foreach($dizi as $key)
                            <table>
                                <object width="1080" height="450">
                                    <param name="movie" value="{{$key->series_trailer}}">
                                    <param name="wmode" value="transparent">
                                    <embed src="{{$key->series_trailer}}" width="425" height="350">
                                </object></td></tr>
                            </table>
                        @endforeach
                    </div>
                </div>
            </div>
            <br>
            <h2>Film Hakkındaki Yorumlar</h2>
            <br>
            @foreach($comment as $key)
                <div class="card border-0 shadow-sm mb-3">
                    <div class="card-body">
                        <h4>Yorumlar</h4>
                        <span class="rate-yellow">
                        <small for="star1" class="bi bi-star-fill"></small>
                        <small for="star2" class="bi bi-star-fill"></small>
                        <small for="star3" class="bi bi-star-fill"></small>
                        <small for="star4" class="bi bi-star-fill"></small>
                        <small for="star5" class="bi bi-star"></small>
                    </span>
                        <p>{{$key->score_comment}}</p>
                        <div class="text-muted fs-6 mb-3">{{$key->score_name}}, {{$key->score_date}}</div>
                        <ul class="list-inline fs-5">
                        </ul>
                    </div>
                </div>
            @endforeach
        </div>
    </div>

    </div>
</section>
<br>
<!-- jquery main JS -->
<script src="assets/js/jquery.min.js"></script>
<!-- Bootstrap JS -->
<script src="assets/js/bootstrap.min.js"></script>
<!-- Slick nav JS -->
<script src="assets/js/jquery.slicknav.min.js"></script>
<!-- owl carousel JS -->
<script src="assets/js/owl.carousel.min.js"></script>
<!-- Popup JS -->
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<!-- Isotope JS -->
<script src="assets/js/isotope.pkgd.min.js"></script>
<!-- main JS -->
<script src="assets/js/main.js"></script>
</body>

</html>

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
                        <h2>{{$key->new_series_name}}</h2>
                        <ul>
                            <li>
                                <div class="transformers-left">
                                    DİRECTOR:
                                </div>
                                <div class="transformers-right">
                                    <b><b>{{$key->new_series_director}}</b></b>
                                </div>
                            </li>
                            <li>
                                <div class="transformers-left">
                                    SEASON:
                                </div>
                                <div class="transformers-right">
                                    <b><b>{{$key->new_series_season}}</b></b>
                                </div>
                            </li>
                            <li>
                                <div class="transformers-left">
                                    PART:
                                </div>
                                <div class="transformers-right">
                                    <b><b>{{$key->new_series_part}}</b></b>
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
                                    <b><b>{{$key->new_series_imdb}}</b></b>
                                </div>
                            </li>
                            <li>
                                <div class="transformers-left">
                                    TRAİLER:
                                </div>
                            <div class="transformers-right">
                                <a href="{{$key->new_series_trailer}}"><button type="button" class="btn btn-warning">WATCH</button></a>
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
        @foreach($dizi as $key)
            <br>
            <br>
               <div class="transformers-right">
                <div align="center">
                    <h3><a href=""><i class="icofont icofont-youtube-play"></i></a></h3>
                       <a href="{{$key->new_series_trailer}}" style="width: 750px"></a>
                </div>
               </div>
            <div align="center">
            <div class="row">
                <div class="details-content">
                        <h2>Overview</h2>
                    <br>
                        <p>{{$key->new_series_desc}}</p>
                    </div>
                </div>
            </div>
            </div>
        @endforeach
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

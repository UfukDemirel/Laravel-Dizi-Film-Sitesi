@include('layouts.app')
<section class="portfolio-area pt-60">
    <div class="tabs">
        <div class="container">
            <div class="row flexbox-center">
                <div class="col-lg-6 text-center text-lg-left">
                    <div class="section-title">
                        <h1><i class="icofont icofont-movie"></i>SONUÇLAR</h1>
                    </div>
                </div>
                <div class="col-lg-6 text-center text-lg-right">
                </div>
                <hr />
            </div>
            <br>
            <div class="tab-content">
                <div id="tab1-h2" class="tab active">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="row portfolio-item">
                                @foreach($posts as $key)
                                    <div class="col-md-3 col-sm-6 soon released">
                                        <a href="{{route('izle',['movie_slug' => $key->movie_slug])}}">
                                            <div class="single-portfolio">
                                                <div class="single-portfolio-img">
                                                    <img src="{{$key->movie_image}}" />
                                                </div>
                                                <div class="portfolio-content">
                                                    <br>
                                                    <h6><b>{{$key->movie_name}}</b></h6>
                                                    <div class="review">
                                                        <div class="author-review">
                                                            <i class="icofont icofont-star"></i>
                                                        </div>
                                                        <p><i class="ion-android-star"></i><span>{{$key->movie_imdb}}</span> /10</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
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
@include('sweetalert::alert')
</body>
</html>

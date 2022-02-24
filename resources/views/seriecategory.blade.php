@include('layouts.app')
<section class="hero-area" id="home">
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title pb-20">
                    <h1><i class="icofont icofont-film"></i>NEW RELEASED</h1>
                </div>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-12">
                <div class="video-slider mt-20">
                    @foreach($newly as $key)
                        <div class="video-area">
                            <iframe class="item-video" src="{{$key->link}}"></iframe>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
<section class="portfolio-area pt-60">
<div class="tabs">
    <div class="container">
        <div class="row flexbox-center">
            <div class="col-lg-6 text-center text-lg-left">
                <div class="section-title">
                </div>
            </div>
            <div class="col-lg-6 text-center text-lg-right">
            </div>
        <hr />
        </div>
        <br>
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title pb-20">
                    @foreach($serie as $key)
                        <h1><i class="icofont icofont-film"></i>{{$key->name}}</h1>
                    @endforeach
                </div>
            </div>
        </div>
        <hr />
        <div class="tab-content">
            <div id="tab1-h2" class="tab active">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row portfolio-item">
                        @foreach($series as $key)
                        <div class="col-md-3 col-sm-6 soon released">
                        <div class="single-portfolio">
                            <div class="single-portfolio-img">
                                <a href="{{route('dizizle',['series_slug' => $key->series_slug])}}">
                                    <img src="{{$key->series_image}}" alt="portfolio" />
                                </a>
                            </div>
                            <div class="portfolio-content">
                                <br>
                             <h6><b>{{$key->series_name}}</b></h6>
                                <div class="review">
                                    <div class="author-review">
                                        <i class="icofont icofont-star"></i>
                                    </div>
                                    <p><i class="ion-android-star"></i><span>{{$key->series_imdb}}</span> /10</p>
                                </div>
                            </div>
                        </div>
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
<script src="/assets/js/jquery.min.js"></script>
<!-- Bootstrap JS -->
<script src="/assets/js/bootstrap.min.js"></script>
<!-- Slick nav JS -->
<script src="/assets/js/jquery.slicknav.min.js"></script>
<!-- owl carousel JS -->
<script src="/assets/js/owl.carousel.min.js"></script>
<!-- Popup JS -->
<script src="/assets/js/jquery.magnific-popup.min.js"></script>
<!-- Isotope JS -->
<script src="/assets/js/isotope.pkgd.min.js"></script>
<!-- main JS -->
<script src="/assets/js/main.js"></script>
</body>

</html>

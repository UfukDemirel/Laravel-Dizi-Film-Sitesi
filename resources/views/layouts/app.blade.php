<?php
$db = new PDO("mysql:host=localhost;dbname=watchmovie;charset=utf8", "root", "");
?>
<!DOCTYPE HTML>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>WATCH</title>
    <!-- Favicon Icon -->
    <link rel="icon" type="image/png" href="/assets/img/logo6.png"/>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="/assets/css/bootstrap.min.css" media="all" />
    <!-- Slick nav CSS -->
    <link rel="stylesheet" type="text/css" href="/assets/css/slicknav.min.css" media="all" />
    <!-- Iconfont CSS -->
    <link rel="stylesheet" type="text/css" href="/assets/css/icofont.css" media="all" />
    <!-- Owl carousel CSS -->
    <link rel="stylesheet" type="text/css" href="/assets/css/owl.carousel.css">
    <!-- Popup CSS -->
    <link rel="stylesheet" type="text/css" href="/assets/css/magnific-popup.css">
    <!-- Main style CSS -->
    <link rel="stylesheet" type="text/css" href="/assets/css/style.css" media="all" />
    <!-- Responsive CSS -->
    <link rel="stylesheet" type="text/css" href="/assets/css/responsive.css" media="all" />
</head>
<body>
<header class="header">
    <div class="container">
        <div class="header-area">
            <div class="menu-area">
                <div class="responsive-menu"></div>
                <div class="mainmenu">
                    <ul id="primary-menu">
                        <div class="header-right">
                                <form action="{{route('search')}}" method="get">
                                    <input type="search" name="search" class="form-control"/>
                                    <button type="submit"><i class="icofont icofont-search"></i></button>
                                </form>
                            </div>
                        <br>
                        <br>
                        <b><li><a class="active" href="{{route('welcome')}}">HOME</a></li></b>
                        <li><a href="#">MOVİES<i class="icofont icofont-simple-down"></i></a>
                            <ul>
                                @foreach($moviesCategories as $category)
                                    <li><a href="{{route('film.kategori', ['slug' => $category->slug])}}">{{$category->name}}</a></li>
                                @endforeach
                            </ul>
                        </li>
                        <li><a href="#">SERİES<i class="icofont icofont-simple-down"></i></a>
                            <ul>
                                @foreach($seriesCategories as $category2)
                                    <li><a href="{{route('dizi.kategori', ['slug' => $category2->slug])}}">{{$category2->name}}</a></li>
                                @endforeach
                            </ul>
                        </li>
                        <li><a href="#">2021 MOVİES<i class="icofont icofont-simple-down"></i></a>
                            <ul>
                                @foreach($moviesCategories as $category)
                                    <li><a href="{{route('film.kategori', ['slug' => $category->slug])}}">{{$category->name}}</a></li>
                                @endforeach
                            </ul>
                        </li>
                        <li><a href="#">2021 SERİES<i class="icofont icofont-simple-down"></i></a>
                            <ul>
                                @foreach($seriesCategories as $category2)
                                    <li><a href="{{route('dizi.kategori', ['slug' => $category2->slug])}}">{{$category2->name}}</a></li>
                                @endforeach
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>

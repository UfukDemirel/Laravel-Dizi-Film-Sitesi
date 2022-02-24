-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 08 Ara 2021, 19:31:33
-- Sunucu sürümü: 10.4.20-MariaDB
-- PHP Sürümü: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `watchmovie`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cast`
--

CREATE TABLE `cast` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `movies_id` bigint(20) NOT NULL,
  `new_movies_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `cast`
--

INSERT INTO `cast` (`id`, `created_at`, `updated_at`, `movies_id`, `new_movies_id`, `name`, `slug`, `image`) VALUES
(2, NULL, NULL, 0, 1, 'Emma Stone', 'emma-stone', 'https://www.kadinveblog.net/wp-content/uploads/2014/08/Emma-Stone-sac-ve-makyaj-2015.jpg'),
(3, NULL, NULL, 0, 1, 'Emma Thompson', 'emma-thompson', 'https://tr.web.img3.acsta.net/pictures/15/12/08/11/17/523873.jpg'),
(4, NULL, NULL, 0, 1, 'Joel Fry', 'joel-fry', 'https://tr.web.img2.acsta.net/pictures/15/06/05/15/42/102886.jpg'),
(5, NULL, NULL, 5, 10, 'Scarlett Johanson', 'scarlett-johanson', 'https://voguecdn.blob.core.windows.net/files/img/article_detail/19-09/05/scarlett-johansson1141750371-1-1567687060.jpg'),
(6, NULL, NULL, 5, 0, 'Robert Downey JR.', 'robert-downey-jr', 'https://pbs.twimg.com/media/Bzmlvg2CQAAnYtO.jpg'),
(7, NULL, NULL, 5, 0, 'Chris Hemsworth', 'chris-hemsworth', 'https://i.pinimg.com/originals/04/db/3a/04db3ae86999d8aabcb29b06e35f529e.jpg'),
(8, NULL, NULL, 5, 0, 'Chris Evans', 'chris-evans', 'https://bodysize.org/wp-content/uploads/2017/04/Chris-Evans-300x400.jpg'),
(9, NULL, NULL, 5, 0, 'Jeremy Renner', 'jeremy-renner', 'https://tr.web.img4.acsta.net/pictures/15/08/12/12/49/191565.jpg'),
(10, NULL, NULL, 5, 0, 'Mark Ruffalo', 'mark-ruffalo', 'https://tr.web.img4.acsta.net/pictures/15/08/12/12/29/266164.jpg'),
(11, NULL, NULL, 5, 0, 'Paull Rudd', 'paul-rudd', 'https://www.simonemmett.co.uk/wp-content/uploads/2018/10/180423_Shot_01_00159_04_FLAT-600x800.jpg'),
(12, NULL, NULL, 5, 0, 'Brie Larson', 'brie-larson', 'https://tr.web.img4.acsta.net/pictures/16/10/13/12/09/081021.jpg'),
(13, NULL, NULL, 5, 0, 'Tom Holland', 'tom-holland', 'https://tr.web.img4.acsta.net/pictures/15/11/24/16/53/595385.jpg'),
(14, NULL, NULL, 5, 0, 'Josh Brolin', 'josh-brolin', 'https://tr.web.img4.acsta.net/pictures/15/05/19/14/54/445165.jpg'),
(15, NULL, NULL, 1, 0, 'Chris Pratt', 'chris-pratt', 'https://tr.web.img3.acsta.net/pictures/15/07/27/13/07/079239.jpg'),
(16, NULL, NULL, 1, 0, 'Dave Bautista', 'dave-bautista', 'https://tr.web.img4.acsta.net/pictures/14/02/18/11/39/096853.jpg'),
(17, NULL, NULL, 1, 0, 'Zoe Saldana', 'zoe-saldana', 'https://www.bravebeginnings.org/wp-content/uploads/2015/09/zoe-saldana-01-600x800.jpg'),
(18, NULL, NULL, 1, 0, 'Vin Diesel', 'vin-diesel', 'https://tr.web.img4.acsta.net/pictures/15/10/14/11/30/335169.jpg'),
(19, NULL, NULL, 1, 0, 'Bradley Cooper', 'bradley-cooper', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkQylZITf7zTxQDulZuchWHMEh8H31KggIohgoUpEdFg43B-TWKPtTYtN7kvvxS1VWGQE&usqp=CAU'),
(20, NULL, NULL, 1, 0, 'Karen Gillian', 'karen-gillian', 'https://i.pinimg.com/originals/3b/50/f9/3b50f9ed37e820fea88d134410b51946.jpg'),
(21, NULL, NULL, 1, 0, 'Micheal Rooker', 'micheal-rooker', 'https://st4.depositphotos.com/25606694/28496/i/600/depositphotos_284961510-stock-photo-michael-rooker.jpg'),
(22, NULL, NULL, 3, 0, 'Daniel Craig', 'daniel-craig', 'https://tr.web.img3.acsta.net/pictures/15/10/05/10/01/037461.jpg'),
(23, NULL, NULL, 3, 0, 'Javier Bardem', 'javier-bardem', 'https://i.pinimg.com/originals/31/d6/fc/31d6fc808da8ff2f609cb163a1dfe7ef.jpg'),
(24, NULL, NULL, 3, 0, 'Judi Dench', 'judi-dench', 'https://tr.web.img4.acsta.net/pictures/15/11/17/17/07/389094.jpg'),
(25, NULL, NULL, 3, 0, 'Naomie Harris', 'naomie-harris', 'https://tr.web.img4.acsta.net/pictures/17/01/09/17/01/556777.jpg'),
(26, NULL, NULL, 3, 0, 'Bérénice Marlohe', 'berenice-marlohe', 'https://tr.web.img3.acsta.net/pictures/16/01/12/12/16/201766.jpg'),
(27, NULL, NULL, 3, 0, 'Ralph Fiennes', 'ralph-fiennes', 'https://tr.web.img2.acsta.net/pictures/14/12/05/16/01/227338.jpg'),
(28, NULL, NULL, 0, 2, 'Ryan Reynolds', 'ryan-reynolds', 'https://tr.web.img4.acsta.net/pictures/15/07/28/17/15/280194.jpg'),
(29, NULL, NULL, 0, 2, 'Jodie Comer', 'jodie-comer', 'https://i.pinimg.com/736x/ba/ad/12/baad12cfe4abfd74843e0897257a2867.jpg'),
(30, NULL, NULL, 0, 2, 'Joe Keery', 'joe-keery', 'https://i.pinimg.com/originals/0f/ef/ff/0fefff4e232abad4806f38503cf6cc9e.jpg'),
(31, NULL, NULL, 0, 2, 'Pokimane', 'pokimane', 'https://pbs.twimg.com/media/B1QAq7HIMAAYEDv.jpg'),
(32, NULL, NULL, 7, 0, 'Keanu Revees', 'keanu-revees', 'https://tr.web.img3.acsta.net/pictures/15/12/28/15/43/230792.jpg'),
(33, NULL, NULL, 8, 0, 'Keanu Revees', 'keanu-revees', 'https://tr.web.img4.acsta.net/pictures/17/02/06/17/01/343859.jpg'),
(34, NULL, NULL, 8, 0, 'Ruby Rose', 'ruby-rose', 'https://image.biletinial.com//Uploads/People/ruby-rose-20201224101955.jpg'),
(35, NULL, NULL, 8, 0, 'Lonnie Rashid Lynn', 'lonnie-rashid-lynn', 'https://tr.web.img2.acsta.net/pictures/16/04/11/14/14/131495.jpg'),
(36, NULL, NULL, 8, 0, 'Lan Mcshane', 'lan-mcshane', 'https://tr.web.img2.acsta.net/pictures/16/02/17/16/41/160796.jpg'),
(37, NULL, NULL, 8, 0, 'Riccardo Scamarcio', 'riccardo-scamarcio', 'https://tr.web.img2.acsta.net/pictures/16/05/19/15/39/557678.jpg'),
(38, NULL, NULL, 8, 0, 'Lance Reddick', 'lance-reddick', 'https://tr.web.img4.acsta.net/pictures/16/05/24/15/18/419467.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `director`
--

CREATE TABLE `director` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `director_id` int(11) NOT NULL,
  `director_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `director_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `director_birthday` date DEFAULT NULL,
  `director_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `director_imdb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `director`
--

INSERT INTO `director` (`id`, `created_at`, `updated_at`, `category_id`, `director_id`, `director_name`, `director_image`, `director_birthday`, `director_desc`, `director_imdb`) VALUES
(1, NULL, NULL, 1, 0, 'Christopher Nolan', 'https://tr.web.img3.acsta.net/pictures/14/10/30/10/59/215487.jpg', '1970-07-30', 'Christopher Edward Nolan, İngiliz film yönetmeni, senarist, yapımcı, görüntü yönetmeni ve editör. Yönettiği filmler dünya çapında 5 milyar dolardan fazla hasılat elde etmiştir. Ayrıca 36 Oscar adaylığı ve 10 ödülü vardır. 1998 yılında Takip filmiyle ilk yönetmenlik denemesini yaptı.', '9.4');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `director_categories`
--

CREATE TABLE `director_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `director_categories`
--

INSERT INTO `director_categories` (`id`, `created_at`, `updated_at`, `name`, `slug`) VALUES
(1, NULL, NULL, 'Aksiyon-Macera', 'aksiyon-macera'),
(2, NULL, NULL, 'Bilim Kurgu', 'bilim-kurgu'),
(3, NULL, NULL, 'Animasyon', 'animasyon'),
(4, NULL, NULL, 'Gerilim-Gizem', 'gerilim-gizem'),
(5, NULL, NULL, 'Psikoloji', 'psikoloji'),
(6, NULL, NULL, 'Fantastik', 'fantastik'),
(7, NULL, NULL, 'Aile-Çocuk', 'aile-cocuk'),
(8, NULL, NULL, 'Dram-Hüzün', 'dram-hüzün');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `first_movies`
--

CREATE TABLE `first_movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `first_movies_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_movies_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_movies_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_movies_imdb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_movies_date` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `first_movies`
--

INSERT INTO `first_movies` (`id`, `created_at`, `updated_at`, `category_id`, `first_movies_name`, `first_movies_image`, `first_movies_desc`, `first_movies_imdb`, `first_movies_date`) VALUES
(1, NULL, NULL, 1, 'Avengers / Endgame', 'https://images.wallpapersden.com/image/download/avengers-endgame-imax-poster_a2llbGmUmZqaraWkpJRrZWWtbWVl.jpg', '\"Avengers Infinity War\"un ardından pek çok süper kahraman küle dönüşmüştür. ... Daha önce var olduğunu bilmedikleri bölgeler, kahramanlar ve evrenlerin varlığını öğrenen ekip, Thanos\'un kurduğu bu çarpık dengeyi değiştirmek ve kendilerinden alınanı geri getirmek için hayatlarının en büyük mücadelesine girişeceklerdir.', '8.4', '2019');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `first_movies_categories`
--

CREATE TABLE `first_movies_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2021_10_01_162614_create_movies_table', 1),
(18, '2021_10_01_163130_create_movies_categories_table', 1),
(19, '2021_10_02_094432_create_series_table', 2),
(20, '2021_10_02_094959_create_series_categories_table', 3),
(21, '2021_10_03_082109_create_director_table', 4),
(22, '2021_10_03_083243_create_director_categories_table', 5),
(23, '2021_10_05_082216_create_newmovies_table', 6),
(24, '2021_10_05_082434_create_new_movies_categories', 7),
(25, '2021_10_05_082756_create_new_movies_table', 8),
(26, '2021_10_05_082824_create_new_movies_categories_table', 8),
(27, '2021_10_05_083436_create_new_movies_categories_table', 9),
(28, '2021_10_10_111716_create_first_movies_categories_table', 10),
(29, '2021_10_10_111831_create_first_movies_table', 10),
(30, '2021_10_14_104112_create_new_series_table', 11),
(31, '2021_10_14_104228_create_new_series_categories_table', 11),
(32, '2021_10_14_124401_create_newly_released_table', 12),
(33, '2021_10_18_102613_create_cast_table', 13),
(34, '2021_12_04_120636_create_reviews_table', 14);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `movie_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movie_director` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `movie_slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `movie_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movie_desc` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movie_imdb` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `movie_date` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `movie_time` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `movies` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `emoji` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `movies`
--

INSERT INTO `movies` (`id`, `created_at`, `category_id`, `movie_name`, `movie_director`, `movie_slug`, `movie_image`, `movie_desc`, `movie_imdb`, `movie_date`, `movie_time`, `movies`, `emoji`) VALUES
(1, NULL, 1, 'Guardians Of The Galaxy', 'James Gunn', 'guardians-of-the-galaxy', 'https://s1.1zoom.me/b5050/916/Warriors_Men_Raccoons_Zoe_Saldana_Guardians_of_the_519152_600x800.jpg', 'Galaksinin Koruyucuları, evrenin kontrolünü ele geçirmeye çalışanları durdurmaya çalışan bir grup suçlunun hikayesini konu ediyor. Kendisine Star-Lord lakabını takan maceracı Peter Quill, esrarengiz bir küreyi çalınca güçlü, hırslı ve ihtiraslı bir kötü adam olan Ronan\'la başı derde girer.', '8.0', '2014', '2 Hours 2 Minutes', 'https://www.youtube.com/embed/d96cjJhvlMA', 'https://img.icons8.com/color/48/000000/groot.png'),
(3, NULL, 8, 'Skyfall/Ölmek İçin Zaman Yok', 'Sam Mendes', 'skyfall-olmek-icin-zaman-yok', 'https://image.biletinial.com//Uploads/Films/james-bond-no-time-to-die-2021103103515-2.jpg', 'Skyfall, MGM, Columbia Pictures ve Sony Pictures Entertainment\'in Eon Productions tarafından üretilen, James Bond serisinin yirmi üçüncü filmidir. Sam Mendes\'in yönettiği bu filmde Daniel Craig James Bond karakteri olarak üçüncü performansını sergiliyor. Filmde James Bond\'un M\'e karşı sadakati sınanacaktır.', '7.8', '2012', '2 Hours 23 Minutes', 'https://www.youtube.com/embed/ZQ_8TX9fyjQ', 'https://img.icons8.com/color/48/000000/james-bond--v1.png'),
(4, NULL, 7, '1917', 'Sam Mendes', '1917', 'https://biletinial.com/Uploads/Films/1917-202016111946.jpg', '1917, İngiliz yönetmen, yapımcı ve senarist Sam Mendes\'in yazdığı, oynadığı ve yönettiği epik savaş filmidir. Filmin oyuncuları George MacKay, Mark Strong, Andrew Scott, Richard Madden, Claire Duburcq, Colin Firth ve Benedict Cumberbatch\'tır.', '8.3', '2019', '1 Hours 59 Minutes', 'https://www.youtube.com/embed/RDpwH-S4JwA', 'https://img.icons8.com/external-victoruler-linear-colour-victoruler/64/000000/external-soldier-occupation-and-people-victoruler-linear-colour-victoruler.png'),
(5, NULL, 1, 'Avengers/Endgame', 'Anthony Russo/Joe Russo', 'avengers-endgame', 'https://storage.googleapis.com/cinecity/uploads/movie/image/600x800/avengers-endgame-afis1-1190-1190.jpg?=a7ef50a973c242765ba4d9b41399ff76', 'Avengers: Endgame, Marvel Comics\'in İntikamcılar adlı süper kahraman grubundan uyarlanan ve Marvel Studios tarafından yapımı üstlenilen ABD süper kahraman filmi. 2018 yapımı Avengers: Sonsuzluk Savaşı filminin devamı niteliğinde olup yirmi ikinci Marvel Sinematik Evreni filmidir.', '8.4', '2019', '2 Hours 3 Minutes', 'https://www.youtube.com/embed/TcMBFSGVi1c', 'https://img.icons8.com/windows/64/000000/avengers.png'),
(6, NULL, 8, 'Batman/Kara Şövalye Yükseliyor', 'Christopher Nolan', 'batman-kara-sovalye-yukseliyor', 'https://tr.web.img4.acsta.net/pictures/bzp/03/115362.jpg', 'Kara Şövalye, Christopher Nolan\'ın yönettiği bir süper kahraman filmidir. DC Comics\'in kurgusal karakteri Batman\'den uyarlanan 2005 tarihli Batman Başlıyor filminin devamıdır. Kara Şövalye\'nin senaryosunu Christopher ve kardeşi Jonathan Nolan yazmıştır. Hikâyeyi ise David S. Goyer oluşturmuştur. ', '9.0', '2008', '2 Hours 23 Minutes', 'https://www.youtube.com/embed/WzU32YlU2WI', 'https://img.icons8.com/color/48/000000/batman-old.png'),
(7, NULL, 8, 'John Wick 1', ' Chad Stahelski', 'john-wick-1', 'https://tr.web.img2.acsta.net/pictures/14/10/14/15/30/266211.jpg', 'John Wick bir Amerikalı aksiyon filmlerinden oluşan bir seridir. Lionsgate tarafından dağıtılan ve ilk filmi 2014\'te çıkan seri dünya çapında büyük hasılat elde etmiş ve izleyicilerin beğenisini toplamıştır. Serinin dördüncü filmi 27 Mayıs 2022\'de vizyona girecek.', '7.4', '2014', '1 Hours 41 Minutes', 'https://www.youtube.com/embed/C0BMx-qxsP4', 'https://img.icons8.com/color/48/000000/gun.png'),
(8, NULL, 8, 'John Wick 2 ', 'Chad Stahelski', 'john-wick-2', 'https://eniyiyabancifilmler.com/wp-content/uploads/2020/12/John-Wick-2.jpg', 'John Wick 2017 yapımı, yönetmenliğini Chad Stahelski\'nin, senaristliğini de Derek Kolstad\'ın üstlendiği Amerikan, aksiyon filmi. Filmin baş rollerini Keanu Reeves, Laurence Fishburne, Riccardo Scamarcio ve Ruby Rose isimler paylaşmıştır. 2014 yapımı olan John Wick\'in devam filmidir.', '7.5', '2017', '2 Hours 2 Minutes', 'https://www.youtube.com/embed/sZxdALDxLyQ', 'https://img.icons8.com/bubbles/50/000000/gun.png'),
(9, NULL, 8, 'John Wick 3 ', 'Chad Stahelski', 'john-wick-3', 'https://m.media-amazon.com/images/M/MV5BMmUyZWE3MjEtZmZhOS00Nzk0LWE4MDUtY2JhYjkzZDFmZDRhXkEyXkFqcGdeQXVyMTAzODYwMzY3._V1_.jpg', 'John Wick: Bölüm 3; başrolünü Keanu Reeves\'in üstlendiği 2019 yılında vizyona giren Amerikan yapımı bir aksiyon filmidir. John Wick ve John Wick: Bölüm 2\'nin devam filmidir. İlk ve ikinci filmdeki zincirleme oluşan olayların devamını göstermektedir.', '7.4', '2019', '2 Hours 11 Minutes', 'https://www.youtube.com/embed/9ZIAiQMhY70', 'https://img.icons8.com/external-justicon-lineal-color-justicon/64/000000/external-gun-pirates-justicon-lineal-color-justicon.png'),
(10, NULL, 2, 'Cars 1', 'John Lasseter', 'cars-1', 'https://i.pinimg.com/736x/74/d5/60/74d5602953548328bbfed6f643e3b307--disney-cars-pixar.jpg', 'Piston Kupası için The King ve Chick Hicks’e karşı yarışmak üzere Kaliforniya’ya gitmekte olan meşhur yarış arabası Lightning McQueen, kaza ile Radiator Springs adındaki küçük bir kasabanın yollarına zarar verir. Üstelik kendisinin de tamir olması için çok çalışması gerekmektedir. Bu sırada bu olayla beraber o kasabada geçirdiği zamanlarda dostluklar edinir ve gerçek sevgiyi yaşar. Hatta aşkı bile katar yaşamına. Bu küçük kasabada kaldığı sürece değerleri değişmeye başlar. İşte ancak ondan sonra gerçek bir kazanan olmaya hazır hale gelecektir. Arabalar üzerinden hayatın anlamına dokunan keyifli bir animasyon.', '7.1', '2006', '1 Hours 57 Minutes', 'https://www.youtube.com/embed/wFVKnC_9B9Y', 'https://img.icons8.com/color/48/000000/pixar.png'),
(11, NULL, 2, 'Cars 2', 'John Lasseter', 'cars-2', 'https://tr.web.img3.acsta.net/medias/nmedia/18/71/72/07/19650210.jpg', 'Arabalar 2, Pixar\'ın yapımlığında bir bilgisayar animasyonu aksiyon macera komedi 3-D filmidir ve 2006 yapımlı Arabalar filminin devamıdır. Dağıtımını Walt Disney Pictures şirketi yapmıştır. Ratatuy filminin yönetmeni Brad Lewis ve filmin yapımcısı John Lasseter görevi devraldı.', '6.1', '2011', '1 Hours 47 Minutes', 'https://www.youtube.com/embed/JnSE21Tifh0', 'https://img.icons8.com/nolan/48/pixar.png'),
(12, NULL, 2, 'Cars 3', 'John Lasseter', 'cars-3', 'https://s1.1zoom.me/b5050/717/Cars_3_Lightning_McQueen_Jackson_Storm_Two_525908_600x800.jpg', 'Arabalar 3, Pixar\'ın yapımcılığında Walt Disney Pictures tarafından yayınlanan bir bilgisayar animasyonu 3-D filmidir ve 2006 yapımlı Arabalar ve 2011 yapımlı Arabalar 2 filmlerinin devamı olan 16 Haziran 2017 tarihinde vizyona giren üçüncü Arabalar filmidir. ', '6.7', '2017', '1 Hours 49 Minutes', 'https://www.youtube.com/embed/v0rXPy3msog', 'https://img.icons8.com/windows/48/000000/pixar.png'),
(13, NULL, 2, 'Oyuncak Hikayesi 1 ', 'John Lasseter', 'oyuncak-hikayesi-1', 'https://tr.web.img4.acsta.net/pictures/bzp/01/14264.jpg', 'Buzz Lightyear adlı yeni çıkan oyuncak, Andy\'e hediye edilir. Oyuncağı çok seven Andy, eski gözdesi Şerif Woody\'e olan ilgisini yitirir. Bir gün Buzz yanlışlıkla pencereden aşağı uçunca, herkes Woody\'nin onu öldürdüğüne inanır. Woody, kendisini kurtarabilmek için Buzz\'ın arkasından giderek onu geri getirmeye karar verir. Fakat ikiliyi dış dünyada büyük tehlikelerle dolu maceralar beklemektedir.\r\n\r\n\"Oyuncak Hikâyesi\", 2005 yılında Kongre Kütüphanesi tarafından \"kültürel, tarihi ve estetik olarak önemli\" filmler arasına seçilerek ABD Ulusal Film Arşivi\'nde muhafaza edilmesine karar verilmiştir.', '8.3', '1995', '1 Hours 14 Minutes', 'https://www.youtube.com/embed/v-PjgYDrg70', 'https://img.icons8.com/ios-filled/48/000000/buzz-lightyear.png'),
(14, NULL, 2, 'Oyuncak Hikayesi 2 ', 'John Lasseter', 'oyuncak-hikayesi-2', 'https://tr.web.img2.acsta.net/pictures/bzp/03/22323.jpg', 'Andy\'nin tatil için bir kovboy kampına gitmesi sonucu oyuncakları kendi başına kalırlar. Bu sırada paradan başka bir şey düşünmeyen AL McWhiggin adlı koleksiyoncu, Woody\'yi kaçırır. Kaçırılan Woody geçmişine ilişkin bazı gerçeklerle yüz yüze gelerek eski ve yeni arkadaşları arasında bir seçim yapmak zorunda kalır.', '7.9', '1999', '1 Hours 22 Minutes', 'https://www.youtube.com/embed/AvWwvcUuNKs', 'https://img.icons8.com/nolan/48/pixar.png'),
(15, NULL, 2, 'Oyuncak Hikayesi 3 ', 'Lee Unkrich', 'oyuncak-hikayesi-3', 'https://tr.web.img3.acsta.net/pictures/bzp/01/126123.jpg', 'Andy artık büyümüştür, üniversiteye gidecektir. Oyuncaklar ile oynamayı bırakmıştır. Woody, Bazz ve diğer oyuncaklar tekrar Andy ile oynamak için bir yol bulmaya çalışırlar. Andy Woody dışındaki oyuncakları bir poşet içinde tavan arasına kaldırmak isterken yanlışlıklar sonucu diğer oyuncaklar kendilerini bir kreşte bulurlar. Kreşin oyuncaklarının lideri Yumuş adlı bir pelüş ayıdır. Yumuş ve yanındaki oyuncaklar önce Buzz ve arkadaşlarına iyi davranıyormuş gibi gözükse de sonradan o kadar da iyi olmadıkları anlaşılır. Woody bir şekilde kreşe ulaşır v oradan diğer arkadaşlarıyla bir kaçış planı yapar. Yumuş ise onları engellemek için elinden geleni yapar.\r\n\r\n', '8.2', '2010', '1 Hours 43 Minutes', 'https://www.youtube.com/embed/wTy-MSfC8tA', 'https://img.icons8.com/color/48/000000/pixar-lamp.png'),
(16, NULL, 2, 'Oyuncak Hikayesi 4', 'Josh Cooley', 'oyuncak-hikayesi-4', 'https://image.biletinial.com/Uploads/Films/oyuncak-hikayesi-4-201961311557.jpg', 'Oyuncak Hikayesi 4, kaşıktan yapılma bir oyuncak olan Forky\'nin atıldığı macerayı konu ediyor. ... Tek kullanımlık bir kaşıktan yapılma bir oyuncak olsa da o oyuncak olmadığı konusunda ısrarcıdır. Kendisini Bonnie\'nin odasına ait hissetmeyen Forky, dünyadaki amacının ne olduğunu düşünmeye başlar.', '7.7', '2019', '1 Hours 40 Minutes', 'https://www.youtube.com/embed/ldOHKNg9A4M', 'https://img.icons8.com/color-glass/48/000000/pixar-lamp-2.png'),
(17, NULL, 2, 'COCO', ' Adrian Molina/Lee Unkrich', 'coco', 'https://tr.web.img2.acsta.net/pictures/18/06/11/11/24/4980871.jpg', 'Coco, 12 yaşındaki Miguel\'in ölüler diyarındaki macerasını anlatıyor. 12 yaşındaki Miguel\'in en büyük kahramanı efsanevi Meksikalı gitarist Ernesto de la Cruz\'dur. Ancak Cruz hayatını kaybetmiştir ve Miguel\'in onunla tanışma imkanı yoktur. ... Ancak gitarı çalması onu bir anda Ölüler Diyarı\'na götürüverir.', '8.4', '2017', '1 Hours 45 Minutes', 'https://www.youtube.com/embed/Ga6RYejo6Hk', 'https://img.icons8.com/emoji/48/000000/man-light-skin-tone.png'),
(18, NULL, 3, 'Aquaman', 'James Wan', 'aquaman', 'https://tr.web.img2.acsta.net/pictures/18/11/16/07/25/2787536.jpg', 'Justice League sonrasında yaşananlardan yola çıkan solo Aquaman filminde Jason Momoa; John Curry, namıdiğer Aquaman\'a hayat vermeye devam ederken film, kahramanın gelen tehditler karşısında yurdu Atlantis\'i savunmak için girdiği amansız mücadeleyi konu ediniyor.', '6.9', '2018', '2 Hours 24 Minutes', 'https://www.youtube.com/embed/WDkg3h8PCVU', 'https://img.icons8.com/color/48/000000/aquaman.png'),
(19, NULL, 3, 'Alaaddin', 'Guy Ritchie', 'alaaddin', 'https://biletinial.com/Uploads/Films/aladdin-2019516103920.jpg', 'Aladdin, sihirli bir lamba sayesinde sevdiği kıza ulaşmaya çalışırken, kendisini zorlu bir maceranın içerisinde bulan bir gencin hikayesini konu ediyor. Aladdin, zamanını Agrabah şehrinde pazardan yiyecek çalarak geçiren fakir bir gençtir. ... Ancak yaşam tarzına rağmen aslında Aladdin\'in altın gibi bir kalbi vardır.', '6.9', '2019', '2 Hours 8 Minutes', 'https://www.youtube.com/embed/foyufD52aog', 'https://img.icons8.com/external-icongeek26-linear-colour-icongeek26/64/000000/external-lamp-camping-icongeek26-linear-colour-icongeek26.png'),
(20, NULL, 3, 'Ready Player One', 'Steven Spielberg', 'ready-player-one', 'https://tr.web.img4.acsta.net/pictures/18/03/21/15/11/0917889.jpg', 'Ailesini küçük yaşta kaybeden Wade Watts, gerçek dünyanın sıkıntılarından kaçmak için zamanını The Oasis adlı bir oyun evreninde geçirir. Oyunun milyoner kurucusu oyun evreninin içine bir anahtar saklamıştır ve öldüğünde tüm servetini ve oyunun kontrolünü bu anahtarı bulana vadetmektedir', '7.4', '2018', '2 Hours 20 Minutes', 'https://www.youtube.com/embed/cSp1dM2Vj48', 'https://img.icons8.com/external-ddara-lineal-color-ddara/48/000000/external-gamer-ar-and-vr-technology-ddara-lineal-color-ddara.png'),
(21, NULL, 3, 'X-Men: Dark Phoenix', 'Simon Kinberg', 'x-men-dark-phoneix', 'https://i.pinimg.com/originals/be/3c/bb/be3cbbdb06f7d362fa30f002a68f353f.jpg', 'X-Men: Dark Phoenix, Marvel Comics\'in X-Men karakterlerinden uyarlanan ve 20th Century Fox tarafından dağıtılan ABD yapımı süper kahraman filmi. X-Men film serisinin on üçüncü ve yeni bir X-Men üçlemesinin başlangıç filmi olacaktır.', '6.0', '2019', '1 Hours 54 Minutes', 'https://www.youtube.com/embed/k7IG_ICMrhk', 'https://img.icons8.com/color/48/000000/hawkgirl.png'),
(24, NULL, 4, 'Se7en', 'David Fincher', 'seven', 'https://www.tekfullfilmizle.net/wp-content/uploads/yedi-se7en.jpg', 'Yedi, seri cinayetler işleyen bir katilin peşine düşen iki polis dedektifinin hikayesini anlatıyor. Bir seri katil 7 ölümcül günahı işleyenleri kendi yöntemleriyle öldürmektedir. Yedi Ölümcül Günah, Hıristiyanlık inançlarına göre Kibir, Açgözlülük, Şehvet Düşkünlüğü,Kıskançlık, Oburluk,Yıkıcılık ve Tembellik\'tir. İki polis dedektifi bu seri katilin peşindedir. Film, Amerika\'da gösterime girdiği hafta 14.000.000 dolar gelir elde etmişti. Yönetmen David Fincher imzalı film,sürükleyici konusu ve oyuncuların performanslarıyla tüm dünyada gişede büyük başarı yakalamıştı. Başrollerde Brad Pitt, Morgan Freeman, Gywneth Paltrow var. En iyi kurgu dalında 1996’da ödüle aday olan film bu ödülü alamamıştı. Özellikle sürpriz ve çarpıcı finali ile şimdiden sinema tarihinde bir klasik olarak yerini aldı.', '8.6', '1995', '2 Hours 7 Minutes', 'https://www.youtube.com/embed/znmZoVkCjpI', 'https://img.icons8.com/ios-filled/50/000000/no-weapons.png'),
(25, NULL, 5, 'Ned Kelly', 'Gregor Jordan', 'ned-kelly', 'https://tr.web.img2.acsta.net/pictures/bzp/01/38713.jpg', 'Ned Kelly, Gregor Jordan\'ın yönettiği, Avustralya yapımı bir western filmidir. Suçlu Ned Kelly\'nin hayatını konu alan Robert Drewe\'in Our Sunshine adlı kitabından yola çıkılarak çekilmiştir. Yapım dünya çapında 6,585,516$ kazanmıştır.', '6.5', '2003', '1 Hours 50 Minutes', 'https://www.youtube.com/embed/tc6GA-kahbE', NULL),
(26, NULL, 5, 'The Revenant', 'Alejandro González Iñárritu', 'the-revenant', 'https://i.pinimg.com/originals/db/ec/52/dbec52733eecedb20cccbbbec4456d85.jpg', 'Diriliş, Alejandro G. Iñárritu\'nun yönettiği, 2016 yılında gösterime giren biyografik western gerilim filmi. Senaryo Michael Punke\'nin 2002\'de yayınlanan aynı adlı romanından uyarlanarak Iñárritu ve Mark L. Smith tarafından yazıldı. Filmde sınır sakini Hugh Glass\'ın hayatından esinlenildi.', '8', '2015', '2 Hours 36 Minutes', 'https://www.youtube.com/embed/LoebZZ8K5N0', NULL),
(27, NULL, 8, '21 Bridges', 'Brian Kirk', '21-bridges', 'https://biletinial.com/Uploads/Films/21-bridges-201962010347.jpg', 'Gözden düşmüş bir NYPD dedektifi, polis katili bir adamın şehirde bir insan avı başlatmasıyla kendini affettirmek için ikinci bir şans elde eder. Meslektaşlarını bir suç imparatorluğu ile ilişkilendiren bir komployu açığa çıkaran dedektif, kendini büyük çaplı bir kovalamacanın göbeğinde bulur.', '6.6', '2019', '1 Hours 36 Minutes', 'https://www.youtube.com/embed/BVZDhunTrYA', NULL),
(28, NULL, 6, 'Joker', 'Todd Phillips', 'joker', 'https://s1.1zoom.me/b6253/890/Joker_hero_Joker_2019_Joaquin_Phoenix_Clown_572451_600x800.jpg', 'Joker, başarısız bir komedyen olan Arthur Fleck\'in hayatına odaklanıyor. Toplum tarafından dışlanan bir adam olan Arthur, hayatta yapayalnızdır. Sürekli bir bağ kurma arayışında olan Arthur, yaşamını taktığı iki maske ile geçirir. ... Arthur, zamanla kendi kimliğinden uzaklaşıp Joker karakterine bürünür.', '8.4', '2019', '2 Hours 2 Minutes', 'https://www.youtube.com/embed/WVC1KC4Lauc', NULL),
(29, NULL, 1, 'The Suicide Squad / İntihar Timi', 'James Gunn', 'the-suicide-squad-intihar-timi', 'https://cdn.biletinial.com/Uploads/Films/the-suicide-squad-intihar-timi-202172792854.jpg', 'The Suicide Squad: İntihar Timi, hapishaneden çıkabilmek için çabalayan kötü kahramanlara odaklanıyor. Belle Reve, ABD\'deki en yüksek ölüm oranına sahip olan hapishanedir. Süper Kötülerin tutulduğu bu yerden kurtulmak için her şey göze alınır. Bloodsport, Peacemaker, Captain Boomerang, Ratcatcher 2, Savant, King Shark, Blackguard, Javelin ve herkesin favori psikopatı Harley Quinn yap ya da öl görevini yerine getirebilmek için bir mahkumlar timi oluşturur.', '7.3', '2021', '2 Hours 2 Minutes', 'https://www.youtube.com/embed/rahSqns0UCw', NULL),
(30, NULL, 6, 'Eşkiya', 'Yavuz Turgul', 'eskiya', 'https://tr.web.img4.acsta.net/pictures/bzp/01/17646.jpg', 'Eşkiya, hapse düşmesine neden olan arkadaşının peşine düşen bir adamın hikayesini anlatıyor. 35 yıl önce Cudi dağlarında bir grup eşkiya yakalandı ve hapse atıldı. Yıllar içinde kimi hastalıktan, kimi hesaplaşma sonucu öldü. Biri hariç... 35 yıl sonra Hapisten çıkınca Baran\' ın ilk işi köyüne dönmek olur.', '8.2', '1996', '2 Hours 2 Minutes', 'https://www.youtube.com/embed/FOtWWsRiHJw', NULL),
(32, NULL, 6, 'God Father', 'Francis Ford Coppola', 'god-father', 'https://tr.web.img3.acsta.net/medias/nmedia/18/91/63/78/20155809.jpg', 'The Godfather ismiyle de bilinen Baba filminde, bir İtalyan mafya ailesinin destansı öyküsü ele alınıyor. 40\'lar ve 50\'lerin Amerika\'sında geçen İtalyan asıllı Corleone ailesinin şehri ve diğer aileleri yönetmesi sonucunda mafya topluluğu haline gelmiştir.', '9.2', '1972', '2 Hours 55 Minutes', 'https://www.youtube.com/embed/sY1S34973zA', NULL),
(33, NULL, 6, 'God Father 2 ', 'Francis Ford Coppola', 'god-father-2', 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/28d19919067247.562d47bb13239.jpg', 'Michael Corleone, mafya dünyasında inanılmaz bir güce ulaşırken, bir yandan da ailesini korumaya çalışır. Fakat zaman içerisinde gelişen olaylar onu hiç yapmak istemediği işlere ve suçlara yönlendirir. Tek özelliği zekası iken bir anda bir suç imparatorluğunu yönetecek acımasızlığa ve kendine güvene kavuşur.', '9', '1974', '3 Hours 22 Minutes', 'https://www.youtube.com/embed/9O1Iy9od7-A', NULL),
(34, NULL, 8, 'V For Vendetta ', 'James McTeigue', 'v-for-vendetta', 'https://i.pinimg.com/736x/3c/54/26/3c5426ecfe85d2e03b640415c2c319d8.jpg', 'V, 2020 yılında ve İngiltere\'de geçiyor. Ülke, son derece baskıcı bir toplum düzenini yaşamaktadır. Türlü yasaklar ve engellerle idare edilen halk, şiddet yanlısı bir konuma gelmiştir. Bu kargaşanın orta yerinde görünen gizemli V, belaya bulaşmış masum bir kadın olan Evey\'i kurtarır.', '8.1', '2005', '2 Hours 12 Minutes', 'https://www.youtube.com/embed/IHVzzxrPt1c', NULL),
(35, NULL, 7, 'Yüzüklerin Efendisi', 'Peter Jackson', 'yuzuklerin-efendisi', 'https://tr.web.img2.acsta.net/medias/nmedia/18/35/11/65/affiche.jpg', 'John Ronald Reuel Tolkien\'in yazdığı Yüzüklerin Efendisi adlı fantastik edebiyat serisinden uyarlanarak çekilmiş Peter Jackson imzalı bir film üçlemesidir. Yüzüklerin Efendisi: Yüzük Kardeşliği Yüzüklerin Efendisi: İki Kule Yüzüklerin Efendisi: Kralın Dönüşü', '8.8', '2001', '2 Hours 58 Minutes', 'https://www.youtube.com/embed/USNqsrW5DrQ', NULL),
(36, NULL, 8, 'Shershaah', 'Vishnuvardhan', 'shershaah', 'https://1.bp.blogspot.com/-cB1N2IDJx_4/XiAje3sXAEI/AAAAAAAAuHk/R6OKddbIkVsMHiuOeIWWOaHS3_2NaOr6gCNcBGAsYHQ/s1600/Shershaah-Poster-3.jpg', '24 yaşında Kargil Savaşı\'nda şehit edilen yüzbaşı Vikram Batra\'nın ilham veren hikayesi gözler önüne seriliyor.', '8.7', '2021', '2 Hours 15 Minutes', 'https://www.youtube.com/embed/Q0FTXnefVBA', NULL),
(37, NULL, 1, 'DUNE', 'Denis Villeneuve', 'dune', 'https://image.biletinial.com/Uploads/Films/dune-col-gezegeni-2021811132026.jpg', 'Dune\'un konusu ise şöyle: Uzak bir gelecekte geçen \"Dune\", ailesi çöl gezegeni Arrakis\'in kontrolüne sahip olan Paul Atreides\'in hikayesini anlatıyor. Galaksinin farklı noktalarındaki gezegenler, rakip feodal aileler tarafından yönetilmektedir. ... Bu tuzağın sonucunda Paul\'un ailesi darmadağın olarak firari hale gelir.', '8.4', '2021', '2 Hours 35 Minutes', 'https://www.youtube.com/embed/dHc2AQaEaJw', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `movies_categories`
--

CREATE TABLE `movies_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `movies_categories`
--

INSERT INTO `movies_categories` (`id`, `created_at`, `updated_at`, `name`, `slug`) VALUES
(1, NULL, NULL, 'Bilim Kurgu', 'bilim-kurgu'),
(2, NULL, NULL, 'Çizgi Film', 'cizgi-film'),
(3, NULL, NULL, 'Macera', 'macera'),
(4, NULL, NULL, 'Polisiye', 'polisiye'),
(5, NULL, NULL, 'Western ', 'western'),
(6, NULL, NULL, 'Dram', 'dram'),
(7, NULL, NULL, 'Fantastik', 'fantastik'),
(8, NULL, NULL, 'Aksiyon ', 'aksiyon');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `newly_released`
--

CREATE TABLE `newly_released` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `newly_released`
--

INSERT INTO `newly_released` (`id`, `name`, `duration`, `link`, `image`, `created_at`, `updated_at`) VALUES
(1, 'WONDER WOMAN 1984', '2:47', 'https://www.youtube.com/embed/m5I9qnW2WtM', 'https://www.log.com.tr/wp-content/uploads/2019/12/wonder-woman-1984-1-660x371.jpg', NULL, NULL),
(2, 'HIZLI VE ÖFKELİ 9', '3:56', 'https://www.youtube.com/embed/ZZSLUPPgzl8', 'https://cdn.kayiprihtim.com/wp-content/uploads/2021/07/hizli-ve-ofkeli-9-incelemesi-F9-The-Fast-Saga.jpg', NULL, NULL),
(3, 'VENOM:ZEHİRLİ ÖFKE', '2:56', 'https://www.youtube.com/embed/aoMiRgKEFnc', 'https://startupteknoloji.com/wp-content/uploads/2021/05/VENOM-Zehirli-Ofke-2-ilk-Fragmani-ve-Vizyon-Tarihi-www.startupteknoloji.com_.jpg', NULL, NULL),
(4, 'THE MATRİX:RESRRECTİONS', '3:15', 'https://www.youtube.com/embed/Wd2CzMcswZg', 'https://m.media-amazon.com/images/M/MV5BYTMyNjA2NjgtYjU3OS00MGVhLWJlMWItNDMzZGVmNWQwZjgzXkEyXkFqcGdeQXNuZXNodQ@@._V1_.jpg', NULL, NULL),
(5, 'Spider-Man: No Way Home', '3:09', 'https://www.youtube.com/embed/Z9PIawNKagU', 'https://teknodiot.com/wp-content/uploads/2021/08/spider-man-no-way-home-fragmani-avengers-endgamei-gecti.webp', NULL, NULL),
(6, 'ETERNALS', '3:13', 'https://www.youtube.com/embed/0bmGCsHXplY', 'https://i.ytimg.com/vi/ZjMy3T7RGJA/maxresdefault.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `customer_service_rating` int(11) DEFAULT NULL,
  `quality_rating` int(11) DEFAULT NULL,
  `friendly_rating` int(11) DEFAULT NULL,
  `pricing_rating` int(11) DEFAULT NULL,
  `recommend` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` enum('Sales','Service','Parts') COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `reviewrateable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewrateable_id` bigint(20) UNSIGNED NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `score`
--

CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `score_name` varchar(50) DEFAULT NULL,
  `score_date` varchar(20) DEFAULT NULL,
  `score_comment` varchar(1000) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `movies_id` bigint(20) DEFAULT NULL,
  `series_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `score`
--

INSERT INTO `score` (`id`, `score_name`, `score_date`, `score_comment`, `rating`, `movies_id`, `series_id`) VALUES
(1, 'Ufuk Demirel', '05/12/2021', 'İki çekimle bitirilmesi bile şaşırtıcı en efsane film bence.', 5, 4, NULL),
(7, 'Deniz Demirel', '05/12/2021', 'Harika film tavsiye ederim.', 5, 4, NULL),
(8, 'Gazi Demirel', '05/12/2021', 'Harika film tavsiye ederim.', 3, 4, NULL),
(9, 'asdfasf', '05/12/2021', 'Harika film tavsiye ederim.', 3, 4, NULL),
(10, 'Melih Mustafa Acet', '07/12/2021', 'safsadfadsf', 5, 4, NULL),
(11, 'Deniz Demirel', '07/12/2021', 'sadsad', 5, 4, NULL),
(12, 'asdfasf', '05/12/2021', 'asdasda', 5, 4, NULL),
(13, 'asdfasf', '05/12/2021', 'asdasda', 5, 4, NULL),
(14, 'asdfasf', '05/12/2021', 'asdasda', 5, 4, NULL),
(15, 'asdfasf', '05/12/2021', 'asdasda', 5, 4, NULL),
(16, 'Deniz Demirel', '07/12/2021', 'sadasdsad', 5, 1, NULL),
(17, 'Deniz Demirel', '05/12/2021', 'Güzelmiş', 5, NULL, 8),
(18, 'Deniz Demirel', '08/12/2021', 'Güzel', 4, NULL, 19);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `series`
--

CREATE TABLE `series` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `series_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series_director` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `series_season` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `series_part` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `series_trailer` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `series_slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `series_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `series_imdb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series_date` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emoji` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `series`
--

INSERT INTO `series` (`id`, `created_at`, `updated_at`, `category_id`, `series_name`, `series_director`, `series_season`, `series_part`, `series_trailer`, `series_slug`, `series_image`, `series_desc`, `series_imdb`, `series_date`, `emoji`) VALUES
(1, NULL, NULL, 1, 'Bodyguard', 'Siddique', '1', '6', 'https://www.youtube.com/embed/7TDILqtggjs', 'bodyguard', 'https://tr.web.img3.acsta.net/pictures/18/10/19/13/22/2994340.jpg', 'Bodyguard, bir politikacıyı korumakla görevli olan savaş gazisinin hikayesini konu ediyor. David Budd, Londra Metropolitan Polisi\'nde Özel Koruma Memuru olarak çalışan bir adamdır. Dengesiz ama cesur bir polis memuru olan David, kendisini bir anda içinde bulduğu bir terör saldırısının engellenmesine yardımcı olur.', '7.8', '2018', 'https://img.icons8.com/color/48/000000/bodyguard-male.png'),
(2, NULL, NULL, 9, 'Sherlock Holmes', 'Paul McGuigan', '4', '13', 'https://www.youtube.com/embed/xK7S9mrFWL4', 'sherlock-holmes', 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/f23cd725047183.5633e6a6bbc27.jpg', 'Bir roman uyarlaması olan Sherlock, bir dedektiflik dizisidir. Sherlock Holmes adında bir dedektif ve onun tamamen tesadüf eseri tanıştığı destekçisi Dr. John Watson birlikte iş yapmaya başlarlar. Ev arkadaşı olan bu ikili, yeni taşındıkları mahallede geçen cinayet olaylarında polise yardım etmekle başlarlar işe.', '9.0', '2010-2017', 'https://img.icons8.com/color/48/000000/sherlock-holmes.png'),
(4, NULL, NULL, 1, 'Prison Break', 'Bobby Roth', '5', '90', 'https://www.youtube.com/embed/AL9zLctDJaU', 'prison-break', 'https://tr.web.img3.acsta.net/pictures/17/05/22/16/49/588696.jpg', 'Büyük Kaçış, ABD yapımı bir aksiyon dizisi. Hikâyesi Paul Scheuring tarafından ortaya atılmış ve FOX şirketi tarafından 2005 yılında dizi olarak hayatına adım atmıştır.', '8.3', '2005-2017', 'https://img.icons8.com/external-vitaliy-gorbachev-lineal-color-vitaly-gorbachev/48/000000/external-prisoner-protest-vitaliy-gorbachev-lineal-color-vitaly-gorbachev.png'),
(5, NULL, NULL, 2, 'Game Of Thrones', 'Alan Taylor', '8', '73', 'https://www.youtube.com/embed/KPLWWIOCOOQ', 'game-of-thrones', 'https://s1.1zoom.me/b5050/277/Game_of_Thrones_Head_529923_600x800.jpg', 'Westeros ve Essos adlı kurgusal kıtaların olduğu dünyada geçen taht mücadelelerinde Baratheon Hanesi\'nin başında olduğu Yedi Krallık\'ta Kralın Sağ Eli Jon Arryn öldükten sonra Kral Robert Baratheon\'ın kral maiyeti ile Winterfell\'a gelip eski dostu Eddard Stark\'a sağ kolu olma teklif etmesiyle başlar.', '9.2', '2011-2019', 'https://img.icons8.com/ios/48/000000/targaryen-house.png'),
(6, NULL, NULL, 10, 'The Mandolorian', 'Jon Favreau', '2', '16', 'https://www.youtube.com/embed/aOC8E8z_ifw', 'the-mandolorian', 'https://i.pinimg.com/736x/5e/c4/13/5ec413ece16c74aa327d9d5f3f929d4e.jpg', 'The Mandalorian, 12 Kasım 2019\'da Disney+\'ta yayımlanmaya başlayan, uzay Western\'i tarzı, internet tabanlı televizyon dizisidir. Yıldız Savaşları evreninde geçen dizi, Jedi\'ın Dönüşü döneminden beş yıl sonra başlar ve Yeni Cumhuriyet\'in ulaşamayacağı yerlerde bir Mandaloryalı ödül avcısını izler.', '8.5', '2019-', 'https://img.icons8.com/color/48/000000/baby-yoda.png'),
(7, NULL, NULL, 10, 'Sweet Tooth', 'Jin Mickle', '1', '8', 'https://www.youtube.com/embed/9zG9RuJb3QU', 'sweeth-tooth', 'https://moviefashion.b-cdn.net/wp-content/uploads/2021/08/Christian-Convery-Sweet-Tooth-Gus-Brown-Vest.jpg', 'weet Tooth, insan ve geyik karışımı bir canlı olan genç Gus\'ın maceralarını konu ediyor. Dünyayı sarsan gizemli bir olayın ardından harekete geçen Gus, kendisi gibi melez insanlardan oluşan bir aileye katılır ve birlikte büyük bir komployu keşfetmek üzere zorlu bir maceraya atılırlar.', '8.0', '2021-', 'https://img.icons8.com/external-victoruler-linear-colour-victoruler/48/000000/external-deer-animal-squad-victoruler-linear-colour-victoruler.png'),
(8, NULL, NULL, 6, 'Arsen Lupin', 'Jean-Paul Salomé', '2', '10', 'https://www.youtube.com/embed/ga0iTWXCGa0', 'arsen-lupin', 'https://moviefashion.b-cdn.net/wp-content/uploads/2020/11/Arsene-Lupin-Omar-Sy-Coat.jpg', 'Hikâye, Senegalli bir göçmenin çocuğuna daha iyi bir yaşam sürmek için Fransa\'nın başkenti Paris\'e gelen tek oğlu olan profesyonel hırsız Assane Diop\'u anlatıyor. ... Yirmi beş yıl sonra, Assane, karizmasını ve hırsızlık, hile ve kılık değiştirme ustalığını kullanarak Pellegrini ailesinden intikam almak için yola çıkar.', '8.0', '2021-', 'https://img.icons8.com/officel/48/000000/spy-male.png'),
(9, NULL, NULL, 10, 'Ragnarok', 'Taika Waititi', '2', '12', 'https://www.youtube.com/embed/7H9AaiBLHCo', 'ragnarok', 'https://www.jacketsjunction.com/wp-content/uploads/2021/05/Ragnarok-David-Stakston-Jacket.jpg', 'Nefes kesen Norveç manzarasında ilerleyen ve İskandinav mitolojisinin sonunu anımsatan bir senaryo ile karşımıza çıkan Ragnarok, Magne ve kardeşi Laurits\'in kurgusal Edda kasabasına olan yolculukları ile başlar. Anneleri sevimli kasabada iş bulmuş akabinde de peşine çocuklarını takmıştır.', '7.5', '2021-', 'https://img.icons8.com/fluency/48/000000/thor-hammer.png'),
(10, NULL, NULL, 2, 'La Casa De Papel', 'Jesus Colmenar', '5', '43', 'https://www.youtube.com/embed/hMANIarjT50', 'la-casa-de-papel', 'https://www.justamericanjackets.com/wp-content/uploads/2021/07/Money-Heist-Red-Cotton-Jumpsuit.jpg', 'La casa de papel, Álex Pina tarafından yaratılan İspanya yapımı bir soygun ve suç dizisi. Dizi, \"Profesör\" liderliğindeki ekibin İspanya Kraliyet Darphanesi\'ni ve İspanya Merkez Bankası\'nı soymasını konu edinir. ... 2018\'de dizi, Netflix\'te en çok izlenen İngilizce dışı dizi oldu.', '8.2', '2017-', 'https://img.icons8.com/color/48/000000/money-heist-dali.png'),
(12, NULL, NULL, 11, 'The Witcher', 'Stephen Surjik', '2', '8', 'https://www.youtube.com/embed/ndl1W4ltcmg', 'the-witcher', 'https://s1.1zoom.me/b5255/528/The_Witcher_3_Wild_Hunt_Wolves_Head_Black_572570_600x800.jpg', 'The Witcher\'ın fantastik hikayesinde, yüzyılı aşkın süredir bir arada yaşayan insanlar, cüceler ve elfler arasındaki barış sona erer ve yeni bir ırklar arası savaş patlak verir. The Witcher olarak nam salan acımasız suikastçı Geralt of Rivia, vaadedilen çocuğun doğumunu beklemektedir.', '8.2', '2019-', 'https://img.icons8.com/external-icongeek26-linear-colour-icongeek26/48/000000/external-wolf-animal-faces-icongeek26-linear-colour-icongeek26.png\n'),
(13, NULL, NULL, 1, 'Invincible', 'Evan Goldberg', '1', '6', 'https://www.youtube.com/embed/-bfAVpuko5o', 'invincible', 'https://storage.googleapis.com/hipcomic/p/bdfee0e38748b31a70f73cdb580eba68-800.jpg', 'Invincible, dünyanın en güçlü süper kahramanının oğlu olan Mark Grayson\'ın hikayesini konu ediyor. Sıradan bir genç olan Mark\'ın hayatı 17. yaşına bastığında bambaşka bir hal alır. O da artık babası gibi bir takım süper güçlere sahiptir. ... Invincible\'ın showrunner koltuğunda Simon Racioppa yer alıyor.', '8.7', '2021-', 'https://img.icons8.com/color/48/000000/superman-dc.png'),
(14, NULL, NULL, 11, 'The Magicians', 'John McNamara', '5', '65', 'https://www.youtube.com/embed/wCMMNUAYoNE', 'the-magicians', 'https://www.syfy.com/sites/syfy/files/styles/syfy_image_gallery_full_breakpoints_theme_syfy_smartphone_1x/public/magicians_s2_photos_08.jpg', 'Quentin Coldwater isimli bir gencin, sihir gücü olduğunu keşfetmesini ve New York\'un kuzeyindeki çok gizli ve prestijli bir büyücülük okuluna kabul olmasıyla değişen hayatını, girdiği tehlikeli ve karanlık yolları anlatan The Magicians, Lev Grossman\'ın aynı adlı çok satan romanından uyarlanıyor.', '7.6', '2015-2020', 'https://img.icons8.com/external-wanicon-flat-wanicon/48/000000/external-magic-fairytale-wanicon-flat-wanicon.png'),
(15, NULL, NULL, 1, 'Frontier', 'Rob Blackie/ Peter Blackie', '3', '18', 'https://www.youtube.com/embed/2J5wTsYAh94', 'frontier', 'https://www.mjacket.com/product_img/1575917640-jason-momoa-frontier-declan-harp-coat.jpg', 'Frontier, 18. Yüzyılın sonlarına doğru Kuzey Amerika\'da ticari bir geçim kaynağı olarak sanayileşen, şiddet olaylarının ve kanlı çatışmaların yaşandığı kürk ticaret sisteminin gelişimini merkezine alacak.', '8.0', '2016-2018', 'https://img.icons8.com/color/48/000000/iron-age-warrior.png'),
(16, NULL, NULL, 10, 'Vikings', 'Michael Hirst', '6', '89', 'https://www.youtube.com/embed/0kz8BwGUxQw', 'vikings', 'https://s1.1zoom.me/b5548/721/Warriors_Vikings_(TV_series)_Men_Travis_Fimmel_516656_600x800.jpg', 'Savaş tanrısı Odin’nin soyundan geldiğine inanılan Viking Kralı olan Ragnar Lothbrok ve ailesinin öykülerini ekranlara getiriyor. Oscar ödüllü Elizabeth, Camelot ve The Tudors gibi çok başarılı olan tarihi dizilerin senaristi Michael Hirst’in imzasını taşıyan dizi, 13. Yüzyıl kuzey efsanelerini ve Viking kültürünü izleyicilerine keşfettiriyor.', '8.5', '2013-2020', 'https://img.icons8.com/external-soft-fill-juicy-fish/48/000000/external-viking-video-game-elements-soft-fill-soft-fill-juicy-fish.png'),
(17, NULL, NULL, 7, 'TİMELESS', 'John Showalter', '2', '28', 'https://www.youtube.com/embed/zSYZJGAGvww', 'timeless', 'https://tr.web.img4.acsta.net/pictures/16/05/17/16/05/248998.jpg', 'Shawn Ryan ve Eric Kripke tarafından yaratılan dizi; insanlığın dokusunu değiştirecek kadar güçlü bir girişimi önlemek için zamanda yolculuk eden üçlünün maceralarını anlatıyor.', '7.7', '2016-2018', 'https://img.icons8.com/office/48/000000/fraud.png'),
(18, NULL, NULL, 11, 'THE BOYS', 'Hartley Gorenstein', '2', '16', 'https://www.youtube.com/embed/tcrNsIaQkb4', 'the-boys', 'https://lh3.googleusercontent.com/proxy/NGQBlMxQjYkrKC5wkOEuKMHdV56Dnw93v1qbLmUQ7rTqR8HRxUsqrChJEJ6OCPN-t4WC99EkIU_w71mjITwbDCQTqqVfa_4_Q7WWf33omNu3psJZweuPhlnxeele724DUgb52OykaKHP', 'The Boys, süper kahramanların güçlerini ve şöhretlerini kötüye kullandığı bir evrende geçiyor. Kendilerini kanunu korumaya adayan ve “The Boys” olarak adlandırılan bir grup insan, yozlaşmış süper kahramanları ortadan kaldırmak için zorlu bir yolculuğa çıkar.', '8.7', '2019-', 'https://img.icons8.com/fluency-systems-filled/48/000000/superman-dc.png'),
(19, NULL, NULL, 7, 'West World', 'Jonathan Nolan', '3', '28', 'https://www.youtube.com/embed/9BqKiZhEFFw', 'west-world', 'https://i.pinimg.com/originals/98/19/12/98191200b43df6b8c76ba74125c586b2.jpg', 'Westworld konusu itibarıyla aslında oldukça karanlık. İnsanların robotlara her istediklerini yapabilecekleri, örneğin onları öldürebilecekleri ve istismar edebilecekleri bir dünya. ... Robotlar ise tamamen insanların emrinde, ama bir “hata” sonucu bilinç kazanmaya başlayan robotlarla işler değişecek gibi.', '8.6', '2016-', 'https://img.icons8.com/color/48/000000/world.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `series_categories`
--

CREATE TABLE `series_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `series_categories`
--

INSERT INTO `series_categories` (`id`, `created_at`, `updated_at`, `name`, `slug`) VALUES
(1, NULL, NULL, 'Aksiyon', 'aksiyon'),
(2, NULL, NULL, 'Psikolojik Gerilim', 'psikolojik-gerilim'),
(3, NULL, NULL, 'Macera', 'macera'),
(4, NULL, NULL, 'Korku ', 'korku'),
(5, NULL, NULL, 'Western', 'western'),
(6, NULL, NULL, 'Gizem', 'aile-cocuk'),
(7, NULL, NULL, 'Bilim Kurgu', 'bilim-kurgu'),
(8, NULL, NULL, 'Komedi', 'komedi'),
(9, NULL, NULL, 'Polisiye', 'polisiye'),
(10, NULL, NULL, 'Dram', 'dram\r\n'),
(11, NULL, NULL, 'Fantastik', 'fantastik');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cast`
--
ALTER TABLE `cast`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `director_categories`
--
ALTER TABLE `director_categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `first_movies`
--
ALTER TABLE `first_movies`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `first_movies_categories`
--
ALTER TABLE `first_movies_categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `movies_categories`
--
ALTER TABLE `movies_categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `newly_released`
--
ALTER TABLE `newly_released`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_reviewrateable_type_reviewrateable_id_index` (`reviewrateable_type`,`reviewrateable_id`),
  ADD KEY `reviews_author_type_author_id_index` (`author_type`,`author_id`);

--
-- Tablo için indeksler `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `series_categories`
--
ALTER TABLE `series_categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `cast`
--
ALTER TABLE `cast`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Tablo için AUTO_INCREMENT değeri `director`
--
ALTER TABLE `director`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `director_categories`
--
ALTER TABLE `director_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `first_movies`
--
ALTER TABLE `first_movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `first_movies_categories`
--
ALTER TABLE `first_movies_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Tablo için AUTO_INCREMENT değeri `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Tablo için AUTO_INCREMENT değeri `movies_categories`
--
ALTER TABLE `movies_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `newly_released`
--
ALTER TABLE `newly_released`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `score`
--
ALTER TABLE `score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `series`
--
ALTER TABLE `series`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `series_categories`
--
ALTER TABLE `series_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

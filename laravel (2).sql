-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2022 at 01:37 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'FASHION', 'file/category/pPyJtlxb6puhVYcZ7OUd-category-1-400x150.jpg', '2021-12-12 01:00:38', '2021-12-12 02:27:56'),
(2, 'TRAVEL', 'file/category/PIBvRluq1jIzfyIXgUsq-category-2-400x150.jpg', '2021-12-12 01:16:12', '2021-12-12 02:28:37'),
(3, 'LIFESTYLE', 'file/category/F1jreFViM6lyWywFt4U7-category-3-400x150.jpg', '2021-12-12 02:16:14', '2021-12-12 02:26:31'),
(4, 'DESIGN', 'file/category/cNHoszu8WN3sjjw4dZAk-category-4-400x150.jpg', '2021-12-12 04:42:36', '2021-12-12 04:44:12');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `posts_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul_info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `judul_info`, `isi_info`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Chulo Papi', 'Halo, saya Hanung Risqi Saya seorang programming laguages dan mahasiswa aktif Teknik Informatika', 1, '2022-04-09 23:20:51', '2022-04-10 01:45:21'),
(4, 'Hanung Rizqi (KLIK)', 'Halo, saya Hanung Risqi\r\nSaya seorang programming laguages dan mahasiswa aktif Teknik Informatika', 1, '2022-04-10 01:43:51', '2022-04-10 01:43:51'),
(5, 'Bill Gates', 'William Henry Gates III (born October 28, 1955) is an American business magnate, software developer, investor, author, and philanthropist. He is a co-founder of Microsoft, along with his late childhood friend Paul Allen. During his career at Microsoft', 1, '2022-04-10 02:26:23', '2022-04-10 02:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `mainmenus`
--

CREATE TABLE `mainmenus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) NOT NULL DEFAULT 0,
  `category` enum('link','content','file') COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mainmenus`
--

INSERT INTO `mainmenus` (`id`, `title`, `parent`, `category`, `content`, `file`, `url`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', 0, 'link', NULL, '', '/', '1', '1', '2021-12-15 00:56:47', '2021-12-15 13:23:53'),
(3, 'About', 0, 'content', '<p>Halo, saya Hanung Risqi<br />\r\nSaya seorang programming laguages dan mahasiswa aktif Teknik Informatika yang tertarik mendalami dan belajar didunia Pemrograman serta dunia komputer lainnya.<br />\r\n<br />\r\nMelihat kemajuan industry 4,0 yang semakin pesat,<br />\r\nsaya selalu belajar segala hal mengenai Teknologi Komputer untuk menjadi seorang yang dapat berguna dan dapat membantu Perusahaan IT di indonesia dengan seluruh kemampuan, keterampilan dan dedikasi yang saya miliki.</p>', '', 'about', '2', '1', '2021-12-15 13:22:51', '2022-04-11 04:29:30'),
(4, 'Posts', 0, 'link', NULL, '', 'post', '3', '1', '2021-12-15 13:24:21', '2021-12-15 13:24:21'),
(5, 'Categories', 0, 'link', NULL, '', '#', '4', '0', '2021-12-15 13:24:49', '2021-12-30 00:11:45'),
(6, 'Fashion', 5, 'link', NULL, '', '#', '1', '1', '2021-12-15 13:25:35', '2021-12-15 13:25:35'),
(7, 'Travel', 5, 'link', NULL, '', '#', '2', '1', '2021-12-15 13:25:49', '2021-12-15 13:25:49'),
(8, 'Design', 5, 'link', NULL, '', '#', '3', '1', '2021-12-15 13:28:20', '2021-12-15 13:28:20'),
(10, 'Brochure', 0, 'file', NULL, 'file/mainmenu/qbKX3dBKOehMoB6klsL9-Brosur-Garuda-Travel-Insurance_v1.8 (1)-dikompresi.pdf', NULL, '6', '1', '2021-12-15 22:35:56', '2021-12-15 22:49:57'),
(12, 'Kontak', 0, 'link', '<p>Jika mengalami masalah saat mengakses website, ada kekeliruan dalam isi konten atau memiliki kritik dan saran harap Kontak kami segera, Terimakasih !</p>', '', 'contact', '5', '1', '2021-12-15 23:15:05', '2021-12-31 02:11:08'),
(14, 'Info', 0, 'link', NULL, '', 'info', '4', '1', '2022-04-10 01:33:52', '2022-04-10 01:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Alan', 'alan@alan.alan', 'Saya butuh bantuan !', 'Halo, saya butuh bantuan', '2021-12-16 00:31:25', '2021-12-16 00:31:25'),
(2, 'tes', 'tes@tes.com', 'tes', 'tes', '2021-12-16 00:42:29', '2021-12-16 00:42:29'),
(3, 'DEFRI', 'defri.kurniawan@dsn.dinus.ac.id', 'coba', 'Hanya test aja', '2021-12-30 00:15:25', '2021-12-30 00:15:25'),
(4, 'dede', 'aaaa', 'coba', 'test', '2021-12-31 00:17:18', '2021-12-31 00:17:18'),
(5, 'Hanung Risqi', '111201811391@mhs.dinus.ac.id', 'j', 'ewf', '2022-04-10 01:03:43', '2022-04-10 01:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_10_080119_create_categories_table', 1),
(6, '2021_12_10_081417_create_sliders_table', 1),
(7, '2021_12_11_061151_create_posts_table', 1),
(9, '2021_12_12_222943_create_comments_table', 2),
(10, '2021_12_12_235641_add_content_to_users_table', 3),
(11, '2021_12_15_051513_create_mainmenus_table', 4),
(12, '2021_12_16_064231_create_messages_table', 5),
(13, '2022_04_09_071350_create_info_table', 6),
(14, '2022_04_10_053042_create_runningtext_table', 7),
(15, '2022_04_10_134208_create_runningtext_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_headline` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `thumbnail`, `categories_id`, `content`, `is_headline`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Melestarikan Kain Tradisional Indonesia itu Penting', 'file/post/CdSXM69f4sQxie5iy7dH-blog-1-1000x600.jpg', 1, '<p>Asean Tradisional Textile Symposium digelar di Yogyakarta. Kegiatan ini berlangsung dengan menghadirkan berbagai narasumber dari berbagai negara yakni Asia, Eropa, hingga Amerika.</p>\r\n\r\n<p>Dalam acara tersebut, berbagai pengetahuan terkait dunia pertekstilan tradisional dari berbagai daerah. Tentunya, tekstil tradisional ini juga menjadi ajang untuk memperkuat tekstil Indonesia di kancah internasional.</p>\r\n\r\n<p>Ia mengatakan, perajin tekstil tradisional khususnya DIY juga dapat menghasilkan karya-karya baru dengan kualitas internasional. Sehingga, nilai jualnya pun tinggi dan bisa meningkatkan perekonomian perajin tekstil tradisional DIY.</p>\r\n\r\n<p>&quot;Dengan harapan adanya dampak positif bagi para perajin tekstil tradisional, agar tetap bertahan dalam gempita ekonomi global,&quot; kata Sekertaris Daerah DIY, Arofah Noor Indriani, di Royal Ambarrukmo Yogyakarta Hotel, Sleman.</p>\r\n\r\n<p>Ia menjelaskan, wastra atau kain tradisional Indonesia seperti batik dan tenun penting untuk dilestarikan. Sebab, kain tradisional tersebut menunjukkan jati diri suatu masyarakat dan bangsa.&nbsp;</p>\r\n\r\n<p>Sebagai warisan budaya sekaligus produk peradaban, kata Arofah, wastra tradisional tentu memiliki filosofi-filosofi luhur. Yang mana, tervisualisasi dalam corak, keragaman perpaduan warna, dan pada proses pembuatannya.</p>\r\n\r\n<p>&quot;Keragaman inilah yang menjadikan wastra tradisional menjadi menarik dan harus dilestarikan keberadaannya,&quot; jelasnya.</p>', 1, 1, '2021-12-12 06:13:22', '2021-12-12 06:54:54'),
(3, '7 Manfaat Traveling yang Harus Kamu Ketahui !', 'file/post/99Sw6I4yFGwo3fsAbWVV-blog-2-1000x600.jpg', 2, '<p>Traveling selalu menjadi momen yang spesial bagi setiap orang. Kamu pun pasti demikian, bukan? Tidak hanya sekadar liburan atau mengistirahatkan pikiran, traveling punya banyak manfaat untuk mengembangkan karakter diri. Bahkan, saat ini traveling juga menjadi hobi yang &ldquo;menghasilkan&rdquo; seperti yang dilakukan para travel influencer. Well, simak yuk 7 manfaat traveling yang harus kamu tahu!</p>\r\n\r\n<p>1. Mengurangi Stres<br />\r\nManfaat pertama tentu saja mengurangi rasa stres. Setelah berhari-hari melakukan berbagai kegiatan di sekolah atau kampus, traveling menjadi momen bagi kamu untuk terbebas dari semua rutinitas tersebut.</p>\r\n\r\n<p>2. Lebih Mengenal Diri Sendiri<br />\r\nTraveling menjadi momen yang tepat untuk lebih mengenal diri sendiri. Kamu akan lebih mengerti tentang dirimu sendiri pada saat jauh dari orang tua dan orang-orang terdekat. &nbsp;</p>\r\n\r\n<p>3. Meningkatkan Skill Berkomunikasi<br />\r\nMelalui traveling, kamu juga akan meningkatkan skill komunikasimu. Karena di sana kamu akan bertemu dengan orang baru dan bisa berbincang tentang hal-hal yang tidak bisa kamu temui melalui internet. Tidak hanya itu, kamu pun pastinya akan belajar tentang bahasa atau &ldquo;istilah&rdquo; baru dalam berkomunikasi.</p>\r\n\r\n<p>4. Belajar Beradaptasi dengan Cepat<br />\r\nPergi ke tempat baru tentu saja membuatmu bertemu dengan orang dan kebiasaan baru. Di sini kamu dituntut untuk bisa belajar beradaptasi secara cepat agar bisa survive selama melakukan traveling.</p>\r\n\r\n<p>5. Mengenal Kebudayaan Baru<br />\r\nDengan traveling dan mengunjungi tempat baru, kamu juga akan mengenal kebudayaan baru. Termasuk history tempat atau kota yang selama ini mungkin tidak bisa kamu dapatkan melalui internet.&nbsp;</p>\r\n\r\n<p>6. Menumbuhkan Percaya Diri<br />\r\nMelalui traveling kamu juga akan menumbuhkan rasa percaya diri dalam dirimu. Karena setelah traveling kamu punya banyak hal baru yang bisa kamu bagikan kepada orang-orang di sekitarmu.</p>\r\n\r\n<p>7. Menambah Wawasan<br />\r\nTraveling tentu saja akan menambah wawasanmu. Mulai dari kebiasaan orang, perbedaan bahasa, kuliner, dan beragam kebudayaan, serta cerita baru yang bisa kamu temui selama traveling.</p>', 0, 1, '2021-12-12 14:30:38', '2021-12-12 14:30:38'),
(4, '4 Konten Lifestyle Influencer Agar Hidup Lebih Positif dan Bersemangat', 'file/post/wg0s0oVOWdMCFWt7H7x8-blog-3-500x400.jpg', 3, '<p>Akun sosial media para influencer menjadi konsumsi penggemarnya setiap hari, hal ini memang sudah menjadi gaya hidup mayoritas masyarakat modern dengan perkembangan teknologi yang super cepat. Banyak generasi millennial &amp; generasi Z yang menjadikan profesi influencer youtube untuk mengumpulkan pundi-pundi rupiah.</p>\r\n\r\n<p>Konten yang dibagikan cukup beragam, mulai dari pengetahuan umum, informasi keajaiban alam, gaya make up dan berbusana, sampai tips dalam membangun bisnis. Jika anda tertarik menjalani profesi baru sebagai influencer di dunia maya, sebaiknya membagikan konten yang bermanfaat. Karena para follower cenderung mengikuti apa yang disampaikan.</p>\r\n\r\n<p>Simak beberapa konten yang memberikan efek positif untuk menjalani hidup lebih bersemangat berikut ini.</p>\r\n\r\n<p>1. Postingan quote membangun semangat<br />\r\nKepopuleran instagram membuat tren influencer dikenal banyak orang, tidak hanya kalangan ataupun komunitas tertentu seperti dulu. Ketika anda sudah memiliki pengikut yang berjumlah ribuan bahkan jutaan, maka berikan konten-konten terbaik. Banyak orang memuat postingan quote untuk menyemangati follower-followernya.</p>\r\n\r\n<p>Seorang pengusaha sukses yang juga seorang influencer, mempunyai pengikut akun media sosial sebanyak kurang lebih 4,2 juta netizen. Konten utama yang dipilihnya yaitu postingan video motivasi hidup dan solusi merintis dan mengembangkan bisnis.</p>\r\n\r\n<p>Jika anda ingin memposting video yang cukup panjang di instagram maka perlu dibuat beberapa tahap karena ada batasan durasi. Mulai perhatikan akun influencer-influencer sukses sebagai referensi untuk menebar hal-hal positif melalui media sosial di tengah maraknya berita HOAX.</p>\r\n\r\n<p>2. Konten beragam yang positif<br />\r\nKonten yang berisi hal-hal baik banyak sekali jenisnya, anda sebagai influencer baru di dunia maya tidak harus selalu memilih satu topik bahasan. Dalam salah satu akun perusahaan yang bergerak di bidang Digital Marketing membahas banyak tema yaitu percintaan, bisnis, keluarga, sampai hobi-hobi positif. Hal tersebut ternyata juga disukai banyak orang.</p>\r\n\r\n<p>Apabila memilih untuk membahas beberapa hal, pastikan masih punya hubungan yang berkesinambungan. Misalkan saja tentang keluarga yang pastinya ada unsur percintaan, motivasi meraih cita-cita, pengasuhan anak (parenting), dan sebagainya. Mulai cari data sebanyak-banyaknya untuk memberikan dan mengubah hidup para pengguna sosial media ke arah yang lebih positif.</p>\r\n\r\n<p>3. Inspirasi mengatur keuangan keluarga<br />\r\nTwitter masih banyak dipilih sebagian orang sebagai media untuk saling berbagi hal positif. Karena jumlah karakter yang dibatasi, anda bisa menyiasatinya dengan membuat konten lengkapnya di sebuah blog pribadi. Caranya hanya dengan menyertakan link yang akan mengarahkan pembaca ke topik tersebut menuju laman blog.</p>\r\n\r\n<p>Sebagai seseorang yang baru dalam profesi influencer, anda perlu mengetahui cara mendapatkan perhatian dari pengguna akun social media. Misalnya dengan menambahkan gambar menarik atau tulisan yang memikat. Sehingga menimbulkan rasa penasaran para pembaca untuk mengetahui tentang bahasan yang anda buat secara lengkap.</p>\r\n\r\n<p>Gaya hidup konsumtif masyarakat modern memang cukup sulit dicegah. Banyak produk-produk yang sering menawarkan diskon besar menjadi tantangan tersendiri bagi masyarakat. Anda tidak bisa melarang langsung untuk hidup lebih hemat, oleh karena itu, berilah informasi pada follower untuk menerapkan gaya hidup lebih simple.</p>\r\n\r\n<p>Ini bisa menjadi konten yang menarik. Contohnya dengan membahas konsep hidup sederhana, membeli barang kebutuhan yang memang benar-benar dibutuhkan. Memberikan cerita-cerita inspiratif orang-orang yang lebih bahagia hidupnya ketika tidak lagi menerapkan perilaku konsumtif. Atau mungkin konten agama yang memberikan motivasi agar tidak boros.</p>\r\n\r\n<p>4. Konten tips-tips fashion, travelling, kesehatan<br />\r\nJejaring pertemanan Facebook masih menjadi favorit berbagi konten bermanfaat bagi kehidupan dengan share beberapa tips. Bahkan sekarang sudah banyak fitur baru yang keren seperti status, siaran langsung, dan lain-lain. Sebagai influencer, tidak ada salahnya anda menyapa pengguna setia media sosial ini dengan pengetahuan kesehatan, travelling, dan fashion.</p>\r\n\r\n<p>Konten travelling bisa didapat dari perjalanan pribadi, terlebih lagi jika hal ini merupakan kegiatan yang anda gemari. Bagikan foto-foto tempat wisata yang direkomendasikan untuk mengisi akhir pekan, misalnya tempat liburan sekaligus belajar untuk anak. Sementara konten kesehatan bisa membahas tentang gaya hidup sehat dengan rajin olahraga.</p>\r\n\r\n<p>Biasanya, tutorial olahraga seperti zumba, yoga, ataupun senam-senam yang lain lebih baik dihadirkan dalam bentuk video dengan memanfaatkan youtube. Keuntungannya yaitu durasi unggahan video lebih panjang, sudah dikenal masyarakat sebagai sosial media yang fokus menampilkan video, dan banyak pengaksesnya.</p>\r\n\r\n<p>Hampir setiap hari, orang membukanya untuk mencari tutorial, tambahan pengetahuan, ataupun mendengarkan video klip terbaru.</p>\r\n\r\n<p>Pekerjaan yang tidak terikat dengan rutinitas kantor di era modern selain freelancer adalah menjadi seorang influencer. Anda memaksimalkan semua jenis akun social media untuk mengedukasi, memberi semangat, dan menebar hal positif ke banyak orang. Selain itu, influencer menjadi salah satu profesi yang bisa menopang biaya hidup.</p>\r\n\r\n<p>Namun, tentunya butuh kerja keras sebelum mendapatkan banyak pengikut, anda perlu memberikan konten-konten menarik, unik, dan bermanfaat. Kunjungi belifollowers.com untuk mengetahui info seputar penambahan pengikut di dunia maya.</p>', 0, 1, '2021-12-12 14:32:19', '2021-12-15 00:24:28'),
(5, 'Cara Membuat Gambar Dekoratif', 'file/post/9dg6TidmhbWX4vhnjuaH-blog-6-500x400.jpg', 4, '<p>Dikutip dari buku Kerajinan Tangan &amp; Kesenian, Dedi Nuhadiat (2005: 26) pengertian menggambar dekoratif adalah menggambar hiasan, yang tidak perlu persis dengan apa yang diitiru. Menggambar dekoratif dapat berupa gambar sederhana dengan motif geometris dan motif stilasi.&nbsp;<br />\r\nMotif geometris adalah motif yang terdiri dari obyek yang mempunyai bentuk-bentuk ilmu ukur seperti lingkaran, persegi, segitiga dan lain-lain. Sedangkan motif stilasi adalah motif teknik untuk mengubah bentuk benda dengan cara menggayakan bentuk atau warna. Nantinya bentuk yang digayakan akan dijadikan hiasan. Bentuk stilasi dapat mengambil gambaran dari binatang, tumbuhan, hingga manusia.<br />\r\nLangkah-Langkah Menggambar Dekoratif<br />\r\nBerikut adalah langkah-langkah dan cara membuat gambar dekoratif :</p>\r\n\r\n<ol>\r\n	<li>Menguasai teknik dasar menggambar seperti membuat garis lurus, membuat garis lengkung dan membuat garis bergelombang.</li>\r\n	<li>Menentukan ide atau konsep dari gambar dekoratif. Sebelum memulai menggambar harus ditentukan terlebih dahulu ide yang akan digambar.</li>\r\n	<li>Menyiapkan alat dan bahan menggambar dekoratif, yang bertujuan untuk menyesuaikan alat dan bahan apa yang akan digunakan agar sesuai dengan obyek yang akan digambar . Misalnya, alat dan bahan yang digunakan untuk menggamabar di tembok akan berbeda dengan alat dan bahan yang digunakan untuk menggambar di canvas.</li>\r\n	<li>Membuat motif gambar dekoratif. Stelah alat dan bahan sudah siap langkah selanjutnya adalah membuat motif yang akan digunakan sebagai gambar dekoratif.</li>\r\n	<li>Langkah selanjutnya adalah membuat variasi gambar dekoratif untuk mempercantik gambar.</li>\r\n	<li>Mewarnai gambar dekoratif, pada proses ini adalah proses akhir yang akan menentukan gambar dekoratif untuk itu pemilihan warna harus tepat.</li>\r\n</ol>', 0, 1, '2021-12-12 14:37:48', '2021-12-12 14:37:48'),
(6, 'Timnas Indonesia Juara AFF Suzuki Cup 2021', 'file/post/nm1OD0m4dGIa9zT2PVau-udinus.jpg', 4, '<p>Timnas Indonesia juara AFF Suzuki Cup 2021</p>', 1, 1, '2021-12-30 00:08:53', '2021-12-30 00:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `runningtext`
--

CREATE TABLE `runningtext` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `runningtext`
--

INSERT INTO `runningtext` (`id`, `judul`, `link`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Buka \"https://www.linkedin.com/in/hanung-risqi-38897b209\" untuk cek portofolio linkedin saya. Terimakasih.', 'https://www.linkedin.com/in/hanung-risqi-38897b209/', 1, '2022-04-11 04:20:39', '2022-04-11 04:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `image`, `url`, `order`, `status`, `categories_id`, `created_at`, `updated_at`) VALUES
(2, 'INDONESIAN FOODS', 'file/slider/HTPBF4QYV4AoJ5FkyUYP-slider-1-1600x800.jpg', 'http://www.google.com', 1, 1, 1, '2021-12-12 08:38:35', '2021-12-12 09:29:06'),
(3, 'Wisata Indonesia', 'file/slider/oIlcD2CvXFzItharVxLt-slider-2-1600x800.jpg', 'http://www.google.com', 2, 1, 2, '2021-12-12 11:00:04', '2021-12-12 11:00:04'),
(4, 'test', 'file/slider/rBkorRmRnf5FOgQFCSiV-Bedah Buku rektor-8.jpg', 'http://aaaaa.com', 3, 1, 1, '2021-12-31 00:23:53', '2021-12-31 00:23:53'),
(6, 'Test 1', 'file/slider/dEZ8Q9LoZNxg7ZIKdZtY-Wallpaper-Black-Temple-Illustration-Pixel-Art-Pixels-89.jpg', 'www.google.com', 5, 1, 4, '2022-04-10 01:49:24', '2022-04-10 01:49:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `desc`, `remember_token`, `created_at`, `updated_at`, `content`) VALUES
(5, 'Hanung Risqi Widianto', '111201811391@mhs.dinus.ac.id', NULL, '$2y$10$RDHu8aJs9fr5WVKxq.EQ7uPon902PCgzeGXJMlHdwx1IPLFohm5T.', 'file/admin/DgRFfhqjSn0BouGVjwEr-Wallpaper-Oni-Mask-4k-3840x2400px-4k-Free-Download26-scaled.jpg', '<p>Halo, saya Hanung Risqi Saya seorang programming laguages dan mahasiswa aktif Teknik Informatika yang tertarik mendalami dan belajar didunia Pemrograman serta dunia komputer lainnya.</p>', NULL, '2022-04-09 00:11:54', '2022-04-11 04:33:34', '<p>Buka&nbsp;<a href=\"https://www.linkedin.com/in/hanung-risqi-38897b209/\">(31) Hanung Risqi | LinkedIn</a>&nbsp;untuk melihat profil linkedin saya! Terimakasih.</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_posts_id_foreign` (`posts_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainmenus`
--
ALTER TABLE `mainmenus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_categories_id_foreign` (`categories_id`);

--
-- Indexes for table `runningtext`
--
ALTER TABLE `runningtext`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_categories_id_foreign` (`categories_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mainmenus`
--
ALTER TABLE `mainmenus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `runningtext`
--
ALTER TABLE `runningtext`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_posts_id_foreign` FOREIGN KEY (`posts_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

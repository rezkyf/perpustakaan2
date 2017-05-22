-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23 Apr 2017 pada 06.31
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_anggota`
--

CREATE TABLE `tbl_anggota` (
  `nim` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `thn_masuk` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_anggota`
--

INSERT INTO `tbl_anggota` (`nim`, `nama`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `prodi`, `thn_masuk`) VALUES
(1601630020, 'Agnes Oka Rosalin', 'Pati', '2015-11-01', 'P', 'Teknik Informatika', '2016'),
(1601630022, 'Rezky Febriani', 'Blora', '1994-02-13', 'P', 'Teknik Informatika', '2016');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `id` int(5) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `penerbit` varchar(150) NOT NULL,
  `thn_terbit` varchar(4) NOT NULL,
  `jumlah_buku` int(3) NOT NULL,
  `lokasi` enum('rak1','rak2','rak3') NOT NULL,
  `tgl_input` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_buku`
--

INSERT INTO `tbl_buku` (`id`, `judul`, `pengarang`, `penerbit`, `thn_terbit`, `jumlah_buku`, `lokasi`, `tgl_input`) VALUES
(1, 'Abacaga: Cara Praktis Belajar Membaca Untuk Anak', 'Children`S Books', 'Kawah Media Pustaka', '2014', 3, 'rak2', '2016-03-21 00:00:00'),
(2, 'Aku Jago Menggambar Alat dan Kendaraan Berat', 'Irwan Nuswantoro', 'Cerdas Interaktif', '2014', 2, 'rak1', '2016-03-22 00:00:00'),
(3, 'Aku Jago Menggambar Alat Transportasi dan Bangunan', 'Irwan Nuswantoro', 'Cerdas Interaktif', '2014', 1, 'rak2', '2016-03-23 00:00:00'),
(4, 'Aku Jago Menggambar Angkasa', 'Irwan Nuswantoro', 'Cerdas Interaktif', '2014', 4, 'rak3', '2016-03-24 00:00:00'),
(5, 'Aku Jago Menggambar Laut - Menggambar 77 Makhluk dan benda laut Langkah Demi Langkah', 'Irwan Nuswantoro', 'Cerdas Interaktif', '2014', 5, 'rak3', '2016-03-25 00:00:00'),
(6, 'Aku Jago Menggambar Monster dan Hantu', 'Irwan Nuswantoro', 'Cerdas Interaktif', '2014', 3, 'rak2', '2016-03-26 00:00:00'),
(7, 'Aku Jago Menggambar Princess', 'Irwan Nuswantoro', 'Cerdas Interaktif', '2014', 5, 'rak2', '2016-03-27 00:00:00'),
(8, 'Aku Jago Menggambar Superhero Seri 1', 'Irwan Nuswantoro', 'Cerdas Interaktif', '2014', 6, 'rak3', '2016-03-28 00:00:00'),
(9, 'Aku Jago Menggambar Superhero Seri 2', 'Irwan Nuswantoro', 'Cerdas Interaktif', '2014', 7, 'rak2', '2016-03-29 00:00:00'),
(10, 'Aku Jago Menggambar Superhero Seri 3', 'Irwan Nuswantoro', 'Cerdas Interaktif', '2014', 4, 'rak1', '2016-03-30 00:00:00'),
(11, 'Aku Jago Menggambar Transformers', 'Irwan Nuswantoro', 'Cerdas Interaktif', '2014', 4, 'rak1', '2016-03-31 00:00:00'),
(12, 'Aku Jago Menggambar Wajah', 'Irwan Nuswantoro', 'Cerdas Interaktif', '2014', 5, 'rak1', '2016-04-01 00:00:00'),
(13, 'Aku Siap Masuk SD Seri 1 (ED: Revisi)', 'Sumi Suhartinah dan Febri Sri Lestari', 'Cerdas Interaktif', '2014', 6, 'rak1', '2016-04-02 00:00:00'),
(14, 'Aku Siap Masuk SD Seri 2 (ED: Revisi)', 'Sumi Suhartinah dan Febri Sri Lestari', 'Cerdas Interaktif', '2014', 3, 'rak1', '2016-04-03 00:00:00'),
(15, 'Aku Siap Masuk SD Seri 3 (ED: Revisi)', 'Sumi Suhartinah dan Febri Sri Lestari', 'Cerdas Interaktif', '2014', 2, 'rak2', '2016-04-04 00:00:00'),
(16, 'Aku Siap Masuk SD Seri 4 (ED: Revisi)', 'Sumi Suhartinah dan Febri Sri Lestari', 'Cerdas Interaktif', '2014', 4, 'rak2', '2016-04-05 00:00:00'),
(17, 'Al Quran Al Majid Hijau', 'Religion dan Spirituality', 'Aneka Ilmu, Cv', '2014', 6, 'rak2', '2016-04-06 00:00:00'),
(18, 'Al Quran Mushaf Tajwid Tsumun Diponegoro', 'Religion dan Spirituality', 'Diponegoro', '2014', 7, 'rak2', '2016-04-07 00:00:00'),
(19, 'Alam Sekitar Lingkungan Hidup Manusia: Penggunaan dan Pemeliharaannya', 'S. Prawirodihardjo', 'BP', '2014', 8, 'rak2', '2016-04-08 00:00:00'),
(20, 'Anak Kecil dengan Biolanya', 'Pavel Vezhinov-Jajak', 'BP', '2014', 6, 'rak2', '2016-04-09 00:00:00'),
(21, 'Aneka Pustaka', 'Rusman Sutiasumarga', 'BP', '2014', 6, '', '2016-04-10 00:00:00'),
(22, 'Antropologi Pendidikan sebagai Ilmu Sosial Terapan', 'Tarwotjo', 'BP', '2014', 6, 'rak2', '2016-04-11 00:00:00'),
(23, 'Arjuna Kembar', 'Balai Pustaka', 'BP', '2014', 4, 'rak3', '2016-04-12 00:00:00'),
(24, 'Arti Pendidikan Terpadu Bagi Saya', 'Anak-Anak SD Tuna netra', 'BP', '2014', 5, 'rak3', '2016-04-13 00:00:00'),
(25, 'Atlas Indonesia dan Dunia Sd/Smp/Sma dan Umum (34 Provinsi dan Indeks)', 'Reference dan Dictionary', 'Pustaka Baru .', '2014', 2, 'rak3', '2016-04-14 00:00:00'),
(26, 'Beberapa Gagasan dalam Penyelenggaraan Otonomi Daerah di Indonesia', 'Owen Podger, dkk.', 'BP', '2014', 4, 'rak3', '2016-04-15 00:00:00'),
(27, 'Belajar Otodidak Autocad 2d dan 3d', 'Computing dan Internet', 'Bi-Obses', '2014', 3, 'rak3', '2016-04-16 00:00:00'),
(28, 'Berpidato yang Memukau', 'Drs. Asul Wiyanto', 'BP', '2014', 3, 'rak3', '2016-04-17 00:00:00'),
(29, 'Bersahabat Dengan Alam', 'Edinar Buana', 'BP', '2014', 3, 'rak3', '2016-04-18 00:00:00'),
(30, 'Bintang Minahasa', 'Hersevien M. Taulu', 'BP', '2014', 3, 'rak3', '2016-04-19 00:00:00'),
(31, 'Buku Murah Grafindo Media Pratama 10000', 'Others', 'Grafindo Media Pratama, Pt', '2014', 5, 'rak2', '2016-04-20 00:00:00'),
(32, 'Buku Panduan Guru Sd Mengajar dan Belajar Kreatif', 'Education dan Teaching', 'Buku Kita Pt', '2014', 6, 'rak2', '2016-04-21 00:00:00'),
(33, 'Buku Pintar Ielts: Raih Skor Tinggi', 'Reference dan Dictionary', 'Mizan Media Utama Pt', '2014', 6, 'rak2', '2016-04-22 00:00:00'),
(34, 'Buku Saku Superlengkap Percakapan Sehari-hari Dalam Bahasa Inggris', 'Reference dan Dictionary', 'Trans Media Pustaka Pt', '2014', 6, 'rak2', '2016-04-23 00:00:00'),
(35, 'Buku Terbaik Belajar Gitar Untuk Pemula', 'Entertainment', 'Agromedia Pustaka , Pt.Cgi Ntx Gam 155070', '2014', 5, 'rak2', '2016-04-24 00:00:00'),
(36, 'Bunga Bakti', 'MR Dajoh', 'BP', '2014', 3, 'rak2', '2016-04-25 00:00:00'),
(37, 'Bunga Mawar', 'Bagindo Saleh', 'BP', '2014', 3, 'rak2', '2016-04-26 00:00:00'),
(38, 'Bunga Rampai Guru dan Pendidikan', 'Balai Pustaka', 'BP', '2014', 2, 'rak3', '2016-04-27 00:00:00'),
(39, 'Cakrawala Pariwisata', 'Andi Mappi Sammeng', 'BP', '2014', 2, 'rak3', '2016-04-28 00:00:00'),
(40, 'Cerdas utak-atik soal matematika kelas 6 SD', 'Ir. Koeshartati Saptorini', 'Kaifa Learning', '2014', 2, 'rak3', '2016-04-29 00:00:00'),
(41, 'Cinta Bersemi di Seberang Tembok', 'Bagin', 'BP', '2014', 2, 'rak3', '2016-04-30 00:00:00'),
(42, 'Cita-Cita dalam Derita', 'Muhammad Syarief', 'BP', '2014', 2, 'rak3', '2016-05-01 00:00:00'),
(43, 'Cut Nyak Dien', 'Nunik Utami', 'Cerdas Interaktif', '2014', 2, 'rak3', '2016-05-02 00:00:00'),
(44, 'Deteksi Minat Bakat Anak', 'Psychology', 'Buku Seru Pt', '2014', 4, 'rak3', '2016-05-03 00:00:00'),
(45, 'Dewi Sri', 'Gazaldun', 'BP', '2014', 3, 'rak3', '2016-05-04 00:00:00'),
(46, 'Domba-Domba Revolusi', 'B. Soelarta', 'BP', '2014', 5, 'rak2', '2016-05-05 00:00:00'),
(47, 'Dongeng Anak Klasik Dunia', 'N.Van Hictun', 'BP', '2014', 5, 'rak1', '2016-05-06 00:00:00'),
(48, 'Dosa Kita Semua', 'Motinggo Busye', 'BP', '2014', 5, 'rak1', '2016-05-07 00:00:00'),
(49, 'Dr. Cipto Mangunkusumo', 'Endeman', 'BP', '2014', 5, 'rak1', '2016-05-08 00:00:00'),
(50, 'Duri-Duri Di Hati Rani', 'Savitri Sri Bharata MW', 'BP', '2014', 6, 'rak1', '2016-05-09 00:00:00'),
(51, 'English For Children Kamus Bsr Bergambar Ing-Ind', 'Reference dan Dictionary', 'Titik Terang Cv.', '2014', 5, 'rak1', '2016-05-10 00:00:00'),
(52, 'Ensiklopedia Tokoh Biologi', 'Andi Maryam, dkk.', 'BP', '2014', 5, 'rak1', '2016-05-11 00:00:00'),
(53, 'Ensiklopedia Tokoh Fisika', 'Febi Dasa, dkk.', 'BP', '2014', 5, 'rak1', '2016-05-12 00:00:00'),
(54, 'Fatahillah Pahlawan Kota Jakarta', 'Balai Pustaka', 'BP', '2014', 5, 'rak1', '2016-05-13 00:00:00'),
(55, 'Fisika Modern', 'A. Baiquni', 'BP', '2014', 8, 'rak1', '2016-05-14 00:00:00'),
(56, 'From Indonesia With Love (kump. Puisi)', 'Djoeweriah Poorwo S.', 'BP', '2014', 7, 'rak1', '2016-05-15 00:00:00'),
(57, 'Gajah Mada Pemersatu Nusantara', 'Nurul Asmani', 'Cerdas Interaktif', '2014', 7, 'rak2', '2016-05-16 00:00:00'),
(58, 'Gaun Merah Muda (kumpulan cerpen)', 'Syamsul Arifin', 'BP', '2014', 7, 'rak2', '2016-05-17 00:00:00'),
(59, 'Gedung Sekolah Ani', 'Sunarsono', 'BP', '2014', 7, 'rak2', '2016-05-18 00:00:00'),
(60, 'Glosarium Biologi', 'Mien A Rifai, Ermitati, Pusbinbangsa', 'BP', '2014', 5, 'rak2', '2016-05-19 00:00:00'),
(61, 'Glosarium Fisika', 'Lik Wilarjo, Dad Murniah, Pusbinbangsa', 'BP', '2014', 7, 'rak2', '2016-05-20 00:00:00'),
(62, 'Glosarium Matematika', 'Djati Kerami, Ellya Iswati, Pusbinbangsa', 'BP', '2014', 7, 'rak2', '2016-05-21 00:00:00'),
(63, 'Guruku Matahari Bangsaku', 'Dra. Afiah Ismy', 'BP', '2014', 7, 'rak2', '2016-05-22 00:00:00'),
(64, 'Hadiah Alam', 'Balai Pustaka', 'BP', '2014', 2, 'rak2', '2016-05-23 00:00:00'),
(65, 'Hang Tuah Kesatria Melayu', 'Nunik Utami', 'Cerdas Interaktif', '2014', 3, 'rak2', '2016-05-24 00:00:00'),
(66, 'Haunted School Kau Yakin Sekolahmu Aman: Fantasteen', 'Fiction dan Literature', 'Mizan Media Utama Pt', '2014', 4, 'rak2', '2016-05-25 00:00:00'),
(67, 'Highschool Of The Dead', 'Children`S Books', 'Elex Media Komputindo', '2014', 3, 'rak2', '2016-05-26 00:00:00'),
(68, 'Jenderal Sudirman Sang Panglima Besar', 'Nunik Utami', 'Cerdas Interaktif', '2014', 3, 'rak3', '2016-05-27 00:00:00'),
(69, 'Kamus Akor Dewa Gitar Level Pemula', 'Entertainment', 'Agromedia Pustaka , Pt', '2014', 3, 'rak2', '2016-05-28 00:00:00'),
(70, 'Kamus Bahasa Aceh-Indonesia', 'Pusat Bahasa', 'BP', '2014', 3, 'rak2', '2016-05-29 00:00:00'),
(71, 'Kamus Bahasa Gorontalo-Indonesia', 'Pusat Bahasa', 'BP', '2014', 3, 'rak2', '2016-05-30 00:00:00'),
(72, 'Kamus Bahasa Indonesia-Bali', 'Pusat Bahasa', 'BP', '2014', 3, 'rak2', '2016-05-31 00:00:00'),
(73, 'Kamus Bahasa Indonesia-Gayo', 'Pusat Bahasa', 'BP', '2014', 3, 'rak2', '2016-06-01 00:00:00'),
(74, 'Kamus Bahasa Indonesia-Melayu Riau', 'Pusat Bahasa', 'BP', '2014', 3, 'rak3', '2016-06-02 00:00:00'),
(75, 'Kamus Bahasa Karo-Indonesia', 'Pusat Bahasa', 'BP', '2014', 9, 'rak3', '2016-06-03 00:00:00'),
(76, 'Kamus Bahasa Kerinci-Indonesia', 'Pusat Bahasa', 'BP', '2014', 8, 'rak3', '2016-06-04 00:00:00'),
(77, 'Kamus Bahasa Lampung-Indonesia', 'Pusat Bahasa', 'BP', '2014', 9, 'rak3', '2016-06-05 00:00:00'),
(78, 'Kamus Bahasa Melayu Makassar-Indonesia', 'Pusat Bahasa', 'BP', '2014', 9, 'rak3', '2016-06-06 00:00:00'),
(79, 'Kamus Bahasa Sasak-Indonesia', 'Pusat Bahasa', 'BP', '2014', 9, 'rak3', '2016-06-07 00:00:00'),
(80, 'Kamus Fisika Mekanika', 'Balai Pustaka', 'BP', '2014', 9, 'rak3', '2016-06-08 00:00:00'),
(81, 'Kamus Gaul Pecakapan Bhs.Inggris', 'Reference dan Dictionary', 'Mizan Media Utama Pt', '2014', 9, 'rak3', '2016-06-09 00:00:00'),
(82, 'Kamus Indonesia-Minangkabau', 'Pusat Bahasa', 'BP', '2014', 9, 'rak2', '2016-06-10 00:00:00'),
(83, 'Kamus Indonesia-Pasir', 'Pusat Bahasa', 'BP', '2014', 3, 'rak2', '2016-06-11 00:00:00'),
(84, 'Kamus Istilah Sastra', 'Balai Pustaka', 'BP', '2014', 4, 'rak2', '2016-06-12 00:00:00'),
(85, 'Kamus Jawa Kuno', 'Pusat Bahasa atau I Mardi Warsito', 'BP', '2014', 4, 'rak2', '2016-06-13 00:00:00'),
(86, 'Kamus Kimia', 'A. Hadyana Pudjaatmaka', 'BP', '2014', 5, 'rak2', '2016-06-14 00:00:00'),
(87, 'Karena Anak Kandung', 'Balai Pustaka', 'BP', '2014', 6, 'rak2', '2016-06-15 00:00:00'),
(88, 'Kartu Pintar Vocabulary Inggris-Indonesia', 'Reference dan Dictionary', 'Kawah Media Pustaka', '2014', 6, 'rak2', '2016-06-16 00:00:00'),
(89, 'Kesukaran-Kesukaran Dalam Pendidikan', 'Tjetje Jusup', 'BP', '2014', 7, 'rak2', '2016-06-17 00:00:00'),
(90, 'Krisis dalam Pendidikan', 'Miguel Fernandez', 'BP', '2014', 7, 'rak2', '2016-06-18 00:00:00'),
(91, 'Kuliah Tujuh Menit', 'Rudiyanto SW', 'Raih Asa Sukses', '2014', 7, 'rak2', '2016-06-19 00:00:00'),
(92, 'Kumpulan Cerpen dan Puisi Darah Laut (HB Jassin)', 'H.B. Jassin', 'BP', '2014', 7, 'rak1', '2016-06-20 00:00:00'),
(93, 'Kumpulan Dongeng Afrika', 'Imam H', 'Cerdas Interaktif', '2014', 5, 'rak1', '2016-06-21 00:00:00'),
(94, 'Kumpulan Lagu Daerah Nusantara Terpopuler plus CD', 'Sarah Ismullah dan Ibrahim Ismullah', 'Cerdas Interaktif', '2014', 5, 'rak1', '2016-06-22 00:00:00'),
(95, 'Lagu Senja', 'Yudhi Herwibowo', 'BP', '2014', 5, '', '2016-06-23 00:00:00'),
(96, 'Laksamana Cheng Ho', 'Nurul Asmayani', 'Cerdas Interaktif', '2014', 5, 'rak1', '2016-06-24 00:00:00'),
(97, 'Leksikon Susastra Indonesia', 'Korrie Layun Rampan', 'BP', '2014', 5, 'rak1', '2016-06-25 00:00:00'),
(98, 'Lembah Hijau', 'Balai Pustaka', 'BP', '2014', 6, 'rak2', '2016-06-26 00:00:00'),
(99, 'Lima Karya Pujangga Ranggawarsita', 'Kamajaya', 'BP', '2014', 6, 'rak1', '2016-06-27 00:00:00'),
(100, 'Manajemen Sistem Pendidikan Nasional', 'Balai Pustaka', 'BP', '2014', 6, 'rak2', '2016-06-28 00:00:00'),
(101, 'Mandala Kelabu / Langit kelabu', 'Balai Pustaka', 'BP', '2014', 6, 'rak2', '2016-06-29 00:00:00'),
(102, 'Mekar Karena Memar', 'Balai Pustaka', 'BP', '2014', 7, 'rak2', '2016-06-30 00:00:00'),
(103, 'Membantu Pemulihan Pecandu Narkoba dan Keluarganya', 'dr. Lidya Harlina M', 'BP', '2014', 6, 'rak2', '2016-07-01 00:00:00'),
(104, 'Memenangkan Lomba Mengarang', 'Suhadi', 'BP', '2014', 4, 'rak2', '2016-07-02 00:00:00'),
(105, 'Mengembalikan Wibawa Guru', 'Endro Sumardjo', 'BP', '2014', 4, 'rak2', '2016-07-03 00:00:00'),
(106, 'Metode Berhitung Lebih Cepat Jarimatika Ed Paling Lengkap', 'Schoolbooks Indonesia Curriculum', 'Pustaka Baru', '2014', 4, 'rak2', '2016-07-04 00:00:00'),
(107, 'Metode Cepat 50 Jam Pintar Membaca', 'Children`S Books', 'Kawah Media Pustaka', '2014', 4, '', '2016-07-05 00:00:00'),
(108, 'Paket Sukses Menghadapi Ujian Kompetensi Nasional Sd/Mi 2013/2014', 'Schoolbooks Indonesia Curriculum', 'Setia Kawan Tb/Setia Kawan Prima', '2014', 4, 'rak3', '2016-07-06 00:00:00'),
(109, 'Pancaran Cita (Kumpulan Cerpen)', 'Balai Pustaka', 'BP', '2014', 5, 'rak3', '2016-07-07 00:00:00'),
(110, 'Pandai Membaca Aiueo', 'Children`S Books', 'Bhuana Ilmu Populer', '2014', 5, 'rak3', '2016-07-08 00:00:00'),
(111, 'Pangeran Diponegoro Singa Mataram', 'Nunik Utami', 'Cerdas Interaktif', '2014', 5, 'rak3', '2016-07-09 00:00:00'),
(112, 'Paradigma Pendidikan Nasional', 'Anwar Arifin', 'BP', '2014', 5, 'rak3', '2016-07-10 00:00:00'),
(113, 'Pedoman Umum Ejaan Yang di Sempurnakan', 'Balai Pustaka', 'BP', '2014', 5, 'rak3', '2016-07-11 00:00:00'),
(114, 'Pedoman Umum Pembentukan Istilah', 'Pusat Bahasa', 'BP', '2014', 5, 'rak3', '2016-07-12 00:00:00'),
(115, 'Pembelajaran Berbasis Fitrah', 'Achjar Chalil', 'BP', '2014', 5, 'rak3', '2016-07-13 00:00:00'),
(116, 'Pendidikan Inventasi SDM dan Pembangunan', '', 'BP', '2014', 7, 'rak3', '2016-07-14 00:00:00'),
(117, 'Pengertian Internasional di Sekolah', 'Unesco', 'BP', '2014', 8, 'rak3', '2016-07-15 00:00:00'),
(118, 'Pengetahuan Bahan Teknik', 'Tata Surdia', 'BP', '2014', 8, 'rak2', '2016-07-16 00:00:00'),
(119, 'Percakapan Bhs Inggris (Ed.Baru)/Habeyb', 'Reference dan Dictionary', 'Bhuana Ilmu Populer', '2014', 8, 'rak2', '2016-07-17 00:00:00'),
(120, 'Peribahasa', 'K.St. Pamuncak, N. St. Iskandar, A. Dt. Madjoindo', 'BP', '2014', 5, 'rak2', '2016-07-18 00:00:00'),
(121, 'Persiapan Toefl 101 (Revisi)', 'Reference dan Dictionary', 'Kesaint Blanc', '2014', 8, 'rak2', '2016-07-19 00:00:00'),
(122, 'Pintar Menulis Abcdef', 'Children`S Books', 'Niaga Swadaya', '2014', 6, 'rak2', '2016-07-20 00:00:00'),
(123, 'Pintar Menulis Angka dan Berhitung', 'Children`S Books', 'Niaga Swadaya', '2014', 6, 'rak2', '2016-07-21 00:00:00'),
(124, 'Pocket Book Matematika Smp Kl 1, 2, dan 3', 'Schoolbooks Indonesia Curriculum 2019', 'Kawah Media Pustaka', '2014', 6, 'rak2', '2016-07-22 00:00:00'),
(125, 'Practical Complete English Grammar', 'Reference dan Dictionary', 'Titik Terang Cv', '2014', 6, 'rak2', '2016-07-23 00:00:00'),
(126, 'Puas! Paket Ujian Akhir Sekolah Untuk Sd/Mi : Seri Buku Soal', 'Schoolbooks Indonesia Curriculum', 'Erlangga', '2014', 6, 'rak2', '2016-07-24 00:00:00'),
(127, 'Ranking 1st Bukan Segalanya-Bekal Memantik Sukses Sesungguhnya', 'Bambang Wahyudiono', 'Raih Asa Sukses', '2014', 7, 'rak2', '2016-07-25 00:00:00'),
(128, 'RPAT Untuk SD', 'Afin Murtiningsih', 'Raih Asa Sukses', '2014', 6, 'rak2', '2016-07-26 00:00:00'),
(129, 'Rumus Jitu Mengerjakan Soal Matematika Sd Kur 2014', 'Schoolbooks Indonesia Curriculum 2019', 'Pt.Serambi Semesta Distribusi/Serambi Ilmu S', '2014', 6, 'rak2', '2016-07-27 00:00:00'),
(130, 'Sains di Sekitarmu : Bayangan di Kamar Tidur', 'Susan Martine', 'Cerdas Interaktif', '2014', 7, 'rak2', '2016-07-28 00:00:00'),
(131, 'Sains di Sekitarmu : Belajar Sains di Dapur', 'Susan Martine', 'Cerdas Interaktif', '2014', 7, 'rak2', '2016-07-29 00:00:00'),
(132, 'Sains di Sekitarmu : Gelembung di Kamar Mandi', 'Susan Martine', 'Cerdas Interaktif', '2014', 7, 'rak2', '2016-07-30 00:00:00'),
(133, 'Sains di Sekitarmu : Serangga di Pekarangan', 'Susan Martine', 'Cerdas Interaktif', '2014', 7, 'rak2', '2016-07-31 00:00:00'),
(134, 'Sd Detik Detik Ujian Sekolah/Madrasah 2013/2014', 'Schoolbooks Indonesia Curriculum 2019', 'Intan Pariwara', '2014', 7, 'rak2', '2016-08-01 00:00:00'),
(135, 'Sd Kl 4 Smtr 1 dan 2 Intisari Lengkap Kur 2013', 'Schoolbooks Indonesia Curriculum 2019', 'Paung Bona Jaya', '2014', 7, 'rak2', '2016-08-02 00:00:00'),
(136, 'Sd Kl.1 Aku Siap Aku Bisa 1b/Ktsp', 'Schoolbooks Indonesia Curriculum 2019', 'Erlangga', '2014', 6, 'rak2', '2016-08-03 00:00:00'),
(137, 'Sd Kl.1 Arif Duta Indonesia Triwulan Iv (2013-2014)', 'Schoolbooks Indonesia Curriculum 2019', 'Gramedia Pustaka Utama', '2014', 7, 'rak2', '2016-08-04 00:00:00'),
(138, 'Sd Kl.2 Arif Duta Indonesia Triwulan Iv (2013-2014)', 'Schoolbooks Indonesia Curriculum 2019', 'Gramedia Pustaka Utama', '2014', 7, 'rak2', '2016-08-05 00:00:00'),
(139, 'Sd Kl.5 Intisari Lengkap Smtr 1 dan 2 Kur 2013', 'Schoolbooks Indonesia Curriculum 2019', 'Paung Bona Jaya', '2014', 7, 'rak2', '2016-08-06 00:00:00'),
(140, 'Sd Persiapan Menghadapi Us 2014 Ed Lkp', 'Schoolbooks Indonesia Curriculum 2019', 'Epsilon', '2014', 4, 'rak2', '2016-08-07 00:00:00'),
(141, 'Sd/Mi Bahasa Indonesia Erlangga X Press Un 2014', 'Schoolbooks Indonesia Curriculum 2019', 'Erlangga', '2014', 5, 'rak2', '2016-08-08 00:00:00'),
(142, 'Sd/Mi Erlangga X-Press Un 2014 Ipa', 'Schoolbooks Indonesia Curriculum 2019', 'Erlangga', '2014', 4, 'rak2', '2016-08-09 00:00:00'),
(143, 'Sd/Mi Erlangga X-Press Un 2014 Matematika', 'Schoolbooks Indonesia Curriculum 2019', 'Erlangga', '2014', 3, 'rak2', '2016-08-10 00:00:00'),
(144, 'Sd/Mi Paten Us/M 2014', 'Schoolbooks Indonesia Curriculum 2019', 'Erlangga', '2014', 4, 'rak2', '2016-08-11 00:00:00'),
(145, 'Sd/Mi Simulasi Try Out Unas 2014', 'Schoolbooks Indonesia Curriculum 2019', 'Maha Daya Langit', '2014', 5, 'rak2', '2016-08-12 00:00:00'),
(146, 'Sd/Mi Spm Bahasa Inggris', 'Schoolbooks Indonesia Curriculum 2019', 'Erlangga', '2014', 6, 'rak2', '2016-08-13 00:00:00'),
(147, 'Sd/Mi Spm Plus Uas', 'Schoolbooks Indonesia Curriculum 2019', 'Erlangga', '2014', 7, 'rak2', '2016-08-14 00:00:00'),
(148, 'Sejarah Peperangan Dipanegara Pahlawan Kemerdekaan Indonesia', 'Prof. Muhammad Yamin, S.H.', 'BP', '2014', 7, 'rak2', '2016-08-15 00:00:00'),
(149, 'Selendang Biru', 'Hamdani M. Is.', 'BP', '2014', 7, 'rak2', '2016-08-16 00:00:00'),
(150, 'Seri Aku Anak Berbakti: Asyiknya Berkebun', 'Murniati Amir', 'Cerdas Interaktif', '2014', 7, 'rak2', '2016-08-17 00:00:00'),
(151, 'Seri Aku Anak Berbakti: Asyiknya Membersihkan Rumah', 'Murniati Amir', 'Cerdas Interaktif', '2014', 5, 'rak2', '2016-08-18 00:00:00'),
(152, 'Seri Aku Anak Berbakti: Asyiknya Mencuci Baju', 'Mirnawati Amir', 'Cerdas Interaktif', '2014', 6, 'rak2', '2016-08-19 00:00:00'),
(153, 'Seri Aku Anak Berbakti: Asyiknya Pesta Kebun', 'Mirnawati Amir', 'Cerdas Interaktif', '2014', 5, 'rak2', '2016-08-20 00:00:00'),
(154, 'Sma Kl.10 11 12 Mini Book Master Biologi (Langsung Pinter)', 'Schoolbooks Indonesia Curriculum 2019', 'Kawah Media Pustaka', '2014', 6, 'rak2', '2016-08-21 00:00:00'),
(155, 'Sma/Ma Detik2 Ujian Nasional Biologi 2013/2014 Prog Ipa', 'Schoolbooks Indonesia Curriculum 2019', 'Intan Pariwara', '2014', 5, 'rak2', '2016-08-22 00:00:00'),
(156, 'Sma/Ma Detik2 Ujian Nasional Geografi 2013/2014 Prog Ips', 'Schoolbooks Indonesia Curriculum 2019', 'Intan Pariwara', '2014', 6, 'rak2', '2016-08-23 00:00:00'),
(157, 'Sma/Ma Detik2 Ujian Nasional Matematika 2013/2014 Program Ipa', 'Schoolbooks Indonesia Curriculum 2019', 'Intan Pariwara', '2014', 7, 'rak2', '2016-08-24 00:00:00'),
(158, 'Smk Teropong Un 2014', 'Schoolbooks Indonesia Curriculum 2019', 'Erlangga', '2014', 5, 'rak2', '2016-08-25 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id` int(5) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `nim` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tgl_pinjam` varchar(15) NOT NULL,
  `tgl_kembali` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ket` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(3) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `level` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `nama`, `username`, `password`, `email`, `level`) VALUES
(1, 'Rizka Fitriani Hadi', 'rizka', '21232f297a57a5a743894a0e4a801fc3', 'rizkahadiii@gmail.com', 'admin'),
(2, 'Agnes Oka Rosalin', 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 'agnesokarosalin@gmail.com', 'user'),
(3, 'Rezky Febriani', 'user2', '7e58d63b60197ceb55a1c487989a3720', 'febriianiirezky@gmail.com', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_anggota`
--
ALTER TABLE `tbl_anggota`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

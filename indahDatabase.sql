-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Des 2023 pada 14.29
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataset`
--

CREATE TABLE `dataset` (
  `id` bigint(20) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `indikator_id` bigint(20) NOT NULL,
  `status_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `dataset`
--

INSERT INTO `dataset` (`id`, `file`, `nama`, `indikator_id`, `status_id`) VALUES
(7, 'data_populasi.csv', 'contoh dummy 1', 1, 2),
(8, 'data_populasi.csv', 'contoh dummy 2', 2, 2),
(9, 'data_populasi.csv', 'contoh dummy 3', 3, 1),
(10, 'data_populasi.csv', 'contoh dummy 4', 1, 1),
(11, 'data_populasi.csv', 'contoh dummy 5', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `indikator`
--

CREATE TABLE `indikator` (
  `id` bigint(20) NOT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `target_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `indikator`
--

INSERT INTO `indikator` (`id`, `deskripsi`, `nama`, `nomor`, `target_id`) VALUES
(1, 'Tingkat kemiskinan ekstrim', 'Indikator 1.1.1', '11', 1),
(2, 'Persentase penduduk yang hidup di bawah garis kemiskinan nasional, menurut jenis kelamin dan kelompok umur.', 'Indikator 1.2.1', '12', 2),
(3, 'Persentase laki-laki, perempuan dan anak-anak dari semua usia, yang hidup dalam kemiskinan dalam berbagai dimensi, sesuai dengan definisi nasional.', 'Indikator 1.2.2', '12', 2),
(4, 'Proporsi penduduk yang menerima program perlindungan sosial, menurut jenis kelamin, untuk kategori kelompok anak berkebutuhan khusus, pengangguran, lansia, penyandang difabilitas, ibu hamil/melahirkan, korban kecelakaan kerja, kelompok miskin dan rentan.', 'Indikator 1.3.1', '13', 3),
(5, 'Proporsi peserta jaminan kesehatan melalui SJSN Bidang Kesehatan.', 'Indikator 1.3.1.(a)', '13', 3),
(6, 'Proporsi peserta Program Jaminan Sosial Bidang Ketenagakerjaan.', 'Indikator 1.3.1.(b) ', '13', 3),
(7, 'Persentase penyandang disabilitas yang miskin dan rentan yang terpenuhi hak dasarnya dan inklusivitas.', 'Indikator 1.3.1.(c) ', '13', 3),
(8, 'Jumlah rumah tangga yang mendapatkan bantuan tunai bersyarat/Program Keluarga Harapan.', 'Indikator 1.3.1.(d) ', '13', 3),
(9, 'Proporsi penduduk/rumah tangga dengan akses terhadap pelayanan dasar.', 'Indikator 1.4.1', '14', 4),
(10, 'Persentase perempuan pernah kawin umur 15-49 tahun yang proses melahirkan terakhirnya di fasilitas kesehatan.', 'Indikator 1.4.1.(a)', '14', 4),
(11, 'Persentase anak umur 12-23 bulan yang menerima imunisasi dasar lengkap.', 'Indikator 1.4.1.(b)', '14', 4),
(12, 'Prevalensi penggunaan metode kontrasepsi (CPR) semua cara pada Pasangan Usia Subur (PUS) usia 15-49 tahun yang berstatus kawin.', 'Indikator 1.4.1.(c) ', '14', 4),
(13, 'Persentase rumah tangga yang memiliki akses terhadap layanan sumber air minum layak dan berkelanjutan.', 'Indikator 1.4.1.(d)', '14', 4),
(14, 'Persentase rumah tangga yang memiliki akses terhadap layanan sanitasi layak dan berkelanjutan.', 'Indikator 1.4.1.(e)', '14', 4),
(15, 'Persentase rumah tangga kumuh perkotaan.', 'Indikator 1.4.1.(f)', '14', 4),
(16, 'Angka Partisipasi Murni (APM) SD/MI/sederajat.', 'Indikator 1.4.1.(g) ', '14', 4),
(17, 'Angka Partisipasi Murni (APM) SMP/MTs/sederajat.', 'Indikator 1.4.1.(h)', '14', 4),
(18, 'Angka Partisipasi Murni (APM) SMA/MA/sederajat.', 'Indikator 1.4.1.(i) ', '14', 4),
(19, 'Persentase penduduk umur 0-17 tahun dengan kepemilikan akta kelahiran.', 'Indikator 1.4.1.(j) ', '14', 4),
(20, 'Persentase rumah tangga miskin dan rentan yang sumber penerangan utamanya listrik baik dari PLN dan bukan PLN.', 'Indikator 1.4.1.(k) ', '14', 4),
(21, 'Proporsi dari penduduk dewasa yang mendapatkan hak atas tanah yang didasari oleh dokumen hukum dan yang memiliki hak atas tanah berdasarkan jenis kelamin dan tipe kepemilikan.', 'Indikator 1.4.2 ', '14', 4),
(22, 'Jumlah korban meninggal, hilang, dan terkena dampak bencana per 100.000 orang.', 'Indikator 1.5.1', '15', 5),
(23, 'Jumlah lokasi penguatan pengurangan risiko bencana daerah.', 'Indikator 1.5.1.(a) ', '15', 5),
(24, 'Pemenuhan kebutuhan dasar korban bencana sosial.', 'Indikator 1.5.1.(b)', '15', 5),
(25, 'Pendampingan psikososial korban bencana sosial.', 'Indikator 1.5.1.(c) ', '15', 5),
(26, 'Jumlah daerah bencana alam/bencana sosial yang mendapat pendidikan layanan khusus.', 'Indikator 1.5.1.(d) ', '15', 5),
(27, 'Indeks risiko bencana pada pusat-pusat pertumbuhan yang berisiko tinggi.', 'Indikator 1.5.1.(e) ', '15', 5),
(28, 'Jumlah kerugian ekonomi langsung akibat bencana terhadap GDP global.', 'Indikator 1.5.2 ', '15', 5),
(29, 'Jumlah kerugian ekonomi langsung akibat bencana.', 'Indikator 1.5.2.(a) ', '15', 5),
(30, 'Dokumen strategi pengurangan risiko bencana (PRB) tingkat nasional dan daerah.', 'Indikator 1.5.3', '15', 5),
(31, 'Proporsi sumber daya yang dialokasikan oleh pemerintah secara langsung untuk program pemberantasan kemiskinan.', 'Indikator 1.a.1', '1', 6),
(32, 'Pengeluaran untuk layanan pokok (pendidikan, kesehatan dan perlindungan sosial) sebagai persentase dari total belanja pemerintah.', 'Indikator 1.a.2', '1', 6),
(33, 'Proporsi pengeluaran rutin dan pembangunan pada sektor-sektor yang memberi manfaat pada kelompok perempuan, kelompok miskin dan rentan.', 'Indikator 1.b.1 ', '1', 7),
(34, 'Prevalensi kekurangan gizi (underweight) pada anak balita.', 'Indikator 2.1.1.(a) ', '21', 8),
(35, 'Prevalensi penduduk dengan kerawanan pangan sedang atau berat, berdasarkan pada Skala Pengalaman Kerawanan Pangan.', 'Indikator 2.1.2', '21', 8),
(36, 'Proporsi penduduk dengan asupan kalori minimum di bawah 1400 kkal/ kapita/hari.', 'Indikator 2.1.2.(a) ', '21', 8),
(37, 'Prevalensi stunting (pendek dan sangat pendek) pada anak di bawah lima tahun/balita.', 'Indikator 2.2.1', '22', 9),
(38, 'Prevalensi stunting (pendek dan sangat pendek) pada anak di bawah dua tahun/baduta.', 'Indikator 2.2.1.(a) ', '22', 9),
(39, 'Prevalensi malnutrisi (berat badan/ tinggi badan) anak pada usia kurang dari 5 tahun, berdasarkan tipe.', 'Indikator 2.2.2', '22', 9),
(40, 'Prevalensi anemia pada ibu hamil.', 'Indikator 2.2.2.(a) ', '22', 9),
(41, 'Persentase bayi usia kurang dari 6 bulan yang mendapatkan ASI eksklusif.', 'Indikator 2.2.2.(b)', '22', 9),
(42, 'Kualitas konsumsi pangan yang diindikasikan oleh skor Pola Pangan Harapan (PPH) mencapai; dan tingkat konsumsi ikan', 'Indikator 2.2.2.(c)', '22', 9),
(43, 'Nilai Tambah Pertanian dibagi jumlah tenaga kerja di sektor pertanian (rupiah per tenaga kerja)', 'Indikator 2.3.1*', '23', 10),
(44, 'Rata-rata pendapatan produsen pertanian skala kecil, menurut jenis dan status adat.', 'Indikator 2.3.2', '23', 10),
(45, 'Penetapan kawasan pertanian pangan berkelanjutan.', 'Indikator 2.4.1', '24', 11),
(46, 'Jumlah varietas unggul tanaman dan hewan untuk pangan yang dilepas.', 'Indikator 2.5.1*', '25', 12),
(47, 'Proporsi hewan ternak dan sejenisnya, diklasifikasikan menurut tingkat risiko kepunahan: berisiko, tidak berisiko, dan risiko yang tidak diketahui.', 'Indikator 2.5.2*', '25', 12),
(48, 'Indeks pengeluaran pemerintah untuk pertanian.', 'Indikator 2.a.1', '2', 13),
(49, 'Total bantuan pembangunan (ODA) dan bantuan lain untuk sektor pertanian.', 'Indikator 2.a.2', '2', 13),
(50, 'Perkiraan dukungan kebijakan kepada produsen', 'Indikator 2.b.1', '2', 14),
(51, 'Subsidi ekspor pertanian.', 'Indikator 2.b.2', '2', 14),
(52, 'Indikator anomali harga pangan', 'Indikator 2.c.1', '2', 15),
(53, 'Angka Kematian Ibu (AKI).', 'Indikator 3.1.1', '31', 16),
(54, 'Proporsi perempuan pernah kawin umur 15-49 tahun yang proses melahirkan terakhirnya ditolong oleh tenaga kesehatan terlatih.', 'Indikator 3.1.2', '31', 16),
(55, 'Persentase perempuan pernah kawin umur 15-49 tahun yang proses melahirkan terakhirnya di fasilitas kesehatan.', 'Indikator 3.1.2.(a)', '31', 16),
(56, 'Angka Kematian Balita (AKBa) per 1000 kelahiran hidup.', 'Indikator 3.2.1', '32', 17),
(57, 'Angka Kematian Neonatal (AKN) per 1000 kelahiran hidup.', 'Indikator 3.2.2', '32', 17),
(58, 'Angka Kematian Bayi (AKB) per 1000 kelahiran hidup.', 'Indikator 3.2.2.(a)', '32', 17),
(59, 'Persentase kabupaten/kota yang mencapai 80% imunisasi dasar lengkap pada bayi.', 'Indikator 3.2.2.(b)', '32', 17),
(60, 'Angka infeksi baru HIV per 1000 populasi tidak terinfeksi HIV.', 'Indikator 3.3.1', '33', 18),
(61, 'Prevalensi HIV pada populasi dewasa.', 'Indikator 3.3.1.(a)', '33', 18),
(62, 'Kejadian TB per 1000 orang.', 'Indikator 3.3.2', '33', 18),
(63, 'Insiden Tuberkulosis (ITB) per 100.000 penduduk.', 'Indikator 3.3.2.(a)', '33', 18),
(64, 'Kejadian Malaria per 1000 orang.', 'Indikator 3.3.3', '33', 18),
(65, 'Jumlah kabupaten/kota yang mencapai eliminasi malaria.', 'Indikator 3.3.3.(a)', '33', 18),
(66, 'Insiden Hepatitis B per 100.000 penduduk.', 'Indikator 3.3.4', '33', 18),
(67, 'Persentase kabupaten/kota yang melakukan deteksi dini untuk infeksi Hepatitis B.', 'Indikator 3.3.4.(a)', '33', 18),
(68, 'Jumlah orang yang memerlukan intervensi terhadap penyakit tropis yang terabaikan (Filariasis dan Kusta).', 'Indikator 3.3.5', '33', 18),
(69, 'Jumlah provinsi dengan eliminasi Kusta.', 'Indikator 3.3.5.(a)', '33', 18),
(70, 'Jumlah kabupaten/kota dengan eliminasi filariasis.', 'Indikator 3.3.5.(b)', '33', 18),
(71, 'Kematian akibat penyakit jantung, kanker, diabetes, atau penyakit pernapasan kronis.', 'Indikator 3.4.1', '34', 19),
(72, 'Persentase merokok pada penduduk umur ?18 tahun.', 'Indikator 3.4.1.(a)', '34', 19),
(73, 'Prevalensi tekanan darah tinggi.', 'Indikator 3.4.1.(b)', '34', 19),
(74, 'Prevalensi obesitas pada penduduk umur ?18 tahun.', 'Indikator 3.4.1.(c)', '34', 19),
(75, 'Angka kematian (insidens rate) akibat bunuh diri.', 'Indikator 3.4.2', '34', 19),
(76, 'Jumlah kabupaten/kota yang memiliki puskesmas yang menyelenggarakan upaya kesehatan jiwa.', 'Indikator 3.4.2.(a)', '34', 19),
(77, 'Cakupan intervensi pengobatan bagi gangguan penyalahgunaan zat.', 'Indikator 3.5.1', '35', 20),
(78, 'Jumlah penyalahguna narkotika dan pengguna alkohol yang merugikan, yang mengakses layanan rehabilitasi medis.', 'Indikator 3.5.1.(a)', '35', 20),
(79, 'Jumlah yang mengakses layanan pascarehabilitasi.', 'Indikator 3.5.1.(b)', '35', 20),
(80, 'Jumlah korban penyalahgunaan NAPZA yang mendapatkan rehabilitasi sosial di dalam panti sesuai standar pelayanan.', 'Indikator 3.5.1.(c)', '35', 20),
(81, 'Jumlah lembaga rehabilitasi sosial korban penyalahgunaan NAPZA yang telah dikembangkan/dibantu.', 'Indikator 3.5.1.(d)', '35', 20),
(82, 'Prevalensi penyalahgunaan narkoba.', 'Indikator 3.5.1.(e)', '35', 20),
(83, 'Konsumsi alkohol (liter per kapita) oleh penduduk umur ? 15 tahun dalam satu tahun terakhir.', 'Indikator 3.5.2', '35', 20),
(84, 'Angka kematian akibat cedera fatal kecelakaan lalu lintas.', 'Indikator 3.6.1', '36', 21),
(85, 'Proporsi perempuan usia reproduksi (15-49 tahun) atau pasangannya yang memiliki kebutuhan keluarga berencana dan menggunakan alat kontrasepsi metode modern.', 'Indikator 3.7.1', '37', 22),
(86, 'Angka prevalensi penggunaan metode kontrasepsi (CPR) semua cara pada Pasangan Usia Subur (PUS) usia 15-49 tahun yang berstatus kawin.', 'Indikator 3.7.1.(a)', '37', 22),
(87, 'Angka penggunaan metode kontrasepsi jangka panjang (MKJP) cara modern.', 'Indikator 3.7.1.(b)', '37', 22),
(88, 'Cakupan pelayanan kesehatan esensial.', 'Indikator 3.8.1', '38', 23),
(89, 'Unmet need pelayanan kesehatan.', 'Indikator 3.8.1.(a)', '38', 23),
(90, 'Jumlah penduduk yang dicakup asuransi kesehatan atau sistem kesehatan masyarakat per 1000 penduduk.', 'Indikator 3.8.2', '38', 23),
(91, 'Cakupan Jaminan Kesehatan Nasional (JKN).', 'Indikator 3.8.2.(a)', '38', 23),
(92, 'Angka kematian akibat tangga dan polusi udara ambien.', 'Indikator 3.9.1', '39', 24),
(93, 'Angka kematian akibat air tidak aman, sanitasi tidak aman, dan tidak higienis.', 'Indikator 3.9.2', '39', 24),
(94, 'Angka kematian akibat keracunan.', 'Indikator 3.9.3', '39', 24),
(95, 'Proporsi kematian akibat keracunan.', 'Indikator 3.9.3.(a)', '39', 24),
(96, 'Persentase merokok pada penduduk umur ?15 tahun.', 'Indikator 3.a.1', '3', 25),
(97, 'Proporsi populasi dengan akses ke obat-obatan dan vaksin yang terjangkau secara berkelanjutan.', 'Indikator 3.b.1', '3', 26),
(98, 'Persentase ketersediaan obat dan vaksin di Puskesmas.', 'Indikator 3.b.1.(a)', '3', 26),
(99, 'Total Official Development Assistance (ODA) untuk Penelitian Kedokteran dan Sektor Kesehatan Dasar:', 'Indikator 3.b.2', '3', 26),
(100, 'Kepadatan dan Distribusi Tenaga Kesehatan.', 'Indikator 3.c.1', '3', 27),
(101, 'Kapasitas Peraturan Kesehatan Internasional (IHR) dan Kesiapsiagaan Darurat Kesehatan.', 'Indikator 3.d.1', '3', 28),
(102, 'Proporsi anak-anak dan remaja: (a) pada kelas 4, (b) tingkat akhir SD/kelas 6, (c) tingkat akhir SMP/kelas 9 yang mencapai standar kemampuan minimum dalam: (i) membaca, (ii) matematika.', 'Indikator 4.1.1*', '41', 29),
(103, 'Persentase SD/MI berakreditasi minimal B.', 'Indikator 4.1.1.(a)', '41', 29),
(104, 'Persentase SMP/MTs berakreditasi minimal B.', 'Indikator 4.1.1.(b)', '41', 29),
(105, 'Persentase SMA/MA berakreditasi minimal B.', 'Indikator 4.1.1.(c)', '41', 29),
(106, 'Angka Partisipasi Kasar (APK) SD/MI/sederajat.', 'Indikator 4.1.1.(d)', '41', 29),
(107, 'Angka Partisipasi Kasar (APK) SMP/MTs/sederajat.', 'Indikator 4.1.1.(e)', '41', 29),
(108, 'Angka Partisipasi Kasar (APK) SMA/SMK/MA/sederajat.', 'Indikator 4.1.1.(f)', '41', 29),
(109, 'Rata-rata lama sekolah penduduk umur ?15 tahun.', 'Indikator 4.1.1.(g)', '41', 29),
(110, 'Proporsi anak usia di bawah 5 tahun yang berkembang dengan baik dalam bidang kesehatan, pembelajaran, dan psikososial, menurut jenis kelamin.', 'Indikator 4.2.1', '42', 30),
(111, 'Tingkat partisipasi dalam pembelajaran yang teroganisir (satu tahun sebelum usia sekolah dasar), menurut jenis kelamin.', 'Indikator 4.2.2', '42', 30),
(112, 'Angka Partisipasi Kasar (APK) Pendidikan Anak Usia Dini (PAUD).', 'Indikator 4.2.2.(a)', '42', 30),
(113, 'Tingkat partisipasi remaja dan dewasa dalam pendidikan dan pelatihan formal dan non formal dalam 12 bulan terakhir, menurut jenis kelamin.', 'Indikator 4.3.1', '43', 31),
(114, 'Angka Partisipasi Kasar (APK) SMA/SMK/MA/sederajat.', 'Indikator 4.3.1.(a)', '43', 31),
(115, 'Angka Partisipasi Kasar (APK) Perguruan Tinggi (PT).', 'Indikator 4.3.1.(b)', '43', 31),
(116, 'Proporsi remaja dan dewasa dengan keterampilan teknologi informasi dan komunikasi (TIK).', 'Indikator 4.4.1*', '44', 32),
(117, 'Rasio Angka Partisipasi Murni (APM) perempuan/laki-laki di (1) SD/MI/sederajat; (2) SMP/MTs/sederajat; (3) SMA/SMK/MA/sederajat; dan Rasio Angka Partisipasi Kasar (APK) perempuan/laki-laki di (4) Perguruan Tinggi.', 'Indikator 4.5.1*', '45', 33),
(118, 'Persentase remaja/dewasa pada kelompok usia tertentu, paling tidak mahir/mampu pada level tertentu dalam keterampilan (i) membaca dan (ii) menghitung, menurut jenis kelamin.', 'Indikator 4.6.1', '46', 34),
(119, 'Persentase angka melek aksara penduduk umur ?15 tahun.', 'Indikator 4.6.1.(a)', '46', 34),
(120, 'Persentase angka melek aksara penduduk umur 15-24 tahun dan umur 15 -59 tahun.', 'Indikator 4.6.1.(b)', '46', 34),
(121, 'Pengarusutamaan pada semua jenjang pendidikan, (i) pendidikan kewargaan dunia, (ii) pendidikan untuk pembangunan berkelanjutan termasuk kesetaraan gender dan hak asasi manusia pada (a) kebijakan pendidikan nasional, (b) kurikulum, (c) pendidikan guru, (d)', 'Indikator 4.7.1', '47', 35),
(122, 'Proporsi sekolah dengan akses ke: (a) listrik (b) internet untuk tujuan pengajaran, (c) komputer untuk tujuan pengajaran, (d) infrastruktur dan materi memadai bagi siswa disabilitas, (e) air minum layak, (f) fasilitas sanitasi dasar per jenis kelamin, (g)', 'Indikator 4.a.1*', '4', 36),
(123, 'Jumlah bantuan resmi Pemri kepada Mahasiswa Asing Penerima Beasiswa Kemitraan Negara Berkembang.', 'Indikator 4.b.1*', '4', 37),
(124, 'Persentase guru TK, SD, SMP, SMA, SMK, dan PLB yang bersertifikat pendidik.', 'Indikator 4.c.1*', '4', 38),
(125, 'Jumlah kebijakan yang responsif gender mendukung pemberdayaan perempuan.', 'Indikator 5.1.1*', '51', 39),
(126, 'Proporsi perempuan dewasa dan anak perempuan (umur 15-64 tahun) mengalami kekerasan (fisik, seksual, atau emosional) oleh pasangan atau mantan pasangan dalam 12 bulan terakhir.', 'Indikator 5.2.1*', '52', 40),
(127, 'Prevalensi kekerasan terhadap anak perempuan.', 'Indikator 5.2.1.(a)', '52', 40),
(128, 'Proporsi perempuan dewasa dan anak perempuan (umur 15-64 tahun) mengalami kekerasan seksual oleh orang lain selain pasangan dalam 12 bulan terakhir.', 'Indikator 5.2.2*', '52', 40),
(129, 'Persentase korban kekerasan terhadap perempuan yang mendapat layanan komprehensif.', 'Indikator 5.2.2.(a)', '52', 40),
(130, 'Proporsi perempuan umur 20-24 tahun yang berstatus kawin atau berstatus hidup bersama sebelum umur 15 tahun dan sebelum umur 18 tahun.', 'Indikator 5.3.1*', '53', 41),
(131, 'Median usia kawin pertama perempuan pernah kawin umur 25-49 tahun.', 'Indikator 5.3.1.(a)', '53', 41),
(132, 'Angka kelahiran pada perempuan umur 15-19 tahun (Age Specific Fertility Rate/ASFR).', 'Indikator 5.3.1.(b)', '53', 41),
(133, 'Persentase anak perempuan dan perempuan berusia 15-49 tahun yang telah menjalani FGM/C, menurut kelompok umur.', 'Indikator 5.3.2', '53', 41),
(134, 'Proporsi waktu yang dihabiskan untuk pekerjaan rumah tangga dan perawatan, berdasarkan jenis kelamin, kelompok umur, dan lokasi.', 'Indikator 5.4.1', '54', 42),
(135, 'Proporsi kursi yang diduduki perempuan di parlemen tingkat pusat, parlemen daerah dan pemerintah daerah.', 'Indikator 5.5.1*', '55', 43),
(136, 'Proporsi perempuan yang berada di posisi managerial.', 'Indikator 5.5.2*', '55', 43),
(137, 'Proporsi perempuan umur 15-49 tahun yang membuat keputusan sendiri terkait hubungan seksual, penggunaan kontrasepsi, dan layanan kesehatan reproduksi.', 'Indikator 5.6.1*', '56', 44),
(138, 'Unmet need KB (Kebutuhan Keluarga Berencana/KB yang tidak terpenuhi).', 'Indikator 5.6.1.(a)', '56', 44),
(139, 'Pengetahuan dan pemahaman Pasangan Usia Subur (PUS) tentang metode kontrasepsi modern.', 'Indikator 5.6.1.(b)', '56', 44),
(140, 'Undang-undang atau Peraturan Pemerintah (PP) yang menjamin perempuan umur 15-49 tahun untuk mendapatkan pelayanan, informasi dan pendidikan terkait kesehatan seksual dan reproduksi.', 'Indikator 5.6.2*', '56', 44),
(141, '(1)Proporsi penduduk yang memiliki hak tanah pertanian; (2) Proporsi perempuan pemilik atau yang memiliki hak lahan pertanian, menurut jenis kepemilikan.', 'Indikator 5.a.1', '5', 45),
(142, 'Proporsi negara dengan kerangka hukum (termasuk hukum adat) yang menjamin persamaan hak perempuan untuk kepemilikan tanah dan/atau hak kontrol.', 'Indikator 5.a.2', '5', 45),
(143, 'Proporsi individu yang menguasai/memiliki telepon genggam.', 'Indikator 5.b.1*', '5', 46),
(144, 'Ketersediaan sistem untuk melacak dan membuat alokasi umum untuk kesetaraan gender dan pemberdayaan perempuan.', 'Indikator 5.c.1', '5', 47),
(145, 'Proporsi populasi yang menggunakan layanan air minum yang dikelola secara aman.', 'Indikator 6.1.1', '61', 48),
(146, 'Persentase rumah tangga yang memiliki akses terhadap layanan sumber air minum layak.', 'Indikator 6.1.1.(a)', '61', 48),
(147, 'Kapasitas prasarana air baku untuk melayani rumah tangga, perkotaan dan industri, serta penyediaan air baku untuk pulau-pulau.', 'Indikator 6.1.1.(b)', '61', 48),
(148, 'Proporsi populasi yang memiliki akses layanan sumber air minum aman dan berkelanjutan.', 'Indikator 6.1.1.(c)', '61', 48),
(149, 'Proporsi populasi yang menggunakan layanan sanitasi yang dikelola secara aman, termasuk fasilitas cuci tangan dengan air dan sabun.', 'Indikator 6.2.1', '62', 49),
(150, 'Proporsi populasi yang memiliki fasilitas cuci tangan dengan sabun dan air.', 'Indikator 6.2.1.(a)', '62', 49),
(151, 'Persentase rumah tangga yang memiliki akses terhadap layanan sanitasi layak.', 'Indikator 6.2.1.(b)', '62', 49),
(152, 'Jumlah desa/kelurahan yang melaksanakan Sanitasi Total Berbasis Masyarakat (STBM).', 'Indikator 6.2.1.(c)', '62', 49),
(153, 'Jumlah desa/kelurahan yang Open Defecation Free (ODF)/ Stop Buang Air Besar Sembarangan (SBS).', 'Indikator 6.2.1.(d)', '62', 49),
(154, 'Jumlah kabupaten/kota yang terbangun infrastruktur air limbah dengan sistem terpusat skala kota, kawasan dan komunal.', 'Indikator 6.2.1.(e)', '62', 49),
(155, 'Proporsi rumah tangga (RT) yang terlayani sistem pengelolaan air limbah terpusat.', 'Indikator 6.2.1.(f)', '62', 49),
(156, 'Proporsi limbah cair yang diolah secara aman.', 'Indikator 6.3.1', '63', 50),
(157, 'Jumlah kabupaten/kota yang ditingkatkan kualitas pengelolaan lumpur tinja perkotaan dan dilakukan pembangunan Instalasi Pengolahan Lumpur Tinja (IPLT).', 'Indikator 6.3.1.(a)', '63', 50),
(158, 'Proporsi rumah tangga yang terlayani sistem pengelolaan lumpur tinja.', 'Indikator 6.3.1.(b)', '63', 50),
(159, 'Proporsi badan air dengan kualitas air ambien yang baik.', 'Indikator 6.3.2', '63', 50),
(160, 'Kualitas air danau.', 'Indikator 6.3.2.(a)', '63', 50),
(161, 'Kualitas air sungai sebagai sumber air baku.', 'Indikator 6.3.2.(b)', '63', 50),
(162, 'Perubahan efisiensi penggunaan air dari waktu ke waktu.', 'Indikator 6.4.1', '64', 51),
(163, 'Pengendalian dan penegakan hukum bagi penggunaan air tanah.', 'Indikator 6.4.1.(a)', '64', 51),
(164, 'Insentif penghematan air pertanian/perkebunan dan industri.', 'Indikator 6.4.1.(b)', '64', 51),
(165, 'Tingkat water stress: proporsi pengambilan (withdrawal) air tawar terhadap ketersediannya.', 'Indikator 6.4.2', '64', 51),
(166, 'Tingkat pelaksanaan pengelolaan sumber daya air secara terpadu (0-100).', 'Indikator 6.5.1', '65', 52),
(167, 'Jumlah Rencana Pengelolaan Daerah Aliran Sungai Terpadu (RPDAST) yang diinternalisasi ke dalam Rencana Tata Ruang Wilayah (RTRW).', 'Indikator 6.5.1.(a)', '65', 52),
(168, 'Jumlah stasiun hidrologi dan klimatologi yang dilakukan updating dan revitalisasi.', 'Indikator 6.5.1.(b)', '65', 52),
(169, 'Jumlah jaringan informasi sumber daya air yang dibentuk.', 'Indikator 6.5.1.(c)', '65', 52),
(170, 'Jumlah Daerah Aliran Sungai (DAS) yang meningkat jumlah mata airnya dan jumlah DAS yang memiliki Memorandum of Understanding (MoU) lintas Negara.', 'Indikator 6.5.1.(d)', '65', 52),
(171, 'Luas pengembangan hutan serta peningkatan hasil hutan bukan kayu (HHBK) untuk pemulihan kawasan DAS.', 'Indikator 6.5.1.(e)', '65', 52),
(172, 'Jumlah wilayah sungai yang memiliki partisipasi masyarakat dalam pengelolaan daerah tangkapan sungai dan danau.', 'Indikator 6.5.1.(f)', '65', 52),
(173, 'Kegiatan penataan kelembagaan sumber daya air.', 'Indikator 6.5.1.(g)', '65', 52),
(174, 'Jumlah DAS Prioritas yang meningkat jumlah mata airnya melalui konservasi sumber daya air di daerah hulu DAS serta sumur resapan.', 'Indikator 6.5.1.(h)', '65', 52),
(175, 'Jumlah DAS Prioritas yang dipulihkan kesehatannya melalui pembangunan embung, dam pengendali, dam penahan skala kecil dan menengah.', 'Indikator 6.5.1.(i)', '65', 52),
(176, 'Proporsi wilayah cekungan lintas batas dengan pengaturan kerja sama sumber daya air yang operasional.', 'Indikator 6.5.2', '65', 52),
(177, 'Perubahan tingkat sumber daya air terkait ekosistem dari waktu ke waktu.', 'Indikator 6.6.1', '66', 53),
(178, 'Jumlah danau yang ditingkatkan kualitas airnya.', 'Indikator 6.6.1.(a)', '66', 53),
(179, 'Jumlah danau yang pendangkalannya kurang dari 1%.', 'Indikator 6.6.1.(b)', '66', 53),
(180, 'Jumlah danau yang menurun tingkat erosinya.', 'Indikator 6.6.1.(c)', '66', 53),
(181, 'Luas lahan kritis dalam KPH yang direhabilitasi.', 'Indikator 6.6.1.(d)', '66', 53),
(182, 'Jumlah DAS prioritas yang dilindungi mata airnya dan dipulihkan kesehatannya.', 'Indikator 6.6.1.(e)', '66', 53),
(183, 'Jumlah ODA terkait air dan sanitasi yang menjadi bagian rencana belanja pemerintah.', 'Indikator 6.a.1', '6', 54),
(184, 'Proporsi unit pemerintah lokal yang menerbitkan dan melaksanakan kebijakan dan prosedur terkait partisipasi masyarakat dalam pengelolaan air dan sanitasi.', 'Indikator 6.b.1', '6', 55),
(185, 'Rasio elektrifikasi.', 'Indikator 7.1.1*', '71', 56),
(186, 'Konsumsi listrik per kapita.', 'Indikator 7.1.1.(a)', '71', 56),
(187, 'Proporsi penduduk dengan sumber energi utama pada teknologi dan bahan bakar yang bersih.', 'Indikator 7.1.2', '71', 56),
(188, 'Jumlah sambungan jaringan gas untuk rumah tangga.', 'Indikator 7.1.2.(a)', '71', 56),
(189, 'Rasio penggunaan gas rumah tangga.', 'Indikator 7.1.2.(b)', '71', 56),
(190, 'Bauran energi terbarukan.', 'Indikator 7.2.1*', '72', 57),
(191, 'Intensitas energi primer.', 'Indikator 7.3.1*', '73', 58),
(192, 'Termobilisasikan dana per tahun (US $) mulai tahun 2020 akuntabel menuju komitmen US $100 Miliar.', 'Indikator 7.a.1', '7', 59),
(193, 'Proporsi nilai investasi efisiensi energi terhadap PDB dan jumlah transfer dana investasi luar negeri langsung (FDI) untuk infrastruktur dan teknologi pelayanan pembangunan berkelanjutan.', 'Indikator 7.b.1', '7', 60),
(194, 'Laju pertumbuhan PDB per kapita.', 'Indikator 8.1.1*', '81', 61),
(195, 'PDB per kapita.', 'Indikator 8.1.1.(a)', '81', 61),
(196, 'Laju pertumbuhan PDB per tenaga kerja/Tingkat pertumbuhan PDB riil per orang bekerja per tahun.', 'Indikator 8.2.1*', '82', 62),
(197, 'Proporsi lapangan kerja informal sektor non-pertanian, berdasarkan jenis kelamin.', 'Indikator 8.3.1*', '83', 63),
(198, 'Persentase tenaga kerja formal.', 'Indikator 8.3.1.(a)', '83', 63),
(199, 'Persentase tenaga kerja informal sektor pertanian.', 'Indikator 8.3.1.(b)', '83', 63),
(200, 'Persentase akses UMKM (Usaha Mikro, Kecil, dan Menengah) ke layanan keuangan.', 'Indikator 8.3.1.(c)', '83', 63),
(201, 'Jejak material (material footprint) yang dihitung selama tahun berjalan.', 'Indikator 8.4.1', '84', 64),
(202, 'Konsumsi material domestik (domestic material consumption).', 'Indikator 8.4.2', '84', 64),
(203, 'Upah rata-rata per jam pekerja.', 'Indikator 8.5.1*', '85', 65),
(204, 'Tingkat pengangguran terbuka berdasarkan jenis kelamin dan kelompok umur.', 'Indikator 8.5.2*', '85', 65),
(205, 'Persentase setengah pengangguran.', 'Indikator 8.5.2.(a)', '85', 65),
(206, 'Persentase usia muda (15-24) yang sedang tidak sekolah, bekerja atau mengikuti pelatihan (NEET).', 'Indikator 8.6.1*', '86', 66),
(207, 'Persentase dan jumlah anak usia 5-17 tahun, yang bekerja, dibedakan berdasarkan jenis kelamin dan kelompok umur (dibedakan berdasarkan bentuk-bentuk pekerjaan terburuk untuk anak).', 'Indikator 8.7.1', '87', 67),
(208, 'Tingkat frekuensi kecelakaan kerja fatal dan non-fatal, berdasarkan jenis kelamin, sektor pekerjaan dan status migran.', 'Indikator 8.8.1', '88', 68),
(209, 'Jumlah perusahaan yang menerapkan norma K3.', 'Indikator 8.8.1.(a)', '88', 68),
(210, 'Peningkatan kepatuhan atas hak-hak pekerja (kebebasan berserikat dan perundingan kolektif) berdasarkan sumber tekstual ILO dan peraturan perundang-undangan negara terkait.', 'Indikator 8.8.2', '88', 68),
(211, 'Proporsi kontribusi pariwisata terhadap PDB.', 'Indikator 8.9.1*', '89', 69),
(212, 'Jumlah wisatawan mancanegara.', 'Indikator 8.9.1.(a)', '89', 69),
(213, 'Jumlah kunjungan wisatawan nusantara.', 'Indikator 8.9.1.(b)', '89', 69),
(214, 'Jumlah devisa sektor pariwisata.', 'Indikator 8.9.1.(c)', '89', 69),
(215, 'Jumlah pekerja pada industri pariwisata dalam proporsi terhadap total pekerja.', 'Indikator 8.9.2*', '89', 69),
(216, 'Jumlah kantor bank dan ATM per 100.000 jumlah orang dewasa.', 'Indikator 8.10.1*', '810', 70),
(217, 'Rata-rata jarak lembaga keuangan (Bank Umum).', 'Indikator 8.10.1.(a)', '810', 70),
(218, 'Proporsi kredit UMKM terhadap total kredit.', 'Indikator 8.10.1.(b)', '810', 70),
(219, 'Proporsi kepemilikan rekening bank orang dewasa (18 tahun dan lebih) atau lembaga keuangan lain atau dengan pelayanan jasa keuangan bergerak.', 'Indikator 8.10.2*', '810', 70),
(220, 'Bantuan untuk komitmen perdagangan dan pencairan pendanaan.', 'Indikator 8.a.1', '8', 71),
(221, 'Total pengeluaran pemerintah dalam program perlindungan sosial dan ketenagakerjaan dalam proporsi terhadap anggaran nasional dan PDB.', 'Indikator 8.b.1', '8', 72),
(222, 'Populasi penduduk desa yang tinggal dalam jarak 2 km terhadap jalan yang layak.', 'Indikator 9.1.1', '91', 73),
(223, 'Kondisi mantap jalan nasional.', 'Indikator 9.1.1.(a)', '91', 73),
(224, 'Panjang pembangunan jalan tol.', 'Indikator 9.1.1.(b)', '91', 73),
(225, 'Panjang jalur kereta api.', 'Indikator 9.1.1.(c)', '91', 73),
(226, 'Jumlah penumpang dan volume pengangkutan, menurut jenis transportasi.', 'Indikator 9.1.2', '91', 73),
(227, 'Jumlah bandara.', 'Indikator 9.1.2.(a)', '91', 73),
(228, 'Jumlah dermaga penyeberangan.', 'Indikator 9.1.2.(b)', '91', 73),
(229, 'Jumlah pelabuhan strategis.', 'Indikator 9.1.2.(c)', '91', 73),
(230, 'Proporsi nilai tambah sektor industri manufaktur terhadap PDB dan perkapita.', 'Indikator 9.2.1*', '92', 74),
(231, 'Laju pertumbuhan PDB industri manufaktur.', 'Indikator 9.2.1.(a)', '92', 74),
(232, 'Proporsi tenaga kerja pada sektor industri manufaktur.', 'Indikator 9.2.2*', '92', 74),
(233, 'Proporsi nilai tambah industri kecil terhadap total nilai tambah industri.', 'Indikator 9.3.1*', '93', 75),
(234, 'Proporsi industri kecil dengan pinjaman atau kredit.', 'Indikator 9.3.2*', '93', 75),
(235, 'Rasio Emisi CO2/Emisi Gas Rumah Kaca dengan nilai tambah sektor industri.', 'Indikator 9.4.1*', '94', 76),
(236, 'Persentase Perubahan Emisi CO2/Emisi Gas Rumah Kaca.', 'Indikator 9.4.1.(a)', '94', 76),
(237, 'Proporsi anggaran riset pemerintah terhadap PDB.', 'Indikator 9.5.1*', '95', 77),
(238, 'Jumlah peneliti (ekuivalen penuh waktu) per satu juta penduduk.', 'Indikator 9.5.2', '95', 77),
(239, 'Total dukungan resmi internasional (bantuan resmi pembangunan ditambah aliran bantuan resmi biaya) untuk infrastruktur.', 'Indikator 9.a.1', '9', 78),
(240, 'Proporsi nilai tambah teknologi menengah dan tinggi terhadap total nilai tambah.', 'Indikator 9.b.1', '9', 79),
(241, 'Proporsi penduduk yang terlayani mobile broadband.', 'Indikator 9.c.1*', '9', 80),
(242, 'Proporsi individu yang menguasai/memiliki telepon genggam.', 'Indikator 9.c.1.(a)', '9', 80),
(243, 'Proporsi individu yang menggunakan Internet.', 'Indikator 9.c.1.(b)', '9', 80),
(244, 'Koefisien Gini.', 'Indikator 10.1.1*', '101', 81),
(245, 'Persentase penduduk yang hidup di bawah garis kemiskinan nasional, menurut jenis kelamin dan kelompok umur.', 'Indikator 10.1.1.(a)', '101', 81),
(246, 'Jumlah daerah tertinggal yang terentaskan.', 'Indikator 10.1.1.(b)', '101', 81),
(247, 'Jumlah desa tertinggal.', 'Indikator 10.1.1.(c)', '101', 81),
(248, 'Jumlah Desa Mandiri.', 'Indikator 10.1.1.(d)', '101', 81),
(249, 'Rata-rata pertumbuhan ekonomi di daerah tertinggal.', 'Indikator 10.1.1.(e)', '101', 81),
(250, 'Persentase penduduk miskin di daerah tertinggal.', 'Indikator 10.1.1.(f)', '101', 81),
(251, 'Proporsi penduduk yang hidup di bawah 50 persen dari median pendapatan, menurut jenis kelamin dan penyandang difabilitas.', 'Indikator 10.2.1*', '102', 82),
(252, 'Proporsi penduduk yang melaporkan merasa didiskriminasikan atau dilecehkan dalam kurun 12 bulan terakhir atas dasar larangan diskriminasi sesuai hukum internasional Hak Asasi Manusia.', 'Indikator 10.3.1', '103', 83),
(253, 'Indeks Kebebasan Sipil.', 'Indikator 10.3.1.(a)', '103', 83),
(254, 'Jumlah penanganan pengaduan pelanggaran Hak Asasi Manusia (HAM).', 'Indikator 10.3.1.(b)', '103', 83),
(255, 'Jumlah penanganan pengaduan pelanggaran Hak Asasi Manusia (HAM) perempuan terutama kekerasan terhadap perempuan.', 'Indikator 10.3.1.(c)', '103', 83),
(256, 'Jumlah kebijakan yang diskriminatif dalam 12 bulan lalu berdasarkan pelarangan diskriminasi menurut hukum HAM Internasional.', 'Indikator 10.3.1.(d)', '103', 83),
(257, 'Proporsi upah dan subsidi perlindungan sosial dari pemberi kerja terhadap PDB.', 'Indikator 10.4.1', '104', 84),
(258, 'Persentase rencana anggaran untuk belanja fungsi perlindungan sosial pemerintah pusat.', 'Indikator 10.4.1.(a)', '104', 84),
(259, 'Proporsi peserta Program Jaminan Sosial Bidang Ketenagakerjaan.', 'Indikator 10.4.1.(b)', '104', 84),
(260, 'Financial Soundness Indicator.', 'Indikator 10.5.1', '105', 85),
(261, 'Proporsi anggota dan hak suara negara-negara berkembang di organisasi internasional.', 'Indikator 10.6.1', '106', 86),
(262, 'Proporsi biaya rekrutmen yang ditanggung pekerja terhadap pendapatan tahunan di negara tujuan.', 'Indikator 10.7.1', '107', 87),
(263, 'Jumlah negara yang mengimplementasikan kebijakan migran yang baik.', 'Indikator 10.7.2', '107', 87),
(264, 'Jumlah dokumen kerjasama ketenagakerjaan dan perlindungan pekerja migran antara negara RI dengan negara tujuan penempatan.', 'Indikator 10.7.2.(a)', '107', 87),
(265, 'Jumlah fasilitasi pelayanan penempatan TKLN berdasarkan okupasi.', 'Indikator 10.7.2.(b)', '107', 87),
(266, 'Besaran nilai tarif yang diberlakukan untuk mengimpor dari negara kurang berkembang/berkembang dengan tarif nol persen.', 'Indikator 10.a.1', '10', 88),
(267, 'Besaran nilai tarif yang diberlakukan untuk mengimpor dari negara kurang berkembang/berkembang dengan tarif nol persen.', 'Indikator 10.a.1', '10', 88),
(268, 'Total aliran sumberdaya yang masuk untuk pembangunan, terpilah berdasarkan negara-negara penerima dan donor serta jenis aliran (misalnya, bantuan pembangunan resmi, investasi asing langsung, serta aliran yang lain).', 'Indikator 10.b.1', '10', 89),
(269, 'Proporsi biaya remitansi dari jumlah yang dikirimkan.', 'Indikator 10.c.1', '10', 90),
(270, 'Proporsi populasi penduduk perkotaan yang tinggal di daerah kumuh, permukiman liar atau rumah yang tidak layak.', 'Indikator 11.1.1', '111', 91),
(271, 'Proporsi rumah tangga yang memiliki akses terhadap hunian yang layak dan terjangkau.', 'Indikator 11.1.1.(a)', '111', 91),
(272, 'Jumlah kawasan perkotaan metropolitan yang terpenuhi standar pelayanan perkotaan (SPP).', 'Indikator 11.1.1.(b)', '111', 91),
(273, 'Jumlah kota sedang dan kota baru yang terpenuhi SPP.', 'Indikator 11.1.1.(c)', '111', 91),
(274, 'Proporsi populasi yang mendapatkan akses yang nyaman pada transportasi publik, terpilah menurut jenis kelamin, kelompok usia, dan penyandang difabilitas.', 'Indikator 11.2.1', '112', 92),
(275, 'Persentase pengguna moda transportasi umum di perkotaan.', 'Indikator 11.2.1.(a)', '112', 92),
(276, 'Jumlah sistem angkutan rel yang dikembangkan di kota besar.', 'Indikator 11.2.1.(b)', '112', 92),
(277, 'Rasio laju peningkatan konsumsi tanah dengan laju pertumbuhan penduduk.', 'Indikator 11.3.1', '113', 93),
(278, 'Jumlah kota sedang di luar Jawa yang diarahkan sebagai pengendali (buffer) arus urbanisasi dan sebagai pusat pertumbuhan utama.', 'Indikator 11.3.1.(a)', '113', 93),
(279, 'Jumlah Metropolitan baru di luar Jawa sebagai Pusat Kegiatan Nasional (PKN).', 'Indikator 11.3.1.(b)', '113', 93),
(280, 'Proporsi kota dengan struktur partisipasi langsung masyarakat sipil dalam perencanaan dan manajemen kota yang berlangsung secara teratur dan demokratis.', 'Indikator 11.3.2', '113', 93),
(281, 'Rata-rata institusi yang berperan secara aktif dalam Forum Dialog Perencanaan Pembangunan Kota Berkelanjutan.', 'Indikator 11.3.2.(a)', '113', 93),
(282, 'Jumlah lembaga pembiayaan infrastruktur.', 'Indikator 11.3.2.(b)', '113', 93),
(283, 'Jumlah belanja (publik dan swasta) per kapita yang diperuntukan untuk preservasi, perlindungan, konservasi pada semua warisan budaya dan alam, menurut jenis warisan (budaya, alam, terpadu, destinasi pusat warisan dunia), tingkat pemerintahan (nasional dan', 'Indikator 11.4.1', '114', 94),
(284, 'Jumlah kota pusaka di kawasan perkotaan metropolitan, kota besar, kota sedang dan kota kecil.', 'Indikator 11.4.1.(a)', '114', 94),
(285, 'Jumlah korban meninggal, hilang dan terkena dampak bencana per 100.000 orang.', 'Indikator 11.5.1*', '115', 95),
(286, 'Indeks Risiko Bencana Indonesia (IRBI).', 'Indikator 11.5.1.(a)', '115', 95),
(287, 'Jumlah kota tangguh bencana yang terbentuk.', 'Indikator 11.5.1.(b)', '115', 95),
(288, 'Jumlah sistem peringatan dini cuaca dan iklim serta kebencanaan.', 'Indikator 11.5.1.(c)', '115', 95),
(289, 'Kerugian ekonomi langsung akibat bencana terhadap GDP, termasuk kerusakan bencana terhadap infrastruktur yang kritis dan gangguan terhadap pelayanan dasar.', 'Indikator 11.5.2', '115', 95),
(290, 'Jumlah kerugian ekonomi langsung akibat bencana.', 'Indikator 11.5.2.(a)', '115', 95),
(291, 'Proporsi limbah padat perkotaan yang dikumpulkan secara teratur dengan pemrosesan akhir yang baik terhadap total limbah padat perkotaan yang dihasilkan oleh suatu kota.', 'Indikator 11.6.1', '116', 96),
(292, 'Persentase sampah perkotaan yang tertangani.', 'Indikator 11.6.1.(a)', '116', 96),
(293, 'Jumlah kota hijau yang mengembangkan dan menerapkan green waste di kawasan perkotaan metropolitan.', 'Indikator 11.6.1.(b)', '116', 96),
(294, 'Rata-rata tahunan materi partikulat halus (PM 2,5 dan PM 10) di Perkotaan (dibobotkan jumlah penduduk).', 'Indikator 11.6.2', '116', 96),
(295, 'Proporsi ruang terbuka perkotaan untuk semua, menurut kelompok usia, jenis kelamin dan penyandang disabilitas.', 'Indikator 11.7.1', '117', 97),
(296, 'Jumlah kota hijau yang menyediakan ruang terbuka hijau di kawasan perkotaan metropolitan dan kota sedang.', 'Indikator 11.7.1.(a)', '117', 97),
(297, 'Proporsi orang yang menjadi korban kekerasan atau pelecehan seksual menurut jenis kelamin, usia, status disabilitas, dan tempat kejadian (12 bulan terakhir).', 'Indikator 11.7.2', '117', 97),
(298, 'Proporsi korban kekerasan dalam 12 bulan terakhir yang melaporkan kepada polisi.', 'Indikator 11.7.2.(a)', '117', 97),
(299, 'Proporsi penduduk yang tinggal di kota yang melaksanakan perencanaan regional dan kota terintegrasi dengan proyeksi populasi dan kebutuhan sumber daya.', 'Indikator 11.a.1', '11', 98),
(300, 'Proporsi pemerintah kota yang memiliki dokumen strategi pengurangan risiko bencana.', 'Indikator 11.b.1*', '11', 99),
(301, 'Dokumen strategi pengurangan risiko bencana (PRB) tingkat daerah.', 'Indikator 11.b.2*', '11', 99),
(302, 'Proporsi dukungan finansial kepada negara kurang berkembang (LDCs) yang dialokasikan pada konstruksi dan perbaikan dengan sumber daya yang efisien, berkelanjutan dan berketahanan dengan memanfaatkan bahan lokal.', 'Indikator 11.c.1', '11', 100),
(303, 'Jumlah kolaborasi tematik quickwins program.', 'Indikator 12.1.1*', '121', 101),
(304, 'Jejak material (material footprint).', 'Indikator 12.2.1', '122', 102),
(305, 'Konsumsi material domestik (domestic material consumption).', 'Indikator 12.2.2', '122', 102),
(306, 'Indeks kehilangan makanan global.', 'Indikator 12.3.1', '123', 103),
(307, 'Jumlah pihak untuk kesepakatan lingkungan multilateral internasional tentang bahan kimia dan limbah berbahaya untuk memenuhi komitmen dan kewajiban mereka dalam transmisi informasi yang diperlukan oleh masing-masing.', 'Indikator 12.4.1', '124', 104),
(308, 'Jumlah peserta PROPER yang mencapai minimal ranking BIRU.', 'Indikator 12.4.1.(a)', '124', 104),
(309, 'Timbulan limbah berbahaya per kapita, proporsi limbah berbahaya yang terkelola menurut jenis penanganannya.', 'Indikator 12.4.2', '124', 104),
(310, 'Jumlah limbah B3 yang terkelola dan proporsi limbah B3 yang diolah sesuai peraturan perundangan (sektor industri).', 'Indikator 12.4.2.(a)', '124', 104),
(311, 'Tingkat daur ulang Nasional, ton bahan daur ulang.', 'Indikator 12.5.1', '125', 105),
(312, 'Jumlah timbulan sampah yang didaur ulang.', 'Indikator 12.5.1.(a)', '125', 105),
(313, 'Jumlah perusahaan yang mempublikasi laporan keberlanjutannya.', 'Indikator 12.6.1', '126', 106),
(314, 'Jumlah perusahaan yang menerapkan sertifikasi SNI ISO 14001.', 'Indikator 12.6.1.(a)', '126', 106),
(315, 'Jumlah negara yang menerapkan kebijakan pengadaan publik dan rencana aksi yang berkelanjutan.', 'Indikator 12.7.1', '127', 107),
(316, 'Jumlah produk ramah lingkungan yang teregister.', 'Indikator 12.7.1.(a)', '127', 107),
(317, 'Sejauh mana (i) pendidikan kewarganegaraan global dan (ii) pendidikan untuk pembangunan berkelanjutan (termasuk pendidikan perubahan iklim) diarusutamakan dalam (a) kebijakan pendidikan nasional (b) kurikulum (c) pendidikan guru dan (d) penilaian siswa.', 'Indikator 12.8.1', '128', 108),
(318, 'Jumlah fasilitas publik yang menerapkan Standar Pelayanan Masyarakat (SPM) dan teregister.', 'Indikator 12.8.1.(a)', '128', 108),
(319, 'Jumlah dukungan negara-negara berkembang pada riset dan pengembangan (R&D) untuk konsumsi dan produksi berkelanjutan (SCP) dan teknologi ramah lingkungan.', 'Indikator 12.a.1', '12', 109),
(320, 'Jumlah strategi atau kebijakan pariwisata berkelanjutan dan pelaksanaan rencana aksi, dengan perangkat monitoring dan evaluasi yang disepakati.', 'Indikator 12.b.1', '12', 110),
(321, 'Proporsi subsidi bahan bakar fosil per unit GDP (produksi dan konsumsi) sebagai proporsi dari total belanja nasional pada bahan bakar fosil.', 'Indikator 12.c.1', '12', 111),
(322, 'Dokumen strategi pengurangan risiko bencana (PRB) tingkat nasional dan daerah.', 'Indikator 13.1.1*', '131', 112),
(323, 'Jumlah korban meninggal, hilang dan terkena dampak bencana per 100.000 orang.', 'Indikator 13.1.2*', '131', 112),
(324, 'Dokumen Biennial Update Report (BUR) Indonesia.', 'Indikator 13.2.1*', '132', 113),
(325, 'Dokumen pelaporan penurunan emisi gas rumah kaca (GRK).', 'Indikator 13.2.1.(a)', '132', 113),
(326, 'Jumlah negara yang telah mengitegrasikan mitigasi, adaptasi, pengurangan dampak dan peringatan dini ke dalam kurikulum sekolah dasar, sekolah menengah dan perguruan tinggi.', 'Indikator 13.3.1', '133', 114),
(327, 'Jumlah negara yang telah mengkomunikasikan penguatan kapasitas kelembagaan, sistem individu untuk melaksanakan adaptasi, mitigasi dan transfer teknologi, serta kegiatan pembangunan.', 'Indikator 13.3.2', '133', 114),
(328, 'Mobilisasi sejumlah dana (USD) per tahun mulai tahun 2010 secara akuntabel mencapai komitmen sebesar 100 milyar USD.', 'Indikator 13.a.1', '13', 115),
(329, 'Jumlah negara-negara kurang berkembang dan negara berkembang kepulauan kecil yang menerima dukungan khusus dan sejumlah dukungan, termasuk keuangan, teknologi dan peningkatan kapasitas, untuk mekanisme peningkatan kapasitas dalam perencanaan dan pengelola', 'Indikator 13.b.1', '13', 116),
(330, 'Indeks eutrofikasi pesisir (ICEP) dan kepadatan sampah plastik terapung.', 'Indikator 14.1.1', '141', 117),
(331, 'Proporsi Zona Ekonomi Eksklusif nasional yang dikelola menggunakan pendekatan berbasis ekosistem.', 'Indikator 14.2.1', '142', 118),
(332, 'Tersedianya kerangka kebijakan, dan instrumen terkait penataan ruang laut nasional.', 'Indikator 14.2.1.(a)', '142', 118),
(333, 'Terkelolanya 11 wilayah pengelolaan perikanan (WPP) secara berkelanjutan.', 'Indikator 14.2.1.(b)', '142', 118),
(334, 'Rata-rata keasaman laut (pH) yang diukur pada jaringan stasiun sampling yang disetujui dan memadai.', 'Indikator 14.3.1', '143', 119),
(335, 'Proporsi tangkapan jenis ikan yang berada dalam batasan biologis yang aman.', 'Indikator 14.4.1*', '144', 120),
(336, 'Jumlah luas kawasan konservasi perairan.', 'Indikator 14.5.1*', '145', 121),
(337, 'Kemajuan negara-negara di tingkat pelaksanaan instrumen internasional yang bertujuan untuk memerangi penangkapan ikan yang ilegal, tidak dilaporkan dan tidak diatur (IUU Fishing).', 'Indikator 14.6.1', '146', 122),
(338, 'Persentase kepatuhan pelaku usaha.', 'Indikator 14.6.1.(a)', '146', 122),
(339, 'Perikanan berkelanjutan sebagai presentase dari PDB pada negara-negara berkembang kepulauan kecil, negara-negara kurang berkembang dan semua negara.', 'Indikator 14.7.1', '147', 123),
(340, 'Proporsi dari total anggaran penelitian yang dialokasikan untuk penelitian di bidang teknologi kelautan.', 'Indikator 14.a.1', '14', 124),
(341, 'Ketersediaan kerangka hukum/regulasi/ kebijakan/kelembagaan yang mengakui dan melindungi hak akses untuk perikanan skala kecil.', 'Indikator 14.b.1*', '14', 125),
(342, 'Jumlah provinsi dengan peningkatan akses pendanaan usaha nelayan.', 'Indikator 14.b.1.(a)', '14', 125),
(343, 'Jumlah nelayan yang terlindungi.', 'Indikator 14.b.1(b)', '14', 125),
(344, 'Tersedianya kerangka kebijakan dan instrumen terkait pelaksanaan UNCLOS (the United Nations Convention on the Law of the Sea).', 'Indikator 14.c.1*', '14', 126),
(345, 'Kawasan hutan sebagai persentase dari total luas lahan.', 'Indikator 15.1.1', '151', 127),
(346, 'Proporsi tutupan hutan terhadap luas lahan keseluruhan.', 'Indikator 15.1.1.(a)', '151', 127),
(347, 'Proporsi situs penting keanekaragaman hayati daratan dan perairan darat dalam kawasan lindung, berdasarkan jenis ekosistemnya.', 'Indikator 15.1.2', '151', 127),
(348, 'Proporsi lahan yang terdegradasi terhadap luas lahan keseluruhan.', 'Indikator 15.2.1', '152', 128),
(349, 'Luas kawasan konservasi terdegradasi yang dipulihkan kondisi ekosistemnya.', 'Indikator 15.2.1.(a)', '152', 128),
(350, 'Luas usaha pemanfaatan hasil hutan kayu restorasi ekosistem.', 'Indikator 15.2.1.(b)', '152', 128),
(351, 'Jumlah kawasan konservasi yang memperoleh nilai indeks METT minimal 70%.', 'Indikator 15.2.1.(c)', '152', 128),
(352, 'Jumlah Kesatuan Pengelolaan Hutan.', 'Indikator 15.2.1.(d)', '152', 128),
(353, 'Proporsi lahan yang terdegradasi terhadap luas lahan keseluruhan.', 'Indikator 15.3.1', '153', 129),
(354, 'Proporsi luas lahan kritis yang direhabilitasi terhadap luas lahan keseluruhan.', 'Indikator 15.3.1.(a)', '153', 129),
(355, 'Situs penting keanekaragaman hayati pegunungan dalam kawasan lindung.', 'Indikator 15.4.1', '154', 130),
(356, 'Indeks tutupan hijau pegunungan.', 'Indikator 15.4.2', '154', 130),
(357, 'Persentase populasi 25 jenis satwa terancam punah prioritas.', 'Indikator 15.5.1*', '155', 131),
(358, 'Tersedianya kerangka legislasi, administrasi dan kebijakan untuk memastikan pembagian keuntungan yang adil dan merata.', 'Indikator 15.6.1*', '156', 132),
(359, 'Proporsi hidupan liar dari hasil perburuan atau perdagangan gelap.', 'Indikator 15.7.1', '157', 133),
(360, 'Persentase penyelesaian tindak pidana lingkungan hidup sampai dengan P21 dari jumlah kasus yang terjadi.', 'Indikator 15.7.1.(a)', '157', 133),
(361, 'Jumlah penambahan spesies satwa liar dan tumbuhan alam yang dikembangbiakan pada lembaga konservasi.', 'Indikator 15.7.1.(b)', '157', 133),
(362, 'Proporsi negara yang mengadopsi legislasi nasional yang relevan dan memadai dalam pencegahan atau pengendalian jenis asing invasive (JAI).', 'Indikator 15.8.1', '158', 134),
(363, 'Rumusan kebijakan dan rekomendasi karantina hewan dan tumbuhan, serta keamanan hayati hewani dan nabati.', 'Indikator 15.8.1.(a)', '158', 134),
(364, 'Kemajuan pencapaian target nasional yang ditetapkan sesuai dengan Target 2 Keanekaragaman Hayati Aichi dari Rencana Strategis Keanekaragaman Hayati 2011-2020.', 'Indikator 15.9.1', '159', 135),
(365, 'Dokumen rencana pemanfaatan keanekaragaman hayati.', 'Indikator 15.9.1.(a)', '159', 135),
(366, 'Bantuan pembangunan dan pengeluaran pemerintah untuk konservasi dan pemanfaatan keanekaragaman hayati dan ekosistemnya secara berkelanjutan.', 'Indikator 15.a.1', '15', 136),
(367, 'Bantuan pembangunan dan pengeluaran pemerintah untuk konservasi dan pemanfaatan keanekaragaman hayati dan ekosistemnya secara berkelanjutan.', 'Indikator 15.b.1', '15', 137),
(368, 'Proporsi hidupan liar dari hasil perburuan atau perdagangan gelap.', 'Indikator 15.c.1', '15', 138),
(369, 'Persentase penyelesaian tindak pidana lingkungan hidup sampai dengan P21 dari jumlah kasus yang terjadi.', 'Indikator 15.c.1.(a)', '15', 138),
(370, 'Angka korban kejahatan pembunuhan per 100.000 penduduk berdasarkan umur dan jenis kelamin.', 'Indikator 16.1.1', '161', 139),
(371, 'Jumlah kasus kejahatan pembunuhan pada satu tahun terakhir.', 'Indikator 16.1.1.(a)', '161', 139),
(372, 'Kematian disebabkan konflik per 100.000 penduduk terpilah berdasarkan jenis kelamin, umur dan penyebab kematian.', 'Indikator 16.1.2', '161', 139),
(373, 'Kematian disebabkan konflik per 100.000 penduduk.', 'Indikator 16.1.2.(a)', '161', 139),
(374, 'Proporsi penduduk yang mengalami kekerasan fisik, psikologi atau seksual dalam 12 bulan terakhir.', 'Indikator 16.1.3', '161', 139),
(375, 'Proporsi penduduk yang menjadi korban kejahatan kekerasan dalam 12 bulan terakhir.', 'Indikator 16.1.3.(a)', '161', 139),
(376, 'Proporsi penduduk yang merasa aman berjalan sendirian di area tempat tinggalnya.', 'Indikator 16.1.4*', '161', 139),
(377, 'Proporsi anak umur 1-17 tahun yang mengalami hukuman fisik dan/atau agresi psikologis dari pengasuh dalam sebulan terakhir.', 'Indikator 16.2.1', '162', 140),
(378, 'Proporsi rumah tangga yang memiliki anak umur 1-17 tahun yang mengalami hukuman fisik dan/atau agresi psikologis dari pengasuh dalam setahun terakhir.', 'Indikator 16.2.1.(a)', '162', 140),
(379, 'Prevalensi kekerasan terhadap anak laki-laki dan anak perempuan.', 'Indikator 16.2.1.(b)', '162', 140),
(380, 'Angka korban perdagangan manusia per 100.000 penduduk menurut jenis kelamin, kelompok umur dan jenis eksploitasi.', 'Indikator 16.2.2', '162', 140),
(381, 'Proporsi perempuan dan laki-laki muda umur 18-29 tahun yang mengalami kekerasan seksual sebelum umur 18 tahun.', 'Indikator 16.2.3', '162', 140),
(382, 'Proporsi perempuan dan laki-laki muda umur 18-24 tahun yang mengalami kekerasan seksual sebelum umur 18 tahun.', 'Indikator 16.2.3.(a)', '162', 140),
(383, 'Proporsi korban kekerasan dalam 12 bulan lalu yang melaporkan kepada pihak berwajib atau pihak berwenang yang diakui dalam mekanisme resolusi konflik.', 'Indikator 16.3.1', '163', 141),
(384, 'Proporsi korban kekerasan dalam 12 bulan terakhir yang melaporkan kepada polisi.', 'Indikator 16.3.1.(a)', '163', 141),
(385, 'Jumlah orang atau kelompok masyarakat miskin yang memperoleh bantuan hukum litigasi dan non litigasi.', 'Indikator 16.3.1.(b)', '163', 141),
(386, 'Jumlah pelayanan peradilan bagi masyarakat miskin melalui sidang di luar gedung pengadilan; pembebasan biaya perkara; dan Pos Layanan Hukum.', 'Indikator 16.3.1.(c)', '163', 141),
(387, 'Proporsi tahanan terhadap seluruh tahanan dan narapidana.', 'Indikator 16.3.2', '163', 141),
(388, 'Proporsi tahanan yang melebihi masa penahanan terhadap seluruh jumlah tahanan.', 'Indikator 16.3.2.(a)', '163', 141),
(389, 'Total nilai aliran dana gelap masuk dan keluar negeri (dalam US$).', 'Indikator 16.4.1', '164', 142),
(390, 'Proporsi senjata api dan senjata ringan yang disita, yang terdaftar dan terlacak, yang sesuai dengan standar internasional dan ketentuan hukum.', 'Indikator 16.4.2', '164', 142),
(391, 'Proporsi penduduk yang memiliki paling tidak satu kontak hubungan dengan petugas, yang membayar suap kepada petugas atau diminta untuk menyuap petugas tersebut dalam 12 bulan terakhir.', 'Indikator 16.5.1', '165', 143),
(392, 'Indeks Perilaku Anti Korupsi (IPAK).', 'Indikator 16.5.1.(a)', '165', 143),
(393, 'Proporsi pelaku usaha yang paling tidak memiliki kontak dengan petugas pemerintah dan yang membayar suap kepada seorang petugas, atau diminta untuk membayar suap oleh petugas-petugas, selama 12 bulan terakhir.', 'Indikator 16.5.2', '165', 143),
(394, 'Proporsi pengeluaran utama pemerintah terhadap anggaran yang disetujui.', 'Indikator 16.6.1*', '166', 144),
(395, 'Persentase peningkatan Opini Wajar Tanpa Pengecualian (WTP) atas Laporan Keuangan Kementerian/ Lembaga dan Pemerintah Daerah (Provinsi/Kabupaten/ Kota).', 'Indikator 16.6.1.(a)', '166', 144),
(396, 'Persentase peningkatan Sistem Akuntabilitas Kinerja Pemerintah (SAKIP) Kementerian/Lembaga dan Pemerintah Daerah (Provinsi/ Kabupaten/Kota).', 'Indikator 16.6.1.(b)', '166', 144),
(397, 'Persentase penggunaan E-procurement terhadap belanja pengadaan.', 'Indikator 16.6.1.(c)', '166', 144);
INSERT INTO `indikator` (`id`, `deskripsi`, `nama`, `nomor`, `target_id`) VALUES
(398, 'Persentase instansi pemerintah yang memiliki nilai Indeks Reformasi Birokrasi Baik Kementerian/Lembaga dan Pemerintah Daerah (Provinsi/ Kabupaten/ Kota).', 'Indikator 16.6.1.(d)', '166', 144),
(399, 'Proporsi penduduk yang puas terhadap pengalaman terakhir atas layanan publik.', 'Indikator 16.6.2', '166', 144),
(400, 'Persentase Kepatuhan pelaksanaan UU Pelayanan Publik Kementerian/Lembaga dan Pemerintah Daerah (Provinsi/ Kabupaten/Kota).', 'Indikator 16.6.2.(a)', '166', 144),
(401, 'Proporsi jabatan (menurut kelompok umur, jenis kelamin, disabilitas dan kelompok masyarakat) di lembaga publik (DPR/DPRD, pelayanan publik, peradilan) dibanding distribusi nasional.', 'Indikator 16.7.1', '167', 145),
(402, 'Persentase keterwakilan perempuan di Dewan Perwakilan Rakyat (DPR) dan Dewan Perwakilan Rakyat Daerah (DPRD).', 'Indikator 16.7.1.(a)', '167', 145),
(403, 'Persentase keterwakilan perempuan sebagai pengambilan keputusan di lembaga eksekutif (Eselon I dan II).', 'Indikator 16.7.1.(b)', '167', 145),
(404, 'Proporsi penduduk yang percaya pada pengambilan keputusan yang inklusif dan responsif menurut jenis kelamin, umur, difabilitas dan kelompok masyarakat.', 'Indikator 16.7.2', '167', 145),
(405, 'Indeks Lembaga Demokrasi.', 'Indikator 16.7.2.(a)', '167', 145),
(406, 'Indeks Kebebasan Sipil.', 'Indikator 16.7.2.(b)', '167', 145),
(407, 'Indeks Hak-hak Politik.', 'Indikator 16.7.2.(c)', '167', 145),
(408, 'Proporsi keanggotaan dan hak pengambilan keputusan dari negaranegara berkembang di Organisasi Internasional.', 'Indikator 16.8.1', '168', 146),
(409, 'Proporsi anak umur di bawah 5 tahun yang kelahirannya dicatat oleh lembaga pencatatan sipil, menurut umur.', 'Indikator 16.9.1*', '169', 147),
(410, 'Persentase kepemilikan akta lahir untuk penduduk 40% berpendapatan bawah.', 'Indikator 16.9.1.(a)', '169', 147),
(411, 'Persentase anak yang memiliki akta kelahiran.', 'Indikator 16.9.1.(b)', '169', 147),
(412, 'Jumlah kasus terverifikasi atas pembunuhan, penculikan dan penghilangan secara paksa, penahanan sewenang-wenang dan penyiksaan terhadap jurnalis, awak media, serikat pekerja, dan pembela HAM dalam 12 bulan terakhir.', 'Indikator 16.10.1', '1610', 148),
(413, 'Jumlah penanganan pengaduan pelanggaran Hak Asasi Manusia (HAM).', 'Indikator 16.10.1.(a)', '1610', 148),
(414, 'Jumlah penanganan pengaduan pelanggaran Hak Asasi Manusia (HAM) perempuan terutama kekerasan terhadap perempuan.', 'Indikator 16.10.1.(b)', '1610', 148),
(415, 'Jumlah negara yang mengadopsi dan melaksanakan konstitusi, statutori dan/atau jaminan kebijakan untuk akses publik pada informasi.', 'Indikator 16.10.2*', '1610', 148),
(416, 'Tersedianya Badan Publik yang menjalankan kewajiban sebagaimana diatur dalam UU No. 14 Tahun 2008 tentang Keterbukaan Informasi Publik.', 'Indikator 16.10.2.(a)', '1610', 148),
(417, 'Persentase penyelesaian sengketa informasi publik melalui mediasi dan/ atau ajudikasi non litigasi.', 'Indikator 16.10.2.(b)', '1610', 148),
(418, 'Jumlah kepemilikan sertifikat Pejabat Pengelola Informasi dan Dokumentasi (PPID) untuk mengukur kualitas PPID dalam menjalankan tugas dan fungsi sebagaimana diatur dalam peraturan perundang-undangan.', 'Indikator 16.10.2.(c)', '1610', 148),
(419, 'Tersedianya lembaga hak asasi manusia (HAM) nasional yang independen yang sejalan dengan Paris Principles.', 'Indikator 16.a.1*', '16', 149),
(420, 'Proporsi penduduk yang melaporkan mengalami diskriminasi dan pelecehan dalam 12 bulan lalu berdasarkan pada pelarangan diskriminasi menurut hukum HAM Internasional.', 'Indikator 16.b.1', '16', 150),
(421, 'Jumlah kebijakan yang diskriminatif dalam 12 bulan lalu berdasarkan pelarangan diskriminasi menurut hukum HAM Internasional.', 'Indikator 16.b.1.(a)', '16', 150),
(422, 'Proporsi individu yang menggunakan internet.', 'Indikator 17.8.1*', '178', 151),
(423, 'Persentase kabupaten 3T yang terjangkau layanan akses telekomunikasi universal dan internet.', 'Indikator 17.8.1.(a)', '178', 151),
(424, 'Nilai dolar atas bantuan teknis dan pembiayaan (termasuk melalui kerjasama Utara-Selatan, Selatan-Selatan dan Tirangular) yang dikomitmenkan untuk negara-negara berkembang.', 'Indikator 17.9.1', '179', 152),
(425, 'Jumlah indikasi pendanaan untuk pembangunan kapasitas dalam kerangka KSST Indonesia.', 'Indikator 17.9.1.(a)', '179', 152),
(426, 'Rata-rata tarif terbobot dunia Free Trade Agreement (FTA).', 'Indikator 17.10.1', '1710', 153),
(427, 'Rata-rata tarif terbobot di negara mitra Free Trade Agreement (FTA) (6 negara).', 'Indikator 17.10.1.(a)', '1710', 153),
(428, 'Bagian negara berkembang dan kurang berkembang pada ekspor global.', 'Indikator 17.11.1', '1711', 153),
(429, 'Pertumbuhan ekspor produk non migas.', 'Indikator 17.11.1.(a)', '1711', 153),
(430, 'Rata-rata tarif yang dihadapi oleh negara-negara berkembang, negara kurang berkembang dan negara berkembang pulau kecil.', 'Indikator 17.12.1', '1712', 153),
(431, 'Tersedianya Dashboard Makroekonomi.', 'Indikator 17.13.1*', '1713', 153),
(432, 'Jumlah negara yang telah memiliki mekanisme untuk keterpaduan kebijakan pembangunan berkelanjutan.', 'Indikator 17.14.1', '1714', 153),
(433, 'Jangkauan penggunaan kerangka kerja dan alat perencanaan yang dimiliki negara oleh penyedia kerjasama pembangunan.', 'Indikator 17.15.1', '1715', 153),
(434, 'Jumlah negara yang melaporkan perkembangan kerangka kerja monitoring efektivitas pembangunan multi-stakeholder yang mendukung pencapaian tujuan pembangunan berkelanjutan.', 'Indikator 17.16.1', '1716', 153),
(435, 'Jumlah komitmen untuk kemitraan publik-swasta dan masyarakat sipil (dalam US dollars).', 'Indikator 17.17.1', '1717', 153),
(436, 'Jumlah proyek yang ditawarkan untuk dilaksanakan dengan skema Kerjasama Pemerintah dan Badan Usaha (KPBU).', 'Indikator 17.17.1.(a)', '1717', 153),
(437, 'Jumlah alokasi pemerintah untuk penyiapan proyek, transaksi proyek, dan dukungan pemerintah dalam Kerjasama Pemerintah dan Badan Usaha (KPBU).', 'Indikator 17.17.1.(b)', '1717', 153),
(438, 'Proporsi indikator pembangunan berkelanjutan yang dihasilkan di tingkat nasional dengan keterpilahan data lengkap yang relevan dengan targetnya, yang sesuai dengan Prinsip-prinsip Fundamental dari Statistik Resmi.', 'Indikator 17.18.1', '1718', 153),
(439, 'Persentase konsumen Badan Pusat Statistik (BPS) yang merasa puas dengan kualitas data statistik.', 'Indikator 17.18.1.(a)', '1718', 153),
(440, 'Persentase konsumen yang menjadikan data dan informasi statistik BPS sebagai rujukan utama.', 'Indikator 17.18.1.(b)', '1718', 153),
(441, 'Jumlah metadata kegiatan statistik dasar, sektoral, dan khusus yang terdapat dalam Sistem Informasi Rujukan Statistik (SIRuSa).', 'Indikator 17.18.1.(c)', '1718', 153),
(442, 'Persentase indikator SDGs terpilah yang relevan dengan target.', 'Indikator 17.18.1.(d)', '1718', 153),
(443, 'Jumlah negara yang memiliki undang-undang statistik nasional yang tunduk pada Prinsip-prinsip fundamental Statistik Resmi.', 'Indikator 17.18.2*', '1718', 153),
(444, 'Review Undang-Undang Nomor 16 Tahun 1997 tentang Statistik.', 'Indikator 17.18.2.(a)', '1718', 153),
(445, 'Jumlah negara dengan Perencanaan Statistik Nasional yang didanai dan melaksanakan rencananya berdasar sumber pendanaan.', 'Indikator 17.18.3', '1718', 153),
(446, 'Tersusunnya National Strategy for Development of Statistics (NSDS).', 'Indikator 17.18.3.(a)', '1718', 153),
(447, 'Nilai dolar atas semua sumber yang tersedia untuk penguatan kapasitas statistik di negara-negara berkembang.', 'Indikator 17.19.1', '1719', 153),
(448, 'Jumlah pejabat fungsional statistisi dan pranata komputer pada Kementerian/Lembaga.', 'Indikator 17.19.1.(a)', '1719', 153),
(449, 'Persentase Kementerian/Lembaga yang sudah memiliki pejabat fungsional statistisi dan/atau pranata komputer.', 'Indikator 17.19.1.(b)', '1719', 153),
(450, 'Persentase terpenuhinya kebutuhan pejabat fungsional statistisi dan pranata komputer Kementerian/Lembaga.', 'Indikator 17.19.1.(c)', '1719', 153),
(451, 'Proporsi negara yang a) melaksanakan paling tidak satu Sensus Penduduk dan Perumahan dalam sepuluh tahun terakhir, dan b) mencapai 100 persen pencatatan kelahiran dan 80 persen pencatatan kematian.', 'Indikator 17.19.2', '1719', 153),
(452, 'Terlaksananya Sensus Penduduk dan Perumahan pada tahun 2020.', 'Indikator 17.19.2.(a)', '1719', 153),
(453, 'Tersedianya data registrasi terkait kelahiran dan kematian (Vital Statistics Register).', 'Indikator 17.19.2.(b)', '1719', 153),
(454, 'Jumlah pengunjung eksternal yang mengakses data dan informasi statistik melalui website.', 'Indikator 17.19.2.(c)', '1719', 153),
(455, 'Persentase konsumen yang puas terhadap akses data Badan Pusat Statistik (BPS).', 'Indikator 17.19.2.(d)', '1719', 153);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `nama`) VALUES
(1, 'admin'),
(2, 'flagger');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id`, `nama`) VALUES
(1, 'Private'),
(2, 'Publik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `target`
--

CREATE TABLE `target` (
  `id` bigint(20) NOT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `tujuan_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `target`
--

INSERT INTO `target` (`id`, `deskripsi`, `nama`, `nomor`, `tujuan_id`) VALUES
(1, 'Pada tahun 2030, mengentaskan kemiskinan ekstrim bagi semua orang yang saat ini berpendapatan kurang dari 1,25 dolar Amerika per hari.', 'Target 1.1', '1', 1),
(2, 'Pada tahun 2030, mengurangi setidaknya setengah proporsi laki-laki, perempuan dan anak-anak dari semua usia, yang hidup dalam kemiskinan di semua dimensi, sesuai dengan definisi nasional.', 'Target 1.2', '2', 1),
(3, 'Menerapkan secara nasional sistem dan upaya perlindungan sosial yang tepat bagi semua, termasuk kelompok yang paling miskin, dan pada tahun 2030 mencapai cakupan substansial bagi kelompok miskin dan rentan.', 'Target 1.3', '3', 1),
(4, 'Pada tahun 2030, menjamin bahwa semua laki-laki dan perempuan, khususnya masyarakat miskin dan rentan, memiliki hak yang sama terhadap sumber daya ekonomi, serta akses terhadap pelayanan dasar, kepemilikan dan kontrol atas tanah dan bentuk kepemilikan lai', 'Target 1.4', '4', 1),
(5, 'Pada tahun 2030, membangun ketahanan masyarakat miskin dan mereka yang berada dalam kondisi rentan, dan mengurangi kerentanan mereka terhadap kejadian ekstrim terkait iklim dan guncangan ekonomi, sosial, lingkungan, dan bencana', 'Target 1.5', '5', 1),
(6, 'Menjamin mobilisasi yang signifikan terkait sumber daya dari berbagai sumber, termasuk melalui kerjasama pembangunan yang lebih baik, untuk menyediakan sarana yang memadai dan terjangkau bagi negara berkembang, khususnya negara kurang berkembang untuk mel', 'Target 1.6', 'a', 1),
(7, 'Membuat kerangka kebijakan yang kuat di tingkat nasional, regional dan internasional, berdasarkan strategi pembangunan yang memihak pada kelompok miskin dan peka terhadap isu gender untuk mendukung investasi yang cepat dalam tindakan pemberantasan kemiski', 'Target 1.7', 'b', 1),
(8, 'Pada tahun 2030, menghilangkan kelaparan dan menjamin akses bagi semua orang, khususnya orang miskin dan mereka yang berada dalam kondisi rentan, termasuk bayi, terhadap makanan yang aman, bergizi, dan cukup sepanjang tahun.', 'Target 2.1', '1', 2),
(9, 'Pada tahun 2030, menghilangkan segala bentuk kekurangan gizi, termasuk pada tahun 2025 mencapai Target yang disepakati secara internasional untuk anak pendek dan kurus di bawah usia 5 tahun, dan memenuhi kebutuhan gizi remaja perempuan, ibu hamil dan meny', 'Target 2.2', '2', 2),
(10, 'Pada tahun 2030, menggandakan produktivitas pertanian dan pendapatan produsen makanan skala kecil, khususnya perempuan, masyarakat penduduk asli, keluarga petani, penggembala dan nelayan, termasuk melalui akses yang aman dan sama terhadap lahan, sumber da', 'Target 2.3', '3', 2),
(11, 'Pada tahun 2030, menjamin sistem produksi pangan yang berkelanjutan dan menerapkan praktek pertanian tangguh yang meningkatkan? produksi? dan produktivitas, membantu menjaga ekosistem, memperkuat kapasitas adaptasi terhadap perubahan iklim, cuaca ekstrim,', 'Target 2.4', '4', 2),
(12, 'Pada tahun 2020, mengelola keragaman genetik benih,? tanaman budidaya dan hewan ternak dan? peliharaan dan spesies liar terkait, termasuk melalui bank benih dan tanaman yang dikelola dan dianekaragamkan? dengan baik di tingkat nasional, regional dan inter', 'Target 2.5', '5', 2),
(13, 'Meningkatkan investasi, termasuk melalui kerjasama internasional yang kuat, dalam infrastruktur perdesaan, layanan kajian dan perluasan pertanian, pengembangan teknologi dan bank gen untuk tanaman dan ternak, untuk meningkatkan kapasitas produktif pertani', 'Target 2.a', 'a', 2),
(14, 'Memperbaiki dan mencegah pembatasan dan distorsi dalam pasar pertanian dunia, termasuk melalui penghapusan secara bersamaan segala bentuk subsidi ekspor pertanian dan semua tindakan ekspor dengan efek setara, sesuai dengan amanat?the Doha Development Roun', 'Target 2.b', 'b', 2),
(15, 'Mengadopsi langkah-langkah untuk menjamin berfungsinya pasar komoditas pangan serta turunannya dengan tepat, dan memfasilitasi pada waktu yang tepat akses terhadap informasi pasar, termasuk informasi cadangan pangan, untuk membantu membatasi volatilitas h', 'Target 2.c', 'c', 2),
(16, 'Pada tahun 2030, mengurangi rasio angka kematian ibu hingga kurang dari 70 per 100.000 kelahiran hidup.', 'Target 3.1', '1', 3),
(17, 'Pada tahun 2030, mengakhiri kematian bayi baru lahir dan balita yang dapat dicegah, dengan seluruh negara berusaha menurunkan Angka Kematian Neonatal setidaknya hingga 12 per 1000 KH (Kelahiran Hidup) dan Angka Kematian Balita 25 per 1000.', 'Target 3.2', '2', 3),
(18, 'Pada tahun 2030, mengakhiri epidemi AIDS, tuberkulosis, malaria, dan penyakit tropis yang terabaikan, dan memerangi hepatitis, penyakit bersumber air, serta penyakit menular lainnya.', 'Target 3.3', '3', 3),
(19, 'Pada tahun 2030, mengurangi hingga sepertiga angka kematian dini akibat penyakit tidak menular, melalui pencegahan dan pengobatan, serta meningkatkan kesehatan mental dan kesejahteraan.', 'Target 3.4', '4', 3),
(20, 'Memperkuat pencegahan dan pengobatan penyalahgunaan zat, termasuk penyalahgunaan narkotika dan penggunaan alkohol yang membahayakan.', 'Target 3.5', '5', 3),
(21, 'Pada tahun 2020, mengurangi hingga setengah jumlah kematian global dan cedera dari kecelakaan lalu lintas.', 'Target 3.6', '6', 3),
(22, 'Pada tahun 2030, menjamin akses universal terhadap layanan kesehatan seksual dan reproduksi, termasuk keluarga berencana, informasi dan pendidikan, dan integrasi kesehatan reproduksi ke dalam strategi dan program nasional.', 'Target 3.7', '7', 3),
(23, 'Mencapai cakupan kesehatan universal, termasuk perlindungan risiko keuangan, akses terhadap pelayanan kesehatan dasar yang baik, dan akses terhadap obat- obatan dan vaksin dasar yang aman, efektif, berkualitas, dan terjangkau bagi semua orang.', 'Target 3.8', '8', 3),
(24, 'Pada tahun 2030, secara signifikan mengurangi jumlah kematian dan kesakitan akibat bahan kimia berbahaya, serta? polusi dan kontaminasi udara, air, dan tanah.', 'Target 3.9', '9', 3),
(25, 'Memperkuat pelaksanaan?the Framework Convention on Tobacco Control WHO?di seluruh negara sebagai langkah yang tepat.', 'Target 3.a', 'a', 3),
(26, 'Mendukung penelitian dan pengembangan vaksin dan obat penyakit menular dan tidak menular yang terutama? berpengaruh terhadap negara berkembang, menyediakan akses terhadap obat dan vaksin dasar yang terjangkau, sesuai?the Doha Declaration?tentang?the TRIPS', 'Target 3.b', 'b', 3),
(27, 'Meningkatkan secara signifikan pembiayaan kesehatan dan rekrutmen, pengembangan, pelatihan, dan retensi tenaga kesehatan di negara berkembang, khususnya negara kurang berkembang, dan negara berkembang pulau kecil.', 'Target 3.c', 'c', 3),
(28, 'Memperkuat kapasitas semua negara, khususnya negara berkembang tentang peringatan dini, pengurangan risiko dan manajemen risiko kesehatan nasional dan global.', 'Target 3.d', 'd', 3),
(29, 'Pada tahun 2030, menjamin bahwa semua anak perempuan dan laki-laki menyelesaikan pendidikan dasar dan menengah tanpa dipungut biaya, setara, dan berkualitas, yang mengarah pada capaian pembelajaran yang relevan dan efektif.', 'Target 4.1', '1', 4),
(30, 'Pada tahun 2030, menjamin bahwa semua anak perempuan dan laki-laki memiliki akses terhadap perkembangan dan pengasuhan anak usia dini, pengasuhan, pendidikan pra-sekolah dasar yang berkualitas, sehingga mereka siap untuk menempuh pendidikan dasar.', 'Target 4.2', '2', 4),
(31, 'Pada tahun 2030, menjamin akses yang sama bagi semua perempuan dan laki-laki, terhadap pendidikan teknik, kejuruan dan pendidikan tinggi, termasuk universitas, yang terjangkau dan berkualitas.', 'Target 4.3', '3', 4),
(32, 'Pada tahun 2030, meningkatkan secara signifikan jumlah pemuda dan orang dewasa yang memiliki keterampilan yang relevan, termasuk keterampilan teknik dan kejuruan, untuk pekerjaan, pekerjaan yang layak dan kewirausahaan.', 'Target 4.4', '4', 4),
(33, 'Pada tahun 2030, menghilangkan disparitas gender dalam pendidikan, dan menjamin akses yang sama untuk semua tingkat pendidikan dan pelatihan kejuruan, bagi masyarakat rentan termasuk penyandang cacat, masyarakat penduduk asli, dan anak-anak dalam kondisi ', 'Target 4.5', '5', 4),
(34, 'Pada tahun 2030, menjamin bahwa semua remaja dan proporsi kelompok dewasa tertentu, baik laki-laki maupun perempuan, memiliki kemampuan literasi dan numerasi.', 'Target 4.6', '6', 4),
(35, 'Pada tahun 2030, menjamin semua peserta didik memperoleh pengetahuan dan keterampilan yang diperlukan untuk meningkatkan pembangunan berkelanjutan, termasuk antara lain, melalui pendidikan untuk pembangunan berkelanjutan dan gaya hidup yang berkelanjutan,', 'Target 4.7', '7', 4),
(36, 'Membangun dan meningkatkan fasilitas pendidikan yang ramah anak, ramah penyandang cacat dan gender, serta menyediakan lingkungan belajar yang aman, anti kekerasan, inklusif dan efektif bagi semua.', 'Target 4.a', 'a', 4),
(37, 'Pada tahun 2020, secara signifikan?? memperluas secara global, jumlah beasiswa bagi negara berkembang, khususnya negara kurang berkembang, negara berkembang pulau kecil,? dan negara-negara Afrika, untuk mendaftar di pendidikan tinggi, termasuk pelatihan k', 'Target 4.b', 'b', 4),
(38, 'Pada tahun 2030, secara signifikan meningkatkan pasokan guru yang berkualitas, termasuk melalui kerjasama internasional dalam pelatihan guru di negara berkembang, terutama negara kurang berkembang, dan negara berkembang kepulauan kecil.', 'Target 4.c', 'c', 4),
(39, 'Mengakhiri segala bentuk diskriminasi terhadap kaum perempuan dimanapun.', 'Target 5.1', '1', 5),
(40, 'Menghapuskan segala bentuk kekerasan terhadap kaum perempuan di ruang publik dan pribadi, termasuk perdagangan orang dan eksploitasi seksual, serta berbagai jenis eksploitasi lainnya.', 'Target 5.2', '2', 5),
(41, 'Menghapuskan semua praktik berbahaya, seperti perkawinan usia anak, perkawinan dini dan paksa, serta sunat perempuan.', 'Target 5.3', '3', 5),
(42, 'Mengenali dan menghargai pekerjaan mengasuh dan pekerjaan rumah tangga yang tidak dibayar melalui penyediaan pelayanan publik, infrastruktur dan kebijakan perlindungan sosial, dan peningkatan tanggung jawab bersama dalam rumah tangga dan keluarga ?yang te', 'Target 5.4', '4', 5),
(43, 'Menjamin partisipasi penuh dan efektif, dan kesempatan yang sama bagi perempuan untuk memimpin di semua tingkat pengambilan keputusan dalam kehidupan politik, ekonomi, dan masyarakat.', 'Target 5.5', '5', 5),
(44, 'Menjamin akses universal terhadap kesehatan seksual dan reproduksi, dan hak reproduksi seperti yang telah disepakati sesuai dengan?Programme of Action of the International Conference on Population andDevelopment and the Beijing Platform?serta dokumen-doku', 'Target 5.6', '6', 5),
(45, 'Melakukan reformasi untuk memberi hak yang sama kepada perempuan terhadap sumber daya ekonomi, serta akses terhadap kepemilikan dan kontrol atas tanah dan bentuk kepemilikan lain, jasa keuangan, warisan dan sumber daya alam, sesuai dengan hukum nasional.', 'Target 5.a', 'a', 5),
(46, 'Meningkatkan penggunaan teknologi yang memampukan, khususnya teknologi informasi dan komunikasi? untuk meningkatkan pemberdayaan perempuan.', 'Target 5.b', 'b', 5),
(47, 'Mengadopsi dan memperkuat kebijakan yang baik dan perundang-undangan yang berlaku untuk peningkatan kesetaraan gender dan pemberdayaan kaum perempuan di semua tingkatan.', 'Target 5.c', 'c', 5),
(48, 'Pada tahun 2030, mencapai akses universal dan merata terhadap air minum yang aman dan terjangkau bagi semua.', 'Target 6.1', '1', 6),
(49, 'Pada tahun 2030, mencapai akses terhadap sanitasi dan kebersihan yang memadai dan merata bagi semua, dan menghentikan praktik buang air besar di tempat terbuka, memberikan perhatian khusus pada kebutuhan kaum perempuan, serta kelompok masyarakat rentan.', 'Target 6.2', '2', 6),
(50, 'Pada tahun 2030, meningkatkan kualitas air dengan mengurangi polusi, menghilangkan pembuangan,? dan meminimalkan pelepasan material dan bahan kimia berbahaya, mengurangi setengah proporsi air limbah yang tidak diolah, dan secara signifikan meningkatkan da', 'Target 6.3', '3', 6),
(51, 'Pada tahun 2030, secara signifikan meningkatkan efisiensi penggunaan air di semua sektor, dan menjamin penggunaan dan pasokan air tawar yang berkelanjutan untuk mengatasi kelangkaan air, dan secara signifikan mengurangi jumlah orang yang menderita akibat ', 'Target 6.4', '4', 6),
(52, 'Pada tahun 2030, menerapkan pengelolaan sumber daya air terpadu di semua tingkatan, termasuk melalui kerjasama lintas batas yang tepat.', 'Target 6.5', '5', 6),
(53, 'Pada tahun 2020, melindungi dan merestorasi ekosistem terkait sumber daya air, termasuk pegunungan, hutan, lahan basah, sungai, air tanah, dan danau.', 'Target 6.6', '6', 6),
(54, 'Pada tahun 2030, memperluas kerjasama dan dukungan internasional dalam hal pembangunan kapasitas bagi negara-negara berkembang, dalam program dan kegiatan terkait air dan sanitasi, termasuk pemanenan air, desalinasi, efisiensi air, pengolahan air limbah, ', 'Target 6.a', 'a', 6),
(55, 'Mendukung dan memperkuat partisipasi masyarakat lokal dalam meningkatkan pengelolaan air dan sanitasi.', 'Target 6.b', 'b', 6),
(56, 'Pada tahun 2030, menjamin akses universal layanan energi yang terjangkau, andal dan modern.', 'Target 7.1', '1', 7),
(57, 'Pada tahun 2030, meningkat secara substansial pangsa energi terbarukan dalam bauran energi global.', 'Target 7.2', '2', 7),
(58, 'Pada tahun 2030, melakukan perbaikan efisiensi energi di tingkat global sebanyak dua kali lipat.', 'Target 7.3', '3', 7),
(59, 'Pada tahun 2030, memperkuat kerjasama internasional untuk memfasilitasi akses pada teknologi dan riset energi bersih, termasuk energi terbarukan, efisiensi energi, canggih, teknologi bahan bakar fosil lebih bersih, dan mempromosikan investasi di bidang in', 'Target 7.a', 'a', 7),
(60, 'Pada tahun 2030, memperluas infrastruktur dan meningkatkan teknologi untuk penyediaan layanan energi modern dan berkelanjutan bagi semua negara-negara berkembang, khususnya negara kurang berkembang, negara berkembang pulau kecil dan negara berkembang.', 'Target 7.b', 'b', 7),
(61, 'Mempertahankan pertumbuhan ekonomi per kapita sesuai dengan kondisi nasional dan, khususnya, setidaknya 7 persen pertumbuhan produk domestik bruto per tahun di negara kurang berkembang.', 'Target 8.1', '1', 8),
(62, 'Mencapai tingkat produktivitas ekonomi yang lebih tinggi, melalui diversifikasi, peningkatan dan inovasi teknologi, termasuk melalui fokus pada sektor yang memberi nilai tambah tinggi dan padat karya.', 'Target 8.2', '2', 8),
(63, 'Menggalakkan kebijakan pembangunan yang mendukung kegiatan produktif, penciptaan lapangan kerja layak, kewirausahaan, kreativitas dan inovasi, dan mendorong formalisasi dan pertumbuhan usaha mikro, kecil, dan menengah, termasuk melalui akses terhadap jasa', 'Target 8.3', '3', 8),
(64, 'Meningkatkan secara progresif, hingga 2030, efisiensi sumber daya global dalam konsumsi dan produksi, serta usaha melepas kaitan pertumbuhan ekonomi dari degradasi lingkungan, sesuai dengan?the 10-Year Framework of Programs on Sustainable Consumption and ', 'Target 8.4', '4', 8),
(65, 'Pada tahun 2030, mencapai pekerjaan tetap dan produktif dan pekerjaan yang layak bagi semua perempuan dan laki-laki, termasuk bagi pemuda dan penyandang difabilitas, dan upah yang sama untuk pekerjaan yang sama nilainya.', 'Target 8.5', '5', 8),
(66, 'Pada tahun 2020, secara substansial mengurangi proporsi usia muda yang tidak bekerja, tidak menempuh pendidikan atau pelatihan.', 'Target 8.6', '6', 8),
(67, 'Mengambil tindakan cepat dan untuk memberantas kerja paksa, mengakhiri perbudakan dan penjualan manusia, mengamankan larangan dan penghapusan bentuk terburuk tenaga kerja anak, termasuk perekrutan dan penggunaan tentara anak-anak, dan pada tahun 2025 meng', 'Target 8.7', '7', 8),
(68, 'Melindungi hak-hak tenaga kerja dan mempromosikan lingkungan kerja yang aman dan terjamin bagi semua pekerja, termasuk pekerja migran, khususnya pekerja migran perempuan, dan mereka yang bekerja dalam pekerjaan berbahaya.', 'Target 8.8', '8', 8),
(69, 'Pada tahun 2030, menyusun dan melaksanakan kebijakan untuk mempromosikan pariwisata berkelanjutan yang menciptakan lapangan kerja dan mempromosikan budaya dan produk lokal.', 'Target 8.9', '9', 8),
(70, 'Memperkuat kapasitas lembaga keuangan domestik untuk mendorong dan memperluas akses terhadap perbankan, asuransi dan jasa keuangan bagi semua.', 'Target 8.10', '1', 8),
(71, 'Meningkatkan bantuan untuk mendukung perdagangan bagi negara berkembang, terutama negara kurang berkembang, termasuk melalui?the Enhanced Integrated Framework for Trade-Related Technical Assistance?bagi negara kurang berkembang.', 'Target 8.a', 'a', 8),
(72, 'Pada tahun 2020, mengembangkan dan mengoperasionalkan strategi global untuk ketenagakerjaan pemuda dan menerapkan?the Global Jobs Pact of the International Labour Organization.', 'Target 8.b', 'b', 8),
(73, 'Mengembangkan infrastruktur yang berkualitas, andal, berkelanjutan dan tangguh, termasuk infrastruktur regional dan lintas batas, untuk mendukung pembangunan ekonomi dan kesejahteraan manusia, dengan fokus pada akses yang terjangkau dan merata bagi semua.', 'Target 9.1', '1', 9),
(74, 'Mempromosikan industrialisasi inklusif dan berkelanjutan, dan pada tahun 2030, secara signifikan meningkatkan proporsi industri dalam lapangan kerja dan produk domestik bruto, sejalan dengan kondisi nasional, dan meningkatkan dua kali lipat proporsinya di', 'Target 9.2', '2', 9),
(75, 'Meningkatkan akses industri dan perusahaan skala kecil, khususnya di negara berkembang, terhadap jasa keuangan, termasuk kredit terjangkau, dan mengintegrasikan ke dalam rantai nilai dan pasar.', 'Target 9.3', '3', 9),
(76, 'Pada tahun 2030, meningkatkan infrastruktur dan retrofit industri agar dapat berkelanjutan, dengan peningkatan efisiensi penggunaan sumberdaya dan adopsi yang lebih baik dari teknologi dan proses industri bersih dan ramah lingkungan, yang dilaksanakan sem', 'Target 9.4', '4', 9),
(77, 'Memperkuat riset ilmiah, meningkatkan kapabilitas teknologi sektor industri di semua negara, terutama negara-negara berkembang, termasuk pada tahun 2030, mendorong inovasi dan secara substansial meningkatkan jumlah pekerja penelitian dan pengembangan per ', 'Target 9.5', '5', 9),
(78, 'Memfasilitasi pembangunan infrastruktur yang berkelanjutan dan tangguh di negara berkembang, melalui peningkatan keuangan, teknologi dan dukungan teknis bagi negara-negara Afrika, negara-negara kurang berkembang, negara-negara berkembang terkurung daratan', 'Target 9.a', 'a', 9),
(79, 'Mendukung pengembangan teknologi domestic, riset dan inovasi di negara-negara berkembang, termasuk dengan memastikan lingkungan kebijakan yang kondusif, antara lain untuk diversifikasi industry dan peningkatan nilai tambah komoditas.', 'Target 9.b', 'b', 9),
(80, 'Secara signifikan meningkatkan akses terhadap teknologi informasi dan komunikasi, dan mengusahakan penyediaan akses universasl dan terjangkau Internet di negara-negara kurang berkembang pada tahun 2020.', 'Target 9.c', 'c', 9),
(81, 'Pada tahun 2030, secara progresif mencapai dan mempertahankan pertumbuhan pendapatan penduduk yang berada di bawah 40% dari populasi pada tingkat yang lebih tinggi dari rata-rata nasional.', 'Target 10.1', '1', 10),
(82, 'Pada tahun 2030, memberdayakan dan meningkatkan inklusi sosial, ekonomi dan politik bagi semua, terlepas dari usia, jenis kelamin, difabilitas, ras, suku, asal, agama atau kemampuan ekonomi atau status lainnya.', 'Target 10.2', '2', 10),
(83, 'Menjamin kesempatan yang sama dan mengurangi kesenjangan hasil, termasuk dengan menghapus hukum, kebijakan dan praktik yang diskriminatif, dan mempromosikan legislasi, kebijakan dan tindakan yang tepat terkait legislasi dan kebijakan tersebut.', 'Target 10.3', '3', 10),
(84, 'Mengadopsi kebijakan, terutama kebijakan fiskal, upah dan perlindungan sosial, serta secara progresif mencapai kesetaraan yang lebih besar.', 'Target 10.4', '4', 10),
(85, 'Memperbaiki regulasi dan pengawasan pasar dan lembaga keuangan global, dan memperkuat pelaksanaan regulasinya.', 'Target 10.5', '5', 10),
(86, 'Memastikan peningkatan representasi dan suara bagi negara berkembang dalam pengambilan keputusan di lembaga-lembaga ekonomi dan keuangan internasional global, untuk membentuk kelembagaan yang lebih efektif, kredibel, akuntabel dan terlegitimasi.', 'Target 10.6', '6', 10),
(87, 'Memfasilitasi migrasi dan mobilitas manusia yang teratur, aman, berkala dan bertanggung jawab, termasuk melalui penerapan kebijakan migrasi yang terencana dan terkelola dengan baik.', 'Target 10.7', '7', 10),
(88, 'Menerapkan prinsip perlakuan khusus dan berbeda bagi negara berkembang, khususnya negara yang kurang berkembang, sesuai dengan kesepakatan?World Trade Organization', 'Target 10.a', 'a', 10),
(89, 'Mendorong bantuan pembangunan dan arus keuangan yang resmi, termasuk investasi asing secara langsung, ke negara-negara yang paling membutuhkan, terutama negara kurang berkembang, negara-negara Afrika, negara berkembang pulau kecil dan negara terkurung dar', 'Target 10.b', 'b', 10),
(90, 'Memperbesar pemanfaatan jasa keuangan bagi pekerja', 'Target 10.c', 'c', 10),
(91, 'Pada tahun 2030, menjamin akses bagi semua terhadap perumahan yang layak, aman, terjangkau, dan pelayanan dasar, serta menata kawasan kumuh.', 'Target 11.1', '1', 11),
(92, 'Pada tahun 2030, menyediakan akses terhadap sistem transportasi yang aman, terjangkau, mudah diakses dan berkelanjutan untuk semua, meningkatkan keselamatan lalu lintas, terutama dengan memperluas jangkauan transportasi umum, dengan memberi perhatian khus', 'Target 11.2', '2', 11),
(93, 'Pada tahun 2030, memperkuat urbanisasi yang inklusif dan berkelanjutan serta kapasitas partisipasi, perencanaan penanganan permukiman yang berkelanjutan dan terintegrasi di semua negara.', 'Target 11.3', '3', 11),
(94, 'Mempromosikan dan menjaga warisan budaya dunia dan warisan alam dunia.', 'Target 11.4', '4', 11),
(95, 'Pada tahun 2030, secara signifikan mengurangi jumlah kematian dan jumlah orang terdampak, dan secara substansial mengurangi kerugian ekonomi relatif terhadap PDB global yang disebabkan oleh bencana, dengan fokus melindungi orang miskin dan orang-orang dal', 'Target 11.5', '5', 11),
(96, 'Pada tahun 2030, mengurangi dampak lingkungan perkotaan per kapita yang merugikan, termasuk dengan memberi perhatian khusus pada kualitas udara, termasuk penanganan sampah kota.', 'Target 11.6', '6', 11),
(97, 'Pada tahun 2030, menyediakan ruang publik dan ruang terbuka hijau yang aman, inklusif dan mudah dijangkau terutama untuk perempuan dan anak, manula dan penyandang difabilitas.', 'Target 11.7', '7', 11),
(98, 'Mendukung hubungan ekonomi, sosial, dan lingkungan antara urban, pinggiran kota, dan perdesaan dengan memperkuat perencanaan pembangunan nasional dan daerah.', 'Target 11.a', 'a', 11),
(99, 'Pada tahun 2020, meningkatkan secara substansial jumlah kota dan permukiman yang mengadopsi dan mengimplementasi kebijakan dan perencanaan yang terintegrasi tentang penyertaan, efisiensi sumber daya, mitigasi dan adaptasi terhadap perubahan iklim, ketahan', 'Target 11.b', 'b', 11),
(100, 'Memberikan dukungan kepada negara-negara kurang berkembang, melalui bantuan keuangan dan teknis, dalam membangun bangunan yang berkelanjutan dan tangguh, dengan memfaatkan bahan lokal.', 'Target 11.c', 'c', 11),
(101, 'Melaksanakan?the 10-Year Framework of Programmes on Sustainable Consumption and Production Patterns, dengan semua negara mengambil tindakan, dipimpin negara maju, dengan mempertimbangkan pembangunan dan kapasitas negara berkembang.', 'Target 12.1', '1', 12),
(102, 'Pada tahun 2030, mencapai pengelolaan berkelanjutan dan pemanfaatan sumber daya alam secara efisien.', 'Target 12.2', '2', 12),
(103, 'Pada tahun 2030, mengurangi hingga setengahnya limbah pangan per kapita global di tingkat ritel dan konsumen dan mengurangi kehilangan makanan sepanjang rantai produksi dan pasokan termasuk kehilangan saat pasca panen.', 'Target 12.3', '3', 12),
(104, 'Pada tahun 2020 mencapai pengelolaan bahan kimia dan semua jenis limbah yang ramah lingkungan, di sepanjang siklus hidupnya, sesuai kerangka kerja internasional yang disepakati dan secara signifikan mengurangi pencemaran bahan kimia dan limbah tersebut ke', 'Target 12.4', '4', 12),
(105, 'Pada tahun 2030, secara substansial mengurangi produksi limbah melalui pencegahan, pengurangan, daur ulang, dan penggunaan kembali.', 'Target 12.5', '5', 12),
(106, 'Mendorong perusahaan, terutama perusahaan besar dan transnasional, untuk mengadopsi praktek-praktek berkelanjutan dan mengintegrasikan informasi keberlanjutan dalam siklus pelaporan mereka.', 'Target 12.6', '6', 12),
(107, 'Mempromosikan praktek pengadaan publik yang berkelanjutan, sesuai dengan kebijakan dan prioritas nasional.', 'Target 12.7', '7', 12),
(108, 'Pada tahun 2030, menjamin bahwa masyarakat di mana pun memiliki informasi yang relevan dan kesadaran terhadap pembangunan berkelanjutan dan gaya hidup yang selaras dengan alam.', 'Target 12.8', '8', 12),
(109, 'Mendukungan negara-negara berkembang untuk memperkuat kapasitas ilmu pengetahuan dan teknologi mereka untuk bergerak ke arah pola konsumsi dan produksi yang lebih berkelanjutan.', 'Target 12.a', 'a', 12),
(110, 'Mengembangkan dan menerapkan perangkat untuk memantau dampak pembangunan berkelanjutan terhadap pariwisata berkelanjutan yang menciptakan lapangan kerja dan mempromosikan budaya dan produk lokal.', 'Target 12.b', 'b', 12),
(111, 'Merasionalisasi subsidi bahan bakar fosil tidak efisien yang mendorong pemborosan konsumsi dengan menghilangkan distorsi pasar, sesuai dengan keadaan nasional, termasuk dengan restrukturisasi pajak dan penghapusan secara bertahap jika ada subsidi berbahay', 'Target 12.c', 'c', 12),
(112, 'Memperkuat kapasitas ketahanan dan adaptasi terhadap bahaya terkait iklim dan bencana alam di semua negara.', 'Target 13.1', '1', 13),
(113, 'Mengintegrasikan tindakan antisipasi perubahan iklim ke dalam kebijakan, strategi dan perencanaan nasional.', 'Target 13.2', '2', 13),
(114, 'Meningkatkan pendidikan, penumbuhan kesadaran, serta kapasitas manusia dan kelembagaan terkait mitigasi, adaptasi, pengurangan dampak dan peringatan dini perubahan ikim.', 'Target 13.3', '3', 13),
(115, 'Melaksanakan komitmen negara maju pada?the United Nations Framework Convention on Climate Change?untuk tujuan mobilisasi dana bersama sebesar 100 miliar dolar Amerika per tahun pada tahun 2020 dari semua sumber untuk mengatasi kebutuhan negara berkembang ', 'Target 13.a', 'a', 13),
(116, 'Menggalakkan mekanisme untuk meningkatkan kapasitas perencanaan dan pengelolaan yang efektif terkait perubahan iklim di negara kurang berkembang, negara berkembang pulau kecil, termasuk fokus pada perempuan, pemuda, serta masyarakat lokal dan marjinal.', 'Target 13.b', 'b', 13),
(117, 'Pada tahun 2025, mencegah dan secara signifikan mengurangi semua jenis pencemaran laut, khususnya dari kegiatan berbasis lahan, termasuk sampah laut dan polusi nutrisi.', 'Target 14.1', '1', 14),
(118, 'Pada tahun 2020, mengelola dan melindungi ekosistem laut dan pesisir secara berkelanjutan untuk menghindari dampak buruk yang signifikan, termasuk dengan memperkuat ketahanannya, dan melakukan restorasi untuk mewujudkan lautan yang sehat dan produktif.', 'Target 14.2', '2', 14),
(119, 'Meminimalisasi dan mengatasi dampak pengasaman laut, termasuk melalui kerjasama ilmiah yang lebih baik di semua tingkatan.', 'Target 14.3', '3', 14),
(120, 'Pada tahun 2020, secara efektif mengatur pemanenan dan menghentikan penangkapan ikan yang berlebihan, penangkapan ikan ilegal dan praktek penangkapan ikan yang merusak, serta melaksanakan rencana pengelolaan berbasis ilmu pengetahuan, untuk memulihkan per', 'Target 14.4', '4', 14),
(121, 'Pada tahun 2020, melestarikan setidaknya 10 persen dari wilayah pesisir dan laut, konsisten dengan hukum nasional dan internasional dan berdasarkan informasi ilmiah terbaik yang tersedia.', 'Target 14.5', '5', 14),
(122, 'Pada tahun 2020, melarang bentuk-bentuk subsidi perikanan tertentu yang berkontribusi terhadap kelebihan kapasitas dan penangkapan ikan berlebihan, menghilangkan subsidi yang berkontribusi terhadap penangkapan ikan ilegal, yang tidak dilaporkan & tidak di', 'Target 14.6', '6', 14),
(123, 'Pada tahun 2030, meningkatkan manfaat ekonomi bagi negara berkembang kepulauan kecil dan negara kurang berkembang dari pemanfaatan berkelanjutan sumber daya laut, termasuk melalui pengelolaan perikanan, budidaya air dan pariwisata yang berkelanjutan.', 'Target 14.7', '7', 14),
(124, 'Meningkatkan pengetahuan ilmiah, mengembangkan kapasitas penelitian dan alih teknologi kelautan, dengan mempertimbangkan the?Intergovernmental Oceanographic Commission Criteria and Guidelines?tentang Alih Teknologi Kelautan, untuk meningkatkan kesehatan l', 'Target 14.a', 'a', 14),
(125, 'Menyediakan akses untuk nelayan skala kecil (small-scale artisanal fishers) terhadap sumber daya laut dan pasar.', 'Target 14.b', 'b', 14),
(126, 'Meningkatkan pelestarian dan pemanfaatan berkelanjutan lautan dan sumber dayanya dengan menerapkan hukum internasional yang tercermin dalam?the United Nations Convention on the Law of the Sea, yang menyediakan kerangka hukum untuk pelestarian dan pemanfaa', 'Target 14.c', 'c', 14),
(127, 'Pada tahun 2020, menjamin pelestarian, restorasi dan pemanfaatan berkelanjutan dari ekosistem daratan dan perairan darat serta jasa lingkungannya, khususnya ekosistem hutan, lahan basah, pegunungan dan lahan kering, sejalan dengan kewajiban berdasarkan pe', 'Target 15.1', '1', 15),
(128, 'Pada tahun 2020, meningkatkan pelaksanaan pengelolaan semua jenis hutan secara berkelanjutan, menghentikan deforestasi, merestorasi hutan yang terdegradasi dan meningkatkan secara signifikan forestasi dan reforestasi secara global.', 'Target 15.2', '2', 15),
(129, 'Pada tahun 2020, menghentikan penggurunan, memulihkan lahan dan tanah kritis, termasuk lahan yang terkena penggurunan, kekeringan dan banjir, dan berusaha mencapai dunia yang bebas dari lahan terdegradasi.', 'Target 15.3', '3', 15),
(130, 'Pada tahun 2030, menjamin pelestarian ekosistem pegunungan, termasuk keanekaragaman hayatinya, untuk meningkatkan kapasitasnya memberikan manfaat yang sangat penting bagi pembangunan berkelanjutan.', 'Target 15.4', '4', 15),
(131, 'Melakukan tindakan cepat dan signifikan untuk mengurangi degradasi habitat alami, menghentikan kehilangan keanekaragaman hayati, dan, pada tahun 2020, melindungi dan mencegah lenyapnya spesies yang terancam punah.', 'Target 15.5', '5', 15),
(132, 'Meningkatkan pembagian keuntungan yang adil dan merata dari pemanfaatan sumber daya genetik, dan meningkatkan akses yang tepat terhadap sumber daya tersebut, sesuai kesepakatan internasional.', 'Target 15.6', '6', 15),
(133, 'Melakukan tindakan cepat untuk mengakhiri perburuan dan perdagangan jenis flora dan fauna yang dilindungi serta mengatasi permintaan dan pasokan produk hidupan liar secara ilegal.', 'Target 15.7', '7', 15),
(134, 'Pada tahun 2020, memperkenalkan langkah-langkah untuk mencegah masuknya dan secara signifikan mengurangi dampak dari jenis asing invasif pada ekosistem darat dan air, serta mengendalikan atau memberantas jenis asing invasif prioritas.', 'Target 15.8', '8', 15),
(135, 'Pada tahun 2020, mengitegrasikan nilai-nilai ekosistem dan keanekaragaman hayati kedalam perencanaan nasional dan daerah, proses pembangunan, strategi dan penganggaran pengurangan kemiskinan.', 'Target 15.9', '9', 15),
(136, 'Memobilisasi dan meningkatkan sumber daya keuangan secara signifikan dari semua sumber untuk melestarikan dan memanfaatkan keanekaragaman hayati dan ekosistem secara berkelanjutan.', 'Target 15.a', 'a', 15),
(137, 'Memobilisasi sumber daya penting dari semua sumber dan pada semua tingkatan untuk membiayai pengelolaan hutan yang berkelanjutan dan memberikan insentif yang memadai bagi negara berkembang untuk memajukan pengelolaannya, termasuk untuk pelestarian dan ref', 'Target 15.b', 'b', 15),
(138, 'Meningkatkan dukungan global dalam upaya memerangi perburuan dan perdagangan jenis yang dilindungi, termasuk dengan meningkatkan kapasitas masyarakat lokal mengejar peluang mata pencaharian yang berkelanjutan.', 'Target 15.c', 'c', 15),
(139, 'Secara signifikan mengurangi segala bentuk kekerasan dan terkait angka kematian di mana pun.', 'Target 16.1', '1', 16),
(140, 'Menghentikan perlakuan kejam, eksploitasi, perdagangan, dan segala bentuk kekerasan dan penyiksaan terhadap anak.', 'Target 16.2', '2', 16),
(141, 'Menggalakkan negara berdasarkan hukum di tingkat nasional dan internasional dan menjamin akses yang sama terhadap keadilan bagi semua.', 'Target 16.3', '3', 16),
(142, 'Pada tahun 2030 secara signifikan mengurangi aliran dana gelap maupun senjata, menguatkan pemulihan dan pengembalian aset curian dan memerangi segala bentuk kejahatan yang terorganisasi.', 'Target 16.4', '4', 16),
(143, 'Secara substansial mengurangi korupsi dan penyuapan dalam segala bentuknya.', 'Target 16.5', '5', 16),
(144, 'Mengembangkan lembaga yang efektif, akuntabel, dan transparan di semua tingkat.', 'Target 16.6', '6', 16),
(145, 'Menjamin pengambilan keputusan yang responsif, inklusif, partisipatif dan representatif di setiap tingkatan.', 'Target 16.7', '7', 16),
(146, 'Memperluas dan meningkatkan partisipasi negara berkembang di dalam lembaga tata kelola global.', 'Target 16.8', '8', 16),
(147, 'Pada tahun 2030, memberikan identitas yang syah bagi semua, termasuk pencatatan kelahiran.', 'Target 16.9', '9', 16),
(148, 'Menjamin akses publik terhadap informasi dan melindungi kebebasan mendasar, sesuai dengan peraturan nasional dan kesepakatan internasional.', 'Target 16.10', '1', 16),
(149, 'Memperkuat lembaga-lembaga nasional yang relevan, termasuk melalui kerjasama internasional, untuk membangun kapasitas di semua tingkatan, khususnya di negara berkembang, untuk mencegah kekerasan serta memerangi terorisme dan kejahatan.', 'Target 16.a', 'a', 16),
(150, 'Menggalakkan dan menegakkan undang-undang dan kebijakan yang tidak diskriminatif untuk pembangunan berkelanjutan.', 'Target 16.b', 'b', 16),
(151, 'Memperkuat mobilisasi sumber daya domestik, termasuk melalui dukungan internasional kepada negara berkembang, untuk meningkatkan kapasitas lokal bagi pengumpulan pajak dan pendapatan lainnya.', 'Target 17.1', '1', 17),
(152, 'Negara-negara maju melaksanakan secara penuh komitmen atas bantuan pembangunan? (Official Assistance???ODA), termasuk komitmen dari banyak negara maju untuk mencapai Target 0.7 persen dari Pendapatan Nasional Bruto untuk bantuan pembangunan (O', 'Target 17.2', '2', 17),
(153, 'Memobilisasi tambahan sumber daya keuangan untuk negara berkembang dari berbagai macam sumber.', 'Target 17.3', '3', 17),
(154, 'Membantu negara berkembang untuk mendapatkan keberlanjutan utang jangka panjang melalui kebijakan-kebijakan yang terkoordinasi yang ditujukan untuk membantu pembiayaan utang, keringanan utang dan restrukturisasi utang, yang sesuai, dan menyelesaikan utang', 'Target 17.4', '4', 17),
(155, 'Mengadopsi dan melaksanakan pemerintahan yang mempromosikan investasi bagi negara kurang berkembang.', 'Target 17.5', '5', 17),
(156, 'Meningkatkan kerjasama Utara-Selatan, Selatan-Selatan dan kerjasama triangular secara regional dan internasional terkait dan akses terhadap sains, teknologi dan inovasi, dan meningkatkan berbagi pengetahuan berdasar kesepakatan timbal balik, termasuk mela', 'Target 17.6', '6', 17),
(157, 'Meningkatkan pengembangan, transfer, diseminasi dan penyebaran teknologi yang ramah lingkungan kepada negara berkembang berdasarkan ketentuan yang menguntungkan, termasuk ketentuan konsesi dan preferensi, yang disetujui bersama.', 'Target 17.7', '7', 17),
(158, 'Mengoperasionalisasikan secara penuh bank teknologi dan sains, mekanisme pembangunan kapasitas teknologi dan inovasi untuk negara kurang berkembang pada tahun 2017 dan meningkatkan penggunaan teknologi yang memampukan, khususnya teknologi informasi dan ko', 'Target 17.8', '8', 17),
(159, 'Meningkatkan dukungan internasional untuk melaksanakan pembangunan kapasitas yang efektif dan sesuai Target di negara berkembang untuk mendukung rencana nasional untuk melaksanakan seluruh tujuan pembangunan berkelanjutan, termasuk melalui kerjasama Utara', 'Target 17.9', '9', 17),
(160, 'Menggalakkan sistem perdagangan multilateral yang universal, berbasis aturan, terbuka, tidak diskriminatif dan adil di bawah?the World Trade Organization?termasuk melalui kesimpulan dari kesepakatan di bawah?Doha Development Agenda.', 'Target 17.10', '1', 17),
(161, 'Secara signifikan meningkatkan ekspor dari negara berkembang, khususnya dengan tujuan meningkatkan dua kali lipat proporsi negara kurang berkembang dalam ekspor global pada tahun 2020.', 'Target 17.11', '11', 17),
(162, 'Merealisasikan pelaksanaan tepat waktu dari akses pasar bebas bea dan bebas kuota tanpa batas waktu untuk semua negara kurang berkembang, sesuai dengan keputusan?World Trade Organization?termasuk dengan menjamin bahwa penetapan aturan keaslian (rules of o', 'Target 17.12', '12', 17),
(163, 'Meningkatkan stabilitas makroekonomi global, termasuk melalui koordinasi kebijakan dan keterpaduan kebijakan.', 'Target 17.13', '13', 17),
(164, 'Meningkatkan keterpaduan kebijakan untuk pembangunan berkelanjutan.', 'Target 17.14', '14', 17),
(165, 'Menghormati ruang kebijakan dan kepemimpinan dari setiap negara untuk membuat dan melaksanakan kebijakan pengentasan kemiskinan dan pembangunan berkelanjutan.', 'Target 17.15', '15', 17),
(166, 'Meningkatkan kemitraan global untuk pembangunan berkelanjutan, dilengkapi dengan kemitraan berbagai pemangku kepentingan yang memobilisasi dan membagi pengetahuan, keahlian, teknologi dan sumber daya keuangan, untuk mendukung pencapaian Tujuan Pembangunan', 'Target 17.16', '16', 17),
(167, 'Mendorong dan meningkatkan kerjasama pemerintah-swasta dan masyarakat sipil yang efektif, berdasarkan pengalaman dan bersumber pada strategi kerjasama.', 'Target 17.17', '17', 17),
(168, 'Pada tahun 2020, meningkatkan dukungan pengembangan kapasitas untuk negara berkembang, termasuk negara kurang berkembang dan negara berkembang pulau kecil, untuk meningkatkan secara signifikan ketersediaan data berkualitas tinggi, tepat waktu dan dapat di', 'Target 17.18', '18', 17),
(169, 'Pada tahun 2030, mengandalkan inisiatif yang sudah ada, untuk mengembangkan pengukuran atas kemajuan pembangunan berkelanjutan yang melengkapi Produk Domestik Bruto, dan mendukung pengembangan kapasitas statistik di negara berkembang.', 'Target 17.19', '17.19', 17);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tujuan`
--

CREATE TABLE `tujuan` (
  `id` bigint(20) NOT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `nomor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tujuan`
--

INSERT INTO `tujuan` (`id`, `deskripsi`, `gambar`, `nama`, `nomor`) VALUES
(1, 'Mengakhiri Kemiskinan Dalam Segala Bentuk di Manapun', '1.png', 'Tanpa Kemiskinan', 1),
(2, 'Menghilangkan Kelaparan, Mencapai Ketahanan Pangan dan Gizi yang Baik, serta Meningkatkan Pertanian Berkelanjutan', '2.png', 'Tanpa Kelaparan', 2),
(3, 'Menjamin Kehidupan yang Sehat dan Meningkatkan Kesejahteraan Seluruh Penduduk Semua Usia', '3.png', 'Kehidupan Sehat dan Sejahtera', 3),
(4, 'Menjamin Kualitas Pendidikan yang Inklusif dan Merata serta\nMeningkatkan Kesempatan Belajar Sepanjang Hayat untuk Semua', '4.jpg', 'Pendidikan Berkualitas', 4),
(5, 'Mencapai Kesetaraan Gender dan Memberdayakan Kaum Perempuan', '5.png', 'Kesetaraan Gender', 5),
(6, 'Menjamin Ketersediaan serta Pengelolaan Air Bersih dan Sanitasi yang Berkelanjutan untuk Semua', '6.png', 'Air Bersih dan Sanitasi Layak', 6),
(7, 'Menjamin Akses Energi yang Terjangkau, Andal, Berkelanjutan dan Modern untuk Semua', '7.png', 'Energi Bersih dan Terjangkau', 7),
(8, 'Meningkatkan pertumbuhan ekonomi yang inklusif dan berkelanjutan, kesempatan kerja yang produktif dan menyeluruh serta pekerjaan yang layak untuk semua', '8.png', 'Pekerjaan Layak dan Pertumbuhan Ekonomi', 8),
(9, 'Menjamin Akses Energi yang Terjangkau, Andal, Berkelanjutan dan Modern untuk Semua', '9.png', 'Industri, Inovasi, dan Infrastruktur', 9),
(10, 'Mengurangi Kesenjangan Intra dan Antar Negara', '10.jpg', 'Berkurangnya Kesenjangan', 10),
(11, 'Menjadikan Kota dan Permukiman Inklusif, Aman, Tangguh dan Berkelanjutan', '11.png', 'Kota dan Pemukiman Yang Berkelanjutan', 11),
(12, 'Menjamin Pola Produksi dan Konsumsi yang Berkelanjutan', '12.jpg', 'Konsumsi dan Produksi Yang Bertanggung Jawab', 12),
(13, 'Mengambil Tindakan Cepat untuk Mengatasi Perubahan Iklim dan Dampaknya', '13.png', 'Penanganan Perubahan Iklim', 13),
(14, 'Melestarikan dan Memanfaatkan Secara Berkelanjutan Sumber Daya Kelautan dan Samudera untuk Pembangunan Berkelanjutan', '14.png', 'Ekosistem Lautan', 14),
(15, 'Melindungi, Merestorasi dan Meningkatkan Pemanfaatan Berkelanjutan Ekosistem Daratan, Mengelola Hutan Secara Lestari, Menghentikan Penggurunan, Memulihkan Degradasi lahan, serta Menghentikan Kehilangan Keanekaragaman Hayati ', '15.png', 'Ekosistem Daratan', 15),
(16, 'Menguatkan masyarakat yang inklusif dan damai (Peace), terwujudnya penegakan keadilan (Justice) dengan menyediakan akses keadilan untuk semua, serta membangun institusi yang tangguh (Strong institutions).', '16.png', 'Perdamaian, Keadilan, dan Kelembagaan Yang Tangguh', 16),
(17, 'Menguatkan Sarana Pelaksanaan dan Merevitalisasi Kemitraan Global untuk Pembangunan Berkelanjutan', '17.jpg', 'Kemitraan Untuk Mencapai Tujuan', 17);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama_instansi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `nama_instansi`, `email`, `password`, `role_id`) VALUES
(1, 'kesehatan', 'kesehatan', 'kesehatan@gmail.com', 'qwerty', 1),
(2, 'flagger', 'kesehatan', 'flagger@gmail.com', 'qwerty', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dataset`
--
ALTER TABLE `dataset`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK1x1d6eaejmgmrutuj8s22qhtm` (`indikator_id`) USING BTREE,
  ADD KEY `FKlejnaol1dibyrw862269xwgv` (`status_id`) USING BTREE;

--
-- Indeks untuk tabel `indikator`
--
ALTER TABLE `indikator`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FKis0wr2ipdqg7bq3mnq39kqjgj` (`target_id`) USING BTREE;

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `target`
--
ALTER TABLE `target`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FKd0bjrdsgc2pdfulcnrsvyrtjy` (`tujuan_id`) USING BTREE;

--
-- Indeks untuk tabel `tujuan`
--
ALTER TABLE `tujuan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FKn82ha3ccdebhokx3a8fgdqeyy` (`role_id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dataset`
--
ALTER TABLE `dataset`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `indikator`
--
ALTER TABLE `indikator`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=456;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `target`
--
ALTER TABLE `target`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT untuk tabel `tujuan`
--
ALTER TABLE `tujuan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dataset`
--
ALTER TABLE `dataset`
  ADD CONSTRAINT `FK1x1d6eaejmgmrutuj8s22qhtm` FOREIGN KEY (`indikator_id`) REFERENCES `indikator` (`id`),
  ADD CONSTRAINT `FKlejnaol1dibyrw862269xwgv` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

--
-- Ketidakleluasaan untuk tabel `indikator`
--
ALTER TABLE `indikator`
  ADD CONSTRAINT `FKis0wr2ipdqg7bq3mnq39kqjgj` FOREIGN KEY (`target_id`) REFERENCES `target` (`id`);

--
-- Ketidakleluasaan untuk tabel `target`
--
ALTER TABLE `target`
  ADD CONSTRAINT `FKd0bjrdsgc2pdfulcnrsvyrtjy` FOREIGN KEY (`tujuan_id`) REFERENCES `tujuan` (`id`);

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FKn82ha3ccdebhokx3a8fgdqeyy` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

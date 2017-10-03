-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 04, 2017 at 09:02 
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `akta_kategori`
--

CREATE TABLE IF NOT EXISTS `akta_kategori` (
`id_kategori` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `akta_kategori`
--

INSERT INTO `akta_kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Pelayanan Kecamatan'),
(2, 'Pelayanan Langsung'),
(3, 'Pelayanan Jempol Kalih'),
(4, 'Pelayanan Dinas'),
(5, 'Pelayanan RSUD'),
(6, 'Pelayanan RSBA');

-- --------------------------------------------------------

--
-- Table structure for table `akta_user`
--

CREATE TABLE IF NOT EXISTS `akta_user` (
`user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_nik` varchar(16) NOT NULL,
  `user_email` varchar(80) NOT NULL,
  `user_full_name` varchar(100) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_created_date` datetime NOT NULL,
  `user_last_login` datetime NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_jk` enum('l','p') NOT NULL,
  `kec_id` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `akta_user`
--

INSERT INTO `akta_user` (`user_id`, `user_name`, `user_nik`, `user_email`, `user_full_name`, `user_password`, `user_created_date`, `user_last_login`, `role_id`, `user_jk`, `kec_id`) VALUES
(1, 'dinas', '3329', 'dindukcapilbrebes@gmail.com', 'Admin Dinas', '6b7d44f2591dc830c331022e8f43588df623fcde', '2017-08-02 00:00:00', '2017-09-03 20:49:09', 1, 'l', NULL),
(2, 'salem', '2901', 'salem@f.com', 'Kecamatan Salem', '0358a2c352a7ef3f803100a3f9dbf98851f07451', '2017-08-02 00:00:00', '2017-08-28 09:37:28', 4, 'p', 3329010),
(6, 'capil', '3329', 'dinas@gmai.com', 'Operator Capil', '6b7d44f2591dc830c331022e8f43588df623fcde', '2017-08-07 08:18:24', '2017-08-11 08:01:15', 3, 'l', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
`article_id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `keyword` text NOT NULL,
  `description` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `img` varchar(70) NOT NULL,
  `sticky` enum('y','n') NOT NULL,
  `headline` enum('y','n') NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `publish` enum('y','n') NOT NULL,
  `redaktur` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `user`, `title`, `url`, `kategori_id`, `keyword`, `description`, `content`, `img`, `sticky`, `headline`, `create_date`, `update_date`, `publish`, `redaktur`) VALUES
(1, 'administrator', 'Tertib Administrasi Kependudukan Menuju Good Governance', 'Tertib-Administrasi-Kependudukan-Menuju-Good-Governance', 1, 'good governance,dindukcapil brebes,brebes,ktp,ktp-el dindukcapil brebes', 'Sejak diundangkan Undang- undang Nomor 23 tahun 2006 tentang Tertib Administrasi, pada hakekatnya bertujuan untuk memberikan perlindungan dan pengakuan terhadap penentuan status pribadi dan status', '<p> Sejak diundangkan Undang- undang Nomor 23 tahun 2006 tentang Tertib Administrasi, pada hakekatnya bertujuan untuk memberikan perlindungan dan pengakuan terhadap penentuan status pribadi dan status hukum atas peristiwa kependudukan dan peristiwa penting yang dialami oleh penduduk indonesia baik didalam negeri maupun di luar negeri.Salah satu program pemerintah dalam mewujudkan terib administrasi adalah dengan menertibkan penerbitan KTP elektronik yang bersifat nasional satu pintu, yaitu Dinas Kependudukan dan Pencatatan Sipil. Tertib Administrasi ini menjadi sangat penting karena admintrasi kependudukan yang baik, dapat dipercaya, valid dan up to date menjadi harapan semua pihak yang tentunya menuju Good Governance.</p>\r\n\r\n<p> </p>\r\n\r\n<p>Pada awalnya memang secara sistem kurang yakin tapi sekarang sebagian besar LSM, masyarakat sudah memahami dan memberikan dukungan yang cukup tinggi terhadap program ini. Pelaksanaan program ini menghadapi tatangan yang luar biasa, tapi karyawan/ti Disdukcapil Kab. Cilacap tetap bersemangat, dalam pelayanan kepada masyarakat karena lebih terdorong oleh besarnya manfaat sehingga kendala-kendala apapun dihadapi dengan tekad yang bulat dan ikhlas demi untuk membahagian masyarakat. Faktor-faktor kendala meliputi jaringan pusat yang sering off, peralatan rusak dan blangko KTP-el dari pusat. Blangko KTP karena belum tersedia maka sementara diberikan Surat Keterangan yang fungsinya untuk mengurus dokumen meliputi ;Imigrasi, Kepolisian, Pemilukada, BPJS, Perbankkan dan lain sebagainya. Untuk kendala transportasi kita ketahui bersama bahwa letak geografis kabupaten Cilacap ada kecamatan yang jau yaitu Kecamatan Daeyeuhluhur belum lagi yang ada di dataran tinggi, begiu juga orang yang sedang sakit masyarakat jadi susah datang ke tempat pelayanan pembuatan KTP-el,  sehingga harus menyediakan alat pelayanan mobile, jadi bagi daerah terpencil, tidak perlu masyarakat susah-susah datang ke tempat pelayanan tapi petugas yang akan datang ke tempat/sekelompok  warga yang membutuhkan perekaman KTP-el. Alhamdulilah, satu demi satu kendala-kendala itu bisa dihadapi.</p>\r\n\r\n<p> </p>\r\n\r\n<p>Dalam rangka mendekatkan pelayanan kepada masyarakat yaitu menindak lanjuti Surat Gubernur Jawa Tengah nomor 470/0909000 tanggal 22 Maret 2011 perihal Pelayanan KTP-el di Kecamatan Disdukcapil Kab. Cilacap dengan ijin Bupati Cilacap menyelenggarakan 10 Titik Pencetakan KTP-el yaitu di Kecamatan, Maos, Kroya, Wanareja, Karangpucung dan Majenang sedang kecamatan; Cilacap selatan, Tengah dan Utara tetap di Disdukcapil. Mari segera miliki</p>\r\n\r\n<p> ” SATU KTP, KTP NASIONAL DAN SATU KTP SATU IDENTITAS ”</p>', 'good_governance.jpg', 'n', 'y', '2017-02-27 12:21:31', '2017-03-07 11:55:58', 'y', 'administrator'),
(4, 'administrator', 'KTP-EL Berlaku Seumur Hidup', 'ktp-el-berlaku-seumur-hidup', 1, 'KTP EL,Brebes', 'E-KTP sekarang berlaku seumur hidup. Masyarakat tak perlu mengurus perpanjangan masa berlakunya, jangan khawatir jika ada razia atau ditolak saat mengurus surat-surat penting.', '<p><strong>E-KTP sekarang berlaku seumur hidup. Masyarakat tak perlu mengurus perpanjangan masa berlakunya, jangan khawatir jika ada razia atau ditolak saat mengurus surat-surat penting.</strong></p>\r\n\r\n<p>Menteri Dalam Negeri (Mendagri) Tjahjo Kumolo mengatakan, Kartu Tanda Penduduk Elektronik (E-KTP) kini berlaku seumur hidup. Meski terdapat masa berlaku dalam E-KTP yang dimiliki masyarakat saat ini, ia memastikan bahwa masa berlaku itu tak menjadi ukuran lagi.<br>\r\n <br>\r\nMenurut Tjahjo, kini E-KTP berlaku seumur hidup. Ketentuan ini juga berlaku bagi E-KTP milik masyarakat yang sudah kedaluwarsa atau masa berlakunya habis. Hal itu diutarakan Tjahjo melalui akun twitternya @tjahjo_kumolo yang diunggahnya beberapa waktu lalu seperti dilansir dari laman resmi Sekretariat Kabinet, Jumat (29/1).<br>\r\n <br>\r\n“Jadi bagi Anda yang  masa berlaku E-KTP-nya habis, tidak perlu mengurus perpanjangan masa berlakunya lagi, karena E-KTP tersebut masih tetap bisa digunakan,” tulis Tjahjo.<br>\r\n <br>\r\nAtas dasar itu, ia meminta masyarakat untuk menolak jika dimintai uang oleh calo/oknum petugas untuk mengurus dan membuat E-KTP yang baru lagi. Menurutnya, masyarakat tak perlu mengurus E-KTP baru walaupun masa berlakunya sudah kedaluwarsa.<br>\r\n <br>\r\nMenurut Tjahjo, walaupun di E-KTP tertulis masa berlakunya sudah habis atau kedaluwarsa, pengurusan surat-surat di instansi/lembaga manapun tetap bisa dilakukan. “Jadi Anda tak perlu khawatir ditolak saat menunjukkan eKTP kedaluwarsa sewaktu ada razia kepolisian ataupun di saat mengurus surat-surat penting,” jelasnya.<br>\r\n <br>\r\nIa mengatakan, ketentuan mengenai E-KTP berlaku seumur hidup ini sudah diatur dalam Pasal 64 ayat 7a UU No. 24 Tahun 2013 tentang Perubahan Atas UU No. 23 Tahun 2006 tentang Administrasi Kependudukan. Dalam pasal itu disebutkan bahwa KTP-el (E-KTP) untuk warga negara Indonesia masa berlakunya seumur hidup.<br>\r\n <br>\r\nUntuk diketahui, terkait tata cara penerbitan E-KTP secara reguler sendiri telah diatur dalam Peraturan Mendagri Nomor 9 Tahun 2011 tentang Pedoman Penerbitan KTP Berbasis Nomor Induk Kependudukan Secara Nasional. Pasal 5 ayat (1) huruf a Permendagri menyebutkan, pengajuan E-KTP secara reguler bisa dalam bentuk membuat baru, karena pindah alamat atau hilang.<br>\r\n <br>\r\nPasal itu merincikan, penerbitan E-KTP secara reguler bagi  warga negara Indonesia melapor kepada petugas di tempat pelayanan E-KTP dengan mengisi formulir permohonan dan membawa persyaratan berupa nomor induk kependudukan nasional, fotokopi kartu keluarga dan surat pindah dan E-KTP bagi penduduk yang pindah atau E-KTP yang rusak dan surat keterangan kehilangan dari Kepolisian bagi penduduk yang KTP nya hilang.</p>\r\n\r\n<p> </p>', 'ktp.jpg', 'n', 'y', '2017-02-26 21:13:51', '2017-03-21 00:23:08', 'y', 'administrator'),
(5, 'administrator', 'Layanan Langsung pembuatan Akta Kelahiran dan Perekaman KTP Elektronik Desa Cisereuh, Ketanggungan', 'Layanan-Langsung-pembuatan-Akta-Kelahiran-dan-Perekaman-KTP-Elektronik-Desa-Cisereuh-Ketanggungan', 4, 'pelayanan langsung,dindukcapil brebes,disdukcapil brebes,desa cisereuh,kecamatan ketanggungan brebes,brebes', 'Layanan Langsung pembuatan Akta Kelahiran dan Perekaman KTP Elektronik untuk penduduk Desa Ciseureuh, Ketanggungan.  ? Siapkan persyaratannya. Verifikasi. Cetak. Akta kelahiran langsung dibawa pulang.', '<p>Tanggal 18 November 2016, Layanan Langsung pembuatan Akta Kelahiran dan Perekaman KTP Elektronik untuk penduduk Desa Ciseureuh, Ketanggungan. <br>\r\n? Siapkan persyaratannya. Verifikasi. Cetak. Akta kelahiran langsung dibawa pulang. Untuk penduduk 0-60 hari biaya gratis. Penduduk usia lebih dr 60 hari denda 25 rb rupiah. <br>\r\n?Perekaman. Bawa Fotokopi KK. Cetak Suket KTP el. Langsung jadi. Gratis. </p>', 'layanan1.jpg', 'n', 'n', '2017-03-08 09:24:48', '2017-03-08 09:24:48', 'y', 'Administrator Database'),
(6, 'administrator', 'PELAYANAN ADMINISTRASI KEPENDUDUKAN YANG PERLU ANDA KETAHUI', 'PELAYANAN-ADMINISTRASI-KEPENDUDUKAN-YANG-PERLU-ANDA-KETAHUI', 1, 'pelayanan kependudukan,disdukcapil brebes', 'Perubahan Undang-Undang Nomor 23 Tahun 2006 menjadi Undang-Undang Nomor 24 Tahun 2013 tentang Administrasi Kependudukan yang telah disahkan oleh DPR-RI pada tanggal 26 November 2013 merupakan perubaha', '<p>Perubahan Undang-Undang Nomor 23 Tahun 2006 menjadi Undang-Undang Nomor 24 Tahun 2013 tentang Administrasi Kependudukan yang telah disahkan oleh DPR-RI pada tanggal 26 November 2013 merupakan perubahan yang mendasar di bidang administrasi kependudukan. </p>\r\n\r\n<p>Tujuan utama perubahan UU dimaksud adalah untuk meningkatkan efektivitas pelayanan administrasi kependudukan kepada masyarakat, menjamin akurasi data kependudukan dan ketunggalan Nomor Induk Kependudukan (NIK) serta ketunggalan dokumen kependudukan.</p>\r\n\r\n<p>Perubahan mendasar di UU No. 24 Tahun 2013 adalah sebagai berikut:</p>\r\n\r\n<p><strong><em>Satu</em></strong><strong>, Masa Berlaku KTP Elektronik (KTP-el)</strong></p>\r\n\r\n<p>Semula 5 (lima) tahun diubah menjadi berlaku seumur hidup sepanjang tidak ada perubahan elemen data dalam KTP (Pasal 64 ayat 7 huruf a UU No. 24 Tahun 2013). KTP-el yang sudah diterbitkan sebelum berlakunya Undang-Undang No. 24 Tahun 2013 ini, ditetapkan berlaku seumur hidup (Pasal 101 point c UU No. 24 Tahun 2013).</p>\r\n\r\n<p><strong><em>Dua</em></strong><strong>, Penggunaan Data Kependudukan Kementerian Dalam Negeri</strong></p>\r\n\r\n<p>Data Kependudukan Kementerian Dalam Negeri yang bersumber dari data kependudukan kabupaten/kota, merupakan satu-satunya data kependudukan yang digunakan untuk semua keperluan: alokasi anggaran (termasuk untuk perhitungan DAU), pelayanan publik, perencanaan pembangunan, pembangunan demokrasi, penegakan hukum, dan pencegahan kriminal (Pasal 58 UU No. 24 Tahun 2013).</p>\r\n\r\n<p><strong><em>Tiga</em></strong><strong>, Pencetakan Dokumen/Personalisasi KTP-el</strong></p>\r\n\r\n<p>Pencetakan dokumen/personalisasi KTP-el yang selama ini dilaksanakan terpusat di Jakarta akan diserahkan kepada Dinas Kependudukan dan Pencatatan Sipil Kabupaten/Kota pada Tahun 2014 (Pasal 8 ayat 1 huruf c UU No. 24 Tahun 2013).</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong><em>Empat</em></strong><strong>, Penerbitan Akta Kelahiran yang Pelaporannya melebihi Batas Waktu 1 (satu) Tahun</strong></p>\r\n\r\n<p>Semula penerbitan tersebut memerlukan penetapan Pengadilan Negeri, diubah cukup dengan Keputusan Kepala Dinas Kependudukan dan Pencatatan Sipil Kabupaten/Kota. Hal ini sesuai dengan Putusan Mahkamah Konstitusi tanggal 30 April 2013.</p>\r\n\r\n<p><strong><em>Lima</em></strong><strong>, Penerbitan Akta Pencatatan Sipil</strong></p>\r\n\r\n<p>Semula dilaksanakan di tempat terjadinya Peristiwa Penting, diubah menjadi penerbitannya di tempat domisili penduduk.</p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p><strong><em>Enam</em></strong><strong>, Pengakuan dan Pengesahan Anak</strong></p>\r\n\r\n<p>Dibatasi hanya untuk anak yang dilahirkan dari perkawinan yang telah sah menurut hukum agama tetapi belum sah menurut hukum negara (Pasal 49 ayat 2). Pengesahan anak yang selama ini hanya dengan catatan pinggir diubah menjadi Akta Pengesahan Anak (Pasal 49 ayat 3 UU No. 24 Tahun 2013).</p>\r\n\r\n<p><strong><em>Tujuh</em></strong><strong>, Pengurusan dan Penerbitan Dokumen Kependudukan Tidak Dipungut Biaya (Gratis)</strong></p>\r\n\r\n<p>Larangan untuk tidak dipungut biaya semula hanya untuk penerbitan KTP-el, diubah menjadi untuk semua dokumen kependudukan seperti KK, KTP-el, Akta Kelahiran, Akta Perkawinan, Akta Kematian, Akta Perceraian, Akta Pengakuan Anak, dan lain-lain (Pasal 79A UU No. 24 Tahun 2013).</p>\r\n\r\n<p><strong><em>Delapan</em></strong><strong>, Pencatatan Kematian</strong></p>\r\n\r\n<p>Pelaporan pencatatan kematian yang semula menjadi kewajiban penduduk, diubah menjadi kewajiban RT atau nama lain untuk melaporkan setiap kematian warganya kepada Instansi Pelaksana (Pasal 44 ayat 1 UU No. 24 Tahun 2013). Pelaporan tersebut dilakukan secara berjenjang melalui RW atau nama lain, Desa/Kelurahan dan Kecamatan. Dengan kebijakan ini diharapkan cakupan pencatatan kematian akan meningkat secara signifikan.</p>\r\n\r\n<p><strong><em>Sembilan</em></strong><strong>, Stelsel Aktif</strong></p>\r\n\r\n<p>Semula stelsel aktif diwajibkan kepada penduduk, diubah menjadi stelsel aktif diwajibkan kepada pemerintah melalui petugas.</p>\r\n\r\n<p><strong><em>Sepuluh</em></strong><strong>, Petugas Registrasi</strong></p>\r\n\r\n<p>Petugas Registrasi membantu Kepala Desa atau Lurah dan Instansi Pelaksana dalam Pendaftaran Penduduk dan Pencatatan Sipil (Pasal 12 ayat 1 UU No. 24 Tahun 2013). Petugas Registrasi diangkat dan diberhentikan oleh Bupati/Walikota. Petugas Registrasi harus PNS, diubah diutamakan PNS (Pasal 12 ayat 1 UU No. 24 Tahun 2013).</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong><em>Sebelas</em></strong><strong>, Pengangkatan Pejabat Struktural pada Unit Kerja Administrasi Kependudukan </strong></p>\r\n\r\n<p>Pejabat struktural pada unit kerja yang menangani administrasi kependudukan di Provinsi, diangkat dan diberhentikan oleh Menteri Dalam Negeri atas usulan Gubernur (Pasal 83A ayat 1 UU No. 24 Tahun 2013). Pejabat struktural pada unit kerja yang menangani administrasi kependudukan di Kabupaten/Kota diangkat dan diberhentikan oleh Menteri Dalam Negeri atas usulan Bupati/Walikota melalui Gubernur (Pasal 83A ayat 2 UU No. 24 Tahun 2013). Penilaian kinerja Pejabat Struktural tersebut dilakukan secara periodik oleh Menteri Dalam Negeri (Pasal 83A ayat 2 UU No. 24 Tahun 2013).</p>\r\n\r\n<p><strong><em>Dua Belas</em></strong><strong>, Pendanaan Program dan Kegiatan Adminduk dibebankan pada  APBN</strong></p>\r\n\r\n<p>Pendanaan untuk penyelenggaraan program dan kegiatan administrasi kependudukan, baik di provinsi maupun kabupaten/kota dianggarkan dalam APBN (Pasal 87A UU No. 24 Tahun 2013) dan dimulai pada APBN-P Tahun Anggaran 2014 (Pasal 87B UU No. 24 Tahun 2013), dengan demikian berarti sebelum tersedia APBN-P tahun 2014, pendanaannya masih tetap menggunakan APBD.</p>\r\n\r\n<p><strong><em>Tiga Belas</em></strong><strong>, Penambahan Sanksi</strong></p>\r\n\r\n<p>Setiap orang yang memerintahkan dan/atau memfasilitasi dan/atau melakukan manipulasi data kependudukan dan/atau elemen data penduduk dipidana dengan pidana  penjara paling  lama  6  (enam)  tahun  dan/atau  denda  paling banyak Rp. 75.000.000 (Pasal 94 UU No. 24 Tahun 2013). Setiap pejabat dan petugas pada Desa/Kelurahan, Kecamatan, UPTD, Instansi Pelaksana yang memerintahkan dan/atau memfasilitasi pungutan biaya kepada penduduk dalam pengurusan dan penerbitan dokumen kependudukan dipidana dengan pidana penjara paling lama 6 (enam) tahun dan/atau  denda paling banyak Rp. 75.000.000 (Pasal 95B UU No. 24 Tahun 2013). Setiap orang atau Badan Hukum yang tanpa hak mencetak, menerbitkan, dan/atau mendistribusikan dokumen kependudukan dipidana dengan pidana penjara paling lama 10 (sepuluh) tahun dan/atau denda paling banyak Rp. 1.000.000.000 (Pasal 95B UU No. 24 Tahun 2013).</p>\r\n\r\n<p><strong>Pemberlakuan Perubahan Undang-Undang Nomor 24 Tahun 2013</strong></p>\r\n\r\n<p>Perubahan Undang-Undang ini berlaku sejak diundangkan pada 24 Desember 2013. Khusus yang berkaitan dengan APBN, baru diberlakukan secara efektif sejak tersedianya APBN/APBN-P untuk pembiayaan penyelenggaraan program dan kegiatan adminduk di Provinsi dan Kab/Kota.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>Keterangan:</strong></p>\r\n\r\n<p><strong>1. Penulis Direktur Pengelolaan Informasi Adminduk, Ditjen Dukcapil Kemendagri (Tahun 2014)</strong></p>\r\n\r\n<p><strong>2. Ditulis dan diedit ulang oleh Tim Pengelola Web Dindukcapil Kabupaten Rembang Tanggal 27 Juni 2016</strong></p>\r\n\r\n<p> </p>\r\n\r\n<p>Sumber: <a href="http://dindukcapil.rembangkab.go.id/berita/5-pelayanan-administrasi-kependudukan-yang-perlu-anda-ketahui">http://dindukcapil.rembangkab.go.id/berita/5-pelayanan-administrasi-kependudukan-yang-perlu-anda-ketahui</a></p>', 'asd.jpg', 'n', 'y', '2017-03-09 14:22:03', '2017-03-09 14:22:03', 'y', 'administrator'),
(7, 'administrator', 'Pengumuman 1', 'Pengumuman-1', 3, 'dindukcapil brebes,disdukcapil brebes', 'Pengumuman contoh dindukcapil kabupaten brebes', '<p>Contoh Pengumuman dindukcapil brebes</p>', '', 'n', 'n', '2017-03-09 20:23:12', '2017-03-09 20:23:12', 'y', 'administrator'),
(8, 'administrator', 'Pelayanan E-KTP sudah normal kembali', 'pelayanan-e-ktp-sudah-normal-kembali', 3, 'pelayanan e-ktp,surat keteranagan ktp el,ktp elektronik,e-ktp,dindukcapil brebes', 'Pelayanan e-ktp sudah normal kembali. Silahkan bagi warga yang ingin mengurus Surat Keterangan Pengganti KTP-EL, bisa ...', '<p>Sempat mengalami kendala didalam proses pembuatan Surat Keterangan Pengganti KTP-EL, Sekarang Pelayanan e-ktp sudah normal kembali. Silahkan bagi warga yang ingin mengurus Surat Keterangan Pengganti KTP-EL, bisa langsung datang ke DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL KABUPATEN BREBES.</p>', '', 'n', 'n', '2017-03-21 13:07:09', '2017-03-21 13:07:09', 'y', 'administrator'),
(9, 'administrator', 'LAYANAN LANGSUNG PEMBUATAN AKTA KELAHIRAN DAN PEREKAMAN KTP ELEKTRONIK DESA CIKEUSAL KIDUL', 'layanan-langsung-pembuatan-akta-kelahiran-dan-perekaman-ktp-elektronik-desa-cikeusal-kidul', 4, 'pelayanan langsung,pelayanan e-ktp,pelayanan ktp,pelayanan langsung e-ktp,dindukcapil brebes,pelayanan langsung dindukcapil brebes', 'Pelayanan Langsung untuk Perekaman KTP Elektronik dan Penerbitan Surat Keterangan Pengganti KTP El dan Penerbitan Akta Kelahiran di Desa Cikeusal Kidul, Selasa 14 Maret 2017', '<p>Pelayanan Langsung untuk Perekaman KTP Elektronik dan Penerbitan Surat Keterangan Pengganti KTP El dan Penerbitan Akta Kelahiran di Desa Cikeusal Kidul  pada hari selasa 14 maret 2017 yang diselenggarakan oleh DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL KABUPATEN BREBES. <a href="http://localhost/web_dindukcapil/foto-gallery/5-PELAYANAN-LANGSUNG-DI-DESA-CIKEUSAL-KIDUL-14-MARET">Gallery Pelayanan Langsung Desa Cikeusal</a></p>', 'pelayanan_akta.jpg', 'n', 'n', '2017-03-21 14:49:50', '2017-03-21 14:52:37', 'y', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
`banner_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `title`, `link`, `img`) VALUES
(2, 'Jateng Prov', 'http://www.jatengprov.go.id/', 'a7f72-jatengprov.png'),
(8, 'Dukcapil Kemendagri', 'http://www.dukcapil.kemendagri.go.id/', '9b914-dirjen-dukcapil.png');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('7d1df93bf81858a1773a4e2e1e837a4b3daad25a', '::1', 1504160110, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343136303130393b),
('e0cc07c9e38bc7915be6f983a3deff8caccdb919', '::1', 1504163248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343136333039353b755f6c6f67696e7c623a313b755f69647c733a313a2231223b755f757365726e616d657c733a353a2264696e6173223b755f66756c6c6e616d657c733a31313a2241646d696e2044696e6173223b755f656d61696c7c733a32373a2264696e64756b636170696c62726562657340676d61696c2e636f6d223b755f6c6173745f6c6f67696e7c733a31393a22323031372d30382d33302031333a30313a3234223b755f726f6c657c733a313a2231223b6c61706f725f6e6f7469667c733a3130323a223c64697620636c6173733d22616c65727420616c6572742d73756363657373223e3c6920636c6173733d2266612066612d696e666f2d636972636c65223e3c2f693e20456e747279204c61706f72616e20416b74612053756b736573202121213c2f6469763e223b5f5f63695f766172737c613a313a7b733a31313a226c61706f725f6e6f746966223b733a333a226f6c64223b7d),
('358f494ad8aba691ee2ea3e45e6ee1d2fee60cf4', '::1', 1504163856, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343136333738343b755f6c6f67696e7c623a313b755f69647c733a313a2231223b755f757365726e616d657c733a353a2264696e6173223b755f66756c6c6e616d657c733a31313a2241646d696e2044696e6173223b755f656d61696c7c733a32373a2264696e64756b636170696c62726562657340676d61696c2e636f6d223b755f6c6173745f6c6f67696e7c733a31393a22323031372d30382d33302031333a30313a3234223b755f726f6c657c733a313a2231223b6c61706f725f6e6f7469667c733a3130323a223c64697620636c6173733d22616c65727420616c6572742d73756363657373223e3c6920636c6173733d2266612066612d696e666f2d636972636c65223e3c2f693e20456e747279204c61706f72616e20416b74612053756b736573202121213c2f6469763e223b5f5f63695f766172737c613a313a7b733a31313a226c61706f725f6e6f746966223b733a333a226f6c64223b7d),
('b20de88f9de2edf8e55e4ec273b804d70a167e01', '::1', 1504165096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343136353035313b755f6c6f67696e7c623a313b755f69647c733a313a2231223b755f757365726e616d657c733a353a2264696e6173223b755f66756c6c6e616d657c733a31313a2241646d696e2044696e6173223b755f656d61696c7c733a32373a2264696e64756b636170696c62726562657340676d61696c2e636f6d223b755f6c6173745f6c6f67696e7c733a31393a22323031372d30382d33302031333a30313a3234223b755f726f6c657c733a313a2231223b6c61706f725f6e6f7469667c733a3130323a223c64697620636c6173733d22616c65727420616c6572742d73756363657373223e3c6920636c6173733d2266612066612d696e666f2d636972636c65223e3c2f693e20456e747279204c61706f72616e20416b74612053756b736573202121213c2f6469763e223b5f5f63695f766172737c613a313a7b733a31313a226c61706f725f6e6f746966223b733a333a226f6c64223b7d),
('916d734299ee594c053a7ba84542d0fb96391158', '::1', 1504165615, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343136353430303b755f6c6f67696e7c623a313b755f69647c733a313a2231223b755f757365726e616d657c733a353a2264696e6173223b755f66756c6c6e616d657c733a31313a2241646d696e2044696e6173223b755f656d61696c7c733a32373a2264696e64756b636170696c62726562657340676d61696c2e636f6d223b755f6c6173745f6c6f67696e7c733a31393a22323031372d30382d33302031333a30313a3234223b755f726f6c657c733a313a2231223b6c61706f725f6e6f7469667c733a3130323a223c64697620636c6173733d22616c65727420616c6572742d73756363657373223e3c6920636c6173733d2266612066612d696e666f2d636972636c65223e3c2f693e20456e747279204c61706f72616e20416b74612053756b736573202121213c2f6469763e223b5f5f63695f766172737c613a313a7b733a31313a226c61706f725f6e6f746966223b733a333a226f6c64223b7d),
('d4732a9b4da9593c05da7f3921ee1078829ecc2d', '::1', 1504165782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343136353738323b755f6c6f67696e7c623a313b755f69647c733a313a2231223b755f757365726e616d657c733a353a2264696e6173223b755f66756c6c6e616d657c733a31313a2241646d696e2044696e6173223b755f656d61696c7c733a32373a2264696e64756b636170696c62726562657340676d61696c2e636f6d223b755f6c6173745f6c6f67696e7c733a31393a22323031372d30382d33302031333a30313a3234223b755f726f6c657c733a313a2231223b6c61706f725f6e6f7469667c733a3130323a223c64697620636c6173733d22616c65727420616c6572742d73756363657373223e3c6920636c6173733d2266612066612d696e666f2d636972636c65223e3c2f693e20456e747279204c61706f72616e20416b74612053756b736573202121213c2f6469763e223b5f5f63695f766172737c613a313a7b733a31313a226c61706f725f6e6f746966223b733a333a226f6c64223b7d),
('eb0e3c9658a05fd2c95970da6349cf6ea867da59', '::1', 1504166307, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343136363232383b755f6c6f67696e7c623a313b755f69647c733a313a2231223b755f757365726e616d657c733a353a2264696e6173223b755f66756c6c6e616d657c733a31313a2241646d696e2044696e6173223b755f656d61696c7c733a32373a2264696e64756b636170696c62726562657340676d61696c2e636f6d223b755f6c6173745f6c6f67696e7c733a31393a22323031372d30382d33302031333a30313a3234223b755f726f6c657c733a313a2231223b6c61706f725f6e6f7469667c733a3130323a223c64697620636c6173733d22616c65727420616c6572742d73756363657373223e3c6920636c6173733d2266612066612d696e666f2d636972636c65223e3c2f693e20456e747279204c61706f72616e20416b74612053756b736573202121213c2f6469763e223b5f5f63695f766172737c613a313a7b733a31313a226c61706f725f6e6f746966223b733a333a226f6c64223b7d),
('5162188708a0fde009517fcbf35a31412a60fe18', '::1', 1504166541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343136363534303b755f6c6f67696e7c623a313b755f69647c733a313a2231223b755f757365726e616d657c733a353a2264696e6173223b755f66756c6c6e616d657c733a31313a2241646d696e2044696e6173223b755f656d61696c7c733a32373a2264696e64756b636170696c62726562657340676d61696c2e636f6d223b755f6c6173745f6c6f67696e7c733a31393a22323031372d30382d33302031333a30313a3234223b755f726f6c657c733a313a2231223b6c61706f725f6e6f7469667c733a3130323a223c64697620636c6173733d22616c65727420616c6572742d73756363657373223e3c6920636c6173733d2266612066612d696e666f2d636972636c65223e3c2f693e20456e747279204c61706f72616e20416b74612053756b736573202121213c2f6469763e223b5f5f63695f766172737c613a313a7b733a31313a226c61706f725f6e6f746966223b733a333a226f6c64223b7d),
('0d27e7e3d834a88c1a1e70c3b966c3b53b0514e9', '::1', 1504183692, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343138323835333b755f6c6f67696e7c623a313b755f69647c733a313a2231223b755f757365726e616d657c733a353a2264696e6173223b755f66756c6c6e616d657c733a31313a2241646d696e2044696e6173223b755f656d61696c7c733a32373a2264696e64756b636170696c62726562657340676d61696c2e636f6d223b755f6c6173745f6c6f67696e7c733a31393a22323031372d30382d33312031343a30343a3535223b755f726f6c657c733a313a2231223b),
('ba3a50dea97fa1c02ad76a7f7a2b8fd6501b5896', '::1', 1504183736, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343138333639353b755f6c6f67696e7c623a313b755f69647c733a313a2231223b755f757365726e616d657c733a353a2264696e6173223b755f66756c6c6e616d657c733a31313a2241646d696e2044696e6173223b755f656d61696c7c733a32373a2264696e64756b636170696c62726562657340676d61696c2e636f6d223b755f6c6173745f6c6f67696e7c733a31393a22323031372d30382d33312031343a30343a3535223b755f726f6c657c733a313a2231223b),
('67a2debf714804ae01ea2bc0ed1b5656fcf0ca8a', '::1', 1504269015, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343236393031323b),
('b918c0641841e8fff324e9d704673c80269f4062', '::1', 1504276504, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343237363437343b755f6c6f67696e7c623a313b755f69647c733a313a2231223b755f757365726e616d657c733a353a2264696e6173223b755f66756c6c6e616d657c733a31313a2241646d696e2044696e6173223b755f656d61696c7c733a32373a2264696e64756b636170696c62726562657340676d61696c2e636f6d223b755f6c6173745f6c6f67696e7c733a31393a22323031372d30382d33312031393a33373a3236223b755f726f6c657c733a313a2231223b),
('2c522d24d25fa09a0db8fc322673918e48087cb0', '::1', 1504277034, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343237373033343b755f6c6f67696e7c623a313b755f69647c733a313a2231223b755f757365726e616d657c733a353a2264696e6173223b755f66756c6c6e616d657c733a31313a2241646d696e2044696e6173223b755f656d61696c7c733a32373a2264696e64756b636170696c62726562657340676d61696c2e636f6d223b755f6c6173745f6c6f67696e7c733a31393a22323031372d30382d33312031393a33373a3236223b755f726f6c657c733a313a2231223b),
('8f7fabd16036d0a5ec1831cca707924f8e380e72', '::1', 1504277423, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343237373336373b755f6c6f67696e7c623a313b755f69647c733a313a2231223b755f757365726e616d657c733a353a2264696e6173223b755f66756c6c6e616d657c733a31313a2241646d696e2044696e6173223b755f656d61696c7c733a32373a2264696e64756b636170696c62726562657340676d61696c2e636f6d223b755f6c6173745f6c6f67696e7c733a31393a22323031372d30382d33312031393a33373a3236223b755f726f6c657c733a313a2231223b),
('e5aa1cea115b40b4197ca20d7fdcae5e39ce6679', '::1', 1504446556, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343434363532393b755f6c6f67696e7c623a313b755f69647c733a313a2231223b755f757365726e616d657c733a353a2264696e6173223b755f66756c6c6e616d657c733a31313a2241646d696e2044696e6173223b755f656d61696c7c733a32373a2264696e64756b636170696c62726562657340676d61696c2e636f6d223b755f6c6173745f6c6f67696e7c733a31393a22323031372d30392d30312032313a33343a3433223b755f726f6c657c733a313a2231223b),
('f92c9d4dde6bcdff58a97d36927932aaabe03b80', '::1', 1504447296, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343434373136343b755f6c6f67696e7c623a313b755f69647c733a313a2231223b755f757365726e616d657c733a353a2264696e6173223b755f66756c6c6e616d657c733a31313a2241646d696e2044696e6173223b755f656d61696c7c733a32373a2264696e64756b636170696c62726562657340676d61696c2e636f6d223b755f6c6173745f6c6f67696e7c733a31393a22323031372d30392d30312032313a33343a3433223b755f726f6c657c733a313a2231223b),
('0a150c3182071703afa99e6923b50eb985566554', '::1', 1504484000, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343438343030303b),
('dc9ce1a421446fd712d60581928f82af4042584e', '::1', 1504487293, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343438373239323b),
('11ca4115f61ef071692a87cc980da36026afd512', '::1', 1504501113, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343530303632323b755f6c6f67696e7c623a313b755f69647c733a313a2231223b755f757365726e616d657c733a353a2264696e6173223b755f66756c6c6e616d657c733a31313a2241646d696e2044696e6173223b755f656d61696c7c733a32373a2264696e64756b636170696c62726562657340676d61696c2e636f6d223b755f6c6173745f6c6f67696e7c733a31393a22323031372d30392d30332032303a34393a3039223b755f726f6c657c733a313a2231223b),
('ff527098cbac859af029032a388ef5d934bf7f60', '::1', 1504505068, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343530353036383b755f6c6f67696e7c623a313b755f69647c733a313a2231223b755f757365726e616d657c733a353a2264696e6173223b755f66756c6c6e616d657c733a31313a2241646d696e2044696e6173223b755f656d61696c7c733a32373a2264696e64756b636170696c62726562657340676d61696c2e636f6d223b755f6c6173745f6c6f67696e7c733a31393a22323031372d30392d30332032303a34393a3039223b755f726f6c657c733a313a2231223b),
('351edbc059b7c31cd8a06c9034f21d59f5f1a7fa', '::1', 1504506116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343530353830323b755f6c6f67696e7c623a313b755f69647c733a313a2231223b755f757365726e616d657c733a353a2264696e6173223b755f66756c6c6e616d657c733a31313a2241646d696e2044696e6173223b755f656d61696c7c733a32373a2264696e64756b636170696c62726562657340676d61696c2e636f6d223b755f6c6173745f6c6f67696e7c733a31393a22323031372d30392d30332032303a34393a3039223b755f726f6c657c733a313a2231223b),
('e5137c3d0ad5ff25f68c42765a7a4c865ce56bbd', '::1', 1504506415, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343530363131393b755f6c6f67696e7c623a313b755f69647c733a313a2231223b755f757365726e616d657c733a353a2264696e6173223b755f66756c6c6e616d657c733a31313a2241646d696e2044696e6173223b755f656d61696c7c733a32373a2264696e64756b636170696c62726562657340676d61696c2e636f6d223b755f6c6173745f6c6f67696e7c733a31393a22323031372d30392d30332032303a34393a3039223b755f726f6c657c733a313a2231223b6c61706f725f6e6f7469667c733a3130323a223c64697620636c6173733d22616c65727420616c6572742d73756363657373223e3c6920636c6173733d2266612066612d696e666f2d636972636c65223e3c2f693e20456e747279204c61706f72616e20416b74612053756b736573202121213c2f6469763e223b5f5f63695f766172737c613a313a7b733a31313a226c61706f725f6e6f746966223b733a333a226f6c64223b7d),
('43818c9c79c0c16b255a682fae347e4ca8ba4daf', '::1', 1504506722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343530363432343b755f6c6f67696e7c623a313b755f69647c733a313a2231223b755f757365726e616d657c733a353a2264696e6173223b755f66756c6c6e616d657c733a31313a2241646d696e2044696e6173223b755f656d61696c7c733a32373a2264696e64756b636170696c62726562657340676d61696c2e636f6d223b755f6c6173745f6c6f67696e7c733a31393a22323031372d30392d30332032303a34393a3039223b755f726f6c657c733a313a2231223b6c61706f725f6e6f7469667c733a3130323a223c64697620636c6173733d22616c65727420616c6572742d73756363657373223e3c6920636c6173733d2266612066612d696e666f2d636972636c65223e3c2f693e20456e747279204c61706f72616e20416b74612053756b736573202121213c2f6469763e223b5f5f63695f766172737c613a313a7b733a31313a226c61706f725f6e6f746966223b733a333a226f6c64223b7d),
('bf1040e88d26b09adff06fc0661401eed9f4b988', '::1', 1504506784, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343530363733363b755f6c6f67696e7c623a313b755f69647c733a313a2231223b755f757365726e616d657c733a353a2264696e6173223b755f66756c6c6e616d657c733a31313a2241646d696e2044696e6173223b755f656d61696c7c733a32373a2264696e64756b636170696c62726562657340676d61696c2e636f6d223b755f6c6173745f6c6f67696e7c733a31393a22323031372d30392d30332032303a34393a3039223b755f726f6c657c733a313a2231223b6c61706f725f6e6f7469667c733a3130323a223c64697620636c6173733d22616c65727420616c6572742d73756363657373223e3c6920636c6173733d2266612066612d696e666f2d636972636c65223e3c2f693e20456e747279204c61706f72616e20416b74612053756b736573202121213c2f6469763e223b5f5f63695f766172737c613a313a7b733a31313a226c61706f725f6e6f746966223b733a333a226f6c64223b7d),
('2c10b788745e2a38d5893e3240a11b068a17c7f6', '::1', 1504507802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343530373339393b755f6c6f67696e7c623a313b755f69647c733a313a2231223b755f757365726e616d657c733a353a2264696e6173223b755f66756c6c6e616d657c733a31313a2241646d696e2044696e6173223b755f656d61696c7c733a32373a2264696e64756b636170696c62726562657340676d61696c2e636f6d223b755f6c6173745f6c6f67696e7c733a31393a22323031372d30392d30332032303a34393a3039223b755f726f6c657c733a313a2231223b),
('feb97fe678acf079154e01676176c46a737180bb', '192.19.19.81', 1504508128, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343530383036343b);

-- --------------------------------------------------------

--
-- Table structure for table `data_penduduk`
--

CREATE TABLE IF NOT EXISTS `data_penduduk` (
`penduduk_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `kec_id` int(11) NOT NULL,
  `penduduk_l` int(11) NOT NULL,
  `penduduk_p` int(11) NOT NULL,
  `ktp_l` int(11) NOT NULL,
  `ktp_p` int(11) NOT NULL,
  `own_ktp_l` int(11) NOT NULL,
  `own_ktp_p` int(11) NOT NULL,
  `kk_l` int(11) NOT NULL,
  `kk_p` int(11) NOT NULL,
  `own_kk_p` int(11) NOT NULL,
  `own_kk_l` int(11) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `data_penduduk`
--

INSERT INTO `data_penduduk` (`penduduk_id`, `semester_id`, `kec_id`, `penduduk_l`, `penduduk_p`, `ktp_l`, `ktp_p`, `own_ktp_l`, `own_ktp_p`, `kk_l`, `kk_p`, `own_kk_p`, `own_kk_l`, `create_date`) VALUES
(18, 4, 3329010, 2, 2, 2, 2, 2, 2, 2, 2, 1000, 2, '2017-03-22 08:36:58'),
(19, 4, 3329020, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, '2017-03-22 08:36:58'),
(20, 4, 3329030, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, '2017-03-22 08:36:58'),
(21, 4, 3329040, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, '2017-03-22 08:36:58'),
(22, 4, 3329050, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, '2017-03-22 08:36:58'),
(23, 4, 3329060, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, '2017-03-22 08:36:58'),
(24, 4, 3329070, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, '2017-03-22 08:36:58'),
(25, 4, 3329080, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, '2017-03-22 08:36:58'),
(26, 4, 3329090, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, '2017-03-22 08:36:59'),
(27, 4, 3329100, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, '2017-03-22 08:36:59'),
(28, 4, 3329110, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, '2017-03-22 08:36:59'),
(29, 4, 3329120, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, '2017-03-22 08:36:59'),
(30, 4, 3329130, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, '2017-03-22 08:36:59'),
(31, 4, 3329140, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, '2017-03-22 08:36:59'),
(32, 4, 3329150, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, '2017-03-22 08:36:59'),
(33, 4, 3329160, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, '2017-03-22 08:36:59'),
(34, 4, 3329170, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, '2017-03-22 08:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `dir_pegawai`
--

CREATE TABLE IF NOT EXISTS `dir_pegawai` (
`pegawai_id` int(11) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jabatan` varchar(70) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `url` varchar(130) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dir_pegawai`
--

INSERT INTO `dir_pegawai` (`pegawai_id`, `nik`, `nip`, `nama`, `jabatan`, `photo`, `url`) VALUES
(1, '', '123456789', 'Pegawai', 'Staff', 'admin_icon1.jpg', 'pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
`download_id` int(11) NOT NULL,
  `file_name` varchar(140) NOT NULL,
  `file_path` varchar(150) NOT NULL,
  `file_size` varchar(8) NOT NULL,
  `file_type` varchar(5) NOT NULL,
  `upload_date` datetime NOT NULL,
  `ket` varchar(300) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`download_id`, `file_name`, `file_path`, `file_size`, `file_type`, `upload_date`, `ket`) VALUES
(2, 'ba9ef-uu_23_thn_2006', 'ba9ef-uu_23_thn_2006.pdf', '257.38', '.pdf', '2017-03-08 08:42:34', 'Undang-Undang Nomor 23 Tahun 2006 tentang Administrasi Kependudukan'),
(3, '9973d-06__perpres_25_thn_2008', '9973d-06__perpres_25_thn_2008.pdf', '249.5', '.pdf', '2017-03-08 09:57:46', 'Perpres Nomor 25 Tahun 2008 tentang Persyaratan dan Tata Cara Pendaftaran Penduduk dan Pencatatan Sipil'),
(6, 'UU_24_Thn_20132', 'UU_24_Thn_20132.pdf', '256.73', '.pdf', '2017-03-14 14:19:24', 'Undang - Undang Nomor 24 Tahun 2013 Tentang Perubahan Undang - Undang Nomor 23 Tahun 2006 Tentang Administrasi Kependudukan'),
(7, 'KTP_EL_berlaku_seumur_hidup_470_296_sj', 'KTP_EL_berlaku_seumur_hidup_470_296_sj.pdf', '932.25', '.pdf', '2017-03-14 14:23:45', 'Surat Edaran Menteri Dalam Negeri Nomor 470/296/SJ Tentang KTP Elektronik Berlaku Seumur Hidup'),
(8, 'perda-9-2014_penyelenggara_administrasi_kependudukan', 'perda-9-2014_penyelenggara_administrasi_kependudukan.pdf', '6081.63', '.pdf', '2017-03-16 08:11:02', 'Peraturan Daerah Kabupaten Brebes No 9 Tahun 2014 Tentang Penyelenggaraan Administrasi Kependudukan'),
(9, 'Untitled_2', 'Untitled_2.xlsx', '614.55', '.xlsx', '2017-08-09 09:50:41', 'as');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
`gallery_id` int(11) NOT NULL,
  `gallery_name` varchar(50) NOT NULL,
  `thumbnail` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `gallery_name`, `thumbnail`) VALUES
(3, 'Pelayanan Langsung Desa Ciseureuh, Ketanggungan', 'layanan1.jpg'),
(5, 'PELAYANAN LANGSUNG DI DESA CIKEUSAL KIDUL 14 MARET', 'PELAYANAN_CIKDUL.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_photo`
--

CREATE TABLE IF NOT EXISTS `gallery_photo` (
`photo_id` int(11) NOT NULL,
  `photo_name` varchar(100) NOT NULL,
  `photo` varchar(130) NOT NULL,
  `photo_date` datetime NOT NULL,
  `gallery_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `gallery_photo`
--

INSERT INTO `gallery_photo` (`photo_id`, `photo_name`, `photo`, `photo_date`, `gallery_id`) VALUES
(1, 'layanan3', 'layanan3.jpg', '2017-03-08 09:20:05', 3),
(2, 'layanan2', 'layanan2.jpg', '2017-03-08 09:20:10', 3),
(3, 'layanan1', 'layanan1.jpg', '2017-03-08 09:20:18', 3),
(4, 'PELAYANAN_CIKEUSAL_KIDUL', 'PELAYANAN_CIKEUSAL_KIDUL.jpg', '2017-03-14 14:16:04', 5),
(5, 'CIKDUL2', 'CIKDUL2.jpg', '2017-03-14 14:16:34', 5),
(6, '1', '1.jpg', '2017-03-17 08:51:44', 5),
(7, '2', '2.jpg', '2017-03-17 08:51:55', 5),
(8, '4', '4.jpg', '2017-03-17 08:52:01', 5);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
`kategori_id` int(11) NOT NULL,
  `kategori_name` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_name`) VALUES
(1, 'Berita'),
(3, 'Pengumuman'),
(4, 'Agenda');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE IF NOT EXISTS `kecamatan` (
`kec_id` int(11) NOT NULL,
  `kecamatan` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3329171 ;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`kec_id`, `kecamatan`) VALUES
(3329010, 'Salem'),
(3329020, 'Bantarkawung'),
(3329030, 'Bumiayu'),
(3329040, 'Paguyangan'),
(3329050, 'Sirampog'),
(3329060, 'Tonjong'),
(3329070, 'Larangan'),
(3329080, 'Ketanggungan'),
(3329090, 'Banjarharjo'),
(3329100, 'Losari'),
(3329110, 'Tanjung'),
(3329120, 'Kersana'),
(3329130, 'Bulakamba'),
(3329140, 'Wanasari'),
(3329150, 'Songgom'),
(3329160, 'Jatibarang'),
(3329170, 'Brebes');

-- --------------------------------------------------------

--
-- Table structure for table `lap_akta`
--

CREATE TABLE IF NOT EXISTS `lap_akta` (
`id_lap` bigint(13) NOT NULL,
  `no_akta` varchar(21) NOT NULL,
  `create_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `kecamatan` varchar(70) NOT NULL,
  `ip_address` varchar(25) NOT NULL,
  `nama_bayi` varchar(100) NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=245 ;

--
-- Dumping data for table `lap_akta`
--

INSERT INTO `lap_akta` (`id_lap`, `no_akta`, `create_date`, `user_id`, `kecamatan`, `ip_address`, `nama_bayi`, `id_kategori`) VALUES
(4, '3329-LU-10082017-0001', '2017-08-10 23:54:22', 1, '-', '127.0.0.1', 'pandu aldi pratama', 5),
(6, '3329-LU-11082017-0001', '2017-08-11 08:27:36', 1, '-', '127.0.0.1', 'pa', 4),
(7, '3329-LT-11082017-0002', '2017-08-11 08:27:48', 1, '-', '127.0.0.1', 'pandu', 4),
(8, '3329-LU-11082017-0002', '2017-08-11 08:58:16', 1, '-', '127.0.0.1', 'sasd', 5),
(10, '3329-LT-14082017-0003', '2017-08-14 08:12:12', 1, '-', '127.0.0.1', '1', 3),
(11, '3329-LT-14082017-0007', '2017-08-14 08:20:48', 1, '-', '127.0.0.1', '2', 3),
(12, '3329-LT-14082017-0010', '2017-08-14 08:23:59', 1, '-', '127.0.0.1', '3', 3),
(13, '3329-LT-14082017-0012', '2017-08-14 08:26:36', 1, '-', '127.0.0.1', '4', 3),
(14, '3329-LT-14082017-0016', '2017-08-14 08:43:49', 1, '-', '127.0.0.1', '5', 3),
(15, '3329-LT-14082017-0017', '2017-08-14 08:47:11', 1, '-', '127.0.0.1', '6', 3),
(16, '3329-LT-14082017-0019', '2017-08-14 08:50:16', 1, '-', '127.0.0.1', '7', 3),
(17, '3329-LT-14082017-0022', '2017-08-14 08:56:05', 1, '-', '127.0.0.1', '8', 3),
(18, '3329-LT-14082017-0024', '2017-08-14 08:57:54', 1, '-', '127.0.0.1', '9', 3),
(19, '3329-LT-14082017-0037', '2017-08-14 09:29:05', 1, '-', '127.0.0.1', 'w', 3),
(20, '3329-LT-14082017-0038', '2017-08-14 09:30:58', 1, '-', '127.0.0.1', 'r', 3),
(21, '3329-LT-14082017-0040', '2017-08-14 09:33:04', 1, '-', '127.0.0.1', '-', 3),
(22, '3329-LT-14082017-0046', '2017-08-14 09:51:43', 1, '-', '127.0.0.1', '-', 3),
(23, '3329-LT-14082017-0047', '2017-08-14 10:00:17', 1, '-', '127.0.0.1', '-', 3),
(24, '3329-LT-14082017-0049', '2017-08-14 10:04:16', 1, '-', '127.0.0.1', '-', 3),
(25, '3329-LT-14082017-0050', '2017-08-14 10:06:55', 1, '-', '127.0.0.1', '-', 3),
(26, '3329-LT-14082017-0055', '2017-08-14 10:15:16', 1, '-', '127.0.0.1', '-', 1),
(27, '3329-LT-14082017-0057', '2017-08-14 10:17:16', 1, '-', '127.0.0.1', '-', 3),
(28, '3329-LT-14082017-0059', '2017-08-14 10:20:12', 1, '-', '127.0.0.1', '-', 3),
(29, '3329-LT-14082017-0061', '2017-08-14 10:22:53', 1, '-', '127.0.0.1', '-', 3),
(30, '3329-LT-14082017-0066', '2017-08-14 10:29:33', 1, '-', '127.0.0.1', '-', 3),
(31, '3329-LT-14082017-0068', '2017-08-14 10:32:07', 1, '-', '127.0.0.1', '-', 3),
(32, '3329-LT-14082017-0069', '2017-08-14 10:33:34', 1, '-', '127.0.0.1', '-', 3),
(33, '3329-LT-14082017-0071', '2017-08-14 10:38:56', 1, '-', '127.0.0.1', '-', 3),
(34, '3329-LT-14082017-0074', '2017-08-14 10:46:00', 1, '-', '127.0.0.1', '-', 3),
(35, '3329-LT-14082017-0077', '2017-08-14 10:48:12', 1, '-', '127.0.0.1', '-', 3),
(36, '3329-LT-14082017-0079', '2017-08-14 10:50:34', 1, '-', '127.0.0.1', '-', 3),
(37, '3329-LT-14082017-0080', '2017-08-14 10:53:41', 1, '-', '127.0.0.1', '-', 3),
(38, '3329-LT-14082017-0083', '2017-08-14 10:59:05', 1, '-', '127.0.0.1', '-', 3),
(39, '3329-LT-14082017-0085', '2017-08-14 10:59:13', 1, '-', '127.0.0.1', '-', 3),
(40, '3329-LT-14082017-0087', '2017-08-14 10:59:22', 1, '-', '127.0.0.1', '-', 3),
(41, '3329-LT-14082017-0090', '2017-08-14 11:01:15', 1, '-', '127.0.0.1', '-', 3),
(42, '3329-LT-14082017-0094', '2017-08-14 11:07:43', 1, '-', '127.0.0.1', '-', 3),
(43, '3329-LT-14082017-0097', '2017-08-14 11:07:53', 1, '-', '127.0.0.1', '-', 3),
(44, '3329-LT-14082017-0099', '2017-08-14 11:10:33', 1, '-', '127.0.0.1', '-', 3),
(45, '3329-LU-15082017-0061', '2017-08-15 14:06:21', 1, '-', '::1', 'dwikaniya farzana (9783)', 5),
(46, '3329-LU-15082017-0064', '2017-08-15 14:08:57', 1, '-', '::1', 'nayla fatimatuzzahra (9782)', 5),
(47, '3329-LU-15082017-0067', '2017-08-15 14:13:41', 1, '-', '::1', 'maulana yusuf (9781)', 5),
(48, '3329-LU-15082017-0068', '2017-08-15 14:19:26', 1, '-', '::1', 'RAFFA ADITYA PRATAMA (9780)', 5),
(49, '3329-LU-15082017-0071', '2017-08-15 14:23:55', 1, '-', '::1', 'DZIKRA BAIHAQI ALFATHIR (9779)', 5),
(50, '3329-LT-16082017-0192', '2017-08-16 19:41:26', 1, '-', '::1', 'syafa adella rizki', 4),
(51, '3329-LT-21082017-0129', '2017-08-21 12:09:20', 1, '-', '::1', 'sari ratna', 3),
(52, '3329-LT-21082017-0137', '2017-08-21 12:17:00', 1, '-', '::1', 'INDAH NUR KHASANAH', 3),
(53, '3329-LT-21082017-0146', '2017-08-21 12:32:34', 1, '-', '::1', 'INDAH AMELIA PUTRI (149)', 3),
(54, '3329-LT-21082017-0147', '2017-08-21 12:34:08', 1, '-', '::1', 'AHMAD MAULIDIN (148)', 3),
(55, '3329-LT-21082017-0148', '2017-08-21 12:36:53', 1, '-', '::1', 'FAJAR RIYANI (148)', 3),
(56, '3329-LT-21082017-0149', '2017-08-21 12:38:46', 1, '-', '::1', 'DEWI SEPTIANI (146)', 3),
(57, '3329-LT-21082017-0150', '2017-08-21 12:40:28', 1, '-', '::1', 'SITI NURAENI 145', 3),
(58, '3329-LT-21082017-0151', '2017-08-21 12:42:46', 1, '-', '::1', 'sulaeman 144', 3),
(59, '3329-LT-21082017-0154', '2017-08-21 12:44:27', 1, '-', '::1', 'fitriyani 143', 3),
(60, '3329-LT-21082017-0156', '2017-08-21 12:46:02', 1, '-', '::1', '142  maskayah', 3),
(61, '3329-LT-21082017-0157', '2017-08-21 12:48:07', 1, '-', '::1', 'wira triatmaja  141', 3),
(62, '3329-LT-21082017-0159', '2017-08-21 12:49:48', 1, '-', '::1', 'soleha purwanti 140', 3),
(63, '3329-LT-21082017-0160', '2017-08-21 12:51:17', 1, '-', '::1', 'm azmi ibnu fatahillah', 4),
(64, '3329-LT-21082017-0161', '2017-08-21 12:53:03', 1, '-', '::1', 'diyan apriliyani', 3),
(65, '3329-LT-21082017-0169', '2017-08-21 13:10:50', 1, '-', '::1', 'titan kurnia', 3),
(66, '3329-LT-21082017-0172', '2017-08-21 13:13:13', 1, '-', '::1', 'sutrisno', 3),
(67, '3329-LT-21082017-0174', '2017-08-21 13:16:12', 1, '-', '::1', 'syaiful anwar', 3),
(68, '3329-LT-21082017-0177', '2017-08-21 13:17:53', 1, '-', '::1', 'khofiatun nisa', 3),
(69, '3329-LT-21082017-0180', '2017-08-21 13:19:38', 1, '-', '::1', 'SYA DIAHTUN', 3),
(70, '3329-LT-21082017-0182', '2017-08-21 13:21:12', 1, '-', '::1', 'riski mafis faras', 3),
(71, '3329-LT-21082017-0184', '2017-08-21 13:26:24', 1, '-', '::1', 'dwi aura aswa', 3),
(72, '3329-LT-21082017-0185', '2017-08-21 13:26:44', 1, '-', '::1', 'ahmad zaeni nadzib', 3),
(73, '3329-LT-21082017-0186', '2017-08-21 13:28:18', 1, '-', '::1', 'titin nurani', 3),
(74, '3329-LT-21082017-0190', '2017-08-21 13:32:36', 1, '-', '::1', 'dedi siswandi', 3),
(75, '3329-LT-22082017-0007', '2017-08-22 08:48:40', 1, '-', '::1', 'runi fitriani', 3),
(76, '3329-LT-22082017-0008', '2017-08-22 08:51:55', 1, '-', '::1', 'NAZRIL FAJRI', 3),
(77, '3329-LT-22082017-0009', '2017-08-22 08:52:21', 1, '-', '::1', 'M. MIFTAH', 3),
(78, '3329-LT-22082017-0014', '2017-08-22 09:02:08', 1, '-', '::1', 'ADE SETIAWATI', 3),
(79, '3329-LT-22082017-0015', '2017-08-22 09:04:07', 1, '-', '::1', 'CIKA BELLA OKTAVIANI', 3),
(80, '3329-LT-22082017-0023', '2017-08-22 09:18:37', 1, '-', '::1', 'm. taufan dyra', 3),
(81, '3329-LT-22082017-0026', '2017-08-22 09:20:37', 1, '-', '::1', 'sisila anggun', 3),
(82, '3329-LT-22082017-0027', '2017-08-22 09:22:17', 1, '-', '::1', 'SUCI ELY NURAENI', 3),
(83, '3329-LT-22082017-0029', '2017-08-22 09:23:49', 1, '-', '::1', 'LABIBAH ZAKIYA', 3),
(84, '3329-LT-22082017-0041', '2017-08-22 09:35:48', 1, '-', '::1', 'muhammad ali ridho', 3),
(85, '3329-LT-22082017-0044', '2017-08-22 09:37:23', 1, '-', '::1', 'RIJAL MIFTAKHU RIZKI', 3),
(86, '3329-LT-22082017-0047', '2017-08-22 09:39:50', 1, '-', '::1', 'RIDHO', 3),
(87, '3329-LT-22082017-0051', '2017-08-22 09:41:14', 1, '-', '::1', 'TRI NUR REVALINA PUTRI', 3),
(88, '3329-LT-22082017-0054', '2017-08-22 09:43:56', 1, '-', '::1', 'NUR EKA IWANSAH', 3),
(89, '3329-LT-22082017-0057', '2017-08-22 09:46:22', 1, '-', '::1', 'RENI DWI SAPUTRI', 3),
(90, '3329-LT-22082017-0063', '2017-08-22 09:50:12', 1, '-', '::1', 'ABDUL ROJAK', 3),
(91, '3329-LT-22082017-0066', '2017-08-22 09:52:36', 1, '-', '::1', 'SUCI NUR RAHMA', 3),
(92, '3329-LT-22082017-0072', '2017-08-22 09:56:27', 1, '-', '::1', 'ILHAM JAKA', 3),
(93, '3329-LT-22082017-0075', '2017-08-22 09:57:54', 1, '-', '::1', 'MEI SELVIANI', 3),
(94, '3329-LT-22082017-0081', '2017-08-22 10:03:35', 1, '-', '::1', 'MUHAMMAD FARIZ', 3),
(95, '3329-LT-22082017-0089', '2017-08-22 10:19:34', 1, '-', '::1', 'YOLANDA LATU PUTIH', 3),
(96, '3329-LT-22082017-0091', '2017-08-22 10:22:45', 1, '-', '::1', 'arip faturohman', 3),
(97, '3329-LT-22082017-0093', '2017-08-22 10:25:42', 1, '-', '::1', 'rehan ardiansyah', 3),
(98, '3329-LT-22082017-0096', '2017-08-22 10:28:00', 1, '-', '::1', 'arya saputra', 3),
(99, '3329-LT-22082017-0098', '2017-08-22 10:31:06', 1, '-', '::1', 'muhammad haikal', 3),
(100, '3329-LT-22082017-104', '2017-08-22 10:44:19', 1, '-', '::1', 'moh. fatan fatin', 3),
(101, '3329-LT-22082017-0111', '2017-08-22 10:45:10', 1, '-', '::1', 'shafea ashillla', 3),
(102, '3329-LT-22082017-0114', '2017-08-22 10:48:34', 1, '-', '::1', 'lisa maryanah', 3),
(103, '3329-LT-22082017-0118', '2017-08-22 10:52:13', 1, '-', '::1', 'nurjanah', 3),
(104, '3329-LT-22082017-0155', '2017-08-22 11:15:25', 1, '-', '::1', 'SUPRIYATIN', 3),
(105, '3329-LT-22082017-0165', '2017-08-22 11:28:55', 1, '-', '::1', 'SHERINE OCTAVIA', 3),
(106, '3329-LT-22082017-0173', '2017-08-22 11:47:48', 1, '-', '::1', 'fauzan adzima', 3),
(107, '3329-LT-22082017-0216', '2017-08-22 12:57:29', 1, '-', '::1', 'AYU NURAENI', 3),
(108, '3329-LT-22082017-0218', '2017-08-22 12:58:57', 1, '-', '::1', 'tatang arifin', 3),
(109, '3329-LT-22082017-219', '2017-08-22 13:00:20', 1, '-', '::1', 'indra wijaya', 3),
(110, '3329-LT-22082017-0220', '2017-08-22 13:01:44', 1, '-', '::1', 'nur laila', 3),
(111, '3329-LT-22082017-225', '2017-08-22 13:04:26', 1, '-', '::1', 'ferdi', 3),
(112, '3329-LT-22082017-0227', '2017-08-22 13:06:47', 1, '-', '::1', 'princessa lintang', 3),
(113, '3329-LT-22082017-0230', '2017-08-22 13:08:23', 1, '-', '::1', 'ADI KHARIRI', 3),
(114, '3329-LT-22082017-0233', '2017-08-22 13:09:42', 1, '-', '::1', 'GILANG ALFARIZI', 3),
(115, '3329-LT-22082017-0237', '2017-08-22 13:11:58', 1, '-', '::1', 'NURHALIZA', 3),
(116, '3329-LT-22082017-0239', '2017-08-22 13:14:12', 1, '-', '::1', 'DAYIN RAHYA', 3),
(117, '3329-LT-22082017-0245', '2017-08-22 13:16:47', 1, '-', '::1', 'NOPANI', 3),
(118, '3329-LT-22082017-0249', '2017-08-22 13:19:01', 1, '-', '::1', 'RAHMAT', 3),
(119, '3329-LT-22082017-0357', '2017-08-22 15:40:26', 1, '-', '::1', 'nova', 3),
(120, '3329-LT-22082017-0358', '2017-08-22 15:42:14', 1, '-', '::1', 'syifa amalia p', 3),
(121, '3329-LT-22082017-0360', '2017-08-22 15:43:54', 1, '-', '::1', 'fatkhuroji', 3),
(122, '3329-LT-22082017-0363', '2017-08-22 15:56:16', 1, '-', '::1', 'icay ibrahim', 3),
(123, '3329-LT-22082017-0364', '2017-08-22 15:58:42', 1, '-', '::1', 'syifatul akbar', 3),
(124, '3329-LT-23082017-0012', '2017-08-23 08:06:06', 1, '-', '::1', 'tri amelia', 3),
(125, '3329-LT-23082017-0014', '2017-08-23 08:08:06', 1, '-', '::1', 'riki septiawan', 3),
(126, '3329-LT-23082017-0015', '2017-08-23 08:09:30', 1, '-', '::1', 'REVI FERDIASYAH', 3),
(127, '3329-LT-23082017-0016', '2017-08-23 08:11:15', 1, '-', '::1', 'gilang febrinurizki', 3),
(128, '3329-LT-23082017-0017', '2017-08-23 08:15:05', 1, '-', '::1', 'dinda nur hikmah', 3),
(129, '3329-LT-23082017-0018', '2017-08-23 08:16:39', 1, '-', '::1', 'cica julianan', 3),
(130, '3329-LT-23082017-0019', '2017-08-23 08:18:49', 1, '-', '::1', 'diana safitri', 3),
(131, '3329-LT-23082017-0020', '2017-08-23 08:20:48', 1, '-', '::1', 'tanisha hufayrah azka', 3),
(132, '3329-LT-23082017-0021', '2017-08-23 08:22:38', 1, '-', '::1', 'pitri lusianan', 3),
(133, '3329-LT-23082017-0023', '2017-08-23 08:24:14', 1, '-', '::1', 'azmi tri anjani', 3),
(134, '3329-LT-23082017-0025', '2017-08-23 08:27:24', 1, '-', '::1', 'nisa fauziya', 3),
(135, '3329-LT-23082017-0030', '2017-08-23 08:36:46', 1, '-', '::1', 'maya istiana', 3),
(136, '3329-LT-23082017-0033', '2017-08-23 08:39:00', 1, '-', '::1', 'tia nurhayati', 3),
(137, '3329-LT-23082017-0053', '2017-08-23 08:54:55', 1, '-', '::1', 'hanif al farizi', 3),
(138, '3329-LT-23082017-0057', '2017-08-23 08:56:20', 1, '-', '::1', 'ERA WITANTI', 3),
(139, '3329-LT-23082017-0059', '2017-08-23 08:57:46', 1, '-', '::1', 'ADRIAN VIRENDRA', 3),
(140, '3329-LT-23082017-0072', '2017-08-23 09:10:20', 1, '-', '::1', 'sahrul ramadani', 3),
(141, '3329-LT-23082017-0076', '2017-08-23 09:13:17', 1, '-', '::1', 'cinta fitri w', 3),
(142, '3329-LT-23082017-0076', '2017-08-23 09:14:46', 1, '-', '::1', 'wendi prasetyo', 3),
(143, '3329-LT-23082017-0084', '2017-08-23 09:19:12', 1, '-', '::1', 'SULIS WIDIASTUTI', 3),
(144, '3329-LT-23082017-0086', '2017-08-23 09:20:50', 1, '-', '::1', 'AISYAH', 3),
(145, '3329-LT-23082017-0088', '2017-08-23 09:22:05', 1, '-', '::1', 'EL SEPHIA', 3),
(146, '3329-LT-23082017-0092', '2017-08-23 09:24:46', 1, '-', '::1', 'SALFA MEYMUNA', 3),
(147, '3329-LT-23082017-0104', '2017-08-23 09:43:00', 1, '-', '::1', 'tedi irwanto', 3),
(148, '3329-LT-23082017-0107', '2017-08-23 09:45:08', 1, '-', '::1', 'mohammad ibrahimovix', 3),
(149, '3329-LT-30082017-0181', '2017-08-30 13:02:54', 1, '-', '::1', 'fitriya amelia', 3),
(150, '3329-LT-30082017-0184', '2017-08-30 13:04:45', 1, '-', '::1', 'ferdi', 3),
(151, '3329-LT-30082017-0186', '2017-08-30 13:06:54', 1, '-', '::1', 'taufik ridho solekhudin', 3),
(152, '3329-LT-30082017-0188', '2017-08-30 13:08:29', 1, '-', '::1', 'nia ramadhani', 3),
(153, '3329-LT-30082017-0189', '2017-08-30 13:09:45', 1, '-', '::1', 'akhmad akbar', 3),
(154, '3329-LT-30082017-0191', '2017-08-30 13:13:32', 1, '-', '::1', 'vivi ma''rifatul qulub', 3),
(155, '3329-LT-30082017-0194', '2017-08-30 13:16:54', 1, '-', '::1', 'PUTRI NOVITASARI', 3),
(156, '3329-LT-30082017-0196', '2017-08-30 13:19:10', 1, '-', '::1', 'saeful anwar', 3),
(157, '3329-LT-30082017-0199', '2017-08-30 13:24:05', 1, '-', '::1', 'ITA PURNAMASARI', 3),
(158, '3329-LT-30082017-0200', '2017-08-30 13:25:37', 1, '-', '::1', 'RAFI RAMADHANI', 3),
(159, '3329-LT-30082017-0201', '2017-08-30 13:28:00', 1, '-', '::1', 'AKHMAD FAIZAL', 3),
(160, '3329-LT-30082017-0203', '2017-08-30 13:30:45', 1, '-', '::1', 'SRI DEWI', 3),
(161, '3329-LT-30082017-0206', '2017-08-30 13:35:52', 1, '-', '::1', 'SOLIKHUL AMIN', 3),
(162, '3329-LT-30082017-0207', '2017-08-30 13:37:35', 1, '-', '::1', 'ilham muzamil', 3),
(163, '3329-LT-31082017-0278', '2017-08-31 14:05:26', 1, '-', '::1', 'faizal amruloh', 3),
(164, '3329-LT-31082017-0279', '2017-08-31 14:07:28', 1, '-', '::1', 'sarif hidayat', 3),
(165, '3329-LT-31082017-0281', '2017-08-31 14:16:24', 1, '-', '::1', 'rudi kurniawan', 3),
(166, '3329-LT-31082017-0283', '2017-08-31 14:16:51', 1, '-', '::1', 'ratinah', 3),
(167, '3329-LT-31082017-0285', '2017-08-31 14:17:14', 1, '-', '::1', 'candra hartoyo', 3),
(168, '3329-LT-31082017-0289', '2017-08-31 14:17:36', 1, '-', '::1', 'edwin irawan', 3),
(169, '3329-LT-31082017-0294', '2017-08-31 14:37:31', 1, '-', '::1', 'DISKA AMELIA PUTRI', 3),
(170, '3329-LT-31082017-0308', '2017-08-31 14:38:15', 1, '-', '::1', 'AINI SAFITRI RAHADIYANTI', 3),
(171, '3329-LT-31082017-0314', '2017-08-31 14:43:20', 1, '-', '::1', 'SIDIK AJI SAPUTRA', 3),
(173, '3329-LT-31082017-0316', '2017-08-31 14:45:38', 1, '-', '::1', 'ERNAWATI', 3),
(174, '3329-LT-31082017-0317', '2017-08-31 14:46:55', 1, '-', '::1', 'RIZKA OKTAVIANI', 3),
(175, '3329-LT-31082017-0318', '2017-08-31 14:49:42', 1, '-', '::1', 'KAHARUDIN BAHTIAR', 3),
(176, '3329-LT-31082017-0322', '2017-08-31 14:57:08', 1, '-', '::1', 'TANIA  ELVIANI', 3),
(177, '3329-LT-31082017-0324', '2017-08-31 14:58:27', 1, '-', '::1', 'TOFIK ISMAIL', 3),
(178, '3329-LT-31082017-0325', '2017-08-31 15:02:20', 1, '-', '::1', 'RIRIN OKTAFIANI', 3),
(179, '3329-LT-04092017-0004', '2017-09-04 13:16:42', 1, '-', '::1', 'muhamad ilyas', 3),
(180, '3329-LT-04092017-0007', '2017-09-04 13:18:21', 1, '-', '::1', 'tasya nur elawati', 3),
(181, '3329-LT-04092017-0009', '2017-09-04 13:18:32', 1, '-', '::1', 'eva rosidah', 3),
(182, '3329-LT-04092017-0012', '2017-09-04 13:18:51', 1, '-', '::1', 'talia deswita', 3),
(183, '3329-LT-04092017-0013', '2017-09-04 13:19:07', 1, '-', '::1', 'al faris', 3),
(184, '3329-LT-04092017-0015', '2017-09-04 13:19:18', 1, '-', '::1', 'lesti', 3),
(185, '3329-LT-04092017-0017', '2017-09-04 13:19:29', 1, '-', '::1', 'wahyudin', 3),
(186, '3329-LT-04092017-0020', '2017-09-04 13:19:43', 1, '-', '::1', 'defi atikah', 3),
(187, '3329-LT-04092017-0023', '2017-09-04 13:19:59', 1, '-', '::1', 'naila salma aviah', 3),
(188, '3329-LT-04092017-0028', '2017-09-04 13:20:15', 1, '-', '::1', 'wilda rahmatun nisa', 3),
(189, '3329-LT-04092017-0031', '2017-09-04 13:20:24', 1, '-', '::1', 'warsito', 3),
(190, '3329-LT-04092017-0032', '2017-09-04 13:20:44', 1, '-', '::1', 'siti fatimah', 3),
(191, '3329-LT-04092017-0035', '2017-09-04 13:20:55', 1, '-', '::1', 'wasriyanti', 3),
(192, '3329-LT-04092017-0036', '2017-09-04 13:21:08', 1, '-', '::1', 'candra wibowo', 3),
(194, '3329-LT-04092017-0039', '2017-09-04 13:22:14', 1, '-', '::1', 'riri  dwi aryanti', 3),
(195, '3329-LT-04092017-0041', '2017-09-04 13:22:33', 1, '-', '::1', 'nia ramadhani', 3),
(196, '3329-LT-04092017-0044', '2017-09-04 13:22:43', 1, '-', '::1', 'cahya waluyo', 3),
(197, '3329-LT-04092017-0045', '2017-09-04 13:22:53', 1, '-', '::1', 'sulaeman', 3),
(198, '3329-LT-04092017-0048', '2017-09-04 13:23:04', 1, '-', '::1', 'dinda septiyani', 3),
(199, '3329-LT-04092017-0050', '2017-09-04 13:23:15', 1, '-', '::1', 'tia ayu lestari', 3),
(200, '3329-LT-04092017-0055', '2017-09-04 13:23:35', 1, '-', '::1', 'cahya sifaul', 3),
(201, '3329-LT-04092017-0057', '2017-09-04 13:23:51', 1, '-', '::1', 'andri subekhi', 3),
(202, '3329-LT-04092017-0060', '2017-09-04 13:24:07', 1, '-', '::1', 'DIKIN', 3),
(203, '3329-LT-04092017-0062', '2017-09-04 13:24:22', 1, '-', '::1', 'RIFKI FEBRIANTO', 3),
(204, '3329-LT-04092017-0064', '2017-09-04 13:25:05', 1, '-', '::1', 'ANISA SILFIYANI', 3),
(205, '3329-LT-04092017-0068', '2017-09-04 13:25:24', 1, '-', '::1', 'IKBAL MAULANA', 3),
(206, '3329-LT-04092017-0071', '2017-09-04 13:25:34', 1, '-', '::1', 'ARYA SETIAWAN', 3),
(207, '3329-LT-04092017-0075', '2017-09-04 13:25:50', 1, '-', '::1', 'HAMDAN MAULIDIN', 3),
(208, '3329-LT-04092017-0078', '2017-09-04 13:26:02', 1, '-', '::1', 'ENDAH NUR AENI', 3),
(209, '3329-LT-04092017-0082', '2017-09-04 13:26:16', 1, '-', '::1', 'ADIT GILANG PURNAMA', 3),
(210, '3329-LT-04092017-0107', '2017-09-04 13:26:33', 1, '-', '::1', 'RIANI MUTIA AZZAHRA', 3),
(211, '3329-LT-04092017-0110', '2017-09-04 13:26:44', 1, '-', '::1', 'TITA HERLITA', 3),
(212, '3329-LT-04092017-0113', '2017-09-04 13:26:55', 1, '-', '::1', 'TRIO MAULANA', 3),
(213, '3329-LT-04092017-0122', '2017-09-04 13:27:04', 1, '-', '::1', 'SULTAN', 3),
(214, '3329-LT-04092017-0137', '2017-09-04 13:27:16', 1, '-', '::1', 'TIARA DEWI', 3),
(215, '3329-LT-04092017-0139', '2017-09-04 13:27:30', 1, '-', '::1', 'WAWAN FAUZI', 3),
(216, '3329-LT-04092017-0140', '2017-09-04 13:27:44', 1, '-', '::1', 'SAHRUL MAULANA', 3),
(217, '3329-LT-04092017-0141', '2017-09-04 13:27:58', 1, '-', '::1', 'ALBAR ARAFIQ', 3),
(218, '3329-LT-04092017-0154', '2017-09-04 13:28:16', 1, '-', '::1', 'NANA SAPUTRA', 3),
(219, '3329-LT-04092017-0156', '2017-09-04 13:28:35', 1, '-', '::1', 'FIRDA INAYAH', 3),
(220, '3329-LT-04092017-0160', '2017-09-04 13:29:01', 1, '-', '::1', 'RIFFA ATUL MAHMUDA', 3),
(221, '3329-LT-04092017-0163', '2017-09-04 13:29:28', 1, '-', '::1', 'indah fujiati salamah', 3),
(222, '3329-LT-04092017-0165', '2017-09-04 13:29:44', 1, '-', '::1', 'cika melina putri', 3),
(223, '3329-LT-04092017-0168', '2017-09-04 13:29:59', 1, '-', '::1', 'fahri nur hamzah', 3),
(224, '3329-LT-04092017-0196', '2017-09-04 13:30:15', 1, '-', '::1', 'anas maruf', 3),
(225, '3329-LT-04092017-0198', '2017-09-04 13:30:36', 1, '-', '::1', 'fajar itmamudin', 3),
(226, '3329-LT-04092017-0201', '2017-09-04 13:30:55', 1, '-', '::1', 'widya astuti', 3),
(227, '3329-LT-04092017-0204', '2017-09-04 13:31:16', 1, '-', '::1', 'vicky nabil adrian', 3),
(228, '3329-LT-04092017-0207', '2017-09-04 13:31:33', 1, '-', '::1', 'andi setiawan', 3),
(229, '3329-LT-04092017-0211', '2017-09-04 13:31:46', 1, '-', '::1', 'HERLANDA SAPUTRA', 3),
(230, '3329-LT-04092017-0215', '2017-09-04 13:32:02', 1, '-', '::1', 'VISKA OKTAVIANI', 3),
(231, '3329-LT-04092017-0216', '2017-09-04 13:32:16', 1, '-', '::1', 'NINA SAPUTRI', 3),
(232, '3329-LT-04092017-0220', '2017-09-04 13:32:31', 1, '-', '::1', 'ISMATUL MAULA', 3),
(233, '3329-LT-04092017-0223', '2017-09-04 13:32:43', 1, '-', '::1', 'MUHAMMAD RENO', 3),
(234, '3329-LT-04092017-0226', '2017-09-04 13:33:04', 1, '-', '::1', 'ALFINO HIDAYAH AL FAUZI', 3),
(235, '3329-LT-04092017-0229', '2017-09-04 13:43:19', 1, '-', '::1', 'DIAH YULIANI', 3),
(236, '3329-LT-04092017-0246', '2017-09-04 13:43:31', 1, '-', '::1', 'DIAN ANTI', 3),
(237, '3329-LT-04092017-0253', '2017-09-04 13:43:41', 1, '-', '::1', 'RENI', 3),
(238, '3329-LT-04092017-0273', '2017-09-04 13:44:00', 1, '-', '::1', 'REVALYNA AULIA HARUNI', 3),
(239, '3329-LT-04092017-0274', '2017-09-04 13:44:16', 1, '-', '::1', 'CHIKO VIRJIANTO', 3),
(240, '3329-LT-04092017-0277', '2017-09-04 13:44:35', 1, '-', '::1', 'ALI BAKHTIAR', 3),
(241, '3329-LT-04092017-0283', '2017-09-04 13:44:52', 1, '-', '::1', 'ADI RIZKY HAMID RAMADHANI', 3),
(242, '3329-LT-04092017-0286', '2017-09-04 13:45:08', 1, '-', '::1', 'tAUFIK KUROHMAN', 3),
(243, '3329-LT-04092017-0288', '2017-09-04 13:45:18', 1, '-', '::1', 'SUTRISNO', 3),
(244, '3329-LT-04092017-0290', '2017-09-04 13:45:33', 1, '-', '::1', 'SAFALAS DIFATUROHMAN', 3);

-- --------------------------------------------------------

--
-- Table structure for table `log_activity`
--

CREATE TABLE IF NOT EXISTS `log_activity` (
`log_id` int(11) NOT NULL,
  `log_date` datetime NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `log_module` varchar(30) NOT NULL,
  `ip_address` varchar(25) NOT NULL,
  `log_activity` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=299 ;

--
-- Dumping data for table `log_activity`
--

INSERT INTO `log_activity` (`log_id`, `log_date`, `user_id`, `log_module`, `ip_address`, `log_activity`) VALUES
(1, '2017-02-22 10:33:01', 'administrator', 'tambah', '127.0.0.1', 'Menu : Pelayanan'),
(2, '2017-02-22 10:35:39', 'administrator', 'tambah', '127.0.0.1', 'Menu : KTP Elektronik'),
(3, '2017-02-22 11:14:55', 'administrator', 'Edit', '127.0.0.1', 'Menu : KTP Elektronik'),
(4, '2017-02-22 11:15:07', 'administrator', 'Edit', '127.0.0.1', 'Menu : KTP Elektronik'),
(5, '2017-02-22 11:23:43', 'administrator', 'Edit', '127.0.0.1', 'Menu : '),
(6, '2017-02-22 11:24:47', 'administrator', 'Edit', '127.0.0.1', 'Menu : '),
(7, '2017-02-22 11:24:51', 'administrator', 'Edit', '127.0.0.1', 'Menu : '),
(8, '2017-02-22 11:25:05', 'administrator', 'tambah', '127.0.0.1', 'Menu : Profil'),
(9, '2017-02-22 11:39:37', 'administrator', 'Edit', '127.0.0.1', 'Menu Admin : Artikel'),
(10, '2017-02-22 11:42:14', 'administrator', 'Edit', '127.0.0.1', 'Menu Admin : Artikel'),
(11, '2017-02-22 11:42:48', 'administrator', 'tambah', '127.0.0.1', 'Menu Admin : kategori'),
(12, '2017-02-22 11:44:31', 'administrator', 'Edit', '127.0.0.1', 'Menu Admin : '),
(13, '2017-02-22 11:44:58', 'administrator', 'tambah', '127.0.0.1', 'Menu Admin : kategori'),
(14, '2017-02-22 11:45:32', 'administrator', 'tambah', '127.0.0.1', 'Menu Admin : User'),
(15, '2017-02-22 11:55:53', 'administrator', 'tambah', '127.0.0.1', 'Menu : Sambutan Kepala Dinas'),
(16, '2017-02-22 11:56:07', 'administrator', 'tambah', '127.0.0.1', 'Menu : Visi dan Misi'),
(17, '2017-02-22 11:57:05', 'administrator', 'tambah', '127.0.0.1', 'Menu : Struktur Organisasi'),
(18, '2017-02-24 09:49:57', 'administrator', 'Tambah', '127.0.0.1', 'Kategori : Berita'),
(19, '2017-02-24 09:50:59', 'administrator', 'Edit', '127.0.0.1', 'Kategori : Berita'),
(20, '2017-02-24 09:51:27', 'administrator', 'Edit', '127.0.0.1', 'Kategori : Artikel'),
(21, '2017-02-24 09:51:33', 'administrator', 'Tambah', '127.0.0.1', 'Kategori : Pengumuman'),
(22, '2017-02-24 09:57:00', 'administrator', 'Hapus', '127.0.0.1', 'Kategori : Pengumuman'),
(23, '2017-02-24 09:57:17', 'administrator', 'Tambah', '127.0.0.1', 'Kategori : Penguman'),
(24, '2017-02-24 09:57:50', 'administrator', 'Edit', '127.0.0.1', 'Menu Admin : kategori'),
(25, '2017-02-24 09:58:06', 'administrator', 'Edit', '127.0.0.1', 'Menu Admin : Kategori'),
(26, '2017-02-26 15:08:21', 'administrator', 'Edit', '127.0.0.1', 'Kategori : Berita'),
(27, '2017-02-26 15:21:59', 'administrator', 'tambah', '127.0.0.1', 'Menu Admin : Page Statis'),
(28, '2017-02-26 15:22:24', 'administrator', 'tambah', '127.0.0.1', 'Menu Admin : Input Pages'),
(29, '2017-02-26 15:22:42', 'administrator', 'Edit', '127.0.0.1', 'Menu Admin : Page Statis'),
(30, '2017-02-26 15:23:11', 'administrator', 'tambah', '127.0.0.1', 'Menu Admin : Pages List'),
(31, '2017-02-26 15:24:01', 'administrator', 'tambah', '127.0.0.1', 'Menu Admin : Download'),
(32, '2017-02-26 15:25:03', 'administrator', 'tambah', '127.0.0.1', 'Menu Admin : Gallery'),
(33, '2017-02-26 19:57:38', 'administrator', 'Tambah', '127.0.0.1', 'Artikel : KTP ELEKTRONIK BERLAKU SEUMUR HIDUP'),
(34, '2017-02-26 20:02:28', 'administrator', 'Tambah', '127.0.0.1', 'Artikel : KTP ELEKTRONIK BERLAKU SEUMUR HIDUP'),
(35, '2017-02-26 20:23:33', 'administrator', 'Tambah', '127.0.0.1', 'Artikel : asada'),
(36, '2017-02-26 21:13:51', 'administrator', 'Tambah', '127.0.0.1', 'Artikel : KTP ELEKTRONIK BERLAKU SEUMUR HIDUP'),
(37, '2017-02-26 21:43:12', 'administrator', 'Edit', '127.0.0.1', 'Menu Admin : Direktori File'),
(38, '2017-02-27 08:35:09', 'administrator', 'Edit', '127.0.0.1', 'Menu Admin : Artikel List'),
(39, '2017-02-27 12:21:31', 'administrator', 'Tambah', '127.0.0.1', 'Artikel : TERTIB ADMINISTRASI KEPENDUDUDKAN MENUJU GOOD GOVERNANCE'),
(40, '2017-02-27 12:40:56', 'administrator', 'Tambah', '127.0.0.1', 'Kategori : Agenda'),
(41, '2017-02-27 13:33:53', 'administrator', 'Tambah', '127.0.0.1', 'Artikel : asas'),
(42, '2017-02-27 13:34:01', 'administrator', 'Hapus', '127.0.0.1', 'Artikel : asas'),
(43, '2017-02-27 13:34:54', 'administrator', 'Tambah', '127.0.0.1', 'Artikel : kakskoaskaosk'),
(44, '2017-02-27 13:35:03', 'administrator', 'Hapus', '127.0.0.1', 'Artikel : kakskoaskaosk'),
(45, '2017-02-27 14:54:02', 'administrator', 'Edit', '127.0.0.1', 'Artikel : TERTIB ADMINISTRASI KEPENDUDUDKAN MENUJU GOOD GOVERNANCE'),
(46, '2017-02-27 14:54:29', 'administrator', 'Edit', '127.0.0.1', 'Artikel : TERTIB ADMINISTRASI KEPENDUDUDKAN MENUJU GOOD GOVERNANCE'),
(47, '2017-02-27 14:55:03', 'administrator', 'Edit', '127.0.0.1', 'Artikel : TERTIB ADMINISTRASI KEPENDUDUDKAN MENUJU GOOD GOVERNANCE'),
(48, '2017-02-27 15:09:18', 'administrator', 'Edit', '127.0.0.1', 'Artikel : TERTIB ADMINISTRASI KEPENDUDUDKAN MENUJU GOOD GOVERNANCE'),
(49, '2017-02-28 08:08:13', 'administrator', 'Edit', '127.0.0.1', 'Artikel : KTP ELEKTRONIK BERLAKU SEUMUR HIDUP'),
(50, '2017-02-28 09:54:30', 'administrator', 'Edit', '127.0.0.1', 'Menu Admin : Tambah Pages'),
(51, '2017-02-28 12:49:17', 'administrator', 'Tambah', '127.0.0.1', 'Pages : Kartu Tanda Penduduk (KTP)'),
(52, '2017-02-28 12:53:22', 'administrator', 'Edit', '127.0.0.1', 'Pages : Kartu Tanda Penduduk (KTP)'),
(53, '2017-02-28 12:53:47', 'administrator', 'Edit', '127.0.0.1', 'Pages : Kartu Tanda Penduduk (KTP)'),
(54, '2017-02-28 12:59:41', 'administrator', 'Edit', '127.0.0.1', 'Pages : Kartu Tanda Penduduk (KTP)'),
(55, '2017-02-28 13:02:36', 'administrator', 'Edit', '127.0.0.1', 'Pages : Kartu Tanda Penduduk (KTP)'),
(56, '2017-02-28 13:02:59', 'administrator', 'Edit', '127.0.0.1', 'Pages : Kartu Tanda Penduduk (KTP)'),
(57, '2017-02-28 13:20:01', 'administrator', 'Edit', '127.0.0.1', 'Pages : Kartu Tanda Penduduk (KTP)'),
(58, '2017-02-28 13:22:18', 'administrator', 'Tambah', '127.0.0.1', 'Pages : asada'),
(59, '2017-02-28 13:22:30', 'administrator', 'Hapus', '127.0.0.1', 'Pages : asada'),
(60, '2017-02-28 13:45:59', 'administrator', 'tambah', '127.0.0.1', 'Menu Admin : Banner'),
(61, '2017-03-01 09:50:27', 'administrator', 'Tambah', '127.0.0.1', 'banner : '),
(62, '2017-03-01 09:55:40', 'administrator', 'Tambah', '127.0.0.1', 'banner : '),
(63, '2017-03-01 10:03:37', 'administrator', 'Edit', '127.0.0.1', 'banner : Dukcapil Kemendagri'),
(64, '2017-03-01 10:04:00', 'administrator', 'Edit', '127.0.0.1', 'banner : Dukcapil Kemendagri'),
(65, '2017-03-01 10:04:07', 'administrator', 'Hapus', '127.0.0.1', 'Pages : '),
(66, '2017-03-01 10:06:06', 'administrator', 'Hapus', '127.0.0.1', 'Banner : '),
(67, '2017-03-01 10:06:24', 'administrator', 'Hapus', '127.0.0.1', 'Banner : '),
(68, '2017-03-01 10:06:29', 'administrator', 'Hapus', '127.0.0.1', 'Banner : '),
(69, '2017-03-01 10:06:45', 'administrator', 'Hapus', '127.0.0.1', 'Banner : '),
(70, '2017-03-01 10:07:38', 'administrator', 'Edit', '127.0.0.1', 'banner : Dukcapil Kemendagri'),
(71, '2017-03-01 10:07:52', 'administrator', 'Edit', '127.0.0.1', 'banner : Dukcapil Kemendagri'),
(72, '2017-03-01 10:09:02', 'administrator', 'Tambah', '127.0.0.1', 'banner : '),
(73, '2017-03-01 10:09:06', 'administrator', 'Edit', '127.0.0.1', 'banner : Dukcapil Kemendagri'),
(74, '2017-03-01 10:09:21', 'administrator', 'Edit', '127.0.0.1', 'banner : Dukcapil Kemendagri'),
(75, '2017-03-01 10:11:14', 'administrator', 'Hapus', '127.0.0.1', 'Banner : '),
(76, '2017-03-01 10:16:04', 'administrator', 'Hapus', '127.0.0.1', 'Banner : '),
(77, '2017-03-01 10:16:17', 'administrator', 'Hapus', '127.0.0.1', 'Banner : '),
(78, '2017-03-01 10:16:52', 'administrator', 'Hapus', '127.0.0.1', 'Banner : '),
(79, '2017-03-01 10:17:21', 'administrator', 'Hapus', '127.0.0.1', 'Banner : '),
(80, '2017-03-01 10:17:42', 'administrator', 'Tambah', '127.0.0.1', 'banner : '),
(81, '2017-03-01 10:17:57', 'administrator', 'Edit', '127.0.0.1', 'banner : Dukcapil Kemendagri'),
(82, '2017-03-01 10:18:42', 'administrator', 'Edit', '127.0.0.1', 'banner : Dukcapil Kemendagri'),
(83, '2017-03-02 08:03:43', 'administrator', 'tambah', '127.0.0.1', 'user : aldi pratama'),
(84, '2017-03-02 08:14:35', 'administrator', 'tambah', '127.0.0.1', 'user : aldi'),
(85, '2017-03-02 08:14:49', 'administrator', 'hapus', '127.0.0.1', 'User : aldi'),
(86, '2017-03-02 08:14:54', 'administrator', 'hapus', '127.0.0.1', 'User : pandu'),
(87, '2017-03-02 08:53:44', 'administrator', 'Edit', '127.0.0.1', 'Menu Admin : Direktori File'),
(88, '2017-03-02 08:54:09', 'administrator', 'tambah', '127.0.0.1', 'File : '),
(89, '2017-03-02 08:55:11', 'administrator', 'Hapus', '127.0.0.1', 'File : SUKET_3329091611910001.pdf'),
(90, '2017-03-02 09:03:47', 'administrator', 'tambah', '127.0.0.1', 'File : '),
(91, '2017-03-02 09:03:50', 'administrator', 'Hapus', '127.0.0.1', 'File : print.xls'),
(92, '2017-03-02 09:04:04', 'administrator', 'tambah', '127.0.0.1', 'File : '),
(93, '2017-03-02 09:04:15', 'administrator', 'Hapus', '127.0.0.1', 'File : REKAPITULASI_DPT_PILKADASER_2015.xls'),
(94, '2017-03-02 09:04:33', 'administrator', 'tambah', '127.0.0.1', 'File : '),
(95, '2017-03-02 09:04:37', 'administrator', 'Hapus', '127.0.0.1', 'File : Data_input_doasis.xlsx'),
(96, '2017-03-02 09:32:48', 'administrator', 'tambah', '127.0.0.1', 'user : aldi'),
(97, '2017-03-02 09:33:34', 'administrator', 'Edit', '127.0.0.1', 'Profil'),
(98, '2017-03-02 09:33:37', 'administrator', 'Edit', '127.0.0.1', 'Profil'),
(99, '2017-03-02 09:33:41', 'administrator', 'Edit', '127.0.0.1', 'Profil'),
(100, '2017-03-02 11:21:40', 'administrator', 'Tambah', '127.0.0.1', 'Pages : Visi dan Misi'),
(101, '2017-03-05 18:15:08', 'administrator', 'Edit', '127.0.0.1', 'Menu Admin : Gallery'),
(102, '2017-03-05 20:40:26', 'administrator', 'tambah', '127.0.0.1', 'Gallery : Gallery 1'),
(103, '2017-03-05 20:44:56', 'administrator', 'hapus', '127.0.0.1', 'Gallery : Gallery 1'),
(104, '2017-03-05 20:45:15', 'administrator', 'tambah', '127.0.0.1', 'Gallery : Gallery 1'),
(105, '2017-03-06 00:12:48', 'administrator', 'tambah', '127.0.0.1', 'Photo : admin_icon'),
(106, '2017-03-06 00:19:55', 'administrator', 'Hapus', '127.0.0.1', 'Photo : admin_icon'),
(107, '2017-03-06 09:31:34', 'administrator', 'Edit', '127.0.0.1', 'Menu : Profil'),
(108, '2017-03-06 09:38:45', 'administrator', 'Edit', '127.0.0.1', 'Menu : Beranda'),
(109, '2017-03-06 09:40:36', 'administrator', 'tambah', '127.0.0.1', 'Menu : Produk Layanan'),
(110, '2017-03-06 09:47:15', 'administrator', 'tambah', '127.0.0.1', 'Menu : Kartu Keluarga'),
(111, '2017-03-06 09:47:23', 'administrator', 'Edit', '127.0.0.1', 'Menu : Kartu Keluarga (KK)'),
(112, '2017-03-06 09:47:56', 'administrator', 'tambah', '127.0.0.1', 'Menu : Kartu Tanda Penduduk (KTP)'),
(113, '2017-03-06 09:48:03', 'administrator', 'Edit', '127.0.0.1', 'Menu : Kartu Tanda Penduduk (KTP)'),
(114, '2017-03-06 09:48:12', 'administrator', 'Edit', '127.0.0.1', 'Menu : Kartu Tanda Penduduk (KTP)'),
(115, '2017-03-06 09:48:37', 'administrator', 'tambah', '127.0.0.1', 'Menu : Surat Pindah & Datang'),
(116, '2017-03-06 09:48:58', 'administrator', 'tambah', '127.0.0.1', 'Menu : Kutipan Akta Kelahiran'),
(117, '2017-03-06 09:49:13', 'administrator', 'tambah', '127.0.0.1', 'Menu : Kutipan Akta Perceraian'),
(118, '2017-03-06 09:49:30', 'administrator', 'tambah', '127.0.0.1', 'Menu : Kutipan Akta Perkawinan'),
(119, '2017-03-06 09:49:41', 'administrator', 'Edit', '127.0.0.1', 'Menu : Kutipan Akta Pernikahan'),
(120, '2017-03-06 09:49:50', 'administrator', 'Edit', '127.0.0.1', 'Menu : Kutipan Akta Perkawinan'),
(121, '2017-03-06 09:49:57', 'administrator', 'Edit', '127.0.0.1', 'Menu : Kutipan Akta Perceraian'),
(122, '2017-03-06 09:50:50', 'administrator', 'tambah', '127.0.0.1', 'Menu : Pencatatan Pengakuan Anak dan Pengesahan Anak'),
(123, '2017-03-06 09:51:11', 'administrator', 'tambah', '127.0.0.1', 'Menu : Pencatatan Perubahan Nama'),
(124, '2017-03-06 09:51:24', 'administrator', 'tambah', '127.0.0.1', 'Menu : Pencatatan Perubahan Kewarganegaraan'),
(125, '2017-03-06 09:53:05', 'administrator', 'tambah', '127.0.0.1', 'Menu : Agenda'),
(126, '2017-03-06 09:53:18', 'administrator', 'tambah', '127.0.0.1', 'Menu : Pengumuman'),
(127, '2017-03-06 09:53:53', 'administrator', 'tambah', '127.0.0.1', 'Menu : Pengumuman'),
(128, '2017-03-06 09:54:01', 'administrator', 'tambah', '127.0.0.1', 'Menu : Berita'),
(129, '2017-03-06 09:54:51', 'administrator', 'tambah', '127.0.0.1', 'Menu : Pelayanan Online'),
(130, '2017-03-06 09:55:06', 'administrator', 'Edit', '127.0.0.1', 'Menu : '),
(131, '2017-03-06 10:35:26', 'administrator', 'tambah', '127.0.0.1', 'Menu : Kontak Kami'),
(132, '2017-03-06 10:35:59', 'administrator', 'Edit', '127.0.0.1', 'Menu : Kontak Kami'),
(133, '2017-03-06 11:32:23', 'administrator', 'tambah', '127.0.0.1', 'Menu Admin : Slider'),
(134, '2017-03-06 11:32:29', 'administrator', 'Edit', '127.0.0.1', 'Menu Admin : Slider'),
(135, '2017-03-06 11:32:41', 'administrator', 'Edit', '127.0.0.1', 'Menu Admin : Slider'),
(136, '2017-03-06 14:00:23', 'administrator', 'Edit', '127.0.0.1', 'Profil'),
(137, '2017-03-06 14:47:43', 'administrator', 'Edit', '127.0.0.1', 'Menu : Download'),
(138, '2017-03-06 14:49:13', 'administrator', 'tambah', '127.0.0.1', 'Menu : Data Pegawai'),
(139, '2017-03-06 14:49:26', 'administrator', 'Edit', '127.0.0.1', 'Menu : Visi dan Misi'),
(140, '2017-03-06 14:49:36', 'administrator', 'Edit', '127.0.0.1', 'Menu : Struktur Organisasi'),
(141, '2017-03-06 14:49:52', 'administrator', 'Edit', '127.0.0.1', 'Menu : Sambutan Kepala Dinas'),
(142, '2017-03-06 14:52:07', 'administrator', 'tambah', '127.0.0.1', 'Menu Admin : Direktori Pegawai'),
(143, '2017-03-06 22:34:45', 'administrator', 'Tambah', '127.0.0.1', 'slider : sukcapil'),
(144, '2017-03-06 22:35:22', 'administrator', 'Tambah', '127.0.0.1', 'slider : silder 2'),
(145, '2017-03-06 22:57:42', 'administrator', 'Edit', '127.0.0.1', 'slider : sukcapil'),
(146, '2017-03-06 22:57:51', 'administrator', 'Edit', '127.0.0.1', 'slider : silder 2'),
(147, '2017-03-07 08:38:30', 'administrator', 'Tambah', '127.0.0.1', 'Pages : Sambutan Kepala Dinas'),
(148, '2017-03-07 09:11:34', 'administrator', 'Edit', '127.0.0.1', 'Menu : Sambutan Kepala Dinas'),
(149, '2017-03-07 10:21:47', 'administrator', 'tambah', '127.0.0.1', 'Menu : Gallery'),
(150, '2017-03-07 10:51:59', 'administrator', 'Edit', '127.0.0.1', 'Menu : Data Pegawai & Staff'),
(151, '2017-03-07 10:58:34', 'administrator', 'Tambah', '127.0.0.1', 'slider : slider 3'),
(152, '2017-03-07 11:55:58', 'administrator', 'Edit', '127.0.0.1', 'Artikel : Tertib Administrasi Kependudukan Menuju Good Governance'),
(153, '2017-03-07 11:56:18', 'administrator', 'Edit', '127.0.0.1', 'Artikel : KTP EL Berlaku Seumur Hidup'),
(154, '2017-03-07 11:56:28', 'administrator', 'Edit', '127.0.0.1', 'Artikel : KTP-EL Berlaku Seumur Hidup'),
(155, '2017-03-08 08:38:32', 'administrator', 'tambah', '127.0.0.1', 'File : '),
(156, '2017-03-08 08:40:56', 'administrator', 'Hapus', '127.0.0.1', 'File : skb2016_684_302_02.pdf'),
(157, '2017-03-08 08:42:35', 'administrator', 'tambah', '127.0.0.1', 'File : '),
(158, '2017-03-08 09:17:36', 'administrator', 'hapus', '127.0.0.1', 'Gallery : Gallery 1'),
(159, '2017-03-08 09:19:57', 'administrator', 'tambah', '127.0.0.1', 'Gallery : Pelayanan Langsung Desa Ciseureuh, Ketanggungan'),
(160, '2017-03-08 09:20:05', 'administrator', 'tambah', '127.0.0.1', 'Photo : layanan3'),
(161, '2017-03-08 09:20:10', 'administrator', 'tambah', '127.0.0.1', 'Photo : layanan2'),
(162, '2017-03-08 09:20:18', 'administrator', 'tambah', '127.0.0.1', 'Photo : layanan1'),
(163, '2017-03-08 09:24:48', 'administrator', 'Tambah', '127.0.0.1', 'Artikel : Layanan Langsung pembuatan Akta Kelahiran dan Perekaman KTP Elektronik Desa Cisereuh, Ketanggungan'),
(164, '2017-03-08 09:57:46', 'administrator', 'tambah', '127.0.0.1', 'File : '),
(165, '2017-03-08 10:48:05', 'administrator', 'Edit', '127.0.0.1', 'Pages : Visi dan Misi'),
(166, '2017-03-08 10:51:25', 'administrator', 'Edit', '127.0.0.1', 'Menu : Visi dan Misi'),
(167, '2017-03-08 10:56:15', 'administrator', 'Tambah', '127.0.0.1', 'Pages : Struktur Organisasi'),
(168, '2017-03-08 10:56:42', 'administrator', 'Edit', '127.0.0.1', 'Pages : Visi dan Misi'),
(169, '2017-03-08 11:07:52', 'administrator', 'Tambah', '127.0.0.1', 'Pages : Kartu Tanda Penduduk'),
(170, '2017-03-08 11:08:07', 'administrator', 'Hapus', '127.0.0.1', 'Pages : Kartu Tanda Penduduk (KTP)'),
(171, '2017-03-08 11:09:22', 'administrator', 'Edit', '127.0.0.1', 'Menu : Kartu Tanda Penduduk (KTP)'),
(172, '2017-03-08 11:09:45', 'administrator', 'Edit', '127.0.0.1', 'Menu : Kartu Tanda Penduduk (KTP)'),
(173, '2017-03-08 11:43:04', 'administrator', 'Tambah', '127.0.0.1', 'Pages : Kartu Keluarga'),
(174, '2017-03-08 11:43:23', 'administrator', 'Edit', '127.0.0.1', 'Menu : Kartu Keluarga (KK)'),
(175, '2017-03-08 11:52:01', 'administrator', 'Tambah', '127.0.0.1', 'Pages : Surat Pindah'),
(176, '2017-03-08 11:52:45', 'administrator', 'Edit', '127.0.0.1', 'Menu : Surat Pindah & Datang'),
(177, '2017-03-08 11:53:08', 'administrator', 'Edit', '127.0.0.1', 'Menu : Surat Pindah'),
(178, '2017-03-08 11:53:17', 'administrator', 'Edit', '127.0.0.1', 'Menu : Surat Pindah'),
(179, '2017-03-08 13:50:22', 'administrator', 'tambah', '127.0.0.1', 'Menu : Download'),
(180, '2017-03-08 13:50:46', 'administrator', 'tambah', '127.0.0.1', 'Menu : Kontak Kami'),
(181, '2017-03-08 15:30:59', 'administrator', 'Edit', '127.0.0.1', 'Pages : Sambutan Kepala Dinas DIsdukcapilk'),
(182, '2017-03-08 16:09:00', 'administrator', 'Edit', '127.0.0.1', 'Pages : Sambutan Kepala Dinas DIsdukcapilk'),
(183, '2017-03-08 16:13:17', 'administrator', 'Edit', '127.0.0.1', 'Pages : Sambutan Kepala Dinas DIsdukcapilk'),
(184, '2017-03-08 16:13:41', 'administrator', 'Edit', '127.0.0.1', 'Pages : Sambutan Kepala Dinas'),
(185, '2017-03-09 11:26:57', 'administrator', 'Edit', '127.0.0.1', 'Pages : Sambutan Kepala Dinas'),
(186, '2017-03-09 14:22:04', 'administrator', 'Tambah', '127.0.0.1', 'Artikel : PELAYANAN ADMINISTRASI KEPENDUDUKAN YANG PERLU ANDA KETAHUI'),
(187, '2017-03-09 20:23:12', 'administrator', 'Tambah', '127.0.0.1', 'Artikel : Pengumuman 1'),
(188, '2017-03-09 21:00:24', 'administrator', 'Edit', '127.0.0.1', 'Kategori : Pengumuman'),
(189, '2017-03-12 00:08:15', 'administrator', 'Edit', '127.0.0.1', 'Menu : Lokasi'),
(190, '2017-03-13 11:12:57', 'administrator', 'Tambah', '127.0.0.1', 'Pegawai : Pandu Aldi Pratama'),
(191, '2017-03-13 13:11:28', 'administrator', 'Tambah', '127.0.0.1', 'Pegawai : asasd'),
(192, '2017-03-13 13:15:02', 'administrator', 'Edit', '127.0.0.1', 'Pegawai : pandu'),
(193, '2017-03-13 13:23:16', 'administrator', 'Edit', '127.0.0.1', 'Pegawai : pandu'),
(194, '2017-03-13 13:23:20', 'administrator', 'Hapus', '127.0.0.1', 'Pegawai : pandu'),
(195, '2017-03-13 13:24:23', 'administrator', 'Hapus', '127.0.0.1', 'Pegawai : pandu'),
(196, '2017-03-13 13:26:36', 'administrator', 'Hapus', '127.0.0.1', 'Pegawai : pandu'),
(197, '2017-03-13 13:26:40', 'administrator', 'Hapus', '127.0.0.1', 'Pegawai : pandu'),
(198, '2017-03-13 13:27:57', 'administrator', 'Hapus', '127.0.0.1', 'Pegawai : pandu'),
(199, '2017-03-13 13:28:01', 'administrator', 'Hapus', '127.0.0.1', 'Pegawai : pandu'),
(200, '2017-03-13 13:30:07', 'administrator', 'Hapus', '127.0.0.1', 'Pegawai : pandu'),
(201, '2017-03-13 13:30:22', 'administrator', 'Hapus', '127.0.0.1', 'Pegawai : pandu'),
(202, '2017-03-13 13:30:36', 'administrator', 'Tambah', '127.0.0.1', 'Pegawai : askjak'),
(203, '2017-03-13 13:31:04', 'administrator', 'Edit', '127.0.0.1', 'Pegawai : askjak'),
(204, '2017-03-13 13:31:26', 'administrator', 'Edit', '127.0.0.1', 'Pegawai : askjak'),
(205, '2017-03-13 13:32:00', 'administrator', 'Edit', '127.0.0.1', 'Pegawai : askjak'),
(206, '2017-03-13 13:32:03', 'administrator', 'Hapus', '127.0.0.1', 'Pegawai : askjak'),
(207, '2017-03-13 14:36:00', 'administrator', 'Edit', '127.0.0.1', 'Menu : Data Pegawai & Staff'),
(208, '2017-03-13 15:04:34', 'administrator', 'tambah', '127.0.0.1', 'Menu : Suara Anda'),
(209, '2017-03-14 10:47:27', 'administrator', 'tambah', '192.10.10.19', 'File : '),
(210, '2017-03-14 11:09:30', 'administrator', 'Hapus', '192.10.10.19', 'File : pandu_suket.pdf'),
(211, '2017-03-14 12:39:09', 'administrator', 'tambah', '192.10.10.19', 'Gallery : PELAYANAN LANGSUNG PEREKAMAN KTP ELEKTRONIK DAN PENERBITAN AKTA KELAHIRAN DI DESA CIKEUSAL KIDUL 14/03/2017'),
(212, '2017-03-14 12:40:21', 'administrator', 'hapus', '192.10.10.19', 'Gallery : PELAYANAN LANGSUNG PEREKAMAN KTP ELEKTRONIK DAN PE'),
(213, '2017-03-14 12:41:09', 'administrator', 'tambah', '192.10.10.19', 'Gallery : PELAYANAN LANGSUNG DI DESA CIKEUSAL KIDUL 14 MARET 2017'),
(214, '2017-03-14 12:44:33', 'administrator', 'tambah', '192.10.10.19', 'File : '),
(215, '2017-03-14 14:16:05', 'administrator', 'tambah', '192.10.10.19', 'Photo : PELAYANAN_CIKEUSAL_KIDUL'),
(216, '2017-03-14 14:16:34', 'administrator', 'tambah', '192.10.10.19', 'Photo : CIKDUL2'),
(217, '2017-03-14 14:17:14', 'administrator', 'Hapus', '192.10.10.19', 'File : UU_NO_24_2013.PDF'),
(218, '2017-03-14 14:19:24', 'administrator', 'tambah', '192.10.10.19', 'File : '),
(219, '2017-03-14 14:23:45', 'administrator', 'tambah', '192.10.10.19', 'File : '),
(220, '2017-03-14 14:29:26', 'administrator', 'Hapus', '192.10.10.19', 'slider : '),
(221, '2017-03-15 15:01:31', 'administrator', 'tambah', '192.10.10.19', 'Menu : Backup DB'),
(222, '2017-03-15 15:01:36', 'administrator', 'Edit', '192.10.10.19', 'Menu : '),
(223, '2017-03-15 15:01:50', 'administrator', 'tambah', '192.10.10.19', 'Menu Admin : Backup DB'),
(224, '2017-03-16 08:11:03', 'administrator', 'tambah', '127.0.0.1', 'File : '),
(225, '2017-03-16 09:27:47', 'administrator', 'tambah', '192.10.10.19', 'Menu Admin : Pengaturan Web'),
(226, '2017-03-16 09:29:21', 'administrator', 'Edit', '192.10.10.19', 'Menu Admin : Pengaturan Web'),
(227, '2017-03-17 08:51:44', 'administrator', 'tambah', '127.0.0.1', 'Photo : 1'),
(228, '2017-03-17 08:51:55', 'administrator', 'tambah', '127.0.0.1', 'Photo : 2'),
(229, '2017-03-17 08:52:01', 'administrator', 'tambah', '127.0.0.1', 'Photo : 4'),
(230, '2017-03-18 19:03:39', 'administrator', 'Edit', '127.0.0.1', 'Pages : Kartu Tanda Penduduk'),
(231, '2017-03-18 21:57:41', 'administrator', 'Tambah', '127.0.0.1', 'Pages : Kutipan Akra Kelahiran'),
(232, '2017-03-18 21:58:59', 'administrator', 'Edit', '127.0.0.1', 'Pages : Kutipan Akta Kelahiran'),
(233, '2017-03-18 21:59:57', 'administrator', 'Edit', '127.0.0.1', 'Pages : Kutipan Akta Kelahiran'),
(234, '2017-03-18 22:00:15', 'administrator', 'Edit', '127.0.0.1', 'Menu : Kutipan Akta Kelahiran'),
(235, '2017-03-18 22:04:23', 'administrator', 'Edit', '127.0.0.1', 'Menu : Kutipan Akta Kelahiran'),
(236, '2017-03-20 10:16:14', 'administrator', 'tambah', '127.0.0.1', 'Menu Admin : Direktori Penduduk'),
(237, '2017-03-20 10:16:58', 'administrator', 'tambah', '127.0.0.1', 'Menu Admin : Kecamatan'),
(238, '2017-03-20 10:17:19', 'administrator', 'tambah', '127.0.0.1', 'Menu Admin : semester'),
(239, '2017-03-20 10:18:39', 'administrator', 'tambah', '127.0.0.1', 'Menu Admin : Data Penduduk'),
(240, '2017-03-20 10:18:50', 'administrator', 'Edit', '127.0.0.1', 'Menu Admin : Semester'),
(241, '2017-03-20 10:42:22', 'administrator', 'Hapus', '127.0.0.1', 'Pegawai : Pandu Aldi Pratama'),
(242, '2017-03-20 15:06:03', 'administrator', 'tambah', '127.0.0.1', 'Menu : Kutipan Akta Kematian'),
(243, '2017-03-20 15:06:21', 'administrator', 'Edit', '127.0.0.1', 'Menu : Kutipan Akta Kematian'),
(244, '2017-03-20 15:34:04', 'administrator', 'Tambah', '127.0.0.1', 'Pages : KUTIPAN AKTA KEMATIAN'),
(245, '2017-03-20 15:37:34', 'administrator', 'Tambah', '127.0.0.1', 'Pages : KUTIPAN AKTA PERKAWINAN'),
(246, '2017-03-20 15:38:04', 'administrator', 'Edit', '127.0.0.1', 'Menu : Kutipan Akta Perkawinan'),
(247, '2017-03-20 15:38:19', 'administrator', 'Edit', '127.0.0.1', 'Menu : Kutipan Akta Perceraian'),
(248, '2017-03-20 15:39:00', 'administrator', 'Edit', '127.0.0.1', 'Menu : Pencatatan Pengakuan Anak dan Pengesahan Anak'),
(249, '2017-03-20 15:39:22', 'administrator', 'Edit', '127.0.0.1', 'Menu : Pencatatan Perubahan Nama'),
(250, '2017-03-20 15:40:35', 'administrator', 'Edit', '127.0.0.1', 'Menu : Pencatatan Perubahan Kewarganegaraan'),
(251, '2017-03-20 23:28:28', 'administrator', 'Tambah', '127.0.0.1', 'Pages : Kutipan Akta Perceraian'),
(252, '2017-03-20 23:29:09', 'administrator', 'Edit', '127.0.0.1', 'Pages : Kutipan Akta Perceraian'),
(253, '2017-03-21 00:04:08', 'administrator', 'Tambah', '127.0.0.1', 'Pages : Pencatatan Pengakuan Anak dan Pengesahan Anak'),
(254, '2017-03-21 00:13:54', 'administrator', 'Edit', '127.0.0.1', 'Pages : KUTIPAN AKTA KEMATIAN'),
(255, '2017-03-21 00:14:51', 'administrator', 'Edit', '127.0.0.1', 'Pages : KUTIPAN AKTA KEMATIAN'),
(256, '2017-03-21 00:17:33', 'administrator', 'Edit', '127.0.0.1', 'Pages : KUTIPAN AKTA PERKAWINAN'),
(257, '2017-03-21 00:23:08', 'administrator', 'Edit', '127.0.0.1', 'Artikel : KTP-EL Berlaku Seumur Hidup'),
(258, '2017-03-21 10:48:30', 'administrator', 'Tambah', '127.0.0.1', 'Pegawai : Pegawai'),
(259, '2017-03-21 11:40:11', 'administrator', 'Tambah', '127.0.0.1', 'Pages : PENCATATAN PERUBAHAN NAMA'),
(260, '2017-03-21 11:40:12', 'administrator', 'Tambah', '127.0.0.1', 'Pages : PENCATATAN PERUBAHAN NAMA'),
(261, '2017-03-21 11:40:24', 'administrator', 'Hapus', '127.0.0.1', 'Pages : PENCATATAN PERUBAHAN NAMA'),
(262, '2017-03-21 11:54:13', 'administrator', 'Tambah', '127.0.0.1', 'Pages : PENCATATAN PERUBAHAN KEWARGANEGARAAN'),
(263, '2017-03-21 13:07:09', 'administrator', 'Tambah', '127.0.0.1', 'Artikel : Pelayanan E-KTP sudah normal kembali'),
(264, '2017-03-21 14:49:50', 'administrator', 'Tambah', '127.0.0.1', 'Artikel : LAYANAN LANGSUNG PEMBUATAN AKTA KELAHIRAN DAN PEREKAMAN KTP ELEKTRONIK DESA CIKEUSAL KIDUL'),
(265, '2017-03-21 14:52:37', 'administrator', 'Edit', '127.0.0.1', 'Artikel : LAYANAN LANGSUNG PEMBUATAN AKTA KELAHIRAN DAN PEREKAMAN KTP ELEKTRONIK DESA CIKEUSAL KIDUL'),
(266, '2017-03-22 01:10:45', 'administrator', 'Tambah', '127.0.0.1', 'Data Penduduk : 2'),
(267, '2017-03-22 01:12:25', 'administrator', 'Tambah', '127.0.0.1', 'Data Penduduk : 2'),
(268, '2017-03-22 01:15:34', 'administrator', 'Tambah', '127.0.0.1', 'Data Penduduk : 2'),
(269, '2017-03-22 11:15:15', 'administrator', 'Edit', '127.0.0.1', 'Data Penduduk : 1 2017'),
(270, '2017-03-22 11:15:36', 'administrator', 'Edit', '127.0.0.1', 'Data Penduduk : 1 2017'),
(271, '2017-03-22 11:15:47', 'administrator', 'Edit', '127.0.0.1', 'Data Penduduk : 1 2017'),
(272, '2017-03-22 11:19:08', 'administrator', 'Edit', '127.0.0.1', 'Data Penduduk : 1 2017'),
(273, '2017-03-22 14:47:36', 'administrator', 'Tambah', '127.0.0.1', 'Data Penduduk : 2'),
(274, '2017-03-22 14:47:57', 'administrator', 'Edit', '127.0.0.1', 'Data Penduduk : 1 2016'),
(275, '2017-03-23 08:31:46', 'administrator', 'tambah', '127.0.0.1', 'Menu : Data'),
(276, '2017-03-23 08:32:01', 'administrator', 'tambah', '127.0.0.1', 'Menu : Jumlah Penduduk'),
(277, '2017-03-23 08:32:30', 'administrator', 'tambah', '127.0.0.1', 'Menu : Jumlah Kepala Keluarga'),
(278, '2017-03-23 08:32:38', 'administrator', 'Edit', '127.0.0.1', 'Menu : Jumlah Penduduk'),
(279, '2017-03-23 08:33:05', 'administrator', 'tambah', '127.0.0.1', 'Menu : jumlah kepemilikan KK'),
(280, '2017-03-23 08:33:31', 'administrator', 'tambah', '127.0.0.1', 'Menu : Jumlah Wajib KTP'),
(281, '2017-03-23 08:33:56', 'administrator', 'tambah', '127.0.0.1', 'Menu : Jumlah Kepemilikan KTP'),
(282, '2017-03-23 11:09:04', 'administrator', 'Edit', '127.0.0.1', 'Menu : Data Kependudukan'),
(283, '2017-03-23 11:14:25', 'administrator', 'Edit', '127.0.0.1', 'Menu : <i class="fa fa-home">'),
(284, '2017-03-23 11:15:16', 'administrator', 'Edit', '127.0.0.1', 'Menu : Beranda'),
(285, '2017-03-23 11:16:59', 'administrator', 'Edit', '127.0.0.1', 'Menu : <i class=''fa fa-home''></i>'),
(286, '2017-03-23 11:18:59', 'administrator', 'Edit', '127.0.0.1', 'Menu : '),
(287, '2017-05-15 23:27:54', 'administrator', 'Edit', '127.0.0.1', 'Menu : Pelayanan'),
(288, '2017-05-15 23:28:10', 'administrator', 'tambah', '127.0.0.1', 'Menu : Cek Permohonan'),
(289, '2017-05-15 23:28:19', 'administrator', 'tambah', '127.0.0.1', 'Menu : Pelayanan Online'),
(290, '2017-07-12 13:21:39', 'administrator', 'tambah', '127.0.0.1', 'File : AD_ART.docx'),
(291, '2017-07-12 13:21:45', 'administrator', 'Hapus', '127.0.0.1', 'File : AD_ART.docx'),
(292, '2017-07-12 13:21:56', 'administrator', 'tambah', '127.0.0.1', 'File : siswa_excel.xls'),
(293, '2017-07-12 13:22:08', 'administrator', 'Hapus', '127.0.0.1', 'File : siswa_excel.xls'),
(294, '2017-07-12 13:22:18', 'administrator', 'tambah', '127.0.0.1', 'File : Laporan_Santri_23-01-2017.xlsx'),
(295, '2017-07-12 13:22:53', 'administrator', 'Hapus', '127.0.0.1', 'File : Laporan_Santri_23-01-2017.xlsx'),
(296, '2017-07-12 13:23:38', 'administrator', 'tambah', '127.0.0.1', 'File : 2__Banjarsari.xlsx'),
(297, '2017-07-12 13:24:50', 'administrator', 'Hapus', '127.0.0.1', 'File : 2__Banjarsari.xlsx'),
(298, '2017-08-09 09:50:42', 'administrator', 'tambah', '127.0.0.1', 'File : Untitled_2.xlsx');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`menu_id` int(11) NOT NULL,
  `menu_name` varchar(70) NOT NULL,
  `menu_url` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_url`, `parent_id`) VALUES
(4, 'Profil', '#', 0),
(5, 'Sambutan Kepala Dinas', 'profil/sambutan-kepala-dinas', 4),
(6, 'Visi dan Misi', 'profil/visi-dan-misi', 4),
(7, 'Struktur Organisasi', 'profil/struktur-organisasi', 4),
(8, 'Produk Layanan', '#', 0),
(9, 'Kartu Keluarga (KK)', 'pelayanan/kartu-keluarga', 8),
(10, 'Kartu Tanda Penduduk (KTP)', 'pelayanan/kartu-tanda-penduduk', 8),
(11, 'Surat Pindah', 'pelayanan/surat-pindah', 8),
(12, 'Kutipan Akta Kelahiran', 'pelayanan/kutipan-akta-kelahiran', 8),
(13, 'Kutipan Akta Perkawinan', 'pelayanan/kutipan-akta-perkawinan', 8),
(14, 'Kutipan Akta Perceraian', 'pelayanan/kutipan-akta-perceraian', 8),
(15, 'Pencatatan Pengakuan Anak dan Pengesahan Anak', 'pelayanan/pencatatan-pengakuan-anak-dan-pengesahan-anak', 8),
(16, 'Pencatatan Perubahan Nama', 'pelayanan/pencatatan-perubahan-nama', 8),
(17, 'Pencatatan Perubahan Kewarganegaraan', 'pelayanan/pencatatan-perubahan-kewarganegaraan', 8),
(18, 'Agenda', 'agenda', 0),
(19, 'Pengumuman', 'pengumuman', 0),
(21, 'Berita', 'berita', 0),
(22, 'Pelayanan', '#', 0),
(23, 'Download', 'download-file', 1),
(24, 'Data Pegawai & Staff', 'data-pegawai', 4),
(25, 'Gallery', 'gallery-kami', 0),
(26, 'Download', 'download-file', 0),
(27, 'Lokasi', 'lokasi', 0),
(28, 'Suara Anda', 'suara-anda', 0),
(29, 'Kutipan Akta Kematian', 'pelayanan/kutipan-akta-kematian', 8),
(30, 'Data Kependudukan', '#', 0),
(31, 'Jumlah Penduduk', 'data/jumlah-penduduk', 30),
(32, 'Jumlah Kepala Keluarga', 'data/jumlah-kepala-keluarga', 30),
(33, 'jumlah kepemilikan KK', 'data/jumlah-kepemilikan-kk', 30),
(34, 'Jumlah Wajib KTP', 'data/jumlah-wajib-ktp', 30),
(35, 'Jumlah Kepemilikan KTP', 'data/jumlah-kepemilikan-ktp', 30),
(36, 'Cek Permohonan', 'cek-permohonan', 22),
(37, 'Pelayanan Online', 'pelayanan-online', 22);

-- --------------------------------------------------------

--
-- Table structure for table `menu_admin`
--

CREATE TABLE IF NOT EXISTS `menu_admin` (
`menu_id` int(11) NOT NULL,
  `menu_name` varchar(70) NOT NULL,
  `menu_url` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `menu_icon` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `menu_admin`
--

INSERT INTO `menu_admin` (`menu_id`, `menu_name`, `menu_url`, `parent_id`, `role_id`, `menu_icon`) VALUES
(1, 'Dashboard', 'dashboard', 0, 0, 'fa fa-dashboard'),
(2, 'Artikel', '#', 0, 0, 'fa fa-newspaper-o'),
(3, 'Tambah Artikel', 'add-article', 2, 0, 'fa fa-circle-o'),
(4, 'Artikel List', 'article-list', 2, 0, 'fa fa-circle-o'),
(5, 'Setting', '#', 0, 1, 'fa fa-cog'),
(6, 'Menu', 'menu-setting', 5, 1, 'fa fa-circle-o'),
(8, 'Kategori', 'kategori', 2, 0, 'fa fa-circle-o'),
(9, 'User', 'user', 5, 0, 'fa fa-circle-o'),
(10, 'Page Statis', '#', 0, 0, 'fa fa-file-text-o'),
(11, 'Tambah Pages', 'add-pages', 10, 0, 'fa fa-circle-o'),
(12, 'Pages List', 'pages-list', 10, 0, 'fa fa-circle-o'),
(13, 'Direktori File', 'download', 0, 0, 'fa fa-download'),
(14, 'Gallery', 'gallery', 0, 0, 'fa fa-image'),
(15, 'Banner', 'banner', 0, 0, 'fa fa-link'),
(16, 'Slider', 'slider', 5, 0, 'fa fa-circle-o'),
(17, 'Direktori Pegawai', 'pegawai', 0, 0, 'fa fa-users'),
(18, 'Backup DB', 'backup-database', 0, 0, 'fa fa-database'),
(19, 'Pengaturan Web', 'pengaturan-web', 5, 0, 'fa fa-circle-o'),
(20, 'Direktori Penduduk', '#', 0, 0, 'fa fa-pie-chart'),
(21, 'Kecamatan', 'kecamatan', 20, 0, 'fa fa-circle-o'),
(22, 'Semester', 'semester', 20, 0, 'fa fa-circle-o'),
(23, 'Data Penduduk', 'data-penduduk', 20, 0, 'fa fa-circle-o');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
`page_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `keyword` varchar(250) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `img` varchar(100) NOT NULL,
  `url` varchar(160) NOT NULL,
  `user` varchar(100) NOT NULL,
  `redaktur` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `title`, `keyword`, `desc`, `content`, `create_date`, `update_date`, `img`, `url`, `user`, `redaktur`) VALUES
(2, 'Visi dan Misi', 'visi misi,visi dan misi,dindukcapil brebes,dukcapil brebes,disdukcapil brebes', 'visi dan misi Dinas Kependudukan dan pencatatan Sipil Kabupaten Brebes', '<h2><strong>VISI : </strong></h2>\r\n\r\n<p> </p>\r\n\r\n<h2><strong>MISI :</strong></h2>', '2017-03-02 11:21:40', '2017-03-08 10:56:42', '', 'visi-dan-misi', 'administrator', 'administrator'),
(3, 'Sambutan Kepala Dinas', 'sambutan kepala dinas,kepala dinas kependudukan,dinas kependudukan kabupaten brebes,kabupaten brebes,dindukcapil brebes,Drs. Asmuni,bapak asmuni', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis ratione laudantium reprehenderit temporibus in harum magnam dicta voluptate vitae, quis iusto asperiores cumque inventore quos illo of', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis ratione laudantium reprehenderit temporibus in harum magnam dicta voluptate vitae, quis iusto asperiores cumque inventore quos illo officia error. Optio, dolorem!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis ratione laudantium reprehenderit temporibus in harum magnam dicta voluptate vitae, quis iusto asperiores cumque inventore quos illo officia error. Optio, dolorem!</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis ratione laudantium reprehenderit temporibus in harum magnam dicta voluptate vitae, quis iusto asperiores cumque inventore quos illo officia error. Optio, dolorem!</p>', '2017-03-07 08:38:30', '2017-03-09 11:26:57', 'kadin2.jpg', 'sambutan-kepala-dinas', 'administrator', 'administrator'),
(4, 'Struktur Organisasi', 'struktur organisasi dindukcapil brebes,disdukcapil brebes,dindukcapil brebes', 'Struktur Organisasi Dinas Kependudukan Dan Pencatatan Sipil Kabupaten Brebes', '<p>Struktur Organisasi Dinas Kependudukan Dan Pencatatan Sipil Kabupaten Brebes</p>', '2017-03-08 10:56:15', '2017-03-08 10:56:15', '', 'struktur-organisasi', 'administrator', 'administrator'),
(5, 'Kartu Tanda Penduduk', 'ktp-el,ktp elektronik,ktp brebes,ktp-el brebes,dindukcapil brebes,disdukcapil brebes,kabupaten brebes,syarat pembuatan ktp el,syarat pembuatan ktp elektrionik,pembuatan ktp el', 'Kartu Tanda Penduduk (KTP EL). Berikut syarat pembuatan ktp el', '<h1>PELAYANAN PENERBITAN KARTU TANDA PENDUDUK (KTP el)</h1>\r\n\r\n<h3>DASAR HUKUM</h3>\r\n\r\n<ol>\r\n <li>Undang-undang Nomor 1 Tahun 1974 tentang Perkawinan;</li>\r\n <li>Undang-undang 12 Tahun 2006 tentang Kewarganegaraan Republik Indonesia;</li>\r\n <li>Undang-undang Nomor 24 Tahun 2013 tentang perubahan atas undang-undang Nomor 23 Tahun 2006 tentang Administrasi Kependudukan;</li>\r\n <li>Undang Undang no 24 tahun 2013 tentang Perubahan atas Undang Undang Nomor 23 Tahun 2006 tentang Administrasi Kependukan;</li>\r\n <li>Peraturan Pemerintah Nomor 9 Tahun 1975 tentang Pelaksanaan Undang-undang Nomor 1 Tahun 1974 tentang Perkawinan;</li>\r\n <li>Peraturan Pemerintah Nomor 37 Tahun 2007 tentang Pelaksanaan Undang-undang nomor 23 tahun 2006 tentang Administrasi Kependudukan;</li>\r\n <li>Peraturan Pemerintah Nomor 102 Tahun 2012 Tentang Perubahan Atas Peraturan Pemerintah Nomor 37 Tahun 2007 Tentang Pelaksanaan Undang-Undang Nomor 23 Tahun 2006 Tentang Administrasi Kependudukan;</li>\r\n <li>Peraturan Presiden Nomor 25 Tahun 2008 tentang Persyaratan Dan Tatacara Pendaftaran Penduduk Dan Pencatatan Sipil;</li>\r\n <li>Keputusan Presiden Nomor 88 Tahun 2004 tentang Pengelolaan Administrasi Kependudukan;</li>\r\n <li>Peraturan Presiden Nomor 35 Tahun 2010 Tentang Perubahan Atas Peraturan Presiden Nomor 26 Tahun 2009 Tentang Penerapan Kartu Tanda Penduduk Berbasis Nomor Induk Kependudukan Secara Nasional;</li>\r\n <li>Peraturan Presiden Nomor 67 Tahun 2011 Tentang Perubahan Kedua Atas Peraturan Presiden Nomor 26 Tahun 2009 Tentang Penerapan Kartu Tanda Penduduk Berbasis Nomor Induk Kependudukan Secara Nasional;</li>\r\n <li>Peraturan Presiden Nomor 126 Tahun 2012 Tentang Perubahan Ketiga Atas Peraturan Presiden Nomor 26 Tahun 2009 Tentang Penerapan Kartu Tanda Penduduk Berbasis Nomor Induk Kependudukan Secara Nasional;</li>\r\n <li>Peraturan Presiden Nomor 112 Tahun 2013 Tentang Perubahan Keempat Atas Peraturan Presiden Nomor 26 Tahun 2009 Tentang Penerapan Kartu Tanda Penduduk Berbasis Nomor Induk Kependudukan Secara Nasional;</li>\r\n <li>Peraturan Menteri Dalam Negeri Nomor 10 Tahun 2005 tentang Pedoman Pendataan Dan Pemberian Surat Keterangan Penganti Dokumen Pendudukan Bagi Pengungsi dan Penduduk Korban Bencana Di Daerah;</li>\r\n <li>Peraturan Menteri Dalam Negeri Nomor 18 Tahun 2010 Tentang Pedoman Pengangkatan dan Pemberhentian serta Tugas Pokok Pejabat Pencatatan Sipil dan Petugas Registrasi;</li>\r\n <li>Peraturan Menteri Dalam Negeri Nomor 9 Tahun 2011 Tentang Pedoman Penerbitan Kartu Tanda Penduduk Berbasis Nomor  Induk Kependudukan Secara Nasional;</li>\r\n <li>Peraturan Menteri Dalam Negeri Nomor 68 Tahun 2012 Tentang Tata Cara Pelaporan Penyelenggaraan Administrasi Kependudukan;</li>\r\n <li>Permendagri 8 Tahun 2016 ttg Perubahan Permen 9 Tahun 2011 ttg Penerbitan KTP NIK Nasional.</li>\r\n <li>Perda Kabupaten Rembang nomor 4 tahun 2008 tentang Administrasi Kependudukan;</li>\r\n</ol>\r\n\r\n<h3>SYARAT-SYARAT YANG DIPERLUKAN;</h3>\r\n\r\n<ol>\r\n <li>Penerbitan KTP el baru:\r\n <ol>\r\n  <li>Formulir permohonan KTP (F-1.07)</li>\r\n  <li>Surat pengantar RT/RW;</li>\r\n  <li>Foto copy KK (yang mencantumkan NIK pemohon);</li>\r\n  <li>Foto copy akta nikah (bagi penduduk yang belum berumaur 17 tahun tetapi sudah menikah);</li>\r\n  <li>Fotocopy kutipan Akta Kelahiran dengan menunjukan kutipan akta kelahiran yang asli;</li>\r\n  <li>Bagi WNI yang baru datang dari Luar Negeri melampirkan surat keterangan datang dari luar negeri yang diterbitakn oleh instansi pelaksana;</li>\r\n  <li>Dalam hal KTP diterbitkan karena pindah datang, pemohon menunjukan surat pindah dari daerah asal;</li>\r\n  <li>agi orang asing tinggal tetap melampirkan Foto copy dokumen imigrasi ( Paspor dan KITAP - Kartu Ijin Tinggal Tetap ) dan SKTT (Surat Keterangan Tinggal Tetap) dan Surat Keterangan Catatan Kepolisian;</li>\r\n </ol>\r\n </li>\r\n <li>Penggantian KTP el;\r\n <ol>\r\n  <li>Formulir permohonan KTP (F-1.07);</li>\r\n  <li>Surat pengantar RT/RW;</li>\r\n  <li>KTP lama asli yang rusak dan atau fotocopy KTP;</li>\r\n  <li>Surat keterangan lapor kehilangan KTP dari kepolisian;</li>\r\n  <li>Fotocopy KK yang bersangkutan;</li>\r\n </ol>\r\n </li>\r\n</ol>\r\n\r\n<h3>PROSEDUR</h3>\r\n\r\n<ol>\r\n <li>Pemohon datang ke kelurahan untuk mengisi formulir permohonan kartu tanda penduduk (F-1.07), serta melengkapi semua dokumen persyaratan yang dibutuhkan dengan membawa surat pengantar RT/RW dimana pemohon berdomisili.</li>\r\n <li>Petugas registrasi desa/kelurahan menerima dan memeriksa berkas pemohon;</li>\r\n <li>Apabila berkas belum lengkap maka petugas mengembalikan kepada pemohon untuk dilengkapi;</li>\r\n <li>Setelah berkas lengkap Petugas registrasi desa/ Kelurahan meregister dalam buku dan meminta tanda tangan Lurah/kepala desa;</li>\r\n <li>Setelah Lurah menandatangani, Petugas Kelurahan menyerahkan kembali kepada pemohon beserta berkas asli;</li>\r\n <li>Pemohon mendatangi loket pelayanan KK dan KTP Kantor Kecamatan dengan membawa berkas lengkap;</li>\r\n <li>Petugas Loket Pelayanan KK dan KTP pada Kecamatan menerima dan meneliti berkas dan semua persyaratan serta memberikan informasi tentang masa berlaku, lama pemprosesan;</li>\r\n <li>Petugas pelayanan KK dan KTP melakukan pengecekan NIK yang ada di KK, apakah sudah sesuai dengan NIK yang ada di KTP el atau belum, apakah sudah pernah rekam atau belum, apakah siap cetak ataukah ganda.  Apabila pemohon datang sendiri petugas melakukan cek iris untuk mengetahui status cetak KTP el.</li>\r\n <li>Apabila terjadi perubahan elemen data, petugas mencocokan permohonan dan dokumen pendukung (Akte Kelahiran, Ijazah, Surat Nikah) sudah sesuai atau belum, kalau sudah sesuai petugas merubah sesuai dengan dokumen pendukung.</li>\r\n <li>Setelah dilakukan cek oleh petugas KK dan KTP di Kecamatan, petugas memberikan paraf dan pemohon membawa berkas ke Dinas Dukcapil Kab Rembang untuk diajukan cetak KTP el.</li>\r\n <li>Petugas Loket Dinas Dukcapil menerima berkas permohonan, melakukan cek persyaratan dan mendaftar sesuai nomer urut pendaftaran.</li>\r\n <li>Petugas loket menyerahkan berkas kepada Kepala Seksi Pendaftaran Penduduk untuk dilakukan verifikasi apakah berkas siap cetak ataukah tidak.</li>\r\n <li>Kepala Seksi menyerahkan berkas yang siap cetak kepada operator Cetak KTP el.</li>\r\n <li>Setelah tercetak KTPel di serahkan kepada loket pengambilan.</li>\r\n <li>Petugas loket pengambilan menyerahkan KTP el kepada pemohon sesuai dengan tanda terima pendaftaran dan pemohon menandatangani tanda bukti pengambilan.</li>\r\n</ol>', '2017-03-08 11:07:52', '2017-03-18 19:03:39', 'download1.jpg', 'Kartu-Tanda-Penduduk', 'administrator', 'administrator'),
(6, 'Kartu Keluarga', 'KK,pembuatan KK,kartu keluarga,pembuatan kartu keluarga,Kartu Keluarga,disdukcapil brebes,dindukcapil brebes', 'Informasi tenang Kartu Keluarga(KK), serta persyaratan tentang pembuatan Kartu Keluarga (KK)', '<h1>PELAYANAN PENERBITAN KARTU KELUARGA (KK)</h1>\r\n\r\n<h3>DASAR HUKUM</h3>\r\n\r\n<ol>\r\n <li>Undang-undang Nomor 1 Tahun 1974 tentang Perkawinan;</li>\r\n <li>Undang-undang 12 Tahun 2006 tentang Kewarganegaraan Republik Indonesia;</li>\r\n <li>Undang-undang Nomor 24 Tahun 2013 tentang perubahan atas undang-undang Nomor 23 Tahun 2006 tentang Administrasi Kependudukan;</li>\r\n <li>Undang Undang no 24 tahun 2013 tentang Perubahan atas Undang Undang Nomor 23 Tahun 2006 tentang Administrasi Kependukan;</li>\r\n <li>Peraturan Pemerintah Nomor 9 Tahun 1975 tentang Pelaksanaan Undang-undang Nomor 1 Tahun 1974 tentang Perkawinan;</li>\r\n <li>Peraturan Pemerintah Nomor 37 Tahun 2007 tentang Pelaksanaan Undang-undang nomor 23 tahun 2006 tentang Administrasi Kependudukan;</li>\r\n <li>Peraturan Pemerintah Nomor 102 Tahun 2012 Tentang Perubahan Atas Peraturan Pemerintah Nomor 37 Tahun 2007 Tentang Pelaksanaan Undang-Undang Nomor 23 Tahun 2006 Tentang Administrasi Kependudukan;</li>\r\n <li>Peraturan Presiden Nomor 25 Tahun 2008 tentang Persyaratan Dan Tatacara Pendaftaran Penduduk Dan Pencatatan Sipil;</li>\r\n <li>Keputusan Presiden Nomor 88 Tahun 2004 tentang Pengelolaan Administrasi Kependudukan;</li>\r\n <li>Peraturan Presiden Nomor 35 Tahun 2010 Tentang Perubahan Atas Peraturan Presiden Nomor 26 Tahun 2009 Tentang Penerapan Kartu Tanda Penduduk Berbasis Nomor Induk Kependudukan Secara Nasional;</li>\r\n <li>Peraturan Presiden Nomor 67 Tahun 2011 Tentang Perubahan Kedua Atas Peraturan Presiden Nomor 26 Tahun 2009 Tentang Penerapan Kartu Tanda Penduduk Berbasis Nomor Induk Kependudukan Secara Nasional;</li>\r\n <li>Peraturan Presiden Nomor 126 Tahun 2012 Tentang Perubahan Ketiga Atas Peraturan Presiden Nomor 26 Tahun 2009 Tentang Penerapan Kartu Tanda Penduduk Berbasis Nomor Induk Kependudukan Secara Nasional;</li>\r\n <li>Peraturan Presiden Nomor 112 Tahun 2013 Tentang Perubahan Keempat Atas Peraturan Presiden Nomor 26 Tahun 2009 Tentang Penerapan Kartu Tanda Penduduk Berbasis Nomor Induk Kependudukan Secara Nasional;</li>\r\n <li>Peraturan Menteri Dalam Negeri Nomor 10 Tahun 2005 tentang Pedoman Pendataan Dan Pemberian Surat Keterangan Penganti Dokumen Pendudukan Bagi Pengungsi dan Penduduk Korban Bencana Di Daerah;</li>\r\n <li>Peraturan Menteri Dalam Negeri Nomor 18 Tahun 2010 Tentang Pedoman Pengangkatan dan Pemberhentian serta Tugas Pokok Pejabat Pencatatan Sipil dan Petugas Registrasi;</li>\r\n <li>Peraturan Menteri Dalam Negeri Nomor 9 Tahun 2011 Tentang Pedoman Penerbitan Kartu Tanda Penduduk Berbasis Nomor  Induk Kependudukan Secara Nasional;</li>\r\n <li>Peraturan Menteri Dalam Negeri Nomor 68 Tahun 2012 Tentang Tata Cara Pelaporan Penyelenggaraan Administrasi Kependudukan;</li>\r\n <li>Permendagri 8 Tahun 2016 ttg Perubahan Permen 9 Tahun 2011 ttg Penerbitan KTP NIK Nasional.</li>\r\n <li>Perda Kabupaten Rembang nomor 4 tahun 2008 tentang Administrasi Kependudukan; </li>\r\n</ol>\r\n\r\n<h3>SYARAT-SYARAT YANG DIPERLUKAN</h3>\r\n\r\n<ol>\r\n <li>Bagi Penduduk yang belum terekam data keluarga dan data anggota keluarga ke dalam Pusat Bank Data Kependudukan Nasional. menyerahkan:\r\n <ol>\r\n  <li>Surat pengantar dari RT/ RW;</li>\r\n  <li>Blanko/ Formulir permohonan kartu keluarga (F-1.06);</li>\r\n  <li>KK yang lama (sebelum SIAK diimplementasikan);</li>\r\n  <li>Foto copy akta perkawinan/ surat nikah/ akta perceraian;</li>\r\n  <li>Foto copy akta kelahiran seluruh anggota keluarga yang akan masuk dalam KK;</li>\r\n  <li>Fotocopy surat kelahiran dari Desa/Kelurahan bagi anggota keluarga yang baru lahir;</li>\r\n  <li>Foto copy akta pengangkatan anak;</li>\r\n  <li>Foto copy Surat Keterangan Ganti Nama bila telah ganti nama;</li>\r\n  <li>Bagi pemohon yang mengalami hambatan mental dan fisik tubuh, pengisian biodata menggunakan formulir F1.04.</li>\r\n </ol>\r\n </li>\r\n <li>Bagi penduduk yang sudah memiliki NIK (membentuk rumah tangga baru, pindah tempat tinggal, KK hilang/rusak).\r\n <ol>\r\n  <li>Surat pengantar RT/RW</li>\r\n  <li>Bagi penduduk yang membentuk rumah tangga baru melampirkan;\r\n  <ol>\r\n   <li>Foto copy KK yang lama.</li>\r\n   <li>Foto copy akta perkawinan/surat nikah/akta perceraian;</li>\r\n   <li>Foto copy KTP Kepala keluarga dan anggotanya.</li>\r\n  </ol>\r\n  </li>\r\n  <li>Bagi penduduk yang pindah tempat tinggal;\r\n  <ol>\r\n   <li>KK yang lama.</li>\r\n   <li>Surat keterangan pindah dari daerah asal.</li>\r\n  </ol>\r\n  </li>\r\n  <li>Bagi penduduk yang KK hilang/rusak:\r\n  <ol>\r\n   <li>Surat keterangan kehilangan dari Kepolisian, atau</li>\r\n   <li>KK yang rusak</li>\r\n   <li>Foto copy KTP dari salah satu anggota keluarga, atau</li>\r\n   <li>Dokumen keimigrasian bagi orang asing.</li>\r\n  </ol>\r\n  </li>\r\n </ol>\r\n </li>\r\n <li>Bagi Orang Asing Tinggal Tetap\r\n <ol>\r\n  <li>Formulir biodata penduduk untuk orang asing (F-1.02) yang telah diisi dengan baik dan benar, bagi yang belum pernah didaftarkan biodatanya;</li>\r\n  <li>Dokumen imigrasi;</li>\r\n  <li>Surat keterangan tempat tinggal (SKTT);</li>\r\n  <li>Surat keterangan lapor dini (SKLD);</li>\r\n  <li>Surat ijin kerja;</li>\r\n  <li>Surat ijin tinggal tetap;</li>\r\n  <li>Surat keterangan pindah datang (SKPD) orang asing tinggal tetap bagi penduduk yang pindah datang;</li>\r\n </ol>\r\n </li>\r\n <li>Penerbitan KK karena penambahan anggota keluarga baru bagi penduduk WNI;\r\n <ol>\r\n  <li>Formulir permohonan kartu keluarga (F-1.06)</li>\r\n  <li>Pengantar dari RT/RW</li>\r\n  <li>Foto copy KK yang lama dari pemohon</li>\r\n  <li>KK yang lama dari keluarga yang akan diikuti</li>\r\n  <li>Surat keterangan pindah datang bagi penduduk yang pindah dalam wilayah NKRI;atau</li>\r\n  <li>Surat keterangan datang dari Luar Negeri bagi warga Negara Indonesia yang datang dari luar negeri karena pindah;</li>\r\n </ol>\r\n </li>\r\n <li>Penerbitan KK karena penambahan anggota keluarga baru bagi penduduk WNA;\r\n <ol>\r\n  <li>Formulir permohonan kartu keluarga (F-1.06)</li>\r\n  <li>Formulir biodata penduduk untuk orang asing (F-1.02)</li>\r\n  <li>Pengantar dari RT/RW</li>\r\n  <li>KK yang lama dari pemohon</li>\r\n  <li>KK yang lama dari keluarga yang diikuti</li>\r\n  <li>Paspor</li>\r\n  <li>Izin tinggal tetap</li>\r\n  <li>Surat keterangan catatan kepolisian</li>\r\n </ol>\r\n </li>\r\n <li>Penerbitan KK karena pengurangan anggota keluarga :\r\n <ol>\r\n  <li>Pengantar dari RT/RW</li>\r\n  <li>KK yang lama</li>\r\n  <li>Surat keterangan kematian; atau</li>\r\n  <li>Surat keterengan pindah/surat keterangan pindah datang bagi penduduk yang pindah dalam wilayah NKRI;</li>\r\n </ol>\r\n </li>\r\n</ol>\r\n\r\n<h3>PROSEDUR</h3>\r\n\r\n<ol>\r\n <li>Pemohon datang ke Kantor Kelurahan setempat dengan membawa surat pengantar RT/RW dan berkas persyaratan yang telah ditentukan beserta dokumen aslinya;</li>\r\n <li>Petugas Kelurahan mengecek berkas yang bersangkutan dan memberikan blanko/ data isian KK serta memberikan informasi tentang persyaratan masa berlaku dan mekanisme pengisian blanko;</li>\r\n <li>Pemohon mengisi blanko/ data isian KK yang telah disediakan di Kelurahan masing-masing sesuai dengan wilayah tempat tinggalnya;</li>\r\n <li>Formulir yang sudah di isi diserahkan ke Kelurahan;</li>\r\n <li>Petugas Seksi Pemerintahan pada Kelurahan memeriksa dan meneliti blanko/ data isian KK dan meregister dalam buku Harian Peristiwa Kependudukan serta mengajukan kepada Lurah/Kepala Desa untuk ditandatangani;</li>\r\n <li>Apabila berkas belum lengkap maka petugas mengembalikan kepada pemohon untuk dilengkapi;</li>\r\n <li>Setelah berkas ditandatangani Lurah/Kepala Desa, Petugas Seksi Pemerintahan pada Kelurahan mencatat dalam Buku Induk Penduduk dan menyerahkan kembali kepada pemohon beserta dokumen aslinya;</li>\r\n <li>Pemohon mendatangi loket pelayanan KK dan KTP yang ada di Kantor Kecamatan dengan membawa berkas lengkap beserta dokumen asli;</li>\r\n <li>Petugas Pelayanan KK dan KTP yang ada di Kecamatan menerima dan memverifikasi berkas serta mencatat data pemohon dalam Buku Permohonan KK.</li>\r\n <li>Petugas Pelayanan KK dan KTP meregister berkas permohanan dan menerbitkan tanda terima pendaftaran;</li>\r\n <li>berkas permohonan yang telah diregister dan berkas lainnya diteruskan ke Operator komputer;</li>\r\n <li>Operator komputer menerima dan mengecek biodata penduduk pada berkas permohonan dengan mensinkronisasi biodata yang diterima ke dalam Aplikasi SIAK, data yang tidak valid dikembalikan kepada petugas loket;</li>\r\n <li>Operator Komputer mencetak KK sesuai data yang valid pada blangko asli rangkap 5 (lima), serta mencatat nomor serial blanko yang telah diterbitkan;</li>\r\n <li>Operator Komputer menyerahkan Cetakan KK ke petugas Verifikasi Dinas Kependudukan dan Pencatatan Sipil;</li>\r\n <li>KK diserahakan ke bidang Pendaftaran penduduk untuk diteliti dan diparaf Kepala Bidang Pendaftaran Penduduk untuk kemudian diteruskan ke kepala Dinas untuk ditandatangani dan distempel basah selanjutnya diserahkan kembali kepada staf bidang pendaftaran penduduk untuk diteruskan ke bagian loket pengambilan ;</li>\r\n <li>Pemohon pada batas waktu proses yang telah ditentukan mendatangi loket Pelayanan KK dan KTP di Dinas Kependudukan dan Pencatatan Sipil;</li>\r\n</ol>', '2017-03-08 11:43:04', '2017-03-08 11:43:04', 'kk.jpg', 'kartu-keluarga', 'administrator', 'administrator'),
(7, 'Surat Pindah', 'surat pindah,pembuatan surat pindah WNI,pembuatan surat pindah,dukcapil brebes,dindukcapil brebes', 'Infromasi tentang surat pindah dan persyaratan pembuatan Surat Pindah', '<h1>PELAYANAN PENERBITAN SURAT KETERANGAN PINDAH DOMISILI (SKPD)</h1>\r\n\r\n<h3>DASAR HUKUM</h3>\r\n\r\n<ol>\r\n <li>Undang-undang Nomor 1 Tahun 1974 tentang Perkawinan;</li>\r\n <li>Undang-undang 12 Tahun 2006 tentang Kewarganegaraan Republik Indonesia;</li>\r\n <li>Undang-undang Nomor 23 Tahun 2006 tentang Administrasi Kependudukan;</li>\r\n <li>Peraturan Pemerintah Nomor 9 Tahun 1975 tentang Pelaksanaan Undang-undang Nomor 1 Tahun 1974 tentang Perkawinan;</li>\r\n <li>Peraturan Pemerintah Nomor 37 Tahun 2007 tentang Pelaksanaan Undang-undang nomor 23 tahun 2006 tentang Administrasi Kependudukan;</li>\r\n <li>Peraturan Presiden Nomor 25 Tahun 2008 tentang Persyaratan Dan Tatacara Pendaftaran Penduduk Dan Pencatatan Sipil;</li>\r\n <li>Keputusan Presiden Nomor 88 Tahun 2004 tentang Pengelolaan Administrasi Kependudukan;</li>\r\n <li>Peraturan Menteri Dalam Negeri Nomor 10 Tahun 2005 tentang Pedoman Pendataan Dan Pemberian Surat Keterangan Penganti Dokumen Pendudukan Bagi Pengungsi dan Penduduk Korban Bencana Di Daerah;</li>\r\n <li>Peraturan Daerah Kabupaten Tegal Nomor 3 Tahun 2010 tentang Penyelenggaraan Administrasi Kependudukan;</li>\r\n <li>Peraturan Daerah Kabupaten Tegal Nomor 2 Tahun 2012 tentang Retribusi Daerah;</li>\r\n <li>Peraturan Bupati Tegal Nomor 24 Tahun 2010 tentang Persyaratan Dan Tata Cara Pendaftaran Penduduk Dan Pencatatan Sipil;</li>\r\n</ol>\r\n\r\n<h3>SYARAT-SYARAT YANG DIPERLUKAN</h3>\r\n\r\n<ol>\r\n <li>Antar Kabupaten/Kota dalam wilayah provinsi/NKRI :\r\n <ol>\r\n  <li>Blanko/ data isian SKPD</li>\r\n  <li>Surat pengantar RT/RW;</li>\r\n  <li>Melampirkan KK dan KTP asli yang bersangkutan;</li>\r\n  <li>Akta perkawinan bagi yang sudah menikah;</li>\r\n  <li>Fotcopy Akta kelahiran;</li>\r\n  <li>Pas foto berwarna 4 x 6 sebanyak 7 lembar;</li>\r\n </ol>\r\n </li>\r\n</ol>\r\n\r\n<h3>PROSEDUR</h3>\r\n\r\n<ol>\r\n <li>Pemohon datang ke Kantor Desa/Kelurahan setempat dengan membawa surat pengantar RT/RW dan berkas lengkap sesuai persyaratan yang telah ditentukan beserta dokumen aslinya;</li>\r\n <li>Petugas Desa/Kelurahan mengecek berkas yang bersangkutan dan memberikan blanko serta memberikan informasi tentang persyaratan, masa berlaku dan mekanisme pengisian blanko;</li>\r\n <li>Petugas Seksi Pemerintahan pada Desa/Kelurahan memeriksa dan meneliti berkas dan persyaratan lainnya;</li>\r\n <li>Apabila berkas belum lengkap maka Petugas mengembalikan kepada pemohon untuk dilengkapi;</li>\r\n <li>Petugas Seksi Pemerintahan pada Desa/Kelurahan membuat surat pengantar yang ditandatangani Lurah;</li>\r\n <li>Setelah ditandatangani Kepala Desa/Lurah, Petugas Seksi Pemerintahan pada Desa/Kelurahan meregister ke dalam buku dan menyerahkan kembali kepada pemohon beserta dokumen aslinya;</li>\r\n <li>Pemohon mendatangi Kasi Pemerintahan di Kecamatan untuk meminta pengesahan berupa tanda tangan dan stempel setelah itu ke Pelayanan Dinas dengan membawa berkas lengkap beserta dokumen asli;</li>\r\n <li>Petugas Loket pada Dinas menerima, meneliti berkas, dan memberikan informasi kepada pemohon tentang masa berlaku, lama pemrosesan dan besarnya retribusi yang harus dibayar;</li>\r\n <li>Petugas Loket menyerahkan berkas pemohon kepada Petugas register</li>\r\n <li>Petugas register pada bidang pendaftaran penduduk meneliti dan mencatat data pemohon dalam Buku Induk dan buku mutasi penduduk;</li>\r\n <li>Petugas register meneruskan berkas ke Kasi Identitas dan Perpindahan Penduduk untuk diverifikasi;</li>\r\n <li>Bila telah sesuai, Identitas dan Perpindahan Penduduk memberikan paraf pada register dan berkas pemohon kemudian diteruskan kekasir;</li>\r\n <li>Pemohon membayar biaya permohonan sesuai retribusi;</li>\r\n <li>Kasir menerima uang dan menerbitkan kwitansi/ tanda terima pembayaran, mencatat penerimaan pada buku kas serta memberi nomor pada berkas permohonan sesuai nomor kwitansi.</li>\r\n <li>Kasir meneruskan berkas permohonan dan dokumen lainnya ke petugas operator computer untuk diproses lebih lanjut;</li>\r\n <li>Operator komputer menginput data register perpindahan penduduk ke dalam sistem komputer sesuai yang tercatat pada register dengan menggunakan SIAK dan memastikan sudah diinput dengan benar.</li>\r\n <li>Operator Komputer mencetak surat keterangan pindah domisili dan meneruskan register dan surat keterangan pindah domisili kepada staf bidang pendaftaran penduduk;</li>\r\n <li>Petugas/staf pada bidang pendaftaran penduduk mengajukan Surat Keterangan Pindah Domisili dan kelengkapan berkas pemohon kepada Kepala bidang pendaftaran Penduduk untuk ditandatangani;</li>\r\n <li>Untuk kepindahan penduduk antar kelurahan dalam satu wilayah kecamatan diterbitkan Surat Keterangan Pindah yang ditandatangani Lurah;</li>\r\n <li>Untuk kepindahan penduduk antar kecamatan diterbitkan Surat Keterangan Pindah yang ditandatangani Camat;</li>\r\n <li>Untuk kepindahan penduduk antar kabupaten/kota dalam provinsi ditandatangani kepala bidang pendaftran penduduk, sedangkan kepindahan penduduk antar provinsi/keluar propinsi ditandatangani oleh Kepala Dinas Kependudukan Dan Pencatatan Sipil Kabupaten Tegal;</li>\r\n <li>Setelah ditandatangani, Petugas/staf pada bidang pendaftaran penduduk menyerahkan Surat Keterangan Penduduk Pindah Domisili kepada Petugas Loket Pelayanan;</li>\r\n <li>Pemohon pada batas waktu proses yang telah ditentukan mendatangi Loket Pelayanan pada Dinas;</li>\r\n <li>Pemohon dengan menunjukkan tanda terima pembayaran menyerahkan kepada Petugas Loket;</li>\r\n <li>Petugas Loket menyerahkan Surat Keterangan Penduduk Pindah Domisili serta dokumen asli lainnya serta menginformasikan masa berlaku Surat Keterangan Penduduk Pindah Domisili kepada Pemohon.</li>\r\n</ol>', '2017-03-08 11:52:01', '2017-03-08 11:52:01', '', 'surat-pindah', 'administrator', 'administrator'),
(8, 'Kutipan Akta Kelahiran', 'akta kelahiran,kutipan akta kelahiran,dindukcapil brebes,disdukcapil,dinas kependudukan,dinas kependudukan dan pencatatan sipil kabupaten brebes,ktp elektronik', 'Dasar hukum, persyaratan, dan pembuatan Kutipan Akta Kelahiran', '<h1>PELAYANAN PENERBITAN KUTIPAN AKTA KELAHIRAN</h1>\r\n\r\n<h3>DASAR HUKUM</h3>\r\n\r\n<ol>\r\n <li>Undang-undang Nomor 1 Tahun 1974 tentang Perkawinan;</li>\r\n <li>Undang-undang 12 Tahun 2006 tentang Kewarganegaraan Republik Indonesia;</li>\r\n <li>Undang-undang Nomor 23 Tahun 2006 tentang Administrasi Kependudukan;</li>\r\n <li>Peraturan Pemerintah Nomor 9 Tahun 1975 tentang Pelaksanaan Undang-Undang Nomor 1 Tahun 1974 Tentang Perkawinan;</li>\r\n <li>Peraturan Pemerintah Nomor 37 Tahun 2007 tentang Pelaksanaan Undang-undang Nomor 23 Tahun 2006 tentang administrasi Kependudukan;</li>\r\n <li>Peraturan Presiden Nomor 25 Tahun 2008 tentang Persyaratan Dan Tatacara Pendaftaran Penduduk Dan Pencatatan Sipil;</li>\r\n <li>Keputusan Presiden Nomor 88 Tahun 2004 tentang Pengelolaan Administrasi Kependudukan;</li>\r\n <li>Peraturan Menteri Dalam Negeri Nomor 10 Tahun 2005 tentang Pedoman Pendataan Dan Pemberian Surat Keterangan Penganti Dokumen Pendudukan Bagi Pengungsi Dan Penduduk Korban Bencana Di Daerah;</li>\r\n <li>Permendagri 9 Tahun 2016 tentang Percepatan Kepemilikan Akta Kelahiran;</li>\r\n <li>Perda Kabupaten Rembang No 4 tahun 2008 tentang Penyelenggaraan Administrasi Kependudukan.</li>\r\n</ol>\r\n\r\n<h3>SYARAT-SYARAT YANG DIPERLUKAN</h3>\r\n\r\n<ol>\r\n <li>Surat keterangan kelahiran dari Desa/Kelurahan (asli);</li>\r\n <li>Fotocopy buku nikah orang tua (dilegalisir);</li>\r\n <li>Foto copy KK orang tua yang didalamnya sudah memuat nama anak yang akan dibuatkan akta kelahiran dan sudah ber-NIK (KK diluar Kabupaten Rembang dilegalisir);</li>\r\n <li>Fotocopy KTP orang tua;</li>\r\n <li>Fotocopy KTP 2 (dua) orang saksi;</li>\r\n <li>Surat kuasa pengisian biodata bermaterai Rp 6.000,00 bagi yang dikuasakan, dan Fotocopy KTP penerima kuasa;</li>\r\n <li>Bagi anak yang sudah memiliki ijazah supaya melampirkan fotocopy Ijazah;</li>\r\n <li>Bagi Penduduk bukan warga Kabupaten Rembang yang lahir di Kabupaten Rembang syarat nomor (1) diganti dengan surat kelahiran dari bidan/dokter/rumah sakit penolong kelahiran;</li>\r\n <li>Surat Keterangan Tempat Tinggal bagi penduduk sementara;</li>\r\n <li>Untuk Orang Asing Tinggal Tetap, di samping menggunakan persyaratan tersebut di atas harus dilampirkan juga :\r\n <p>Fotocopy dokumen imigrasi yang dilegalisir oleh instansi yang berwenang.</p>\r\n </li>\r\n <li>Untuk anak temuan :\r\n <ol>\r\n  <li>Pencatatan kelahiran bagi anak temuan atau anak yang tidak diketahui asal usulnya dilakukan pejabat pencatatan sipil di kabupaten/kota tempat ditemukannya anak, berdasarkan laporan orang yang menemukan dan bukti-bukti lain yang menguatkan</li>\r\n  <li>Surat keterangan dari kepolisian.</li>\r\n </ol>\r\n </li>\r\n</ol>\r\n\r\n<h3>PROSEDUR</h3>\r\n\r\n<ol>\r\n <li>Pemohon adalah orang tua anak yang lahir, atau orang yang diberi kuasa;</li>\r\n <li>Petugas loket pelayanan Dinas menerima dan memeriksa berkas permohonan.</li>\r\n <li>Apabila berkas belum lengkap maka Petugas mengembalikan kepada pemohon untuk dilengkapi;</li>\r\n <li>Petugas pelayanan meberikan paraf dan nomor pada berkas permohonan yang sudah lengkap,mencatat pada buku pendaftaran akta kelahiran dan menyerahkannya pada petugas register;</li>\r\n <li>Petugas register menerima berkas dan mencatat pada register akta kelahiran dan meneruskan register akta kelahiran ke petugas loket pelayanan.</li>\r\n <li>Petugas loket pelayanan meminta tandatangan pemohon dan saksi-saksi pada register akta kelahiran.</li>\r\n <li>Petugas loket pelayanan mengembalikan register akta kelahiran pada petugas/staf dibidang pencatatan sipil dan menerbitkan tanda terima berkas kepada pemohon.</li>\r\n <li>Petugas pencatat register pada bidang pencatatan sipil memberikan register dan dokumen lainnya kepada kasi pencatatan kelahiran untuk diverifikasi lebih lanjut.</li>\r\n <li>Kasi pencatatan kelahiran memeriksa kesesuaian register dengan berkas pemohon.</li>\r\n <li>Bila telah sesuai, kasi pencatatan kelahiran memberikan paraf pada register akta kelahiran dan meneruskannya pada Operator Komputer.</li>\r\n <li>Operator komputer menginput data register akta kelahiran ke dalam sistem komputer sesuai yang tercatat pada register akta kelahiran dengan menggunakan SIAK dan memastikan sudah diinput dengan benar.</li>\r\n <li>Operator Komputer mencetak Kutipan akta kelahiran pada kertas tindasan dan meneruskan register dan kutipan akta kepada kepala bidang pencatatan sipil;</li>\r\n <li>Kepala bidang pencatatan sipil memverifikasi dan meneliti kesesuain kutipan akta kelahiran dengan berkas pemohon,dan memberikan paraf pada berkas yang telah sesuai;</li>\r\n <li>Operator komputer mencetak kutipan akta kelahiran yang telah diparaf kepala bidang pencatatan sipil pada blangko asli dan meneruskannya ke Kepala  Dinas;</li>\r\n <li>Kepala Dinas menandatangani register dan kutipan akta kelahiran.</li>\r\n <li>Kepala dinas meneruskan register dan dokumen lainnya kepada petugas arsip untuk disimpan, dan meneruskan kutipan akta kelahiran kepada staf tata usaha untuk di stempel selanjutnya diteruskan ke petugas loket penyerahan berkas.</li>\r\n <li>Pemohon menyerahkan tanda terima berkas kepada petugas loket penyerahan berkas;</li>\r\n <li>Petugas loket penyerahan berkas mencari kutipan akta kelahiran sesuai tanda terima berkas dan menyerahkan kutipan akta kelahiran kepada pemohon.</li>\r\n</ol>\r\n\r\n<h3>LAMA WAKTU PENYELESAIAN</h3>\r\n\r\n<p>15 (lima belas ) hari kerja sejak tanggal dipenuhinya semua persyaratan.</p>', '2017-03-18 21:57:40', '2017-03-18 21:59:57', '81f00-akta_lahir.jpg', 'kutipan-akta-kelahiran', 'administrator', 'administrator'),
(9, 'KUTIPAN AKTA KEMATIAN', 'kutipan akta kematian,akta kematian,dindukcapil brebes,disdukcapil brebe,kutipan akta kematian dindukcapil brebes,kabupaten brebes,kota brebes,disdukcapil brebes', 'Dasar hukum, Persyaratan, dan prosedur pembuatan kutipan akta kematian di dinas kependudukan dan pencatatan sipil kabupaten brebes', '<h1>PELAYANAN PENERBITAN KUTIPAN AKTA KEMATIAN</h1>\r\n\r\n<h3>DASAR HUKUM</h3>\r\n\r\n<ol>\r\n <li>Undang-undang Nomor 1 Tahun 1974 tentang Perkawinan;</li>\r\n <li>Undang-undang 12 Tahun 2006 tentang Kewarganegaraan Republik Indonesia;</li>\r\n <li>Undang-undang Nomor 23 Tahun 2006 tentang Administrasi Kependudukan;</li>\r\n <li>Peraturan Pemerintah Nomor 9 Tahun 1975 tentang Pelaksanaan Undang-Undang Nomor 1 Tahun 1974 Tentang Perkawinan;</li>\r\n <li>Peraturan Pemerintah Nomor 37 Tahun 2007 tentang Pelaksanaan Undang-undang Nomor 23 Tahun 2006 tentang administrasi Kependudukan;</li>\r\n <li>Peraturan Presiden Nomor 25 Tahun 2008 tentang Persyaratan Dan Tatacara Pendaftaran Penduduk Dan Pencatatan Sipil;</li>\r\n <li>Keputusan Presiden Nomor 88 Tahun 2004 tentang Pengelolaan Administrasi Kependudukan;</li>\r\n <li>Peraturan Menteri Dalam Negeri Nomor 10 Tahun 2005 tentang Pedoman Pendataan Dan Pemberian Surat Keterangan Penganti Dokumen Pendudukan Bagi Pengungsi Dan Penduduk Korban Bencana Di Daerah;</li>\r\n <li>Perda Kabupaten Nomor 4 tahun 2008 tentang Administrasi Kependudukan.</li>\r\n</ol>\r\n\r\n<h3>SYARAT-SYARAT YANG DIPERLUKAN</h3>\r\n\r\n<ol>\r\n <li>Surat keterangan kematian dari rumah sakit, dokter atau pejabat yang berwenang;</li>\r\n <li>Surat keterangan kematian dari Kelurahan;</li>\r\n <li>Foto copy KK dan KTP yang meninggal, dan KTP yang melaporkan;</li>\r\n <li>Foto copy akta perkawinan/surat nikah bagi yang sudah menikah;</li>\r\n <li>Kutipan Akta kelahiran asli yang meninggal;</li>\r\n <li>Fotocopy KTP saksi (2 orang).</li>\r\n <li>Surat kuasa pengisian biodata bermaterai Rp.6.000,- bagi yang dikuasakan, dan fotcopy KTP penerima kuasa;</li>\r\n <li>Bagi orang asing tinggal tetap melampirkan dokumen imigrasi WNA;</li>\r\n <li>Untuk seseorang yang hilang atau tidak ditemukan jenazah dan/atau tidak jelas identitasnya;\r\n <ol>\r\n  <li>Surat keterangan dari kepolisian</li>\r\n  <li>Salinan penetapan pengadilan mengenai kematian yang hilang atau tidak diketahui jenazahnya.</li>\r\n </ol>\r\n </li>\r\n</ol>\r\n\r\n<h3>PROSEDUR</h3>\r\n\r\n<ol>\r\n <li>Pemohon adalah ahli waris;</li>\r\n <li>Pemohon menyerahkan berkas yang telah ditandatangani Kepala Desa/Lurah ke Petugas loket Pelayanan Dinas Kependudukan dan Pencatatan Sipil.</li>\r\n <li>Petugas loket pelayanan Dinas menerima dan memeriksa berkas permohonan.</li>\r\n <li>Apabila berkas belum lengkap maka Petugas mengembalikan kepada pemohon untuk dilengkapi;</li>\r\n <li>Petugas loket pelayanan memberikan paraf dan nomor pada berkas permohonan yang sudah lengkap,mencatat pada buku pendaftran akta kematian dan menyerahkannya pada petugas di bidang Pencatatan Sipil.</li>\r\n <li>Petugas pada bidang pencatatan sipil menerima berkas dan mencatat pada register akta kematian dan meneruskan register akta kematian ke petugas pelayanan.</li>\r\n <li>Petugas pelayanan meminta tandatangan pemohon dan saksi-saksi pada register akta kematian.</li>\r\n <li>Petugas pelayanan mengembalikan register akta kematian pada petugas dibidang pencatatan sipil dan menerbitkan tanda terima berkas kepada pemohon.</li>\r\n <li>Petugas pencatat register pada bidang pencatatan sipil memberikan register kepada kasi pencatatan kematian untuk diverifikasi lebih lanjut.</li>\r\n <li>Kasi pencatatan kematian memeriksa kesesuaian register dengan berkas pemohon;</li>\r\n <li>Bila telah sesuai, kasi pencatatan kematian memberikan paraf pada register akta kematian dan meneruskannya pada Operator Komputer.</li>\r\n <li>Operator komputer menginput data register akta kematian ke dalam sistem komputer sesuai yang tercatat pada register akta kematian dengan teliti dan memastikan sudah diinput dengan benar.</li>\r\n <li>Operator Komputer mencetak Kutipan akta kematian pada kertas Putih dan meneruskan register dan kutipan akta kematian kepada kepala bidang pencatatan sipil;</li>\r\n <li>Kepala bidang pencatatan sipil memverifikasi dan meneliti kesesuain kutipan akta kematian dengan berkas pemohon,dan memberikan paraf pada berkas yang telah sesuai;</li>\r\n <li>Operator komputer mencetak kutipan akta kematian yang telah diparaf kepala bidang pencatatan sipil pada blangko asli dan meneruskannya ke Kepala  Dinas;</li>\r\n <li>Kepala Dinas menandatangani register dan kutipan akta kematian;</li>\r\n <li>Kepala dinas meneruskan register dan dokumen lainnya kepada petugas arsip untuk disimpan, dan meneruskan kutipan akta kematian kepada staf tata usaha untuk di stempel selanjutnya diteruskan ke petugas loket penyerahan berkas.</li>\r\n <li>Pemohon menyerahkan tanda terima berkas kepada petugas loket penyerahan berkas;</li>\r\n <li>Petugas loket penyerahan berkas mencari kutipan akta kematian sesuai tanda terima berkas dan menyerahkan kutipan akta kematian dan dokumen asli lainnya kepada pemohon.</li>\r\n</ol>', '2017-03-20 15:34:04', '2017-03-21 00:14:51', '865f1-akta_mati.jpg', 'kutipan-akta-kematian', 'administrator', 'administrator'),
(10, 'KUTIPAN AKTA PERKAWINAN', 'kutipan akta perkawinan,akta perkawinan,prosedur pembuatan akta,syarat akta perkawinan,disdukcapil brebes', 'Dasar hukum, Persyaratan, dan prosedur pembuatan Kutipan Akta Perkawinan di dinas kependudukan dan pencatatan sipil kabupaten brebes', '<h1>PELAYANAN PENERBITAN KUTIPAN AKTA PERKAWINAN</h1>\r\n\r\n<h3>DASAR HUKUM</h3>\r\n\r\n<ol>\r\n <li>Undang-undang Nomor 1 Tahun 1974 tentang Perkawinan;</li>\r\n <li>Undang-undang 12 Tahun 2006 tentang Kewarganegaraan Republik Indonesia;</li>\r\n <li>Undang-undang Nomor 23 Tahun 2006 tentang Administrasi Kependudukan;</li>\r\n <li>Peraturan Pemerintah Nomor 9 Tahun 1975 tentang Pelaksanaan Undang-Undang Nomor 1 Tahun 1974 Tentang Perkawinan;</li>\r\n <li>Peraturan Pemerintah Nomor 37 Tahun 2007 tentang Pelaksanaan Undang-undang Nomor 23 Tahun 2006 tentang administrasi Kependudukan;</li>\r\n <li>Peraturan Presiden Nomor 25 Tahun 2008 tentang Persyaratan Dan Tatacara Pendaftaran Penduduk Dan Pencatatan Sipil;</li>\r\n <li>Keputusan Presiden Nomor 88 Tahun 2004 tentang Pengelolaan Administrasi Kependudukan;</li>\r\n <li>Peraturan Menteri Dalam Negeri Nomor 10 Tahun 2005 tentang Pedoman Pendataan Dan Pemberian Surat Keterangan Penganti Dokumen Pendudukan Bagi Pengungsi Dan Penduduk Korban Bencana Di Daerah;</li>\r\n <li>Peraturan Daerah Nomor 4 Tahun 2008 tentang Administrasi Kependudukan.</li>\r\n</ol>\r\n\r\n<h3>SYARAT-SYARAT YANG DIPERLUKAN</h3>\r\n\r\n<ol>\r\n <li>Surat keterangan telah terjadinya perkawinan dari pemuka agama/pendeta atau surat perkawinan penghayat kepercayaan yang ditandatangani oleh pemuka penghayat kepercayaan.</li>\r\n <li>Fotocopy KTP suami dan istri</li>\r\n <li>KK lama suami dan istri</li>\r\n <li>Foto copy akta kelahiran suami dan istri;</li>\r\n <li>Akta perceraian/akta kematian yang asli bagi yang sudah pernah menikah;</li>\r\n <li>Pas foto 4 x 6 hitam putih/berwarna berjajar/ berdampingan sebanyak 2 lembar;</li>\r\n <li>Menghadapkan 2 orang saksi pada saat pelaksanaan pencatatan perkawinan dengan melampirkan foto copy KTP yang berlaku (saksi berusia 21 tahun ke atas);</li>\r\n <li>Surat ijin komandan bagi anggota TNI/Polri;</li>\r\n <li>Paspor bagi suami atau istri orang asing.</li>\r\n</ol>\r\n\r\n<h3>PROSEDUR</h3>\r\n\r\n<ol>\r\n <li>Pemohon datang sendiri dan tidak bisa diwakilkan ke Dinas Kependudukan Dan Catatan Sipil untuk mendaftarkan diri sekurang-kurangnya 20 (dua puluh) hari sebelum tanggal perkawinan dan mengambil formuir pelaporan perkawinan.</li>\r\n <li>Setelah mengisi blanko yang diterima, pemohon menyerahkan blanko dan persyaratan lainnya kepada petugas loket;</li>\r\n <li>Petugas Loket  menerima dan meneliti berkas dan memberikan informasi kepada pemohon tentang masa berlaku, lama penyelesaian;</li>\r\n <li>Apabila berkas belum lengkap maka petugas mengembalikan kepada pemohon untuk dilengkapi;</li>\r\n <li>Petugas Loket memberikan paraf pada berkas sebagai tanda sudah lengkap dan menyerahkan berkas kepada register untuk diproses lebih lanjut;</li>\r\n <li>Petugas meneliti dan mencatat data pemohon dalam register Akta Perkawinan sesuai berkas;</li>\r\n <li>Petugas meminta tandatangan pelapor dan saksi-saksi pada register akta perkawinan;</li>\r\n <li>Petugas meneruskan berkas dan register akta perkawinan kepada kasi pencatatan perkawinan untuk diverifikasi;</li>\r\n <li>Kasi pencatatan perkawinan memeriksa kesesuaian register dengan data pada berkas pemohon;</li>\r\n <li>Operator komputer menginput data register akta perkawinan ke dalam system komputer dengan teliti;</li>\r\n <li>Setelah memastikan sudah diiput dengan benar, operator komputer mencetak kutipan akta perkawinan pada kertas putih;</li>\r\n <li>Operator Komputer mencetak Kutipan akta perkawinan pada kertas putih dan meneruskan register dan kutipan akta perkawinan kepada kepala bidang pencatatan sipil;</li>\r\n <li>Kepala bidang pencatatan sipil memverifikasi dan meneliti kesesuain kutipan akta perkawinan dengan berkas pemohon,dan memberikan paraf pada berkas yang telah sesuai;</li>\r\n <li>Petugas operator komputer meneruskan kutipan akta perkawinan, register, dan berkas kepada petugas di bidang pencatatan sipil untuk diteruskan kepada Kepala Dinas untuk diparaf;</li>\r\n <li>Kepala dinas meneliti dan menandatangani kutipan akta perkawinan dan dokumen lainnya;</li>\r\n <li>Kepala dinas meneruskan register dan dokumen lainnya kepada petugas arsip untuk disimpan, dan meneruskan kutipan akta perkawinan untuk di stempel selanjutnya diteruskan ke petugas loket penyerahan berkas.</li>\r\n <li>Petugas arsip menyimpan berkas pada ruang arsip;</li>\r\n <li>Pemohon pada batas waktu proses yang telah ditentukan mendatangi Loket Pelayanan pada Dinas Kependudukan dan Pencatatan Sipil;</li>\r\n <li>Petugas Loket menyerahkan Kutipan Akta perkawinan serta dokumen asli lainnya kepada pemohon.</li>\r\n</ol>', '2017-03-20 15:37:34', '2017-03-21 00:17:33', 'Akta_Perkawinan.jpg', 'kutipan-akta-perkawinan', 'administrator', 'administrator'),
(11, 'Kutipan Akta Perceraian', 'akta perceraian,kutipan akta perceraian,cara membuat akta perceraian,dindukcapil brebes,disdukcapil brebes', 'dasar hukum, persyaratan, dan prosedur pembuatan kutipan akta perceraian', '<h1>PELAYANAN PENERBITAN KUTIPAN AKTA PERCERAIAN</h1>\r\n\r\n<h3>DASAR HUKUM</h3>\r\n\r\n<ol>\r\n <li>Undang-undang Nomor 1 Tahun 1974 tentang Perkawinan;</li>\r\n <li>Undang-undang 12 Tahun 2006 tentang Kewarganegaraan Republik Indonesia;</li>\r\n <li>Undang-undang Nomor 23 Tahun 2006 tentang Administrasi Kependudukan;</li>\r\n <li>Peraturan Pemerintah Nomor 9 Tahun 1975 tentang Pelaksanaan Undang-Undang Nomor 1 Tahun 1974 Tentang Perkawinan;</li>\r\n <li>Peraturan Pemerintah Nomor 37 Tahun 2007 tentang Pelaksanaan Undang-undang Nomor 23 Tahun 2006 tentang administrasi Kependudukan;</li>\r\n <li>Peraturan Presiden Nomor 25 Tahun 2008 tentang Persyaratan Dan Tatacara Pendaftaran Penduduk Dan Pencatatan Sipil;</li>\r\n <li>Keputusan Presiden Nomor 88 Tahun 2004 tentang Pengelolaan Administrasi Kependudukan;</li>\r\n <li>Peraturan Menteri Dalam Negeri Nomor 10 Tahun 2005 tentang Pedoman Pendataan Dan Pemberian Surat Keterangan Penganti Dokumen Pendudukan Bagi Pengungsi Dan Penduduk Korban Bencana Di Daerah;</li>\r\n</ol>\r\n\r\n<h3>SYARAT-SYARAT YANG DIPERLUKAN</h3>\r\n\r\n<ol>\r\n <li>Surat penetapan perceraian dari Pengadilan Negeri yang telah mempunyai kekuatan hukum yang sah;</li>\r\n <li>Foto copy KK dan KTP yang bersangkutan;</li>\r\n <li>Akta perkawinan asli yang bersangkutan;</li>\r\n <li>Mengisi blanko permohonan;</li>\r\n <li>Surat Keterangan Ganti Nama bagi yang sudah ganti nama;</li>\r\n <li>Untuk Orang Asing harus melampirkan persyaratan tambahan yaitu\r\n <ol>\r\n  <li>Dokumen keimigrasian;</li>\r\n  <li>Paspor.</li>\r\n </ol>\r\n </li>\r\n</ol>\r\n\r\n<h3>PROSEDUR</h3>\r\n\r\n<ol>\r\n <li>Pemohon ke Dinas Kependudukan dan Pencatatan Sipil mengambil blanko akta perceraian;</li>\r\n <li>Pemohon mendatangi loket pelayanan Dinas Kependudukan dan Pencatatan Sipil dengan membawa berkas lengkap beserta dokumen aslinya;</li>\r\n <li>Petugas Loket pada Dinas Kependudukan dan Pencatatan Sipil menerima dan meneliti berkas dan memberikan informasi kepada pemohon tentang masa berlaku, lama penyelesaian;</li>\r\n <li>Apabila berkas belum lengkap maka petugas mengembalikan kepada pemohon untuk dilengkapi;</li>\r\n <li>Petugas Loket memberikan paraf pada berkas sebagai tanda sudah lengkap dan menyerahkan berkas kepada petugas register untuk diproses lebih lanjut;</li>\r\n <li>Petugas meneliti dan mencatat data pemohon dalam register Akta perceraian sesuai berkas;</li>\r\n <li>Petugas meminta tandatangan pelapor  pada register akta perceraian;</li>\r\n <li>Petugas meneruskan berkas dan register akta perceraian kepada kasi pencatatan perceraian untuk diverifikasi;</li>\r\n <li>Kasi pencatatan perceraian memeriksa kesesuaian register dengan data pada berkas pemohon;</li>\r\n <li>Operator komputer menginput data register akta perceraian ke dalam system komputer dengan teliti Setelah memastikan sudah diiput dengan benar, operator komputer mencetak kutipan akta perceraian pada kertas putih;</li>\r\n <li>Operator Komputer mencetak Kutipan akta perceraian pada kertas putih dan meneruskan register dan kutipan akta perceraian kepada kepala bidang pencatatan sipil;</li>\r\n <li>Kepala bidang pencatatan sipil memverifikasi dan meneliti kesesuain kutipan akta perceraian dengan berkas pemohon,dan memberikan paraf pada berkas yang telah sesuai;</li>\r\n <li>Petugas operator komputer mencetak pada blangko asli dan meneruskan kutipan akta perceraian, register, dan berkas kepada petugas di bidang pencatatan sipil untuk diteruskan kepada kepala dinas;</li>\r\n <li>Petugas dibidang pencatatan sipil meneruskan kutipan akta perceraian, register, dan berkas kepada kepala dinas;</li>\r\n <li>Kepala dinas meneliti dan menandatangani kutipan akta perceraian dan dokumen lainnya;</li>\r\n <li>Kepala dinas meneruskan register, berkas, dan dokumen lainnya kepada Petugas arsip dan meneruskan kutipan Akta Perceraian kepada Petugas Loket Pelayanan;</li>\r\n <li>Petugas arsip menyimpan berkas pada ruang arsip;</li>\r\n <li>Pemohon pada batas waktu proses yang telah ditentukan mendatangi Loket Pelayanan pada Dinas Kependudukan dan Pencatatan Sipil;</li>\r\n <li>Petugas Loket menyerahkan akta perceraian .</li>\r\n</ol>', '2017-03-20 23:28:28', '2017-03-20 23:29:09', '', 'kutipan-akta-perceraian', 'administrator', 'administrator');
INSERT INTO `pages` (`page_id`, `title`, `keyword`, `desc`, `content`, `create_date`, `update_date`, `img`, `url`, `user`, `redaktur`) VALUES
(12, 'Pencatatan Pengakuan Anak dan Pengesahan Anak', 'Pencatatan Pengakuan Anak dan Pengesahan Anak,dindukcapil brebes,pengakuan anak,dokumen pengakuan anak,pengesahan anak,dokumen pengesahan anak,disdukcapil brebes', 'Dasar Hukum, Persyaratan, dan Prosedur pelayanan pencatatan anak dan pengesahan anak', '<h1>PELAYANAN PENCATATAN PENGAKUAN ANAK DAN PENGESAHAN ANAK</h1>\r\n\r\n<h3>DASAR HUKUM</h3>\r\n\r\n<ol>\r\n <li>Undang-undang Nomor 1 Tahun 1974 tentang Perkawinan;</li>\r\n <li>Undang-undang 12 Tahun 2006 tentang Kewarganegaraan Republik Indonesia;</li>\r\n <li>Undang-undang Nomor 23 Tahun 2006 tentang Administrasi Kependudukan;</li>\r\n <li>Peraturan Pemerintah Nomor 9 Tahun 1975 tentang Pelaksanaan Undang-Undang Nomor 1 Tahun 1974 Tentang Perkawinan;</li>\r\n <li>Peraturan Pemerintah Nomor 37 Tahun 2007 tentang Pelaksanaan Undang-undang Nomor 23 Tahun 2006 tentang administrasi Kependudukan;</li>\r\n <li>Peraturan Presiden Nomor 25 Tahun 2008 tentang Persyaratan Dan Tatacara Pendaftaran Penduduk Dan Pencatatan Sipil;</li>\r\n <li>Keputusan Presiden Nomor 88 Tahun 2004 tentang Pengelolaan Administrasi Kependudukan;</li>\r\n <li>Peraturan Menteri Dalam Negeri Nomor 10 Tahun 2005 tentang Pedoman Pendataan Dan Pemberian Surat Keterangan Penganti Dokumen Pendudukan Bagi Pengungsi Dan Penduduk Korban Bencana Di Daerah;</li>\r\n</ol>\r\n\r\n<h3>SYARAT-SYARAT YANG DIPERLUKAN</h3>\r\n\r\n<ol>\r\n <li>Pengakuan anak;\r\n <ol>\r\n  <li>Surat pengantar RT/RW dan diketahui Kepala Desa/Lurah;</li>\r\n  <li>Surat Pengakuan Anak dari ayah biologis yang disetujui ibu kandung;</li>\r\n  <li>Kutipan akta kelahiran;</li>\r\n  <li>Fotocopy KK dan KTP ayah bioogis dan ibu kandung;</li>\r\n </ol>\r\n </li>\r\n <li>Pengesahan anak;\r\n <ol>\r\n  <li>Surat pengantar dari RT/RW dan diketahui Kepala Desa/Lurah;</li>\r\n  <li>Kutipan Akta Kelahiran;</li>\r\n  <li>Fotocopy Kutipan Akta Perkawinan;</li>\r\n  <li>Fotocopy KK;dan</li>\r\n  <li>Fotocopy KTP pemohon;</li>\r\n </ol>\r\n </li>\r\n</ol>\r\n\r\n<h3>PROSEDUR</h3>\r\n\r\n<ol>\r\n <li>Pemohon ke Dinas Kependudukan dan Pencatatan Sipil mengambil formulir pelaporan Pengakuan Anak /Pengesahan Anak;</li>\r\n <li>Pemohon mendatangi loket pelayanan Dinas Kependudukan dan Pencatatan Sipil dengan membawa berkas lengkap beserta dokumen aslinya;</li>\r\n <li>Petugas Loket pada Dinas Kependudukan dan Pencatatan Sipil menerima dan meneliti berkas dan memberikan informasi kepada pemohon tentang masa berlaku, lama penyelesaian;</li>\r\n <li>Apabila berkas belum lengkap maka petugas mengembalikan kepada pemohon untuk dilengkapi;</li>\r\n <li>Petugas Loket memberikan paraf pada berkas sebagai tanda sudah lengkap dan menyerahkan berkas kepada kasi Pengakuan Anak /Pengesahan Anak nama untuk diverifikasi;</li>\r\n <li>Kasi pencatatan Pengakuan Anak/Pengesahan Anak memeriksa kelengkapan berkas dan memberikan para pada berkas yang sudah lengkap;</li>\r\n <li>Kasi Pengakuan Anak/Pengesahan Anak menyerahkan berkas permohonan kepada petugas register di bidang pencatatan sipil untuk dicatat dalam register;</li>\r\n <li>Petugas meneliti dan mencatat data pemohon dalam register Pengakuan Anak /Pengesahan Anak sesuai berkas dan meneruskan ke operator komputer;</li>\r\n <li>Operator komputer menginput data register akta Pengakuan Anak /Pengesahan Anak ke dalam system komputer dengan teliti Setelah memastikan sudah diiput dengan benar, operator komputer melakukan catatan pinggir pada register akta dan kutipan akta catatan sipil;</li>\r\n <li>Operator Komputer mencetak akta dan Kutipan akta Pengakuan Anak/Pengesahan Anak kemudian meneruskan register dan kutipan akta Pengakuan Anak/Pengesahan Anak kepada kepala bidang pencatatan sipil;</li>\r\n <li>Kepala bidang pencatatan sipil memverifikasi dan meneliti kesesuain kutipan akta Pengakuan Anak/Pengesahan Anak dengan berkas pemohon,dan memberikan paraf pada berkas yang telah sesuai;</li>\r\n <li>Petugas operator komputer mencetak pada blangko asli dan meneruskan kutipan akta Pengakuan Anak/Pengesahan Anak, register, dan berkas lain kepada petugas di bidang pencatatan sipil untuk diparaf kepala bidang pencatatan sipil dan untuk diteruskan kepada Kepala Dinas;</li>\r\n <li>Kepala Dinas meneliti dan menandatangani Kutipan Akta Pengakuan Anak/Pengesahan Anak dan dokumen lainnya;</li>\r\n <li>Kepala Dinas meneruskan register, berkas, dan dokumen lainnya kepada Petugas arsip dan meneruskan kutipan Akta Pengakuan Anak /Pengesahan Anak kepada Petugas Loket Pelayanan;</li>\r\n <li>Petugas arsip menyimpan berkas pada ruang arsip;</li>\r\n <li>Pemohon pada batas waktu proses yang telah ditentukan mendatangi Loket Pelayanan pada Dinas Kependudukan dan Pencatatan Sipil;</li>\r\n <li>Petugas Loket menyerahkan akta Pengakuan Anak/Pengesahan Anak serta dokumen asli lainnya kepada pemohon.</li>\r\n</ol>', '2017-03-21 00:04:08', '2017-03-21 00:04:08', '', 'pencatatan-pengakuan-anak-dan-pengesahan-anak', 'administrator', 'administrator'),
(13, 'PENCATATAN PERUBAHAN NAMA', 'perubahan nama,syarat perubahan nama,pelayanan perubahan nama,dindukcapil brebes,dinas kependudukan,prosedur pencatatan perubahan nama', 'Dasar hukum, persyaratan, dan Prosedur pelayanan perubahan nama di Dinas Kependudukan dan Pencatatan Sipil Kabupaten Brebes', '<h1>PELAYANAN PENCATATAN PERUBAHAN NAMA</h1>\r\n\r\n<h3>DASAR HUKUM</h3>\r\n\r\n<ol>\r\n <li>Undang-undang Nomor 1 Tahun 1974 tentang Perkawinan;</li>\r\n <li>Undang-undang 12 Tahun 2006 tentang Kewarganegaraan Republik Indonesia;</li>\r\n <li>Undang-undang Nomor 23 Tahun 2006 tentang Administrasi Kependudukan;</li>\r\n <li>Peraturan Pemerintah Nomor 9 Tahun 1975 tentang Pelaksanaan Undang-Undang Nomor 1 Tahun 1974 Tentang Perkawinan;</li>\r\n <li>Peraturan Pemerintah Nomor 37 Tahun 2007 tentang Pelaksanaan Undang-undang Nomor 23 Tahun 2006 tentang administrasi Kependudukan;</li>\r\n <li>Peraturan Presiden Nomor 25 Tahun 2008 tentang Persyaratan Dan Tatacara Pendaftaran Penduduk Dan Pencatatan Sipil;</li>\r\n <li>Keputusan Presiden Nomor 88 Tahun 2004 tentang Pengelolaan Administrasi Kependudukan;</li>\r\n <li>Peraturan Menteri Dalam Negeri Nomor 10 Tahun 2005 tentang Pedoman Pendataan Dan Pemberian Surat Keterangan Penganti Dokumen Pendudukan Bagi Pengungsi Dan Penduduk Korban Bencana Di Daerah;</li>\r\n <li>Peraturan Daerah Kabupaten Tegal Nomor 3 Tahun 2010 tentang Penyelenggaraan Administrasi Kependudukan;</li>\r\n <li>Peraturan Daerah Kabupaten Tegal Nomor 2 Tahun 2012 tentang Retribusi Daerah;</li>\r\n <li>Peraturan Bupati Tegal Nomor 24 Tahun 2010 tentang Persyaratan Dan Tata Cara Pendaftaran Penduduk Dan Pencatatan Sipil;</li>\r\n</ol>\r\n\r\n<h3>SYARAT-SYARAT YANG DIPERLUKAN</h3>\r\n\r\n<ol>\r\n <li>Salinan penetapan perubahan nama dari pengadilan atau instansi yang berwenang;</li>\r\n <li>Kutipan Akta kelahiran (asli dan fotocopy);</li>\r\n <li>Fotocopy KK dan KTP yang masih berlaku;</li>\r\n <li>Surat kuasa pengisian biodata bermaterai Rp 6.000,00 bagi yang diwakilkan, dan Fotocopy KTP penerima kuasa;</li>\r\n</ol>\r\n\r\n<h3>PROSEDUR</h3>\r\n\r\n<ol>\r\n <li>Pemohon ke Dinas Kependudukan dan Pencatatan Sipil mengambil blanko perubahan nama;</li>\r\n <li>Pemohon mendatangi loket pelayanan Dinas Kependudukan dan Pencatatan Sipil dengan membawa berkas lengkap beserta dokumen aslinya;</li>\r\n <li>Petugas Loket pada Dinas Kependudukan dan Pencatatan Sipil menerima dan meneliti berkas dan memberikan informasi kepada pemohon tentang masa berlaku, lama penyelesaian, dan besarnya retribusi yang harus dibayar pemohon;</li>\r\n <li>Apabila berkas belum lengkap maka petugas mengembalikan kepada pemohon untuk dilengkapi;</li>\r\n <li>Petugas Loket memberikan paraf pada berkas sebagai tanda sudah lengkap dan menyerahkan berkas kepada kasi pencatatan perubahan nama untuk diverifikasi;</li>\r\n <li>Kasi pencatatan perubahan nama memeriksa kelengkapan berkas dan memberikan para pada berkas yang sudah lengkap;</li>\r\n <li>Kasi pencatatan perubahan nama menyerahkan berkas permohonan kepada petugas register di bidang pencatatan sipil untuk dicatat dalam register;</li>\r\n <li>Petugas meneliti dan mencatat data pemohon dalam register perubahan nama sesuai berkas;</li>\r\n <li>Petugas meneruskan berkas dan register akta perubahan nama kepada kasir;</li>\r\n <li>Kasir menerima uang dan menerbitkan kwitansi serta memberi nomor pada berkas permohonan sesuai nomor kwitansi;</li>\r\n <li>Kasir menyerahkan berkas permohonan kepada petugas operator computer dinas untuk diproses lebih lanjut;</li>\r\n <li>Operator komputer menginput data register akta perubahan nama ke dalam system komputer dengan teliti Setelah memastikan sudah diiput dengan benar, operator komputer melakukan catatan pinggir pada register akta dan kutipan akta catatan sipil;</li>\r\n <li>Operator Komputer mencetak akta dan Kutipan akta kemudian meneruskan register dan kutipan akta catatan sipil kepada kepala bidang pencatatan sipil;</li>\r\n <li>Kepala bidang pencatatan sipil memverifikasi dan meneliti kesesuain kutipan akta catatan sipil dengan berkas pemohon,dan memberikan paraf pada berkas yang telah sesuai;</li>\r\n <li>Petugas operator komputer mencetak pada blangko asli dan meneruskan kutipan akta perubahan nama, register, dan berkas lain kepada petugas di bidang pencatatan sipil untuk diparaf kepala bidang pencatatan sipil dan diteruskan kepada sekretaris dinas untuk diparaf;</li>\r\n <li>Staf tata usaha meneruskan kutipan akta peruabahan nama, register, dan berkas lain yang telah diparaf sekretaris dinas kepada kepala dinas;</li>\r\n <li>Kepala dinas meneliti dan menandatangani kutipan akta perubahan nama dan dokumen lainnya;</li>\r\n <li>Kepala dinas meneruskan register, berkas, dan dokumen lainnya kepada Petugas arsip dan meneruskan kutipan Akta Perubahan nama kepada Petugas Loket Pelayanan;</li>\r\n <li>Petugas arsip menyimpan berkas pada ruang arsip;</li>\r\n <li>Pemohon pada batas waktu proses yang telah ditentukan mendatangi Loket Pelayanan pada Dinas Kependudukan dan Pencatatan Sipil;</li>\r\n <li>Pemohon dengan menunjukkan tanda terima pembayaran menyerahkan kepada Petugas Loket;</li>\r\n <li>Petugas Loket menyerahkan akta perubahan nama serta dokumen asli lainnya kepada pemohon.</li>\r\n</ol>', '2017-03-21 11:40:11', '2017-03-21 11:40:11', '', 'pencatatan-perubahan-nama', 'administrator', 'administrator'),
(15, 'PENCATATAN PERUBAHAN KEWARGANEGARAAN', 'perubahan kewarganegaraan,dinas kependudukan,dindukcapil brebes,dinas kependudukan dan pecatatan sipil kabupaten brebes,pelayanan perubahan kewarganegaraan', 'Dasar hukum, persyaratan, dan prosedur pelayanan pencatatan perubahan kewarganegaraan di Dinas Kependudukan dan Pencatatan Sipil Kabupaten Brebes', '<h1>PELAYANAN PENCATATAN PERUBAHAN KEWARGANEGARAAN</h1>\r\n\r\n<h3>DASAR HUKUM</h3>\r\n\r\n<ol>\r\n <li>Undang-undang Nomor 1 Tahun 1974 tentang Perkawinan;</li>\r\n <li>Undang-undang 12 Tahun 2006 tentang Kewarganegaraan Republik Indonesia;</li>\r\n <li>Undang-undang Nomor 23 Tahun 2006 tentang Administrasi Kependudukan;</li>\r\n <li>Peraturan Pemerintah Nomor 9 Tahun 1975 tentang Pelaksanaan Undang-Undang Nomor 1 Tahun 1974 Tentang Perkawinan;</li>\r\n <li>Peraturan Pemerintah Nomor 37 Tahun 2007 tentang Pelaksanaan Undang-undang Nomor 23 Tahun 2006 tentang administrasi Kependudukan;</li>\r\n <li>Peraturan Presiden Nomor 25 Tahun 2008 tentang Persyaratan Dan Tatacara Pendaftaran Penduduk Dan Pencatatan Sipil;</li>\r\n <li>Keputusan Presiden Nomor 88 Tahun 2004 tentang Pengelolaan Administrasi Kependudukan;</li>\r\n <li>Peraturan Menteri Dalam Negeri Nomor 10 Tahun 2005 tentang Pedoman Pendataan Dan Pemberian Surat Keterangan Penganti Dokumen Pendudukan Bagi Pengungsi Dan Penduduk Korban Bencana Di Daerah;</li>\r\n</ol>\r\n\r\n<h3>SYARAT-SYARAT YANG DIPERLUKAN</h3>\r\n\r\n<ol>\r\n <li>Fotocopy Salinan Keputusan Presiden tentang Perubahan Status Kewarganegaraan menjadi WNI; atau</li>\r\n <li>Fotocopy Salinan Keputusan Menteri yang bidang tugasnya meliputi urusan kewarganegaraan yang dilegalisir oleh instansi yang berwenang;</li>\r\n <li>Fotocopy KK dan KTP yang masih berlaku;</li>\r\n <li>Kutipan akta-akta catatan sipil;</li>\r\n <li>Kutipan akta perkawinan/akta nikah bagi yang sudah kawin;</li>\r\n <li>Bagi penduduk WNA membawa dokumen imigrasi, SKLD dari Kepolisian dan Surat Keterangan dari Perwakilan Negara yang bersangkutan (dengan memperlihatkan dokumen aslinya);</li>\r\n <li>Bagi penduduk WNA tinggal terbatas membawa SKTT dan WNA tinggal tetap membawa KK dan KTP;</li>\r\n <li>Surat kuasa pengisian biodata bermaterai Rp 6.000,00 bagi yang dikuasakan, dan Fotocopy penerima kuasa;</li>\r\n</ol>\r\n\r\n<h3>PROSEDUR</h3>\r\n\r\n<ol>\r\n <li>Pemohon ke Dinas Kependudukan dan Pencatatan Sipil mengambil blanko perubahan Kewarganegaraan;</li>\r\n <li>Pemohon mendatangi loket pelayanan Dinas Kependudukan dan Pencatatan Sipil dengan membawa berkas lengkap beserta dokumen aslinya;</li>\r\n <li>Petugas Loket pada Dinas Kependudukan dan Pencatatan Sipil menerima dan meneliti berkas dan memberikan informasi kepada pemohon tentang masa berlaku, lama penyelesaian, dan besarnya retribusi yang harus dibayar pemohon;</li>\r\n <li>Apabila berkas belum lengkap maka petugas mengembalikan kepada pemohon untuk dilengkapi;</li>\r\n <li>Petugas Loket memberikan paraf pada berkas sebagai tanda sudah lengkap dan menyerahkan berkas kepada kasi pencatatan perubahan Kewarganeagraan untuk diverifikasi;</li>\r\n <li>Kasi kasi pencatatan perubahan Kewarganeagraan memeriksa kelengkapan berkas dan memberikan para pada berkas yang sudah lengkap;</li>\r\n <li>Kasi kasi pencatatan perubahan Kewarganeagraan menyerahkan berkas permohonan kepada petugas register di bidang Pendaftaran Penduduk untuk dicatat dalam register;</li>\r\n <li>Petugas meneliti dan mencatat data pemohon dalam register perubahan kewarganegaraan sesuai berkas;</li>\r\n <li>Petugas meneruskan berkas dan register kepada kasir;</li>\r\n <li>Kasir menerima uang dan menerbitkan kwitansi serta memberi nomor pada berkas permohonan sesuai nomor kwitansi;</li>\r\n <li>Kasir menyerahkan berkas permohonan kepada petugas operator komputer dinas untuk diproses lebih lanjut;</li>\r\n <li>Operator komputer menginput data register akta perubahan kewarganegaraan ke dalam system komputer dengan teliti setelah memastikan sudah diiput dengan benar, operator komputer melakukan catatan pinggir pada akta dan kutipan akta catatan sipil;</li>\r\n <li>Operator Komputer mencetak akta dan Kutipan akta kemudian meneruskan register dan kutipan akta catatan sipil kepada kepala bidang Pencatatan Sipil;</li>\r\n <li>Kepala bidang Pencatatan Sipil memverifikasi dan meneliti kesesuain kutipan akta catatan sipil dengan berkas pemohon,dan memberikan paraf pada berkas yang telah sesuai;</li>\r\n <li>Petugas operator komputer mencetak pada blangko asli dan meneruskan kutipan akta perubahan kewarganegaraan, register, dan berkas lain kepada petugas di bidang Pencatatan Sipil untuk diparaf kepala bidang Pencatatan Sipil dan diteruskan kepada Sekretaris Dinas untuk diparaf;</li>\r\n <li>Staf tata usaha meneruskan kutipan akta perubahan Kewarganegaraan, register, dan berkas lain yang telah diparaf Sekretaris Dinas kepada Kepala Dinas;</li>\r\n <li>Kepala dinas meneliti dan menandatangani Kutipan Akta Perubahan Kewarganegaraan dan dokumen lainnya;</li>\r\n <li>Kepala Dinas meneruskan register, berkas, dan dokumen lainnya kepada Petugas arsip dan meneruskan kutipan Akta Perubahan Kewarganegaraan kepada Petugas Loket Pelayanan;</li>\r\n <li>Petugas arsip menyimpan berkas pada ruang arsip;</li>\r\n <li>Pemohon pada batas waktu proses yang telah ditentukan mendatangi Loket Pelayanan pada Dinas Kependudukan dan Pencatatan Sipil;</li>\r\n <li>Pemohon dengan menunjukkan tanda terima pembayaran menyerahkan kepada Petugas Loket;</li>\r\n <li>Petugas Loket menyerahkan akta perubahan nama serta dokumen asli lainnya kepada pemohon.</li>\r\n</ol>', '2017-03-21 11:54:13', '2017-03-21 11:54:13', '', 'pencatatan-perubahan-kewarganegaraan', 'administrator', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `pelayanan`
--

CREATE TABLE IF NOT EXISTS `pelayanan` (
`pelayanan_id` int(11) NOT NULL,
  `no_permohonan` varchar(17) NOT NULL,
  `nama_pemohon` varchar(100) NOT NULL,
  `nik_pemohon` varchar(16) NOT NULL,
  `jenis_pelayanan` varchar(50) NOT NULL,
  `status` enum('0','1','2','3') NOT NULL,
  `jenis_lahir` enum('lu','lt') NOT NULL,
  `no_akta` int(10) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `jenis_id` int(11) NOT NULL,
  `tanggal_permohonan` datetime NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `pelayanan`
--

INSERT INTO `pelayanan` (`pelayanan_id`, `no_permohonan`, `nama_pemohon`, `nik_pemohon`, `jenis_pelayanan`, `status`, `jenis_lahir`, `no_akta`, `alamat`, `jenis_id`, `tanggal_permohonan`, `keterangan`) VALUES
(1, 'SKP/12042017/0001', 'pandu aldi pratama', '3329091308940002', 'SKPWNI', '3', '', 0, 'pulosari kec. brebes', 1, '2017-04-12 10:27:11', 'Berkas belum lengkap'),
(2, 'AKM/02052017/0001', 'pandu aldi pratama', '3329091308940002', 'Kematian', '0', '', 0, 'pulosari kec. brebes', 5, '2017-05-02 14:45:01', 'kematian atas nama'),
(3, 'SKP/12042017/0002', 'Bendy Abdul Rahman', '3329082502076159', 'SKPWNI', '0', '', 0, 'Desa Klampok Rt 002/005', 1, '2017-04-12 10:35:12', 'askasooawokqw'),
(10, 'SKP/01052017/0001', 'pemohon', '3329140107840507', 'SKPWNI', '0', '', 0, 'alamat pemohon', 1, '2017-05-01 22:45:08', 'keterangan'),
(11, 'SKP/01052017/0002', 'AHMAD', '3329091308192891', 'SKPWNI', '1', '', 0, 'Brebes', 1, '2017-05-01 22:47:34', 'oaksldk'),
(12, 'SKP/01052017/0003', 'AHMAD', '3329091308192891', 'SKPWNI', '2', '', 0, 'Brebes', 1, '2017-05-01 22:57:08', 'sdasfasas'),
(13, 'SKD/01052017/0001', 'AHMAD', '3329091308192891', 'SKDWNI', '0', '', 0, 'Brebes', 2, '2017-05-01 22:59:39', 'asda'),
(14, 'SKP/01052017/0004', 'AHMAD', '3329091308192891', 'SKPWNI', '0', '', 0, 'Brebes', 1, '2017-05-01 23:01:10', 'sjasij'),
(15, 'AKL/02052017/0001', 'AHMAD', '3329091308192891', 'kelahiran', '0', 'lu', 12546, 'Brebes', 4, '2017-05-02 14:48:38', 'asda'),
(16, 'SKT/10072017/0001', 'pandu aldi pratama', '3329091308940002', 'Surat Keterangan KTP-EL', '3', '', 0, 'pulosari kec. brebes', 3, '2017-07-10 17:07:47', 'berkas tidak lengkap'),
(17, 'AKM/14082017/0001', 'pandu aldi pratama', '3329091308940002', 'Kematian', '2', '', 0, 'pulosari kec. brebes', 5, '2017-08-14 14:51:47', 'akta'),
(18, 'SKT/15082017/0001', 'pandu aldi pratama', '3329091308940002', 'Surat Keterangan KTP-EL', '2', '', 0, 'pulosari kec. brebes', 3, '2017-08-15 08:25:21', 'keterangan');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
`role_id` int(11) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role`) VALUES
(1, 'admin'),
(2, 'redaktur'),
(3, 'operator dinas'),
(4, 'operator kecamatan');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE IF NOT EXISTS `semester` (
`semester_id` int(11) NOT NULL,
  `semester` int(1) NOT NULL,
  `tahun` int(4) NOT NULL,
  `url` varchar(70) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`semester_id`, `semester`, `tahun`, `url`) VALUES
(2, 1, 2016, 'semester-1-2016'),
(3, 2, 2016, 'semester-2-2016'),
(4, 1, 2017, 'semester-1-2017');

-- --------------------------------------------------------

--
-- Table structure for table `setting_web`
--

CREATE TABLE IF NOT EXISTS `setting_web` (
`setting_id` int(11) NOT NULL,
  `setting_name` varchar(200) NOT NULL,
  `setting_content` varchar(400) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `setting_web`
--

INSERT INTO `setting_web` (`setting_id`, `setting_name`, `setting_content`) VALUES
(1, 'base_url', 'web_dindukcapil'),
(2, 'email', 'dindukcapilbrebes@gmail.com'),
(3, 'telp', '(0283) 0000 000'),
(4, 'pelayanan_online', 'http://dindukcapil.brebeskab.go.id/ol'),
(5, 'alamat', 'Jln. Pangeran Diponegoro 150'),
(6, 'kota', 'brebes'),
(7, 'kode_pos', '52212'),
(8, 'official_web', 'http://dindukcapil.brebeskab.go.id/'),
(9, 'pegawai_info', 'Berikut adalah Pegawai dan Staff di Dinas Kependudukan dan Pencatantan Sipil Kabupaten Brebes'),
(10, 'download_info', 'Silahkan Download file dibawah ini. Sebagai bahan referensi anda.'),
(11, 'suara_info', 'Tulis pesan, kritik dan saran anda pada kolom komentar dibawah ini.'),
(12, 'home_kependudukan', 'Melayani Kartu Tanda Penduduk (KTP), Kartu Keluarga (KK), Surat Keterangan Pindah (SKPWNI), Surat Keterangan Datang (SKDWNI)'),
(13, 'home_capil', 'Pencatatan Kelahiran, Pencatatan Kematian, Pencatatan Perkawinan dan Pencatatan Perceraian, Perubahan Nama, Perubahan Kewarganeraan'),
(14, 'home_statistik', 'Jumlah Penduduk, Jumlah Keluarga, dll'),
(15, 'google-site-verification', 'xbtsjmalyc_3XrzVgwPTWxt45WrpPa2qSSf5qPZTHfw'),
(16, 'cek_permohonan_msg', 'Silahkan masukan nomor permohonan untuk melihat progress berkas permohonan anda. Halaman ini terintegrasi oleh aplikasi administrasi pelayanan di Dinas Kependudukan dan Pecatatan Sipil Kabupaten Brebes.'),
(17, 'front_info_akta', 'Aplikasi ini di peruntukan bagi operator kecamatan yang akan melaporkan data Akta Kelahiran yang telah di input. Gunakan akun yg telah admin berikan ke masing-masing operator. Siahkan login pada halaman login yang terdapat di menu atas.');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
`slider_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `title`, `img`) VALUES
(1, 'sukcapil', 'capil.jpg'),
(2, 'silder 2', 'satu_ktp.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_nik` varchar(16) NOT NULL,
  `user_email` varchar(80) NOT NULL,
  `user_full_name` varchar(100) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_created_date` datetime NOT NULL,
  `user_last_login` datetime NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_jk` enum('l','p') NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_nik`, `user_email`, `user_full_name`, `user_password`, `user_created_date`, `user_last_login`, `role_id`, `user_jk`) VALUES
(2, 'administrator', '3329091308940002', 'email@email.com', 'Pandu Aldi Pratama', 'b3aca92c793ee0e9b1a9b0a5f5fc044e05140df3', '2017-02-21 00:00:00', '2017-08-09 09:57:12', 1, 'l'),
(5, 'aldi', '3329122010810010', 'operator@k.com', 'aldi', '93c213f7e4e70b6340d7312605ab9c3e42f0ac44', '2017-03-02 09:32:48', '2017-03-02 09:32:48', 1, 'l');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akta_kategori`
--
ALTER TABLE `akta_kategori`
 ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `akta_user`
--
ALTER TABLE `akta_user`
 ADD PRIMARY KEY (`user_id`), ADD KEY `role_id` (`role_id`), ADD KEY `role_id_2` (`role_id`), ADD KEY `id_kec` (`kec_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
 ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
 ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
 ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `data_penduduk`
--
ALTER TABLE `data_penduduk`
 ADD PRIMARY KEY (`penduduk_id`), ADD KEY `semester_id` (`semester_id`), ADD KEY `kec_id` (`kec_id`);

--
-- Indexes for table `dir_pegawai`
--
ALTER TABLE `dir_pegawai`
 ADD PRIMARY KEY (`pegawai_id`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
 ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
 ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `gallery_photo`
--
ALTER TABLE `gallery_photo`
 ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
 ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
 ADD PRIMARY KEY (`kec_id`);

--
-- Indexes for table `lap_akta`
--
ALTER TABLE `lap_akta`
 ADD PRIMARY KEY (`id_lap`), ADD KEY `id_kategori` (`id_kategori`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `log_activity`
--
ALTER TABLE `log_activity`
 ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `menu_admin`
--
ALTER TABLE `menu_admin`
 ADD PRIMARY KEY (`menu_id`), ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
 ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `pelayanan`
--
ALTER TABLE `pelayanan`
 ADD PRIMARY KEY (`pelayanan_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
 ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
 ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `setting_web`
--
ALTER TABLE `setting_web`
 ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
 ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`), ADD KEY `role_id` (`role_id`), ADD KEY `role_id_2` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akta_kategori`
--
ALTER TABLE `akta_kategori`
MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `akta_user`
--
ALTER TABLE `akta_user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `data_penduduk`
--
ALTER TABLE `data_penduduk`
MODIFY `penduduk_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `dir_pegawai`
--
ALTER TABLE `dir_pegawai`
MODIFY `pegawai_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `gallery_photo`
--
ALTER TABLE `gallery_photo`
MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
MODIFY `kec_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3329171;
--
-- AUTO_INCREMENT for table `lap_akta`
--
ALTER TABLE `lap_akta`
MODIFY `id_lap` bigint(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=245;
--
-- AUTO_INCREMENT for table `log_activity`
--
ALTER TABLE `log_activity`
MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=299;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `menu_admin`
--
ALTER TABLE `menu_admin`
MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `pelayanan`
--
ALTER TABLE `pelayanan`
MODIFY `pelayanan_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
MODIFY `semester_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `setting_web`
--
ALTER TABLE `setting_web`
MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `akta_user`
--
ALTER TABLE `akta_user`
ADD CONSTRAINT `akta_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
ADD CONSTRAINT `akta_user_ibfk_2` FOREIGN KEY (`kec_id`) REFERENCES `kecamatan` (`kec_id`);

--
-- Constraints for table `data_penduduk`
--
ALTER TABLE `data_penduduk`
ADD CONSTRAINT `data_penduduk_ibfk_1` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`semester_id`),
ADD CONSTRAINT `data_penduduk_ibfk_2` FOREIGN KEY (`kec_id`) REFERENCES `kecamatan` (`kec_id`);

--
-- Constraints for table `lap_akta`
--
ALTER TABLE `lap_akta`
ADD CONSTRAINT `lap_akta_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `akta_kategori` (`id_kategori`),
ADD CONSTRAINT `lap_akta_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `akta_user` (`user_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

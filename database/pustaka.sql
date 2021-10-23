-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Okt 2021 pada 09.43
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `12201356_bab3a`
--
CREATE DATABASE IF NOT EXISTS `12201356_bab3a` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `12201356_bab3a`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` char(5) NOT NULL,
  `nama_barang` varchar(35) DEFAULT NULL,
  `ukuran` varchar(10) DEFAULT NULL,
  `wrn` varchar(20) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pedagang03`
--

CREATE TABLE `pedagang03` (
  `id_pelanggan` char(5) NOT NULL,
  `nama_pelanggan` varchar(35) DEFAULT NULL,
  `jns_kelamin` varchar(10) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `pedagang03`
--
ALTER TABLE `pedagang03`
  ADD PRIMARY KEY (`id_pelanggan`);
--
-- Database: `12201356_bab4`
--
CREATE DATABASE IF NOT EXISTS `12201356_bab4` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `12201356_bab4`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `brg`
--

CREATE TABLE `brg` (
  `kode_brg` char(4) NOT NULL,
  `nama_brg` varchar(40) DEFAULT NULL,
  `harga_brg` int(10) DEFAULT NULL,
  `thn_pembuatan` year(4) DEFAULT NULL,
  `stok` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `brg`
--

INSERT INTO `brg` (`kode_brg`, `nama_brg`, `harga_brg`, `thn_pembuatan`, `stok`) VALUES
('BR01', 'Clame Plate', 40000, 2005, 100),
('BR02', 'CF Diafram', 35000, 2001, 250),
('BR03', 'Press Cover', 65000, 2002, 300),
('BR04', 'Terminal', 15000, 2000, 57),
('BR05', 'Alumunium Solt', 27000, 2006, 410);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `brg`
--
ALTER TABLE `brg`
  ADD PRIMARY KEY (`kode_brg`);
--
-- Database: `12201356_bab5`
--
CREATE DATABASE IF NOT EXISTS `12201356_bab5` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `12201356_bab5`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `kode_buku` char(4) NOT NULL,
  `judul` varchar(55) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(35) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul`, `pengarang`, `penerbit`, `harga`) VALUES
('BK01', 'Rencangan ERD', 'Joko Susilo', 'Graha Pustaka', 65000),
('BK02', 'Diagram UML', 'Ahmad Sandi', 'Komunikatika', 40000),
('BK03', 'Web Programming', 'Rio Budiman', 'Graha Pustaka', 35000),
('BK04', 'Dasar Pemrograman', 'Artifa Ningrum', 'Tekno Press', 35000),
('BK06', 'Algoritma Lanjut', 'Raden Kraton', 'Graha Pustaka', 40000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`);
--
-- Database: `12201356_bab10`
--
CREATE DATABASE IF NOT EXISTS `12201356_bab10` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `12201356_bab10`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_brg`
--

CREATE TABLE `tb_brg` (
  `kd_brg` char(3) NOT NULL,
  `nm_brg` varchar(45) NOT NULL,
  `jumlah` int(2) NOT NULL,
  `harga` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_brg`
--

INSERT INTO `tb_brg` (`kd_brg`, `nm_brg`, `jumlah`, `harga`) VALUES
('B01', 'Buku', 50, 4500),
('B02', 'Pulpen', 35, 3000),
('B03', 'Penggaris', 20, 1500),
('B04', 'Penghapus', 15, 500),
('B05', 'Spidol', 30, 4000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_cust`
--

CREATE TABLE `tb_cust` (
  `kd_cust` char(3) NOT NULL,
  `nm_cust` varchar(45) NOT NULL,
  `alamat_cust` varchar(75) NOT NULL,
  `telp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_cust`
--

INSERT INTO `tb_cust` (`kd_cust`, `nm_cust`, `alamat_cust`, `telp`) VALUES
('111', 'Nagoya Saki', 'BSD', '084783838383'),
('112', 'Ibmu Raihan', 'Serpong', '082798989898'),
('113', 'Anto Hoed', 'Parung', '081040404040'),
('114', 'Abdul Karim', 'Keranggan', '086567676767');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_trans`
--

CREATE TABLE `tb_trans` (
  `id` int(4) NOT NULL,
  `kd_brg` char(3) NOT NULL,
  `kd_cust` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_trans`
--

INSERT INTO `tb_trans` (`id`, `kd_brg`, `kd_cust`) VALUES
(1, 'B01', '111'),
(2, 'B01', '113'),
(3, 'B02', '112'),
(4, 'B02', '114'),
(5, 'B02', '113'),
(6, 'B03', '115'),
(7, 'B03', '111'),
(8, 'B04', '114'),
(9, 'B05', '112'),
(10, 'B05', '113');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_brg`
--
ALTER TABLE `tb_brg`
  ADD PRIMARY KEY (`kd_brg`);

--
-- Indeks untuk tabel `tb_cust`
--
ALTER TABLE `tb_cust`
  ADD PRIMARY KEY (`kd_cust`);

--
-- Indeks untuk tabel `tb_trans`
--
ALTER TABLE `tb_trans`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_trans`
--
ALTER TABLE `tb_trans`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `db_5`
--
CREATE DATABASE IF NOT EXISTS `db_5` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_5`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `kode_buku` char(4) NOT NULL,
  `judul` varchar(55) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(35) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul`, `pengarang`, `penerbit`, `harga`) VALUES
('BK01', 'Rencangan ERD', 'Joko Susilo', 'Graha Pustaka', 65000),
('BK02', 'Diagram UML', 'Ahmad Sandi', 'Komunikatika', 40000),
('BK03', 'Web Programming', 'Rio Budiman', 'Graha Pustaka', 35000),
('BK04', 'Dasar Pemrograman', 'Artifa Ningrum', 'Tekno Press', 35000),
('BK06', 'Algoritma Lanjut', 'Raden Kraton', 'Graha Pustaka', 40000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`);
--
-- Database: `db_12201356`
--
CREATE DATABASE IF NOT EXISTS `db_12201356` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_12201356`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `kd_buku` char(5) DEFAULT NULL,
  `judul` varchar(40) DEFAULT NULL,
  `penulis` varchar(35) DEFAULT NULL,
  `penerbit` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `katalog`
--

CREATE TABLE `katalog` (
  `kode` char(6) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Database: `db_guru`
--
CREATE DATABASE IF NOT EXISTS `db_guru` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_guru`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `Nip` varchar(10) NOT NULL,
  `Nama_guru` varchar(30) NOT NULL,
  `Tmpt_lahir` varchar(20) NOT NULL,
  `Tngl_lahir` date NOT NULL,
  `Jns_klmin` enum('L','P') DEFAULT NULL,
  `Telp` varchar(15) NOT NULL,
  `Status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`Nip`, `Nama_guru`, `Tmpt_lahir`, `Tngl_lahir`, `Jns_klmin`, `Telp`, `Status`) VALUES
('01001', 'Andi Wira', 'Pontianak', '1980-01-01', 'L', '084783838383', 'PNS'),
('01002', 'Anwar Wibowo', 'Pontianak', '1981-02-03', 'L', '082798989898', 'PNS'),
('01003', 'Bastian', 'Singkawang', '1983-03-05', 'L', '081040404040', 'PNS'),
('01004', 'Dewi Putri', 'Ketapang', '1974-07-09', 'P', '083164646464', 'PNS'),
('01005', 'Diana Agustin', 'Bandung', '1972-09-11', 'P', '089605050505', 'PNS'),
('01006', 'Faradila', 'Jakarta', '1990-04-13', 'P', '083137373737', 'PNS'),
('01007', 'Isyana Ayuni', 'Pontianak', '1995-06-15', 'P', '082198989898', 'HONORER'),
('01008', 'Lino Barak', 'Sintang', '1992-08-17', 'L', '089736363636', 'HONORER'),
('01009', 'Muhammad Ali', 'Pontianak', '1988-09-15', 'L', '080901010101', 'HONORER'),
('01010', 'Nindi Saputri', 'Pontianak', '1994-05-17', 'P', '083978787878', 'PNS'),
('01011', 'Sarah Titik', 'Kubu Raya ', '1989-01-29', 'P', '085721212121', 'PNS'),
('01012', 'Sri Maharani', 'Kubu Raya', '1996-11-21', 'P', '085602020202', 'HONORER'),
('01013', 'Wahyu Fahlevi', 'Pontianak', '1992-12-23', 'L', '081407070707', 'HONORER'),
('01014', 'Widya Fitri', 'Pontianak', '1990-06-16', 'P', '081610101010', 'PNS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `Id_juusan` int(3) NOT NULL,
  `Nm_jurusan` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `Id_kelas` int(3) NOT NULL,
  `Id_jurusan` int(3) NOT NULL,
  `Kelas` varchar(15) NOT NULL,
  `Max_siswa` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`Id_kelas`, `Id_jurusan`, `Kelas`, `Max_siswa`) VALUES
(11, 35, '11 IPA 1', '35'),
(12, 36, '11 IPS 1', '35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `Id_pel` int(3) NOT NULL,
  `Id_jurusan` int(3) NOT NULL,
  `Kelas` varchar(15) NOT NULL,
  `Nama_pel` varchar(50) NOT NULL,
  `KKM` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`Id_pel`, `Id_jurusan`, `Kelas`, `Nama_pel`, `KKM`) VALUES
(51, 35, '11 IPA 1', 'PKN', 75),
(52, 35, '11 IPA 1', 'Bahasa Indonesia', 75),
(53, 35, '11 IPA 1', 'Bahasa Inggris', 75),
(54, 35, '11 IPA 1', 'Matematika', 75),
(55, 35, '11 IPA 1', 'Fisika', 75),
(56, 35, '11 IPA 1', 'Kimia', 75),
(57, 35, '11 IPA 1', 'Biologi', 75),
(58, 36, '11 IPS 1', 'PKN', 75),
(59, 36, '11 IPS 1', 'Bahasa Indonesia', 75),
(60, 36, '11 IPS 1', 'Bahasa Inggris', 75),
(61, 36, '11 IPS 1', 'Matematika', 75),
(62, 36, '11 IPS 1', 'Ekonomi', 75),
(63, 36, '11 IPS 1', 'Geografi', 75),
(64, 36, '11 IPS 1', 'Sosiologi', 75);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `Nis` int(4) NOT NULL,
  `Id_kelas` int(3) NOT NULL,
  `Nip` int(5) NOT NULL,
  `Id_pel` int(3) NOT NULL,
  `Nilai_uts` varchar(3) NOT NULL,
  `Nilai` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `Nis` int(4) NOT NULL,
  `Nm_siswa` varchar(30) NOT NULL,
  `Tmpt_lahir` varchar(20) NOT NULL,
  `Tngl_lahir` date NOT NULL,
  `Jns_klmin` enum('L','P') DEFAULT NULL,
  `Telpon` varchar(13) NOT NULL,
  `Asal_sekolah` varchar(50) NOT NULL,
  `Id_kelas` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`Nis`, `Nm_siswa`, `Tmpt_lahir`, `Tngl_lahir`, `Jns_klmin`, `Telpon`, `Asal_sekolah`, `Id_kelas`) VALUES
(0, '', '', '0000-00-00', NULL, '', '', 0),
(1212, 'Amalia Maya', 'Pontianak', '2004-01-19', 'P', '081320202020', 'SMP N 1 PTK', 12),
(1213, 'Arabella Yuni', 'Pontianak', '2004-02-20', 'P', '082031313131', 'SMP N 2 PTK', 12),
(1214, 'Boby Retno', 'Kubu Raya', '2003-06-27', 'L', '082576767676', 'SMP N 9 PTK', 11),
(1215, 'Barrah Gusti', 'Ketapang ', '2004-03-15', 'L', '089123232323', 'SMP N 3 PTK', 12),
(1216, 'Belvania', 'Ketapang', '2003-10-10', 'P', '083246464646', 'SMP N 3 PTK', 11),
(1217, 'Chaira Abila', 'Mempawah', '2004-07-08', 'P', '083891919191', 'SMP N 2 PTK', 11),
(1218, 'Desi', 'Pontianak', '2004-05-09', 'P', '084492929292', 'SMP N 10 PTK', 12),
(1219, 'Elina Putri', 'Singkawang', '2004-09-14', 'P', '084856565656', 'SMP N 9 PTK', 11),
(1220, 'Gazala Filo', 'Singkawang', '2003-07-17', 'L', '085023232323', 'SMP N 3 PTK', 11),
(1221, 'Gina Shafa', 'Pontianak', '2004-04-19', 'P', '085283838383', 'SMP N 11 PTK', 12),
(1222, 'Ilena Nasya', 'Ketapang', '2004-05-24', 'P', '085534343434', 'SMP N 13 PTK', 11),
(1223, 'Justin Kevin ', 'Pemangkat', '2004-09-18', 'L', '085986868686', '086409090909', 11),
(1224, 'Nadira Ayunda', 'Kubu Raya', '2004-03-13', 'P', '086409090909', '086409090909', 12),
(1225, 'Nayira Safira', 'Pontianak', '2004-10-23', 'P', '086812121212', 'MTS N 2 PTK', 11),
(1226, 'Nessya Wulan', 'Bandung', '2004-09-23', 'P', '087076767676', 'SMP N 3 PTK', 12),
(1227, 'Putri Salsabila', 'Jakarta', '2004-11-16', 'P', '087392929292', 'MTS N 2 PTK', 11),
(1228, 'Rino Putra', 'Pontianak', '2004-01-30', 'L', '087838383838', 'SMP N 3 PTK', 11),
(1229, 'Rizky Sadam', 'Pontianak', '2004-12-20', 'L', '088874747474', 'SMP N 1 PTK', 12),
(1230, 'Syahril', 'Pontianak', '2004-11-26', 'L', '088230303030', 'SMP N 2 PTK', 12),
(1231, 'Tobi Razan ', 'Pemangkat', '2004-10-18', 'L', '088742424242', 'SMP N 9 PTK', 11),
(1232, 'Uraga Tristan', 'Kubu Raya', '2004-10-18', 'L', '089317171717', 'SMP N 3 PTK', 12),
(1233, 'Valentino', 'Pontianak', '2004-12-02', 'L', '089639393939', 'SMP N 11 PTK', 12);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`Nip`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`Id_juusan`);

--
-- Indeks untuk tabel `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`Id_pel`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`Nis`);
--
-- Database: `db_latihan_sepatu`
--
CREATE DATABASE IF NOT EXISTS `db_latihan_sepatu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_latihan_sepatu`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `No_fak` char(6) NOT NULL,
  `kd_sepatu` char(4) NOT NULL,
  `jumlah` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`No_fak`, `kd_sepatu`, `jumlah`) VALUES
('FK0010', 'S003', 1),
('FK0101', 'S001', 1),
('FK0102', 'S002', 2),
('FK0104', 'S004', 3),
('FK0105', 'S005', 1),
('FK0106', 'S006', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE `pembeli` (
  `Id_pembeli` int(5) NOT NULL,
  `Nm_pembeli` varchar(35) NOT NULL,
  `Alamat` varchar(60) NOT NULL,
  `No_hp` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`Id_pembeli`, `Nm_pembeli`, `Alamat`, `No_hp`) VALUES
(1, 'Joko', 'Pontianak', '081212123434'),
(2, 'Butet', 'Yogyakarta', '091213134545'),
(3, 'Daeng', 'Tegal', '091214145656'),
(4, 'Putu', 'Tasikmalaya', '091215156767'),
(5, 'Neng', 'bandung', '091216167878');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `No_fak` char(6) NOT NULL,
  `Tgl_fak` varchar(35) NOT NULL,
  `Id_pembeli` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`No_fak`, `Tgl_fak`, `Id_pembeli`) VALUES
('FK0101', '2017-11-02', 1),
('FK0102', '2017-11-03', 3),
('FK0103', '2017-11-04', 4),
('FK0104', '2017-11-05', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sepatu`
--

CREATE TABLE `sepatu` (
  `kd_sepatu` char(4) NOT NULL,
  `merk` varchar(30) NOT NULL,
  `Ukuran` varchar(10) NOT NULL,
  `Harga` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sepatu`
--

INSERT INTO `sepatu` (`kd_sepatu`, `merk`, `Ukuran`, `Harga`) VALUES
('S001', 'Nike', '40', 300000),
('S002', 'Adidas', '41', 320000),
('S003', 'Xander', '40', 350000),
('S004', 'Mutiara', '40', 240000),
('S005', 'Bata', '41', 280000),
('S006', 'Penx', '41', 230000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD KEY `kd_sepatu` (`kd_sepatu`),
  ADD KEY `No_fak` (`No_fak`);

--
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`Id_pembeli`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`No_fak`),
  ADD KEY `Id_pembeli` (`Id_pembeli`);

--
-- Indeks untuk tabel `sepatu`
--
ALTER TABLE `sepatu`
  ADD PRIMARY KEY (`kd_sepatu`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `Id_pembeli` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `detail_penjualan_ibfk_1` FOREIGN KEY (`kd_sepatu`) REFERENCES `sepatu` (`kd_sepatu`);

--
-- Ketidakleluasaan untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`Id_pembeli`) REFERENCES `pembeli` (`Id_pembeli`);
--
-- Database: `db_les_private`
--
CREATE DATABASE IF NOT EXISTS `db_les_private` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_les_private`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa_baru`
--

CREATE TABLE `siswa_baru` (
  `nis` char(6) NOT NULL,
  `nama_siswa` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `kelas_siswa` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tutor_les`
--

CREATE TABLE `tutor_les` (
  `id_tutor` char(8) NOT NULL,
  `nama_tutor` varchar(30) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `jml_kelas` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `siswa_baru`
--
ALTER TABLE `siswa_baru`
  ADD PRIMARY KEY (`nis`);

--
-- Indeks untuk tabel `tutor_les`
--
ALTER TABLE `tutor_les`
  ADD PRIMARY KEY (`id_tutor`);
--
-- Database: `db_perpusweb`
--
CREATE DATABASE IF NOT EXISTS `db_perpusweb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_perpusweb`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'xxx', 'xxx');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(4) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `no_tlpn` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `no_tlpn`, `alamat`, `email`, `password`) VALUES
(1, 'Irfan Maulana', '01244445555', 'BSD', 'irfan@gmail.com', '123'),
(2, 'Nur Kumalasari', '01233335555', 'Ciledug', 'nur@gmail.com', '123'),
(3, 'Sanjaya Wijaya', '01211115555', 'Cimone', 'sanjaya@gmail.com', '123'),
(4, 'Eva Irfianingsih', '01266665555', 'Tangerang', 'eva@gmail.com', '123'),
(5, 'Ifqoh Permatasari', '01277775555', 'Cengkareng', 'ifqoh@gmail.com', '123'),
(6, 'Indah Riana', '01288885555', 'Fatmawati', 'indah@gmail.com', '123'),
(7, 'Tiwie Andrawati', '01299995555', 'Waring Jati', 'tiwie@gmail.com', '123'),
(8, 'Mus Dalifah', '01200005555', 'Jatiwaringin', 'mus@gmail.com', '123'),
(9, 'Hisbu Utomo', '01233336666', 'Salemba', 'hisbu@gmail.com', '123'),
(10, 'Zaenal Abidin', '01233337777', 'Bekasi', 'zaenal@gmail.com', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(4) NOT NULL,
  `id_katalog` int(5) NOT NULL,
  `judul_buku` varchar(50) DEFAULT NULL,
  `pengarang` varchar(35) DEFAULT NULL,
  `thn_terbit` date NOT NULL,
  `penerbit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `id_katalog`, `judul_buku`, `pengarang`, `thn_terbit`, `penerbit`) VALUES
(1, 1, 'Robotika Sederhana', 'Siswoyo Utomo', '2013-01-01', 'Wacana Ria'),
(2, 3, 'Mahir dengan PHP', 'Adri Kusuma', '2014-02-02', 'Pustaka Bangsa'),
(3, 2, 'Mahir Mewarnai', 'Akhmad Rahmat', '2014-03-03', 'CV.Indo Kreasi'),
(4, 1, 'Hukum Fisika', 'Kurnia Sandi', '2013-04-04', 'Wacana Ria'),
(5, 8, 'Mahir Bahasa inggris', 'Aliudin', '2013-05-05', 'CV.Indo Kreasi'),
(6, 4, 'Public Speaking', 'Pambudi Prasetyo', '2015-06-06', 'Aldi Pustaka'),
(7, 3, 'Trik SQL', 'Ahdim Makaren', '2014-07-07', 'Wacana Ria'),
(8, 6, 'Kemurnian Agama', 'Pambudi Praseyo', '2014-08-08', 'Aldi Pustaka'),
(9, 1, 'Mikrokontroler', 'Ahdim Makaren', '2012-09-09', 'Wacana Ria');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `id_pinjam` int(5) NOT NULL,
  `id_buku` int(5) NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `denda` double NOT NULL,
  `status_buku` enum('Kembali','Belum Kembali') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `katalog_buku`
--

CREATE TABLE `katalog_buku` (
  `id_katalog` int(5) NOT NULL,
  `nama_katalog` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `katalog_buku`
--

INSERT INTO `katalog_buku` (`id_katalog`, `nama_katalog`) VALUES
(1, 'Sains'),
(2, 'Hobby'),
(3, 'Komputer'),
(4, 'komunikasi'),
(5, 'Hukum'),
(6, 'Agama'),
(7, 'Populer'),
(8, 'Bahasa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pinjam` int(5) NOT NULL,
  `id_anggota` int(5) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `status` enum('Selesai','Belum Selesai') DEFAULT NULL,
  `jml_buku` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `katalog_buku`
--
ALTER TABLE `katalog_buku`
  ADD PRIMARY KEY (`id_katalog`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `katalog_buku`
--
ALTER TABLE `katalog_buku`
  MODIFY `id_katalog` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_pinjam` int(5) NOT NULL AUTO_INCREMENT;
--
-- Database: `db_sekolah`
--
CREATE DATABASE IF NOT EXISTS `db_sekolah` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_sekolah`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa_baru`
--

CREATE TABLE `siswa_baru` (
  `nis` char(6) NOT NULL,
  `nama_siswa` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `kelas_siswa` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tutor_les`
--

CREATE TABLE `tutor_les` (
  `id_tutor` char(8) NOT NULL,
  `nama_tutor` varchar(30) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `jml_kelas` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `siswa_baru`
--
ALTER TABLE `siswa_baru`
  ADD PRIMARY KEY (`nis`);

--
-- Indeks untuk tabel `tutor_les`
--
ALTER TABLE `tutor_les`
  ADD PRIMARY KEY (`id_tutor`);
--
-- Database: `db_urayarvia`
--
CREATE DATABASE IF NOT EXISTS `db_urayarvia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_urayarvia`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `Nip` varchar(10) NOT NULL,
  `Nama_guru` varchar(30) NOT NULL,
  `Tmpt_lahir` varchar(20) NOT NULL,
  `Tngl_lahir` date NOT NULL,
  `Jns_klmin` enum('L','P','','') NOT NULL,
  `Telp` varchar(15) NOT NULL,
  `Status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`Nip`, `Nama_guru`, `Tmpt_lahir`, `Tngl_lahir`, `Jns_klmin`, `Telp`, `Status`) VALUES
('01001', 'Andi Wira', 'Pontianak', '1980-01-01', 'L', '084783838383', 'PNS'),
('01002', 'kaya', 'Pontianak', '0000-00-00', 'L', '084783838383', 'PNS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `Nis` int(4) NOT NULL,
  `Id_kelas` int(3) NOT NULL,
  `Nip` int(5) NOT NULL,
  `Id_pel` int(3) NOT NULL,
  `Nilai_uts` varchar(3) NOT NULL,
  `Nilai_uas` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`Nis`, `Id_kelas`, `Nip`, `Id_pel`, `Nilai_uts`, `Nilai_uas`) VALUES
(1211, 11, 1001, 51, '80', '82'),
(1211, 11, 1002, 52, '88', '84'),
(1211, 11, 1003, 53, '86', '80'),
(1211, 11, 1004, 54, '84', '80'),
(1211, 11, 1005, 55, '78', '80'),
(1211, 11, 1006, 56, '80', '82'),
(1211, 11, 1007, 57, '82', '86'),
(1214, 11, 1001, 51, '90', '88');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`Nip`);
--
-- Database: `komik_coba1`
--
CREATE DATABASE IF NOT EXISTS `komik_coba1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `komik_coba1`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota_warnet`
--

CREATE TABLE `anggota_warnet` (
  `id_anggota` char(4) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `tgl_daftar` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
  `id_komik` char(5) NOT NULL,
  `judul` varchar(25) DEFAULT NULL,
  `pengarang` varchar(30) DEFAULT NULL,
  `thn_terbit` year(4) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `no_pinjam` int(4) NOT NULL,
  `id_anggota` char(4) DEFAULT NULL,
  `id_komik` char(5) DEFAULT NULL,
  `hml_komik` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota_warnet`
--
ALTER TABLE `anggota_warnet`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id_komik`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_pinjam`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data untuk tabel `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"pustaka\",\"table\":\"buku\"},{\"db\":\"pustaka\",\"table\":\"kategori\"},{\"db\":\"pustaka\",\"table\":\"role\"},{\"db\":\"pustaka\",\"table\":\"user\"},{\"db\":\"pustaka\",\"table\":\"tabel user\"},{\"db\":\"dbpenjualan\",\"table\":\"faktur\"},{\"db\":\"db_guru\",\"table\":\"siswa\"},{\"db\":\"db_guru\",\"table\":\"guru\"},{\"db\":\"db_urayarvia\",\"table\":\"guru\"},{\"db\":\"db_guru\",\"table\":\"mata_pelajaran\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-10-23 07:42:36', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\",\"NavigationWidth\":197}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `pustaka`
--
CREATE DATABASE IF NOT EXISTS `pustaka` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pustaka`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` varchar(64) NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(1, 'Statistika dengan Program Komputer', 1, 'Ahmad Kholiqul Amin', 'Deep Publish ', 2014, '9786022809432', 6, 1, 1, 'img1557402455.jpg'),
(2, 'Mudah Belajar Komputer untuk Anak', 1, 'Bambang Agus Setiawan', 'Huta Media', 2014, '9786025118500', 5, 3, 1, 'img1557402397.jpg'),
(5, 'PHP Komplet', 1, 'Jubilee', 'Elex Media Komputindo', 2017, '8346753547', 5, 1, 1, 'img1555522493.jpg'),
(10, 'Detektif Conan Ep 200', 9, 'Okigawa sasuke', 'Cultura', 2016, '874387583987 ', 5, 0, 0, 'img1557401465.jpg'),
(14, 'Bahasa indonesia', 2, 'Umri Nur\'aini dan Indriyani', 'Pusat Perbukuan', 2015, '757254724884', 3, 0, 0, 'imgi557402703'),
(15, 'Komunikasi Lintas Budaya', 5, 'Dr. Dedy Kurnia', 'Published', 2015, '878674646488', 5, 0, 0, 'img1557403156'),
(16, 'Kolaborasi Codeigniter dan Ajax dalam Perancangan', 1, 'Anton Subagia', 'Elex Media Komputindo', 2017, '43345356577', 5, 0, 0, 'img1557403502.jpg'),
(17, 'From Hobby to Money', 4, 'Deasylawati', 'Elex Media Komputindo', 2015, '87968686787879', 5, 0, 0, 'img1557403658.jpg'),
(18, 'Buku Saku Pramuak', 8, 'Rudi Himawan', 'Pusat Perbukuan', 2016, '97868687978796', 6, 0, 0, 'img1557404613.jpg'),
(19, 'Rahasia Keajaiban bumi', 3, 'Nurul Ihsan', 'Luxima', 2014, '565756565768868', 5, 0, 0, 'img1557404689.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Komputer'),
(2, 'Bahasa'),
(3, 'Sain'),
(4, 'Hobby'),
(5, 'Komunikasi'),
(6, 'Hukum'),
(7, 'Agama'),
(8, 'Populer'),
(9, 'Komik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `Id_kelas` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `Nbrg` char(4) NOT NULL,
  `NmBrg` char(20) DEFAULT NULL,
  `Hrg` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `faktur`
--

CREATE TABLE `faktur` (
  `Nfak` char(4) NOT NULL,
  `Tgl` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `langganan`
--

CREATE TABLE `langganan` (
  `NLgn` int(10) UNSIGNED NOT NULL,
  `Faktur_Nfak` char(4) NOT NULL,
  `NmLgn` char(20) DEFAULT NULL,
  `KtLgn` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `Faktur_Nfak` char(4) NOT NULL,
  `Barang_Nbrg` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`Nbrg`);

--
-- Indeks untuk tabel `faktur`
--
ALTER TABLE `faktur`
  ADD PRIMARY KEY (`Nfak`);

--
-- Indeks untuk tabel `langganan`
--
ALTER TABLE `langganan`
  ADD PRIMARY KEY (`NLgn`),
  ADD KEY `Langganan_FKIndex1` (`Faktur_Nfak`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`Faktur_Nfak`,`Barang_Nbrg`),
  ADD KEY `Faktur_has_Barang_FKIndex1` (`Faktur_Nfak`),
  ADD KEY `Faktur_has_Barang_FKIndex2` (`Barang_Nbrg`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `langganan`
--
ALTER TABLE `langganan`
  ADD CONSTRAINT `langganan_ibfk_1` FOREIGN KEY (`Faktur_Nfak`) REFERENCES `faktur` (`Nfak`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`Faktur_Nfak`) REFERENCES `faktur` (`Nfak`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`Barang_Nbrg`) REFERENCES `barang` (`Nbrg`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `toko_elektronik`
--
CREATE DATABASE IF NOT EXISTS `toko_elektronik` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `toko_elektronik`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kd_barang` char(5) NOT NULL,
  `nm_barang` varchar(25) NOT NULL,
  `harga` double NOT NULL,
  `garansi` varchar(15) NOT NULL,
  `kd_kategori` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kd_barang`, `nm_barang`, `harga`, `garansi`, `kd_kategori`) VALUES
('KA001', 'Kipas Angin Dinding', 250000, 'Garansi 1 Tahun', 'KPS'),
('KA002', 'Kipas Angin Lantai', 400000, 'Garansi 1 Tahun', 'KPS'),
('KA003', 'Kipas Angin Portable', 85000, 'Garansi 6 Bulan', 'KPS'),
('KS001', 'Kulkas 1 Pintu', 1200000, 'Garansi 2 Tahun', 'KLS'),
('KS002', 'Kulkas 2 Pintu', 1800000, 'Garansi 2 Tahun', 'KLS'),
('KS003', 'Kulkas 3 Pintu', 2600000, 'Garansi 1 Tahun', 'KLS'),
('TV001', 'Televisi 21', 1750000, 'Garansi 3 Tahun', 'TVS'),
('TV002', 'Televisi 30', 2450000, 'Garansi 5 Tahun', 'TVS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kd_kategori` char(3) NOT NULL,
  `nm_kategori` varchar(20) NOT NULL,
  `ket` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kd_kategori`, `nm_kategori`, `ket`) VALUES
('KLS', 'Kulkas', 'Kulkas Inverter'),
('KPS', 'Kipas Angin', 'Kipas Angin Biasa'),
('TVS', 'Televisi', 'Televisi LED');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kd_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

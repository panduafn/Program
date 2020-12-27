-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jul 2019 pada 10.08
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kp_2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(12) NOT NULL,
  `uname_admin` varchar(6) NOT NULL,
  `pass_admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot_saw`
--

CREATE TABLE `bobot_saw` (
  `id_pendaftaran` int(11) NOT NULL,
  `nama_pendaftaran` varchar(50) NOT NULL,
  `bobot_tulis` float NOT NULL,
  `bobot_wawancara` float NOT NULL,
  `bobot_umur` float NOT NULL,
  `bobot_pengalaman` float NOT NULL,
  `bobot_jarakrmh` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bobot_saw`
--

INSERT INTO `bobot_saw` (`id_pendaftaran`, `nama_pendaftaran`, `bobot_tulis`, `bobot_wawancara`, `bobot_umur`, `bobot_pengalaman`, `bobot_jarakrmh`) VALUES
(2, 'Perawat', 2.5, 3, 2, 2.5, 1.5),
(3, 'OB', 1, 3, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `calon_pegawai`
--

CREATE TABLE `calon_pegawai` (
  `kd_cal_peg` int(11) NOT NULL,
  `nama_cal_peg` varchar(30) NOT NULL,
  `email_cal_peg` varchar(50) NOT NULL,
  `sandi` varchar(32) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `no_telp` varchar(14) NOT NULL,
  `alamat_cal_peg` varchar(50) NOT NULL,
  `foto_cal_peg` text NOT NULL,
  `surat_lamaran` text NOT NULL,
  `ktp` text NOT NULL,
  `kartu_kel` text NOT NULL,
  `ijazah` text NOT NULL,
  `surat_tanda_reg` text NOT NULL,
  `sertifikat_ppgd` text NOT NULL,
  `sertifikat_bcls` text NOT NULL,
  `sertifikat_btcls` text NOT NULL,
  `hasil_kes` text NOT NULL,
  `skck` text NOT NULL,
  `surat_ijin` text NOT NULL,
  `surat_taat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `calon_pegawai`
--

INSERT INTO `calon_pegawai` (`kd_cal_peg`, `nama_cal_peg`, `email_cal_peg`, `sandi`, `tgl_lahir`, `jenis_kelamin`, `no_telp`, `alamat_cal_peg`, `foto_cal_peg`, `surat_lamaran`, `ktp`, `kartu_kel`, `ijazah`, `surat_tanda_reg`, `sertifikat_ppgd`, `sertifikat_bcls`, `sertifikat_btcls`, `hasil_kes`, `skck`, `surat_ijin`, `surat_taat`) VALUES
(1, 'ahmad', 'ahmad@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1967-03-13', 'Laki-Laki', '098102381624', 'jogja', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg	'),
(2, 'pandu', 'pandu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1997-05-13', 'Laki-Laki', '0821212213', 'yogyakarta', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg	'),
(3, 'ahmad', 'ahmad1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1967-03-13', 'Laki-Laki', '098102381624', 'jogja', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg	'),
(4, 'pandu', 'pandu1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1997-05-13', 'Laki-Laki', '0821212213', 'yogyakarta', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg', 'gambar test.jpg	'),
(5, 'rudi', 'rudi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2019-07-12', 'Laki-Laki', '9897', 'jogja', 'DAD Lv1.png', 'DAD Lv2 proses1.png', 'ERD.png', 'DAD Lv1.png', 'DAD Lv2 proses1.png', 'DAD Lv2 proses1.png', 'DAD Lv2 proses1.png', 'Diagram konteks.png', 'Diagram jenjang.png', 'DAD Lv1.png', 'Diagram jenjang.png', 'Diagram konteks.png', 'DAD Lv2 proses1.png	');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_pendaftaran` int(11) NOT NULL,
  `kd_cal_peg` int(11) NOT NULL,
  `nilai_tulis` float NOT NULL,
  `nilai_wawancara` float NOT NULL,
  `umur` int(11) NOT NULL,
  `lama_pengalaman` int(11) NOT NULL,
  `jarak_rmh` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_pendaftaran`, `kd_cal_peg`, `nilai_tulis`, `nilai_wawancara`, `umur`, `lama_pengalaman`, `jarak_rmh`) VALUES
(7, 2, 1, 7, 5.5, 23, 0, 2.5),
(8, 2, 2, 6.5, 7.5, 24, 2, 5),
(9, 2, 3, 6, 7, 25, 2, 3),
(10, 2, 4, 5.5, 8, 24, 5, 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `bobot_saw`
--
ALTER TABLE `bobot_saw`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indeks untuk tabel `calon_pegawai`
--
ALTER TABLE `calon_pegawai`
  ADD PRIMARY KEY (`kd_cal_peg`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `id_pendaftaran` (`id_pendaftaran`),
  ADD KEY `kd_cal_peg` (`kd_cal_peg`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `bobot_saw`
--
ALTER TABLE `bobot_saw`
  MODIFY `id_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `calon_pegawai`
--
ALTER TABLE `calon_pegawai`
  MODIFY `kd_cal_peg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`id_pendaftaran`) REFERENCES `bobot_saw` (`id_pendaftaran`),
  ADD CONSTRAINT `penilaian_ibfk_2` FOREIGN KEY (`kd_cal_peg`) REFERENCES `calon_pegawai` (`kd_cal_peg`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

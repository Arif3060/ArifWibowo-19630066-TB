-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jan 2022 pada 01.01
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(25) NOT NULL,
  `tl_admin` date NOT NULL,
  `alamat_admin` varchar(60) NOT NULL,
  `notelp_admin` varchar(15) NOT NULL,
  `email_admin` varchar(25) NOT NULL,
  `username_admin` varchar(25) NOT NULL,
  `password_admin` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `tl_admin`, `alamat_admin`, `notelp_admin`, `email_admin`, `username_admin`, `password_admin`) VALUES
(11, 'arif', '2020-01-22', 'banjarmasin', '081287352634', 'arif@gmail.com', 'arif', 'arif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `costumer`
--

CREATE TABLE `costumer` (
  `id_costumer` int(9) NOT NULL,
  `nama_csr` varchar(25) NOT NULL,
  `tl_csr` date NOT NULL,
  `alamat_csr` varchar(50) NOT NULL,
  `notelp_csr` varchar(15) NOT NULL,
  `email_csr` varchar(50) NOT NULL,
  `username_csr` varchar(25) NOT NULL,
  `password_csr` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `costumer`
--

INSERT INTO `costumer` (`id_costumer`, `nama_csr`, `tl_csr`, `alamat_csr`, `notelp_csr`, `email_csr`, `username_csr`, `password_csr`) VALUES
(9, 'Arif', '2022-01-08', 'Banjarmasin', '081278634253', 'arif@gmail.com', 'arif', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(9) NOT NULL,
  `nama_paket` varchar(25) NOT NULL,
  `harga` mediumint(9) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`id_paket`, `nama_paket`, `harga`, `deskripsi`) VALUES
(1, 'Banjarmasin hemat', 1000000, 'mendapatkan hotel, makan dan lainnya'),
(2, 'Banjamasin Hemat', 5675000, 'hotel, tempat wisata'),
(3, 'Banjarbaru Hemat', 1200000, 'mendapatkan hotel mewah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi`
--

CREATE TABLE `reservasi` (
  `id_reservasi` int(9) NOT NULL,
  `id_costumer` int(9) NOT NULL,
  `id_paket` int(9) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `tanggal_pergi` date NOT NULL,
  `tanggal_pulang` date NOT NULL,
  `tanggal_bayar` date DEFAULT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `reservasi`
--

INSERT INTO `reservasi` (`id_reservasi`, `id_costumer`, `id_paket`, `nama`, `kelas`, `tanggal_pergi`, `tanggal_pulang`, `tanggal_bayar`, `status`) VALUES
(1, 2, 2, 'Andika', 'vip', '2022-01-01', '2022-11-06', '2022-01-04', 'Lunas'),
(2, 7, 1, 'Bayu', 'VIP', '2022-01-01', '2022-01-04', '2022-01-05', 'Lunas'),
(3, 7, 1, 'Bayu', 'VIP', '2022-01-01', '2022-01-04', '2022-01-06', 'Lunas'),
(4, 2, 3, 'Dini', 'VIP', '2022-01-01', '2020-01-08', '2022-01-07', 'Lunas'),
(5, 2, 1, 'Sinta', 'Reguler', '2022-01-01', '2022-01-09', NULL, 'Belum Lunas'),
(6, 2, 1, 'Arif', 'VIP', '2022-01-02', '2022-01-05', '2022-01-05', 'Lunas');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `costumer`
--
ALTER TABLE `costumer`
  ADD PRIMARY KEY (`id_costumer`);

--
-- Indeks untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indeks untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`id_reservasi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `costumer`
--
ALTER TABLE `costumer`
  MODIFY `id_costumer` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `id_reservasi` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

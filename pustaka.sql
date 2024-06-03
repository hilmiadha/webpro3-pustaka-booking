-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 28 Bulan Mei 2024 pada 05.23
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pustaka`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `id_booking` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_booking` date NOT NULL,
  `batas_ambil` date NOT NULL,
  `id_user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `booking`
--

INSERT INTO `booking` (`id_booking`, `tgl_booking`, `batas_ambil`, `id_user`) VALUES
('27052024001', '2024-05-27', '2024-05-29', 17);

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking_detail`
--

CREATE TABLE `booking_detail` (
  `id` int NOT NULL,
  `id_booking` int NOT NULL,
  `id_buku` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `booking_detail`
--

INSERT INTO `booking_detail` (`id`, `id_booking`, `id_buku`) VALUES
(1, 2147483647, 5),
(2, 2147483647, 1),
(3, 2147483647, 2),
(4, 2147483647, 5),
(5, 2147483647, 1),
(6, 2147483647, 1),
(7, 2147483647, 2),
(8, 2147483647, 1),
(9, 2147483647, 2),
(10, 2147483647, 2),
(11, 2147483647, 10),
(12, 2147483647, 15),
(14, 2147483647, 1),
(15, 2147483647, 2),
(16, 2147483647, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int NOT NULL,
  `judul_buku` varchar(128) NOT NULL,
  `id_kategori` int NOT NULL,
  `pengarang` varchar(64) NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `tahun_terbit` year NOT NULL,
  `isbn` varchar(64) NOT NULL,
  `stok` int NOT NULL,
  `dipinjam` int NOT NULL,
  `dibooking` int NOT NULL,
  `image` varchar(256) DEFAULT 'book-default-cover.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(1, 'Statistika dengan Program Komputer', 1, 'Ahmad Kholiqul Amin', 'Deep Publish', '2014', '9786022809432', 10, 0, 0, 'img1557402455.jpg'),
(2, 'Mudah Belajar Komputer untuk Anak', 1, 'Bambang Agus Setiawan', 'Huta Media', '2014', '9786025118500', 10, 0, 0, 'img1557402397.jpg'),
(5, 'PHP Komplet', 1, 'Jubilee', 'Elex Media Komputindo', '2017', '8346753547', 0, 1, 3, 'img1555522493.jpg'),
(10, 'Detektif Conan Ep 200', 9, 'Okigawa sasuke', 'Cultura', '2016', '874387583987', 3, 0, 2, 'img1557401465.jpg'),
(14, 'Bahasa Indonesia', 2, 'Umri Nur\'aini dan Indriyani', 'Pusat Perbukuan', '2015', '757254724884', 3, 0, 0, 'img1557402703.jpg'),
(15, 'Komunikasi Lintas Budaya', 5, 'Dr. Dedy Kurnia', 'Published', '2015', '878674646488', 4, 0, 1, 'img1557403156.jpg'),
(16, 'Kolaborasi Codeigniter dan Ajax dalam Perancangan CMS', 1, 'Anton Subagia', 'Elex Media komputindo', '2017', '43345356577', 5, 0, 0, 'img1557403502.jpg'),
(17, 'From Hobby to Money', 4, 'Deasylawati', 'Elex Media Komputindo', '2015', '87968686787879', 5, 0, 0, 'img1557403658.jpg'),
(18, 'Buku Saku Pramuka', 8, 'Rudi Himawan', 'Pusat Perbukuan', '2016', '97868687978796', 6, 0, 0, 'img1557404613.jpg'),
(19, 'Rahasia Keajaiban Bumi', 3, 'Nurul Ihsan', 'Luxima', '2014', '565756565768868', 5, 0, 0, 'img1557404689.jpg'),
(20, 'Buku Pintar Puasa Wajib dan Sunnah Sepanjang Masa', 7, 'Ali Hasan', 'Luxima', '2011', '32342342344234', 5, 0, 0, 'img1557404775.jpg'),
(21, 'Aspek Hukum dalam Penelitian', 6, 'Rianto Adi', 'Buku Obor', '2015', '7565646455757', 5, 0, 0, 'img1557404853.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `no_pinjam` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `id_buku` int NOT NULL,
  `denda` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int NOT NULL,
  `kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'Komputer'),
(2, 'Bahasa'),
(3, 'Sains'),
(4, 'Hobby'),
(5, 'Komunikasi'),
(6, 'Hukum'),
(7, 'Agama'),
(8, 'Populer'),
(9, 'Komik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(4, 'Utility'),
(5, 'Buku'),
(6, 'Anggota'),
(7, 'Laporan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjam`
--

CREATE TABLE `pinjam` (
  `no_pinjam` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `id_booking` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `id_user` int NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` enum('Pinjam','Kembali','','') COLLATE utf8mb4_general_ci NOT NULL,
  `total_denda` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'admministrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `temp`
--

CREATE TABLE `temp` (
  `id` int NOT NULL,
  `tgl_booking` datetime DEFAULT NULL,
  `id_user` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `email_user` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_buku` int DEFAULT NULL,
  `judul_buku` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(225) COLLATE utf8mb4_general_ci NOT NULL,
  `penulis` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `penerbit` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `tahun_terbit` year NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `temp`
--

INSERT INTO `temp` (`id`, `tgl_booking`, `id_user`, `email_user`, `id_buku`, `judul_buku`, `image`, `penulis`, `penerbit`, `tahun_terbit`) VALUES
(1, '2024-05-27 10:34:49', '18', 'hilmi@gmail.com', 15, 'Komunikasi Lintas Budaya', 'img1557403156.jpg', 'Dr. Dedy Kurnia', 'Published', '2015');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int NOT NULL,
  `is_active` int NOT NULL,
  `tanggal_input` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `image`, `password`, `role_id`, `is_active`, `tanggal_input`) VALUES
(1, 'Imam Nawawi', 'imam.imw@gmail.com', 'pro1557486527.jpg', '$2y$10$jLgqE1IBWTdVFuBfgq4u/upFdTkdRmKSigfZ7M8qHbjkTmnf26D5a', 1, 1, 1554218983),
(3, 'Maruloh, M.Kom', 'maruloh.mru@bsi.ac.id', 'default.jpg', '$2y$10$beSdsua15A.A.tmiLIsmfuQCLWGdptUwjXlGI2u2kqxlpPXpXqZ72', 1, 1, 1554219788),
(13, 'Rizkiyah', 'kiki.hidayah@gmail.com', 'pro1557648081.jpg', '$2y$10$237zpGsuPlkDaH0z0kMhKOcP.1pmMx8cxrUXGgh2ErFPQZ5Eb8p72', 1, 1, 1557609676),
(14, 'Eni Irfiani', 'eni.enf@bsi.ac.id', 'default.jpg', '$2y$10$pVXQd4Hs4yrtWjIjhyngge2tsG5nWbL.B956XbElPOM0Q0EsSip.a', 1, 1, 1563868032),
(15, 'Andriansah', 'andriansah.aiy@bsi.ac.id', 'default.jpg', '$2y$10$perspnO9EwfN24C1UnIlVuJl9WfZazMq.KynnKNcTdqprkVSfcmiC', 1, 1, 1563868080),
(16, 'Imam Khotib', 'imamkhotib0@gmail.com', 'default.jpg', '$2y$10$G6Z.Bq1htczywNfgmC0Ti.WTidif/a7ztpgMOyj1r7v6UWJzDSOmW', 1, 1, 1564436443),
(17, 'Muhammad Zulhilmi Adha', 'hilmiadha@gmail.com', 'default.jpg', '$2y$10$8KwygIwfveCysrcwBazyjOcaWegsooz5Lx/50QEgG06YGIjDBso6u', 2, 1, 1710740046),
(18, 'hilmi adha', 'hilmi@gmail.com', 'default.jpg', '$2y$10$.Sj4mmaB9iTauDphyUjhWO0WsMsfv1tvicLe1lsNbw3NSXYE3458a', 1, 1, 1711340152);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indeks untuk tabel `booking_detail`
--
ALTER TABLE `booking_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`no_pinjam`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `temp`
--
ALTER TABLE `temp`
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
-- AUTO_INCREMENT untuk tabel `booking_detail`
--
ALTER TABLE `booking_detail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

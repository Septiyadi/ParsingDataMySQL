-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 08 Jun 2017 pada 17.40
-- Versi Server: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbbelajar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_isi`
--

CREATE TABLE IF NOT EXISTS `tb_isi` (
  `id_isi` int(10) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(10) NOT NULL,
  `isi_judul` varchar(64) NOT NULL,
  `isi_berita` text NOT NULL,
  `isi_gambar` varchar(128) NOT NULL,
  PRIMARY KEY (`id_isi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tb_isi`
--

INSERT INTO `tb_isi` (`id_isi`, `id_kategori`, `isi_judul`, `isi_berita`, `isi_gambar`) VALUES
(1, 1, 'messi', 'golll.....golll...golll', '3.png'),
(2, 2, 'hiburan', 'hiburan....hiburan....hiburan', '2.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE IF NOT EXISTS `tb_kategori` (
  `id_kategori` int(10) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(32) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `kategori_nama`) VALUES
(1, 'olahraga'),
(2, 'hiburan');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

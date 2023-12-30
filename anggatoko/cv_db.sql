-- phpMyAdmin SQL Dump
-- version 2.11.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2023,  07:02 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cv_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `user_id` int(11) NOT NULL auto_increment,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `fullname`) VALUES
(3, 'angga', 'angga', 'angga duwi');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `br_id` int(6) NOT NULL auto_increment,
  `br_nm` varchar(50) NOT NULL,
  `br_item` int(4) NOT NULL,
  `br_hrg` int(10) NOT NULL,
  `br_stok` int(9) NOT NULL,
  `br_satuan` varchar(20) NOT NULL,
  `br_gbr` varchar(100) NOT NULL,
  `ket` varchar(250) NOT NULL,
  `br_sts` varchar(1) NOT NULL,
  PRIMARY KEY  (`br_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`br_id`, `br_nm`, `br_item`, `br_hrg`, `br_stok`, `br_satuan`, `br_gbr`, `ket`, `br_sts`) VALUES
(1, 'KENTANG ASIN', 1, 10.000, 12, 'Pcs', 'gambar/kentang asin.png', 'kentang asin', 'Y'),
(2, 'kentang bakar', 1, 10.000, 24, 'Pcs', 'gambar/kentang bakar.jpg', 'kentang bakar', 'Y'),
(3, 'kentang balado', 1, 10.000, 30, 'Pcs', 'gambar/kentang balado.webp', 'kentang balado', 'Y'),
(4, 'kentang kerispi', 1, 10.000, 20, 'Pcs', 'gambar/kentang kerispi.jpg', 'kentang kerispi', 'Y'),
(5, 'kentang kuliner', 1, 10.000, 30, 'Pcs', 'gambar/kentang kuliner.jpg', 'kentang kuliner', 'Y'),
(6, 'kentang manis', 1, 10.000, 20, 'Pcs', 'gambar/kentang manis.jpg', 'kentang manis', 'Y'),
(7, 'kentang pedas', 1, 10.000, 20, 'Pcs', 'gambar/kentang pedas.jpg', 'kentang pedas', 'Y'),
(8, 'kerupuk kentang', 1, 10.000, 12, 'Pcs', 'gambar/kerupuk kentang.jpg', 'kerupuk kentang', 'Y'),
(9, 'kentang rebus', 1, 10.000, 20, 'Pcs', 'gambar/kentang rebus.jpg', 'kentang rebus', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `no_pem`
--

CREATE TABLE IF NOT EXISTS `no_pem` (
  `nopem` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `no_pem`
--

INSERT INTO `no_pem` (`nopem`) VALUES
('79');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
  `no_hdpem` varchar(10) NOT NULL,
  `tgl_hdpem` date NOT NULL,
  `usr_hdpem` int(11) NOT NULL,
  `crkir_hdpem` tinyint(4) NOT NULL,
  `crpem_hdpem` tinyint(4) NOT NULL,
  `penerima_hdpem` varchar(50) NOT NULL,
  `almt_pem` text NOT NULL,
  `kp_pem` varchar(6) NOT NULL,
  `kota_pem` varchar(30) NOT NULL,
  `tlp` varchar(16) NOT NULL,
  `rek_pem` varchar(50) NOT NULL,
  `nmrek_pem` varchar(20) NOT NULL,
  `bank_pem` varchar(25) NOT NULL,
  `ct_pem` text NOT NULL,
  `tot_hdpem` int(11) NOT NULL,
  `sts_pem` varchar(1) NOT NULL,
  PRIMARY KEY  (`no_hdpem`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`no_hdpem`, `tgl_hdpem`, `usr_hdpem`, `crkir_hdpem`, `crpem_hdpem`, `penerima_hdpem`, `almt_pem`, `kp_pem`, `kota_pem`, `tlp`, `rek_pem`, `nmrek_pem`, `bank_pem`, `ct_pem`, `tot_hdpem`, `sts_pem`) VALUES
('T10090078', '2023-11-29', 13, 0, 0, 'arya', ' Jl. kampung majelawang ', '17151', 'banten', '021', '123123123', '', '', '', 12070000, 'Y'),
('T10090077', '2023-11-29', 26, 0, 0, 'galih', '  kplk. tampes ', '18762', '02187967', 'banten', '67542111', 'galih', 'BCA', '', 190000, 'Y'),







-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `hd_trpem` varchar(10) NOT NULL,
  `br_trpem` varchar(6) NOT NULL,
  `qty_trpem` int(11) NOT NULL,
  `hrg_trpem` int(11) NOT NULL,
  `sts_trpem` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`hd_trpem`, `br_trpem`, `qty_trpem`, `hrg_trpem`, `sts_trpem`) VALUES
('T10090078', 'mt01', 40, 100000, 'Y'),
('T10090078', 'mk01', 40, 200000, 'Y'),
('T10090078', 'gd01', 1, 70000, 'Y'),
('T10090077', 'me01', 40, 3000, 'Y'),
('T10090077', 'gd01', 1, 70000, 'Y'),
('T10090076', 'me01', 40, 3000, 'Y'),
('T10090076', 'gd01', 1, 70000, 'Y'),
('T10090075', 'gd01', 1, 70000, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_usr` int(11) NOT NULL auto_increment,
  `nm_usr` varchar(50) NOT NULL,
  `log_usr` varchar(20) NOT NULL,
  `pas_usr` varchar(100) NOT NULL,
  `email_usr` varchar(50) NOT NULL,
  `almt_usr` text NOT NULL,
  `kp_usr` varchar(6) NOT NULL,
  `kota_usr` varchar(25) NOT NULL,
  `tlp` varchar(20) NOT NULL,
  `rek` varchar(30) NOT NULL,
  `nmrek` varchar(30) NOT NULL,
  `bank` varchar(30) NOT NULL,
  `sts_usr` varchar(1) NOT NULL,
  PRIMARY KEY  (`id_usr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_usr`, `nm_usr`, `log_usr`, `pas_usr`, `email_usr`, `almt_usr`, `kp_usr`, `kota_usr`, `tlp`, `rek`, `nmrek`, `bank`, `sts_usr`) VALUES
(28, 'angga duwi', 'acchoblues', 'angga000', 'anggaduwi_@yahoo.co.id', 'komplek. taman pesona. serang banten', '17520', 'Kab. serang', '081233412365', '121212121212', 'angga duwi', 'BCA', ''),
(27, 'angga duwi', 'acchoblues', 'angga000', 'anggduwi_@yahoo.co.id', 'Komplek . taman pesona Rt.08 Rw.08   . ', '17520', 'Kab. serang', '081233412365', '121212121212', 'angga duwi', 'Mandiri', ''),
(29, 'angga duwi', 'angga', 'romance18', 'anggaduwi_@yahoo.co.id', 'Komplek. taman pesona Rt.08 Rw.08 Desa . ', '17520', 'Kab. serang banten', '081233412365', '121212121212', 'angga duwi', 'Bank Jabar', '');

-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2018 at 11:46 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mk`
--

-- --------------------------------------------------------

--
-- Table structure for table `kuliah`
--

CREATE TABLE `kuliah` (
  `id` int(11) NOT NULL,
  `mahasiswa_nim` varchar(20) NOT NULL,
  `matkul_id` int(11) NOT NULL,
  `kuliah_nilai` enum('A','B','C','D','E','F') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kuliah`
--

INSERT INTO `kuliah` (`id`, `mahasiswa_nim`, `matkul_id`, `kuliah_nilai`) VALUES
(1, '09031381320020', 2, 'C'),
(2, '09031381320020', 4, 'C'),
(3, '09031381320020', 5, 'A'),
(4, '09031381320020', 19, 'B'),
(5, '09031381320020', 8, 'C'),
(6, '09031381320020', 18, 'C'),
(7, '09031381320020', 27, 'C'),
(8, '09031381320020', 28, 'C'),
(9, '09031381320020', 220, 'F'),
(10, '09031381320020', 48, 'A'),
(11, '09031381320020', 52, 'F'),
(12, '09031381320020', 129, 'F'),
(13, '09031381320020', 3, 'B'),
(14, '09031381320020', 9, 'B'),
(15, '09031381320020', 12, 'A'),
(16, '09031381320020', 13, 'C'),
(17, '09031381320020', 14, 'A'),
(18, '09031381320020', 6, 'B'),
(19, '09031381320020', 16, 'A'),
(20, '09031381320020', 7, 'B'),
(21, '09031381320020', 17, 'B'),
(22, '09031381320020', 20, 'D'),
(23, '09031381320020', 93, 'D'),
(24, '09031381320020', 30, 'B'),
(25, '09031381320020', 97, 'C'),
(26, '09031381320020', 96, 'B'),
(27, '09031381320020', 99, 'B'),
(28, '09031381320020', 111, 'A'),
(29, '09031381320020', 104, 'B'),
(30, '09031381320020', 110, 'D'),
(31, '09031381320020', 21, 'D'),
(32, '09031381320020', 25, 'B'),
(33, '09031381320020', 31, 'C'),
(34, '09031381320020', 36, 'C'),
(35, '09031381320020', 22, 'B'),
(36, '09031381320020', 33, 'D'),
(37, '09031381320020', 35, 'B'),
(38, '09031381320020', 26, 'B'),
(39, '09031381320020', 24, 'B'),
(40, '09031381320020', 32, 'D'),
(41, '09031381320020', 23, 'B'),
(42, '09031381320020', 34, 'D'),
(43, '09031381320020', 37, 'F'),
(44, '09031381320020', 118, 'B'),
(45, '09031381320020', 120, 'F'),
(46, '09031381320020', 38, 'B'),
(47, '09031381320020', 39, 'B'),
(48, '09031381320020', 40, 'C'),
(49, '09031381320020', 45, 'B'),
(50, '09031381320020', 53, 'B'),
(51, '09031381320020', 54, 'D'),
(52, '09031381320020', 59, 'B'),
(53, '09031381320020', 60, 'D'),
(54, '09031381320020', 41, 'A'),
(55, '09031381320020', 47, 'B'),
(56, '09031381320020', 42, 'C'),
(57, '09031381320020', 43, 'B'),
(58, '09031381320020', 65, 'D'),
(59, '09031381320020', 71, 'B'),
(60, '09031381320020', 72, 'C'),
(61, '09031381320020', 73, 'B'),
(62, '09031381320020', 51, 'B'),
(63, '09031381320020', 49, 'C'),
(64, '09031381320020', 50, 'B'),
(65, '09031381320020', 1, 'B'),
(66, '09031381320020', 11, 'C'),
(67, '09031381320020', 10, 'B'),
(68, '09031381320020', 15, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `kurikulum`
--

CREATE TABLE `kurikulum` (
  `kurikulum_id` int(11) NOT NULL,
  `kurikulum_tahun` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kurikulum`
--

INSERT INTO `kurikulum` (`kurikulum_id`, `kurikulum_tahun`) VALUES
(1, 2011),
(2, 2015),
(3, 2017);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `mahasiswa_nim` varchar(25) NOT NULL,
  `mahasiswa_nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`mahasiswa_nim`, `mahasiswa_nama`) VALUES
('09031381320020', 'Aditya Dharamwan Saputra');

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `matkul_id` int(11) NOT NULL,
  `matkul_kode` varchar(10) NOT NULL,
  `matkul_nama` varchar(100) NOT NULL,
  `matkul_sks` int(2) NOT NULL,
  `matkul_prasyarat` varchar(10) NOT NULL,
  `matkul_jenis` enum('wajib','pilihan') NOT NULL,
  `kurikulum_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`matkul_id`, `matkul_kode`, `matkul_nama`, `matkul_sks`, `matkul_prasyarat`, `matkul_jenis`, `kurikulum_id`) VALUES
(1, 'UNI10111', 'Pendidikan Agama', 2, '', 'wajib', 1),
(2, 'FIK10111', 'Bahasa Inggris', 2, '', 'wajib', 1),
(3, 'FSI11111', 'Teori Organisasi Umum', 3, '', 'wajib', 1),
(4, 'FIK11111', 'Algoritma dan Pemrograman I', 3, '', 'wajib', 1),
(5, 'FIK11211', 'Pengantar Teknologi Informasi', 2, '', 'wajib', 1),
(6, 'FSI11711', 'Pemrograman Web I', 2, '', 'wajib', 1),
(7, 'FSI18111', 'Praktikum Pemrograman Web I', 1, '', 'wajib', 1),
(8, 'FIK18211', 'Praktikum Algoritma dan Pemrograman I', 1, '', 'wajib', 1),
(9, 'FSI11211', 'Matematika', 3, '', 'wajib', 1),
(10, 'UNI10311', 'Bahasa Indonesia', 2, '', 'wajib', 1),
(11, 'UNI10211', 'Pendidikan Kewarganegaraan', 2, '', 'wajib', 1),
(12, 'FSI11411', 'Matematika Diskrit', 3, '', 'wajib', 1),
(13, 'FSI11511', 'Akuntansi Dasar', 3, '', 'wajib', 1),
(14, 'FSI11611', 'Konsep Sistem Informasi', 3, '', 'wajib', 1),
(15, 'UNI17111', 'Ilmu Sosial dan Budaya Dasar', 2, '', 'wajib', 1),
(16, 'FSI11811', 'Pemrograman Web II', 2, 'FSI11711', 'wajib', 1),
(17, 'FSI18211', 'Praktikum Pemrograman Web II', 1, 'FSI18111', 'wajib', 1),
(18, 'FIK18411', 'Praktikum Algoritma dan Pemrograman II', 1, 'FIK18211', 'wajib', 1),
(19, 'FIK11511', 'Algoritma dan Pemrograman II', 3, 'FIK11111', 'wajib', 1),
(20, 'FSI21111', 'Statistika', 3, '', 'wajib', 1),
(21, 'FSI24111', 'Administrasi Bisnis', 3, '', 'wajib', 1),
(22, 'FSI24611', 'Basis Data I', 3, '', 'wajib', 1),
(23, 'FSI28311', 'Praktikum Basis Data I', 1, '', 'wajib', 1),
(24, 'FSI28111', 'Praktikum Statistika', 1, '', 'wajib', 1),
(25, 'FSI24211', 'Manajemen Strategis', 3, '', 'wajib', 1),
(26, 'FSI25111', 'Organisasi dan Arsitektur Komputer', 3, '', 'wajib', 1),
(27, 'FIK21111', 'Struktur Data', 3, 'FIK11511', 'wajib', 1),
(28, 'FIK28211', 'Praktikum Struktur Data', 1, 'FIK18411', 'wajib', 1),
(29, 'FSI24311', 'Komunikasi Data dan Jaringan Komputer', 3, '', 'wajib', 1),
(30, 'FSI21211', 'Pengantar Ekonomi', 2, '', 'wajib', 1),
(31, 'FSI24411', 'Analisis dan Perancangan Sistem Informasi I', 3, 'FSI24111', 'wajib', 1),
(32, 'FSI28211', 'Praktikum Analisis dan Perancangan Sistem Informasi', 1, 'FSI24111', 'wajib', 1),
(33, 'FSI24811', 'Basis Data II', 3, 'FSI24611', 'wajib', 1),
(34, 'FSI28511', 'Praktikum Basis Data II', 1, 'FSI28311', 'wajib', 1),
(35, 'FSI24911', 'Analisis dan Perancangan Berorientasi Objek', 4, '', 'wajib', 1),
(36, 'FSI24511', 'Manajemen Proyek Sistem Informasi', 3, '', 'wajib', 1),
(37, 'FSI28611', 'Metodologi Penelitian', 2, '', 'wajib', 1),
(38, 'FSI34111', 'Rekayasa Perangkat Lunak', 3, '', 'wajib', 1),
(39, 'FSI34211', 'Analisis dan Perancangan Sistem Informasi II', 3, 'FSI24411', 'wajib', 1),
(40, 'FSI34311', 'Keamanan Sistem Informasi', 3, '', 'wajib', 1),
(41, 'FSI35911', 'Pemrograman Berorientasi Objek', 3, 'FSI24911', 'wajib', 1),
(42, 'FSI38111', 'Praktikum Pemrograman Berorientasi Objek', 1, 'FSI24911', 'wajib', 1),
(43, 'FSI38111', 'Interaksi Manusia dan Komputer', 3, '', 'wajib', 1),
(44, 'FSI34411', 'Enterprise Resource Planning', 3, 'FIK39111', 'wajib', 1),
(45, 'FSI34511', 'Kecerdasan Bisnis (Business Intelligence)', 3, 'FSI24811', 'wajib', 1),
(46, 'FSI34611', 'E-Bisnis', 3, '', 'wajib', 1),
(47, 'FSI36011', 'Multimedia', 3, '', 'wajib', 1),
(48, 'FIK49111', 'Tugas Akhir I', 2, '', 'wajib', 1),
(49, 'FSI49111', 'Komputer dan Masyarakat', 2, '', 'wajib', 1),
(50, 'FSI49211', 'Kecakapan Antar Personal', 2, '', 'wajib', 1),
(51, 'FSI48111', 'Kewirausahaan', 2, '', 'wajib', 1),
(52, 'FIK49211', 'Tugas Akhir II', 4, 'FIK49111', 'wajib', 1),
(53, 'FSI34711', 'Gudang Data (Data Warehouse)', 3, 'FSI24811', 'pilihan', 1),
(54, 'FSI34811', 'Manajemen Pengetahuan (Knowledge Management)', 3, 'FSI34411', 'pilihan', 1),
(55, 'FSI34911', 'Manajemen Hubungan Pelanggan (Customer Relationship Management)', 3, 'FSI34411', 'pilihan', 1),
(56, 'FSI35011', 'Infrastruktur TI', 3, 'FSI24311', 'pilihan', 1),
(57, 'FSI35111', 'Sistem Pendukung Keputusan', 3, 'FSI34511', 'pilihan', 1),
(58, 'FSI35211', 'Sistem Informasi Geografis', 3, '', 'pilihan', 1),
(59, 'FSI35311', 'E-Government', 2, '', 'pilihan', 1),
(60, 'FSI35411', 'Kontrol dan Audit Sistem Informasi', 2, '', 'pilihan', 1),
(61, 'FSI35511', 'Teknologi Bergerak (Mobile Technology)', 3, '', 'pilihan', 1),
(62, 'FSI35611', 'E-Procurement', 2, '', 'pilihan', 1),
(63, 'FSI35711', 'Aplikasi Komputer Akuntansi', 3, '', 'pilihan', 1),
(64, 'FSI44111', 'Proyek SI Industri', 3, 'FSI24511', 'pilihan', 1),
(65, 'FSI44211', 'Proyek SI Kesehatan', 3, 'FSI24511', 'pilihan', 1),
(66, 'FSI44311', 'Proyek SI Perbankan', 3, 'FSI24511', 'pilihan', 1),
(67, 'FSI44411', 'Manajemen Teknologi Informasi', 2, 'FSI35011', 'pilihan', 1),
(68, 'FSI44511', 'Manajemen Rantai Suplai (Supply Chain Management)', 3, 'FSI34411', 'pilihan', 1),
(69, 'FSI44611', 'Manajemen Sumber Daya Manusia (Human Resource Management)', 3, 'FSI34411', 'pilihan', 1),
(70, 'FSI44711', 'Manajemen Sistem Informasi', 2, '', 'pilihan', 1),
(71, 'FSI44811', 'Pengembangan dan Pemasaran Produk', 2, '', 'pilihan', 1),
(72, 'FSI44911', 'Integrasi Aplikasi Perusahaan (Enterprise Applications Integration)', 2, '', 'pilihan', 1),
(73, 'FSI45011', 'Sistem Informasi Akuntansi', 3, '', 'pilihan', 1),
(74, 'UNI111001', 'Pendidikan Agama', 2, '', 'wajib', 2),
(75, 'UNI111003', 'Bahasa Inggris', 2, '', 'wajib', 2),
(76, 'FSI112001', 'Teori Organisasi Umum', 3, '', 'wajib', 2),
(77, 'FIK112002', 'Algoritma dan Pemrograman I', 3, '', 'wajib', 2),
(78, 'FIK114001', 'Praktikum Algoritma dan Pemrograman I', 1, '', 'wajib', 2),
(79, 'FIK112003', 'Pengantar Teknologi Informasi', 2, '', 'wajib', 2),
(80, 'FSI112004', 'Konsep Sistem Informasi', 3, '', 'wajib', 2),
(81, 'FSI112005', 'Akuntansi', 3, '', 'wajib', 2),
(82, 'UNI111002', 'Bahasa Indonesia', 2, '', 'wajib', 2),
(83, 'UNI121004', 'Pendidikan Kewarganegaraan', 2, '', 'wajib', 2),
(84, 'UNI121005', 'Pancasila', 2, '', 'wajib', 2),
(85, 'FSI122006', 'Matematika', 3, '', 'wajib', 2),
(86, 'FSI122007', 'Pemrograman Web I', 3, '', 'wajib', 2),
(87, 'FSI124002', 'Praktikum Pemrograman Web I', 1, '', 'wajib', 2),
(88, 'FSI123001', 'Basis Data I', 3, '', 'wajib', 2),
(89, 'FSI124003', 'Praktikum Basis Data I', 1, '', 'wajib', 2),
(90, 'FSI123002', 'Organisasi dan Arsitektur Komputer', 3, 'FIK112003', 'wajib', 2),
(91, 'FIK122008', 'Algoritma dan Pemrograman II', 3, 'FIK112002', 'wajib', 2),
(92, 'FIK124004', 'Praktikum Algoritma dan Pemrograman II', 1, 'FIK114001', 'wajib', 2),
(93, 'FSI212009', 'Statistika', 2, 'FSI122006', 'wajib', 2),
(94, 'FSI214005', 'Praktikum Statistika', 1, '', 'wajib', 2),
(95, 'FSI213003', 'Analisis dan Perancangan Sistem Informasi I', 3, 'FSI112004', 'wajib', 2),
(96, 'FSI214006', 'Praktikum Analisis dan Perancangan SI', 1, '', 'wajib', 2),
(97, 'FSI213004', 'Basis Data II', 3, 'FSI123001', 'wajib', 2),
(98, 'FSI214007', 'Praktikum Basis Data II', 1, 'FSI124003', 'wajib', 2),
(99, 'FSI213005', 'Manajemen Strategis', 3, 'FSI112001', 'wajib', 2),
(100, 'FSI212010', 'Pemrograman Web II', 3, 'FSI122007', 'wajib', 2),
(101, 'FSI214008', 'Praktikum Pemrograman Web II', 1, 'FSI124002', 'wajib', 2),
(102, 'FIK212011', 'Struktur Data', 3, 'FIK122008', 'wajib', 2),
(103, 'FIK214009', 'Praktikum Struktur Data', 1, 'FIK124004', 'wajib', 2),
(104, 'FSI223006', 'Komunikasi Data dan Jaringan Komputer', 3, '', 'wajib', 2),
(105, 'FSI222012', 'Pengantar Ekonomi', 2, '', 'wajib', 2),
(106, 'FSI223007', 'Rekayasa Perangkat Lunak', 3, 'FIK212011', 'wajib', 2),
(107, 'FSI223008', 'Analisis dan Perancangan Sistem Informasi II', 3, 'FSI213003', 'wajib', 2),
(108, 'FSI223009', 'Analisis dan Perancangan Berorientasi Objek', 3, 'FIK212011', 'wajib', 2),
(109, 'FSI224010', 'Praktikum Analisis dan Perancangan Berorientasi Obyek', 1, 'FIK214009', 'wajib', 2),
(110, 'FSI223010 ', 'Manajemen Proyek Sistem Informasi', 3, 'FSI112004 ', 'wajib', 2),
(111, 'FSI222013', 'Metodologi Penelitian', 2, 'UNI111002', 'wajib', 2),
(112, 'FSI313011', 'Pemrograman Bergerak', 3, 'FSI223009', 'wajib', 2),
(113, 'FSI314011', 'Praktikum Pemrograman Bergerak', 1, '', 'wajib', 2),
(114, 'FSI313012', 'Gudang Data (Data Warehouse)', 3, 'FSI213004', 'wajib', 2),
(115, 'FSI313013', 'Pemrograman Berorientasi Objek', 3, 'FSI223007', 'wajib', 2),
(116, 'FSI38111', 'Praktikum Pemrograman Berorientasi Objek', 1, '', 'wajib', 2),
(117, 'FSI313014', 'Interaksi Manusia Komputer', 3, '', 'wajib', 2),
(118, 'FSI313015', 'Enterprise Resource Planning', 3, 'FSI223010', 'wajib', 2),
(119, 'FIK305001', 'Kerja Praktek', 2, '', 'wajib', 2),
(120, 'FSI323016', 'Manajemen Keamanan Informasi', 3, 'FSI213005', 'wajib', 2),
(121, 'FSI323017', 'Perdagangan Elektronis ( E-Commerce)', 3, 'FSI222012', 'wajib', 2),
(122, 'FSI323018', 'Multimedia', 3, '', 'wajib', 2),
(123, 'FIK405002', 'Proposal Skripsi', 2, 'FSI222013', 'wajib', 2),
(124, 'FSI415003', 'Komputer dan Masyarakat', 2, 'FSI313014', 'wajib', 2),
(125, 'FSI415004', 'Kecakapan Antar Personal', 2, 'FSI112001', 'wajib', 2),
(126, 'FSI414014', 'Kewirausahaan', 2, '', 'wajib', 2),
(127, 'FIK405005', 'Skripsi', 4, 'FIK405002', 'wajib', 2),
(128, 'FSI023101', 'Kecerdasan Bisnis (Business Intelligence)', 3, 'FSI313012', 'pilihan', 2),
(129, 'FSI023102', 'Manajemen Pengetahuan (Knowledge Management)', 3, 'FSI313012', 'pilihan', 2),
(130, 'FSI023103', 'Manajemen Hubungan Pelanggan (Customer Relationship Management)', 3, 'FSI313015', 'pilihan', 2),
(131, 'FSI023104', 'Manajemen Rantai Suplai (Supply Chain Management)', 3, 'FSI313015', 'pilihan', 2),
(132, 'FSI023105', 'Sistem Pendukung Keputusan', 3, 'FSI313012', 'pilihan', 2),
(133, 'FSI023106', 'Sistem Informasi Geografis', 3, 'FSI313013', 'pilihan', 2),
(134, 'FSI023107', 'E-Government', 3, 'FSI112001 ', 'pilihan', 2),
(135, 'FSI013107', 'Manajemen Sistem Informasi', 3, 'FSI213005', 'pilihan', 2),
(136, 'FSI023109', 'Teknologi Bergerak (Mobile Technology)', 3, 'FSI313011', 'pilihan', 2),
(137, 'FSI023110', 'Aplikasi Komputer Akuntansi', 3, 'FSI112005', 'pilihan', 2),
(138, 'FSI013101', 'Proyek SI Industri', 3, 'FSI223008', 'pilihan', 2),
(139, 'FSI013102', 'Manajemen Resiko Sistem Informasi', 3, 'FSI323016', 'pilihan', 2),
(140, 'FSI013103', 'E-Procurement', 3, 'FSI222012', 'pilihan', 2),
(141, 'FSI013104', 'Manajemen Teknologi Informasi', 3, 'FIK112003', 'pilihan', 2),
(142, 'FSI013105', 'Infrastruktur TI', 3, 'FSI213005', 'pilihan', 2),
(143, 'FSI013106', 'Manajemen Sumber Daya Manusia (Human Resource Management)', 3, 'FSI112001', 'pilihan', 2),
(144, 'FSI023108', 'Kontrol dan Audit Sistem Informasi', 3, 'FSI323016', 'pilihan', 2),
(145, 'FSI013108', 'Pengembangan dan Pemasaran Produk', 3, 'FSI323017', 'pilihan', 2),
(146, 'FSI013109', 'Sistem Informasi Akuntansi', 3, 'FSI112005', 'pilihan', 2),
(147, 'FSI014115', 'Multimedia lanjutan', 3, 'FSI323018', 'pilihan', 2),
(148, 'UNI111001', 'Pendidikan Agama', 2, '', 'wajib', 3),
(149, 'UNI121004', 'Pendidikan Kewarganegaraan', 2, '', 'wajib', 3),
(150, 'FSI21117', 'Dasar Manajemen', 3, '', 'wajib', 3),
(151, 'FSI11117', 'Algoritma dan Pemrograman I', 3, '', 'wajib', 3),
(152, 'FSI12117', 'Praktikum Algoritma dan Pemrograman I', 1, '', 'wajib', 3),
(153, 'FSI13117', 'Pengantar Teknologi Informasi', 2, '', 'wajib', 3),
(154, 'FSI14117', 'Pemrograman Web I', 3, '', 'wajib', 3),
(155, 'FSI15117', 'Praktikum Pemrograman Web I', 1, '', 'wajib', 3),
(156, 'FSI22117', 'Matematika', 3, '', 'wajib', 3),
(157, 'FSI21217', 'Pengantar Ekonomi', 2, '', 'wajib', 3),
(158, 'FSI11217', 'Basis Data I', 3, '', 'wajib', 3),
(159, 'FSI12217', 'Praktikum Basis Data I', 1, '', 'wajib', 3),
(160, 'FSI13217', 'Analisis dan Perancangan Sistem Informasi I', 3, 'FSI18117', 'wajib', 3),
(161, 'FSI14217', 'Praktikum Analisis dan Perancangan SI', 1, '', 'wajib', 3),
(162, 'FSI22217', 'Organisasi dan Arsitektur Komputer', 3, '', 'wajib', 3),
(163, 'FSI23217', 'Interaksi Manusia Komputer', 3, '', 'wajib', 3),
(164, 'FSI15217', 'Struktur Data', 3, 'FSI16117', 'wajib', 3),
(165, 'FSI16217', 'Praktikum Struktur Data', 1, 'FSI17117', 'wajib', 3),
(166, 'UNI121005', 'Pancasila', 2, '', 'wajib', 3),
(167, 'UNI111002', 'Bahasa Indonesia', 2, '', 'wajib', 3),
(168, 'FIK001117', 'Bahasa Inggris', 2, '', 'wajib', 3),
(169, 'FSI23117', 'Akuntansi Dasar', 2, '', 'wajib', 3),
(170, 'FSI24117', 'Praktikum Akuntansi Dasar', 1, '', 'wajib', 3),
(171, 'FSI16117', 'Algoritma dan Pemrograman II', 3, 'FSI12117', 'wajib', 3),
(172, 'FSI17117', 'Praktikum Algoritma dan Pemrograman II', 1, 'FSI13117', 'wajib', 3),
(173, 'FSI18117', 'Konsep Sistem Informasi', 3, '', 'wajib', 3),
(174, 'FSI19117', 'Pemrograman Web II', 3, 'FSI14117', 'wajib', 3),
(175, 'FSI110117', 'Praktikum Pemrograman Web II', 1, 'FSI15117', 'wajib', 3),
(176, 'FSI17217', 'Komunikasi Data dan Jaringan Komputer', 3, '', 'wajib', 3),
(177, 'FSI24217', 'Statistika', 2, '', 'wajib', 3),
(178, 'FSI25217', 'Praktikum Statistika', 1, '', 'wajib', 3),
(179, 'FSI18217', 'Analisis dan Perancangan Sistem Informasi II', 3, 'FSI13217', 'wajib', 3),
(180, 'FSI19217', 'Basis Data II', 3, 'FSI11217', 'wajib', 3),
(181, 'FSI110217', 'Praktikum Basis Data II', 1, 'FSI12217', 'wajib', 3),
(182, 'FSI111217', 'Rekayasa Perangkat Lunak', 3, '', 'wajib', 3),
(183, 'FSI112217', 'Pemrograman Berorientasi Objek', 3, 'FSI15217', 'wajib', 3),
(184, 'FSI113217', 'Praktikum Pemrograman Berorientasi Objek', 1, 'FSI16217', 'wajib', 3),
(185, 'FSI11317', 'Pemrograman Bergerak', 3, 'FSI112217', 'wajib', 3),
(186, 'FSI12317', 'Praktikum Pemrograman Bergerak', 1, 'FSI113217', 'wajib', 3),
(187, 'FSI13317', 'Manajemen Proyek Sistem Informasi', 3, 'FSI18117 d', 'wajib', 3),
(188, 'FSI14317', 'Analisis dan Perancangan Berorientasi Objek', 3, 'FSI112217', 'wajib', 3),
(189, 'FSI15317', 'Praktikum Analisis dan Perancangan Berorientasi Obyek', 1, 'FSI113217', 'wajib', 3),
(190, 'FSI16317', 'Perdagangan Elektronis', 3, 'FSI21217', 'wajib', 3),
(191, 'FSI17317', 'Manajemen Strategis Sistem Informasi', 3, 'FSI11117', 'wajib', 3),
(192, 'FSI18317', 'Gudang Data (Data Warehouse)', 3, 'FSI19217', 'wajib', 3),
(193, 'FSI19317', 'Multimedia', 3, '', 'wajib', 3),
(194, 'FSI110317', 'Enterprise Resource Planning', 3, 'FSI13317', 'wajib', 3),
(195, 'FIK007317', 'Kewirausahaan', 2, '', 'wajib', 3),
(196, 'FIK004317', 'Kerja Praktik', 2, '', 'wajib', 3),
(197, 'FIK002317', 'Metodologi Penelitian', 2, 'UNI111002', 'wajib', 3),
(198, 'FSI11417', 'Manajemen Keamanan Informasi', 3, '', 'wajib', 3),
(199, 'FSI12417', 'Komputer dan Masyarakat', 2, 'FSI11117', 'wajib', 3),
(200, 'FSI13417', 'Kecakapan Antar Personal', 3, 'FSI23217', 'wajib', 3),
(201, 'FIK003317', 'Etika Profesi', 2, '', 'wajib', 3),
(202, 'FIK005417', 'Proposal Skripsi', 2, 'FIK002317', 'wajib', 3),
(203, 'FIK006417', 'Skripsi (Final Project)', 4, 'FIK005417', 'wajib', 3),
(204, 'FSI31217', 'Kecerdasan Bisnis', 3, 'FSI18317', 'pilihan', 3),
(205, 'FSI32217', 'Manajemen Pengetahuan', 3, 'FSI18317', 'pilihan', 3),
(206, 'FSI33217', 'Sistem Pendukung Keputusan', 3, 'FSI18317', 'pilihan', 3),
(207, 'FSI34217', 'E-Government', 3, 'FSI21117 d', 'pilihan', 3),
(208, 'FSI35217', 'Manajemen Sistem Informasi', 3, 'FSI17317', 'pilihan', 3),
(209, 'FSI36217', 'Teknologi Bergerak', 3, 'FSI11317', 'pilihan', 3),
(210, 'FSI37217', 'Infrastruktur TI', 3, 'FSI17217', 'pilihan', 3),
(211, 'FSI38217', 'Audit Sistem Informasi', 3, 'FSI11417', 'pilihan', 3),
(212, 'FSI39217', 'Pengembangan dan Pemasaran Produk', 3, 'FSI16317', 'pilihan', 3),
(213, 'FSI31117', 'Manajemen Teknologi Informasi', 3, 'FSI13117', 'pilihan', 3),
(214, 'FSI32117', 'Sistem Informasi Akuntansi', 3, 'FSI23117', 'pilihan', 3),
(215, 'FSI33117', 'Multimedia lanjutan', 3, 'FSI19317', 'pilihan', 3),
(216, 'FSI34117', 'Sistem Informasi Geografis', 3, 'FSI112217', 'pilihan', 3),
(217, 'FSI35117', 'Manajemen Rantai Suplai', 3, 'FSI110317', 'pilihan', 3),
(218, 'FSI36117', 'Manajemen Hubungan Pelanggan', 3, 'FSI110317', 'pilihan', 3),
(219, 'FSI37117', 'Integrasi Aplikasi Perusahaan', 3, '', 'pilihan', 3),
(220, 'FIK39111', 'KERJA PRAKTEK', 2, '', 'wajib', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kuliah`
--
ALTER TABLE `kuliah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matkul_id` (`matkul_id`),
  ADD KEY `mahasiswa_nim` (`mahasiswa_nim`);

--
-- Indexes for table `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD PRIMARY KEY (`kurikulum_id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`mahasiswa_nim`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`matkul_id`),
  ADD KEY `kurikulum_id` (`kurikulum_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kuliah`
--
ALTER TABLE `kuliah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `kurikulum`
--
ALTER TABLE `kurikulum`
  MODIFY `kurikulum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `matkul`
--
ALTER TABLE `matkul`
  MODIFY `matkul_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kuliah`
--
ALTER TABLE `kuliah`
  ADD CONSTRAINT `kuliah_ibfk_2` FOREIGN KEY (`matkul_id`) REFERENCES `matkul` (`matkul_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kuliah_ibfk_3` FOREIGN KEY (`mahasiswa_nim`) REFERENCES `mahasiswa` (`mahasiswa_nim`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matkul`
--
ALTER TABLE `matkul`
  ADD CONSTRAINT `matkul_ibfk_1` FOREIGN KEY (`kurikulum_id`) REFERENCES `kurikulum` (`kurikulum_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

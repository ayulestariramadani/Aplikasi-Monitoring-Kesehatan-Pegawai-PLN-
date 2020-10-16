-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 23 Mar 2020 pada 07.00
-- Versi server: 5.7.24
-- Versi PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pln_tello`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari_libur`
--

CREATE TABLE `hari_libur` (
  `id` int(11) NOT NULL,
  `id_periode` int(11) NOT NULL,
  `tanggal` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hari_libur`
--

INSERT INTO `hari_libur` (`id`, `id_periode`, `tanggal`, `keterangan`) VALUES
(1, 1, 1, 'Tahun Baru 2020'),
(2, 3, 15, 'Peringatan isra mi\'raj');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$JbsE9UVAGjG2lxF8s/DajOZBBFop3bHaghzgEVRxtki4tsLAi5QW2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_presensi`
--

CREATE TABLE `log_presensi` (
  `id` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `id_periode` int(11) NOT NULL,
  `tanggal` int(11) NOT NULL,
  `jam_masuk` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis` tinyint(4) NOT NULL,
  `kode_area` int(11) NOT NULL,
  `nama_area` tinytext NOT NULL,
  `kode_subarea` int(11) NOT NULL,
  `nama_subarea` tinytext NOT NULL,
  `kode_unit` int(11) NOT NULL,
  `nama_unit` tinytext NOT NULL,
  `kode_posisi` int(11) NOT NULL,
  `posisi_singkat` tinytext NOT NULL,
  `nama_posisi` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `jenis`, `kode_area`, `nama_area`, `kode_subarea`, `nama_subarea`, `kode_unit`, `nama_unit`, `kode_posisi`, `posisi_singkat`, `nama_posisi`) VALUES
(64017601, 'Aji Purwoyoko', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400543, 'SIE LOG', 37409397, 'AF ADM LOG', 'Assistant Officer Administrasi Logistik'),
(64837604, 'Achmadin Rahman', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400532, 'UPDK TELLO', 37409429, 'AN KIN DAN QA', 'Analyst Kinerja Dan Quality Assurance'),
(64857618, 'Ruby', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400535, 'BAG OP DAN HAR', 30272491, 'AE REN DAN DAL OP', 'Assistant Engineer Perencanaan Dan Pengendalian Operasi'),
(64857628, 'Daud Tandirerung', 1, 2514, 'UPK Tello', 401, 'PLTD TELLO', 17400544, 'ULPLTD TELLO', 37409440, 'EG PENGUSHN KIT', 'Engineer Pengusahaan Pembangkit'),
(65857629, 'Javet Samson', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400535, 'BAG OP DAN HAR', 37409448, 'EG REN DAN DAL OP', 'Engineer Perencanaan Dan Pengendalian Operasi'),
(65897604, 'Naba', 0, 2514, 'UPK Tello', 402, 'PLTGU TELLO', 17400550, 'SIE HAR', 37409450, 'JE HAR ALAT BANTU', 'Junior Engineer Pemeliharaan Alat Bantu'),
(65897608, 'Albertus Ben Kaha', 1, 2514, 'UPK Tello', 402, 'PLTGU TELLO', 17400549, 'SIE OP', 37409451, 'AO ALAT BANTU', 'Assistant Operator Alat Bantu'),
(66897409, 'Abdul Rahim', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400535, 'BAG OP DAN HAR', 37404700, 'MAN II OP DAN HAR', 'Manager Bagian Operasi Dan Pemeliharaan'),
(67877602, 'Danny Touar', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400543, 'SIE LOG', 37409873, 'AF ADM LOG', 'Assistant Officer Administrasi Logistik'),
(68877601, 'Kamaluddin Husain', 0, 2514, 'UPK Tello', 402, 'PLTGU TELLO', 17400548, 'ULPLTGU TELLO', 37404713, 'MUL ULPLTGU TELLO', 'Manager Unit Layanan Pusat Listrik Tenaga Gas Dan Uap Tello'),
(69017601, 'Nurdin', 1, 2514, 'UPK Tello', 401, 'PLTD TELLO', 17400545, 'SIE OP', 37409372, 'AO CONTROL ROOM', 'Assistant Operator Control Room'),
(70937609, 'Nur Baso', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400535, 'BAG OP DAN HAR', 37424032, 'EG REN DAN DAL OP', 'Engineer Perencanaan Dan Pengendalian Operasi'),
(71937610, 'Jasmin Pajung', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400535, 'BAG OP DAN HAR', 37409509, 'EG REN DAN DAL HAR', 'Engineer Perencanaan Dan Pengendalian Pemeliharaan'),
(72937607, 'Mustafa', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400540, 'BAG KEU, SDM, DAN ADM', 37404705, 'MAN II KEU, SDM DAN ADM', 'Manager Bagian Keuangan, Sdm, Dan Administrasi'),
(72937610, 'Sitti Rohani', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400532, 'UPDK TELLO', 37420481, 'AN KIN', 'Analyst Kinerja'),
(75037603, 'Rahabuddin', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400543, 'SIE LOG', 37404708, 'SPV II LOG', 'Supervisor Logistik'),
(79047603, 'Mas Ngabei Dimas Satria Narendra', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400532, 'UPDK TELLO', 37404697, 'MUP II UPDK TELLO', 'Manager Unit Pelaksana Pengendalian Pembangkitan Tello'),
(81037602, 'Mulyangka', 0, 2514, 'UPK Tello', 403, 'PLTD SELAYAR', 17400552, 'ULPLTD SELAYAR', 37409659, 'PLT MUL ULPL SELAYAR', 'Assistant Engineer Pengusahaan Pembangkit (plt Manager Unit Layanan Pusat Listrik Selayar)'),
(81057401, 'Ramadhoni', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400532, 'UPDK TELLO', 37409410, 'AN KIN DAN QA', 'Analyst Kinerja Dan Quality Assurance'),
(82037600, 'Wawan Hudayana', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400537, 'SIE REN DAN DAL OP DAN HAR DAN TE', 37404702, 'SPV II REN DAN DAL OP DAN HAR DAN TE', 'Supervisor Perencanaan Dan Pengendalian Operasi Dan Pemeliharaan Dan Transaksi Energi'),
(82037604, 'Wahida', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400542, 'SIE KEU', 30272499, 'AS AKT', 'Assistant Analyst Akuntansi'),
(82067600, 'Ali Dimyati', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400535, 'BAG OP DAN HAR', 37409890, 'AE REN DAN DAL HAR', 'Assistant Engineer Perencanaan Dan Pengendalian Pemeliharaan'),
(82097400, 'Wenny Diana', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17401917, 'URS LAKSK4', 37303327, 'AE K3 DAN KAM', 'Assistant Engineer K3 Dan Keamanan'),
(83087605, 'Salvius Rempe', 0, 2514, 'UPK Tello', 403, 'PLTD SELAYAR', 17400554, 'SIE HAR', 37404719, 'SPV II HAR', 'Supervisor Pemeliharaan'),
(86098002, 'Uzhary Suaib', 0, 2514, 'UPK Tello', 401, 'PLTD TELLO', 17400546, 'SIE HAR', 37404711, 'SPV II HAR', 'Supervisor Pemeliharaan'),
(87108404, 'Andi Irvan Efendi', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400533, 'URS LAKSDA', 37404698, 'PJ LAKSDA III', 'Pejabat Pelaksana Pengadaan'),
(88087613, 'Muh Rezky Ramanda Putra', 0, 2514, 'UPK Tello', 401, 'PLTD TELLO', 17401574, 'URS LAKSK4', 37411022, 'PJ LAKSK4', 'Pejabat Pelaksana Keselamatan, Kesehatan Kerja, Dan Keamanan'),
(88097602, 'Ahmad Ikram', 0, 2514, 'UPK Tello', 401, 'PLTD TELLO', 17400545, 'SIE OP', 37404710, 'SPV II OP', 'Supervisor Operasi'),
(88117609, 'Miftachul Munir', 0, 2514, 'UPK Tello', 401, 'PLTD TELLO', 17401720, 'URS LAKSLK', 37412378, 'PJ LAKSLK', 'Pejabat Pelaksana Lingkungan'),
(89087614, 'Hairil', 1, 2514, 'UPK Tello', 401, 'PLTD TELLO', 17400545, 'SIE OP', 37409687, 'JO MESIN', 'Junior Operator Mesin'),
(89087615, 'Andi Baso Pabbenteng', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400533, 'URS LAKSDA', 37409681, 'JF ADM PENGADAAN', 'Junior Officer Administrasi Pengadaan'),
(89087619, 'Muhammad Rai Fadhillah M', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400541, 'SIE SDM DAN MUM', 37404706, 'SPV II SDM DAN MUM', 'Supervisor Sdm Dan Umum'),
(90117610, 'Achmad Fadhil', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400534, 'BAG ENJ', 37409942, 'AE LOLA SIS', 'Assistant Engineer Pengelola Sistem'),
(90157607, 'Gilberto Eduard Da\'silva Pedon', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400535, 'BAG OP DAN HAR', 37424985, 'JE REN DAN DAL OP', 'Junior Engineer Perencanaan Dan Pengendalian Operasi'),
(90167600, 'Abdi Budiman', 1, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400536, 'SIE EP', 37414282, 'SPV II EP', 'Supervisor Energi Primer'),
(90167606, 'Olivia Stephani Mentang', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400533, 'URS LAKSDA', 37414287, 'AS PELAKSANA PENGADAAN', 'Assistant Analyst Pelaksana Pengadaan'),
(90167608, 'Rifko Samadin', 0, 2514, 'UPK Tello', 402, 'PLTGU TELLO', 17401575, 'URS LAKSK4', 37411023, 'PJ LAKSK4', 'Pejabat Pelaksana Keselamatan, Kesehatan Kerja, Dan Keamanan'),
(91107600, 'Hermawan Prasetyo', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400543, 'SIE LOG', 37418407, 'JF ADM LOG', 'Junior Officer Administrasi Logistik'),
(91167601, 'Zaqki Destian', 0, 2514, 'UPK Tello', 402, 'PLTGU TELLO', 17400550, 'SIE HAR', 37404715, 'SPV II HAR', 'Supervisor Pemeliharaan'),
(91167613, 'Prasetya Wahyu Hidayat', 0, 2514, 'UPK Tello', 403, 'PLTD SELAYAR', 17400553, 'SIE OP', 37404718, 'SPV II OP', 'Supervisor Operasi'),
(91167616, 'Marwan Maddaiya', 0, 2514, 'UPK Tello', 401, 'PLTD TELLO', 17400546, 'SIE HAR', 37425006, 'JE HAR MESIN', 'Junior Engineer Pemeliharaan Mesin'),
(91177601, 'Habib Arief Sudarso', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400537, 'SIE REN DAN DAL OP DAN HAR DAN TE', 30272501, 'AE REN DAN DAL OP DAN HAR', 'Assistant Engineer Perencanaan Dan Pengendalian Operasi Dan Pemeliharaan'),
(91187603, 'Salmon Payung Sallago', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400537, 'SIE REN DAN DAL OP DAN HAR DAN TE', 37409817, 'AE REN DAN DAL OP DAN HAR', 'Assistant Engineer Perencanaan Dan Pengendalian Operasi Dan Pemeliharaan'),
(92157613, 'Arjuna Putra Prayogi', 0, 2514, 'UPK Tello', 401, 'PLTD TELLO', 17400547, 'SIE ADM', 37404712, 'SPV II ADM', 'Supervisor Administrasi'),
(92187604, 'Niko Sirait', 0, 2514, 'UPK Tello', 402, 'PLTGU TELLO', 17400549, 'SIE OP', 37404714, 'SPV II OP', 'Supervisor Operasi'),
(92187607, 'Iyan Engkuma', 0, 2514, 'UPK Tello', 403, 'PLTD SELAYAR', 17400554, 'SIE HAR', 37409945, 'AE HAR MESIN', 'Assistant Engineer Pemeliharaan Mesin'),
(92187608, 'Mohamad Afin Faisol', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400534, 'BAG ENJ', 37409883, 'AE HAR PREDIKTIF', 'Assistant Engineer Pemeliharaan Prediktif'),
(93147601, 'Farid Burhannudin Supriyadi', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400534, 'BAG ENJ', 37409625, 'AE LOLA SIS', 'Assistant Engineer Pengelola Sistem'),
(93157604, 'Bachrudin Azis Mustofa', 0, 2514, 'UPK Tello', 403, 'PLTD SELAYAR', 17400555, 'SIE ADM', 37404720, 'SPV II ADM', 'Supervisor Administrasi'),
(93157615, 'Achmad Yoga Issaniyah', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17401961, 'URS LAKSLK', 37412509, 'PJ LAKSLK', 'Pejabat Pelaksana Lingkungan'),
(93167606, 'Lela Novi Mudi Raharti', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17401961, 'URS LAKSLK', 37303293, 'JE LING', 'Junior Engineer Lingkungan'),
(93167613, 'Rosihan Miftahul Aziz', 0, 2514, 'UPK Tello', 402, 'PLTGU TELLO', 17401721, 'URS LAKSLK', 37412379, 'PJ LAKSLK', 'Pejabat Pelaksana Lingkungan'),
(93167635, 'Muhammad Adi Sucipto', 1, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400536, 'SIE EP', 37409934, 'JE EP', 'Junior Engineer Energi Primer'),
(93167644, 'Soleha', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400542, 'SIE KEU', 37404707, 'SPV II KEU', 'Supervisor Keuangan'),
(93177611, 'Wenang Suprayogi', 0, 2514, 'UPK Tello', 403, 'PLTD SELAYAR', 17401576, 'URS LAKSK4', 37411024, 'PJ LAKSK4', 'Pejabat Pelaksana Keselamatan, Kesehatan Kerja, Dan Keamanan'),
(93177612, 'Tri Rinanto Mugiharjo', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400537, 'SIE REN DAN DAL OP DAN HAR DAN TE', 37409946, 'JE REN DAN DAL OP DAN HAR', 'Junior Engineer Perencanaan Dan Pengendalian Operasi Dan Pemeliharaan'),
(93177621, 'Suci Ayu Maftukha', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400542, 'SIE KEU', 37420330, 'AS KEU DAN ANG', 'Assistant Analyst Anggaran Dan Keuangan'),
(93187625, 'Annisa Setya Pertiwi', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400534, 'BAG ENJ', 37409961, 'JE LOLA SIS', 'Junior Engineer Pengelola Sistem'),
(94137662, 'Ahmad Kafrawi', 0, 2514, 'UPK Tello', 401, 'PLTD TELLO', 17400546, 'SIE HAR', 37425005, 'JT HAR KONTROL INS', 'Junior Technician Pemeliharaan Kontrol Instrumen'),
(94137663, 'Chaeryandi', 0, 2514, 'UPK Tello', 401, 'PLTD TELLO', 17400545, 'SIE OP', 37410218, 'JO ALAT BANTU', 'Junior Operator Alat Bantu'),
(94137664, 'Ibnu Khisam', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400541, 'SIE SDM DAN MUM', 37409620, 'JF ADM SDM', 'Junior Officer Administrasi Sdm'),
(94167620, 'Dedy Ari Setiyawan', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17401917, 'URS LAKSK4', 37411153, 'PJ LAKSK4', 'Pejabat Pelaksana Keselamatan, Kesehatan Kerja, Dan Keamanan'),
(94167624, 'Andi Hasniar', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400535, 'BAG OP DAN HAR', 37409992, 'JE REN DAN DAL OP', 'Junior Engineer Perencanaan Dan Pengendalian Operasi'),
(94187627, 'Doan Rizki Pirnanda', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400534, 'BAG ENJ', 37409648, 'AE HAR PREDIKTIF', 'Assistant Engineer Pemeliharaan Prediktif'),
(94187647, 'Fakhri Aldiyaz', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400535, 'BAG OP DAN HAR', 37414281, 'AE REN DAN DAL OP', 'Assistant Engineer Perencanaan Dan Pengendalian Operasi'),
(95177605, 'Zainal Arifin', 0, 2514, 'UPK Tello', 403, 'PLTD SELAYAR', 17400554, 'SIE HAR', 37409756, 'JE HAR MESIN', 'Junior Engineer Pemeliharaan Mesin'),
(96137715, 'Oktovianus Ady Nugraha Putra', 0, 2514, 'UPK Tello', 402, 'PLTGU TELLO', 17400549, 'SIE OP', 37410082, 'JO WATER TREATMENT', 'Junior Operator Water Treatment'),
(96137740, 'Andika Mallawean', 1, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400536, 'SIE EP', 30271478, 'JT EP', 'Junior Technician Energi Primer'),
(96137754, 'Egi Faturrahman', 1, 2514, 'UPK Tello', 402, 'PLTGU TELLO', 17400549, 'SIE OP', 37410100, 'JO TURBIN', 'Junior Operator Turbin'),
(96137778, 'Muhammad Iqbal Affan', 1, 2514, 'UPK Tello', 401, 'PLTD TELLO', 17400546, 'SIE HAR', 30271477, 'JT HAR KONTROL INS', 'Junior Technician Pemeliharaan Kontrol Dan Instrumen'),
(96167843, 'Fahreza Faturrahman Syarief', 1, 2514, 'UPK Tello', 403, 'PLTD SELAYAR', 17400553, 'SIE OP', 37410241, 'JO MESIN', 'Junior Operator Mesin'),
(96167845, 'Kusnadi Kadri', 1, 2514, 'UPK Tello', 403, 'PLTD SELAYAR', 17400553, 'SIE OP', 37410132, 'JO CONTROL ROOM', 'Junior Operator Control Room'),
(96167846, 'Aldi Rizal', 1, 2514, 'UPK Tello', 403, 'PLTD SELAYAR', 17400553, 'SIE OP', 37410244, 'JO MESIN', 'Junior Operator Mesin'),
(96167847, 'Hamka', 1, 2514, 'UPK Tello', 403, 'PLTD SELAYAR', 17400553, 'SIE OP', 37410130, 'JO CONTROL ROOM', 'Junior Operator Control Room'),
(96187629, 'Anjas Dateng Pamungkas', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400541, 'SIE SDM DAN MUM', 37420543, 'JF ADM SDM', 'Junior Officer Administrasi Sdm'),
(96187636, 'Amat Fatoni Abdul Rachman', 1, 2514, 'UPK Tello', 402, 'PLTGU TELLO', 17400549, 'SIE OP', 37414288, 'JO CONTROL ROOM', 'Junior Operator Control Room'),
(96195702, 'Muh. Fachrul Islam Idrus', 0, 2514, 'UPK Tello', 403, 'PLTD SELAYAR', 17400554, 'SIE HAR', 37424223, 'JE HAR LISTRIK', 'Junior Engineer Pemeliharaan Listrik'),
(96195703, 'Agus Purnomo', 0, 2514, 'UPK Tello', 403, 'PLTD SELAYAR', 17400554, 'SIE HAR', 37424224, 'JE HAR KONTROL DAN INS', 'Junior Engineer Pemeliharaan Kontrol Dan Instrumen'),
(97187645, 'Muh. Fathurrohman Wahab', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400541, 'SIE SDM DAN MUM', 37410211, 'JF ADM SDM', 'Junior Officer Administrasi Sdm'),
(98187640, 'A. Muhammad Agum Pratama W', 1, 2514, 'UPK Tello', 403, 'PLTD SELAYAR', 17400553, 'SIE OP', 37410128, 'JO MESIN', 'Junior Operator Mesin'),
(98187650, 'Roy Saputra', 0, 2514, 'UPK Tello', 400, 'UPDK TELLO', 17400536, 'SIE EP', 37418406, 'JT EP', 'Junior Technician Energi Primer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `periode`
--

CREATE TABLE `periode` (
  `id` int(11) NOT NULL,
  `bulan` int(11) NOT NULL,
  `tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `periode`
--

INSERT INTO `periode` (`id`, `bulan`, `tahun`) VALUES
(1, 1, 2020),
(2, 2, 2020),
(3, 3, 2020);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perizinan`
--

CREATE TABLE `perizinan` (
  `id` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `id_periode` int(11) NOT NULL,
  `tanggal` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perizinan`
--

INSERT INTO `perizinan` (`id`, `id_pegawai`, `id_periode`, `tanggal`, `keterangan`) VALUES
(1, 10009, 2, 3, 'sakit'),
(3, 10001, 2, 7, 'yy');

-- --------------------------------------------------------

--
-- Struktur dari tabel `presensi`
--

CREATE TABLE `presensi` (
  `id` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `id_periode` int(11) NOT NULL,
  `kehadiran` int(11) NOT NULL,
  `keterlambatan` int(11) NOT NULL,
  `ketidakhadiran` int(11) NOT NULL,
  `persentase_kehadiran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `hari_libur`
--
ALTER TABLE `hari_libur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_periode` (`id_periode`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `log_presensi`
--
ALTER TABLE `log_presensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pegawai` (`id_pegawai`),
  ADD KEY `id_periode` (`id_periode`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `periode`
--
ALTER TABLE `periode`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perizinan`
--
ALTER TABLE `perizinan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pegawai` (`id_pegawai`),
  ADD KEY `id_periode` (`id_periode`);

--
-- Indeks untuk tabel `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `presensi_ibfk_1` (`id_pegawai`),
  ADD KEY `presensi_ibfk_2` (`id_periode`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `hari_libur`
--
ALTER TABLE `hari_libur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `log_presensi`
--
ALTER TABLE `log_presensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `periode`
--
ALTER TABLE `periode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `perizinan`
--
ALTER TABLE `perizinan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hari_libur`
--
ALTER TABLE `hari_libur`
  ADD CONSTRAINT `hari_libur_ibfk_1` FOREIGN KEY (`id_periode`) REFERENCES `periode` (`id`);

--
-- Ketidakleluasaan untuk tabel `log_presensi`
--
ALTER TABLE `log_presensi`
  ADD CONSTRAINT `log_presensi_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `log_presensi_ibfk_2` FOREIGN KEY (`id_periode`) REFERENCES `periode` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `perizinan`
--
ALTER TABLE `perizinan`
  ADD CONSTRAINT `perizinan_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `perizinan_ibfk_2` FOREIGN KEY (`id_periode`) REFERENCES `periode` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `presensi`
--
ALTER TABLE `presensi`
  ADD CONSTRAINT `presensi_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `presensi_ibfk_2` FOREIGN KEY (`id_periode`) REFERENCES `periode` (`id`) ON DELETE CASCADE;

DELIMITER $$
--
-- Event
--
CREATE DEFINER=`root`@`localhost` EVENT `tambah_periode_otomatis` ON SCHEDULE EVERY 1 MONTH STARTS '2020-01-01 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO INSERT INTO periode(bulan, tahun) VALUES(MONTH(CURRENT_DATE),YEAR(CURRENT_DATE))$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

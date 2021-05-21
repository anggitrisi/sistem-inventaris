-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Bulan Mei 2021 pada 11.47
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kandi_inventory`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `business_settings`
--

CREATE TABLE `business_settings` (
  `business_settings_id` int(11) NOT NULL,
  `type` longtext DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `business_settings`
--

INSERT INTO `business_settings` (`business_settings_id`, `type`, `status`, `value`) VALUES
(4, 'currency', '', '1'),
(7, 'currency_name', '', 'Dollar'),
(8, 'exchange', '', '80'),
(21, 'currency_format', NULL, 'us'),
(22, 'symbol_format', NULL, 's_amount'),
(23, 'no_of_decimals', NULL, '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `picture`) VALUES
(1, 'Cosmetics', ''),
(2, 'Soap', ''),
(3, 'Food items', ''),
(4, 'Computer', ''),
(5, 'Test Updated', ''),
(6, 'BATA', ''),
(7, 'Electronics', ''),
(8, 'Heavy Machinery', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `coa`
--

CREATE TABLE `coa` (
  `MAIN_CODE` varchar(1) NOT NULL,
  `SUB_CODE` varchar(2) NOT NULL,
  `TR_HEAD` varchar(4) NOT NULL,
  `HEAD_TITLE` varchar(100) NOT NULL,
  `AMOUNT` float DEFAULT NULL,
  `EFFECTED_DATE` date DEFAULT NULL,
  `UNIQUE_NO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `coa`
--

INSERT INTO `coa` (`MAIN_CODE`, `SUB_CODE`, `TR_HEAD`, `HEAD_TITLE`, `AMOUNT`, `EFFECTED_DATE`, `UNIQUE_NO`) VALUES
('1', '1', '00', 'Assets', 100000, NULL, NULL),
('1', '1', '0001', 'Cash In Hand', 5000, NULL, NULL),
('1', '1', '0002', 'Cash At Bank', 5000, NULL, NULL),
('1', '1', '001', 'Current Assets', 10000, NULL, NULL),
('1', '2', '0001', 'Computer', 15000, NULL, NULL),
('1', '2', '002', 'Fixed Assets', 30000, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `coa_trans`
--

CREATE TABLE `coa_trans` (
  `VNO` int(11) NOT NULL,
  `SNO` int(2) DEFAULT NULL,
  `PART` varchar(500) DEFAULT NULL,
  `DRCR` varchar(1) DEFAULT NULL,
  `TRDATE` date NOT NULL,
  `VALDATE` date DEFAULT NULL,
  `SUPFLAG` int(1) DEFAULT NULL,
  `AMOUNT` float DEFAULT NULL,
  `REFNO` varchar(10) DEFAULT NULL,
  `PAIDTO` varchar(100) DEFAULT NULL,
  `TRANS_TYPE` varchar(2) DEFAULT NULL,
  `MAIN_CODE` varchar(1) NOT NULL,
  `SUB_CODE` varchar(2) NOT NULL,
  `TR_HEAD` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `phone_no` varchar(100) DEFAULT NULL,
  `fax_no` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `phone_no`, `fax_no`, `email`, `address`) VALUES
(0, 'NOve Global', '333', '0000', 'ABCD@YAHOO.COM', '795 Folsom Ave, Suite 600\r\nSan Francisco, CA 94107'),
(1, 'Nove Global', '000', '000', 'www.noveglobal.com', NULL),
(2, 'Distributer of Fauji serial', '0912600103', 'NIL', 'NIL', NULL),
(3, 'National Masala jaat', '03459050201', 'Nil', 'Nil', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `company_information`
--

CREATE TABLE `company_information` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `website` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `company_information`
--

INSERT INTO `company_information` (`id`, `name`, `email`, `contact`, `address`, `website`, `logo`, `date_time`) VALUES
(1, 'KANDI Inventory', 'admin@beb300.com', '+923152156845', 'FF-0300, BEB300 Pvt Ltd, Deans Trade Centre, Peshawar.', 'http://beb300.com', 'kandi.png', '2018-01-19 11:56:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `currency_settings`
--

CREATE TABLE `currency_settings` (
  `currency_settings_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `exchange_rate` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `exchange_rate_def` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `currency_settings`
--

INSERT INTO `currency_settings` (`currency_settings_id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `exchange_rate_def`) VALUES
(1, 'U.S. Dollar', '$', '1', 'no', 'USD', '1'),
(2, 'Australian Dollar', '$', '1.3163', 'ok', 'AUD', '1.30'),
(5, 'Brazilian Real', 'R$', '3.3226', 'no', 'BRL', '3.2953'),
(6, 'Canadian Dollar', '$', '1.2901', 'ok', 'CAD', '1.29'),
(7, 'Czech Koruna', 'Kč', '24.212', 'no', 'CZK', '20.63'),
(8, 'Danish Krone', 'kr', '6.6675', 'no', 'DKK', '6.06'),
(9, 'Euro', '€', '0.81', 'no', 'EUR', '0.81'),
(10, 'Hong Kong Dollar', '$', '7.7587', 'no', 'HKD', '7.85'),
(11, 'Hungarian Forint', 'Ft', '275.38', 'no', 'HUF', '253.95'),
(12, 'Israeli New Sheqel', '₪', '3.7896', 'no', 'ILS', '3.49'),
(13, 'Japanese Yen', '¥', '101.86', 'no', 'JPY', '106.45'),
(14, 'Malaysian Ringgit', 'RM', '4.1369', 'no', 'MYR', '3.86'),
(15, 'Mexican Peso', '$', '19.389', 'no', 'MXN', '18.16'),
(16, 'Norwegian Krone', 'kr', '8.2509', 'no', 'NOK', '7.84'),
(17, 'New Zealand Dollar', '$', '1.3689', 'no', 'NZD', '29.15'),
(18, 'Philippine Peso', '₱', '47.872', 'no', 'PHP', '52.19'),
(19, 'Polish Zloty', 'zł', '3.8453', 'no', 'PLN', '3.41'),
(20, 'Pound Sterling', '£', '0.75898', 'no', 'GBP', NULL),
(21, 'Russian Ruble', 'руб', '64.936', 'no', 'RUB', '57.13'),
(22, 'Singapore Dollar', '$', '1.3645', 'no', 'SGD', '1.31'),
(23, 'Swedish Krona', 'kr', '8.5133', 'no', 'SEK', '8.36'),
(24, 'Swiss Franc', 'CHF', '0.97461', 'no', 'CHF', '0.95'),
(26, 'Thai Baht', '฿', '34.91', 'no', 'THB', '31.17'),
(27, 'Your Currency', '?', '105.38', 'no', '??', ''),
(28, 'PKR Rupees', 'Rs', '115.63', 'ok', '??', '115.63');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `phone_no` varchar(100) DEFAULT NULL,
  `fax_no` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `trn` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `phone_no`, `fax_no`, `email`, `address`, `trn`) VALUES
(1, 'Asad', '123234', 'asad@yahoo.com', '12121', NULL, NULL),
(2, 'Tiger Profiles LLC', '06-5338449', '06-5338440', 'tiger@gmail.com', 'Al-Khan, Sharjah, UAE.', '100315120400003');

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(1) NOT NULL,
  `host` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `port` int(3) NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `sent_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sent_title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `reply_email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `reply_title` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `email_settings`
--

INSERT INTO `email_settings` (`id`, `host`, `port`, `email`, `password`, `sent_email`, `sent_title`, `reply_email`, `reply_title`) VALUES
(2, 'gator4113.hostgator.com', 465, 'no-reply@duperty.com', 'MuhammaD@123', 'no-reply@duperty.com', 'Technologicx', 'no-reply@duperty.com', 'Technologicx'),
(1, 'mail.technologicx.com', 465, 'admin@technologicx.com', 'saadi123*', 'admin@technologicx.com', 'Technologicx', 'admin@technologicx.com', 'Technologicx');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employees`
--

CREATE TABLE `employees` (
  `EMP_NO` varchar(20) CHARACTER SET utf8 NOT NULL,
  `EMP_NAME` varchar(40) CHARACTER SET utf8 NOT NULL,
  `EMP_F_NAME` varchar(40) CHARACTER SET utf8 NOT NULL,
  `EMP_CURR_ADDRESS` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `EMP_PAR_ADDRESS` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `CNIC_NO` varchar(16) CHARACTER SET utf8 NOT NULL,
  `APPOINTMENT_DATE` date NOT NULL,
  `GENDER` varchar(10) CHARACTER SET utf8 NOT NULL,
  `COUNTRY_ID` int(11) DEFAULT NULL,
  `PROV_ID` int(11) DEFAULT NULL,
  `DIV_ID` int(11) DEFAULT NULL,
  `DIS_ID` int(11) DEFAULT NULL,
  `BATCH_NO` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ENTRY_TO_GOV` date DEFAULT NULL,
  `PIC` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `PHONE` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `MOBILE_SMS` varchar(40) CHARACTER SET utf8 NOT NULL,
  `MOBILE` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `EMAIL` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `PERSONAL_FILE_NO` int(11) DEFAULT NULL,
  `MACHINE_ID` int(10) DEFAULT NULL,
  `MACHINE_NO` int(2) DEFAULT NULL,
  `REMARKS` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `BARCODE` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `E_USER_ID` int(11) DEFAULT NULL,
  `E_DATE_TIME` datetime DEFAULT NULL,
  `U_USER_ID` int(11) DEFAULT NULL,
  `U_DATE_TIME` datetime DEFAULT NULL,
  `FLAG` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_profile`
--

CREATE TABLE `employee_profile` (
  `EMP_ID` int(11) NOT NULL,
  `EMP_NAME` varchar(300) NOT NULL,
  `EMP_ADDRESS` varchar(300) NOT NULL,
  `EMP_PHONE` varchar(300) NOT NULL,
  `EMP_CELL` varchar(300) NOT NULL,
  `EMP_EMAIL` varchar(300) NOT NULL,
  `EMP_PIC` varchar(300) NOT NULL,
  `EMP_GENDER` varchar(11) NOT NULL,
  `EMP_DATE` date NOT NULL,
  `CREATED_DATE` date DEFAULT NULL,
  `CREATED_USERID` int(11) DEFAULT NULL,
  `UPDATED_DATE` date DEFAULT NULL,
  `UPDATED_USERID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `employee_profile`
--

INSERT INTO `employee_profile` (`EMP_ID`, `EMP_NAME`, `EMP_ADDRESS`, `EMP_PHONE`, `EMP_CELL`, `EMP_EMAIL`, `EMP_PIC`, `EMP_GENDER`, `EMP_DATE`, `CREATED_DATE`, `CREATED_USERID`, `UPDATED_DATE`, `UPDATED_USERID`) VALUES
(1, 'Imran Shah', 'Charsadda', '2324030', '03331234567', 'shahmian@gmail.com', 'employee_pics/3e70faef699d1b5a8c8ddc449fac5988.jpg', 'MALE', '2018-09-01', '2018-09-01', 1, NULL, NULL),
(2, 'nomi', '', '', '', 'ya@gmail.com', '', '', '0000-00-00', NULL, NULL, NULL, NULL),
(3, 'sonia', '', '', '', 'ya@gmail.com', '', '', '0000-00-00', NULL, NULL, NULL, NULL),
(4, '', '', '', '', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL),
(5, '', '', '', '', '', '', '', '0000-00-00', NULL, NULL, NULL, NULL),
(6, 'alyaa', '', '', '', 'alyafebrianilubis@gmail.com', '', '', '0000-00-00', NULL, NULL, NULL, NULL),
(7, 'yaa', '', '', '', 'ya@gmail.com', '', '', '0000-00-00', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `item`
--

CREATE TABLE `item` (
  `item_id` varchar(13) NOT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(15) DEFAULT NULL,
  `flag` int(1) NOT NULL,
  `purchase_rate` float DEFAULT NULL,
  `article_no` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `category_id`, `size`, `color`, `flag`, `purchase_rate`, `article_no`) VALUES
('100000001', 'Samsung Galaxy S7 Edge - 32GB', 7, '121', 'nnkln', 1, 100, '1212'),
('100000002', 'Apple MacBook Pro MD101LL-Intel Core i5', 4, '12', 'black', 1, 200, 'A-121'),
('100000003', 'Sony Play Station', 7, '', '', 1, 290, 'S-001'),
('100000004', 'Nikon D5500 - 24 MP SLR Camera', 7, '', '', 1, 900, 'N-12900'),
('100000005', 'Bata Men\'s  Sports Shoes', 6, '', '', 1, 210, 'LS-123'),
('100000006', 'Xtouch Z1 Dual Sim - 16GB', 7, '', '', 1, 1050, 'X-16GB'),
('100000007', 'Xiomi BlackZ10', 4, '9', 'Black', 1, 980, '1211');

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase`
--

CREATE TABLE `purchase` (
  `purchase_id` int(11) NOT NULL,
  `purchase_no` int(11) NOT NULL,
  `item_id` varchar(13) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `expire_date` date NOT NULL,
  `purchase_qty` int(11) DEFAULT NULL,
  `purchase_amount` float(11,2) DEFAULT 0.00,
  `purchase_rate` float(11,3) DEFAULT 0.000,
  `sales_rate` float(11,2) NOT NULL DEFAULT 0.00,
  `balance` float(11,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `purchase`
--

INSERT INTO `purchase` (`purchase_id`, `purchase_no`, `item_id`, `category_id`, `expire_date`, `purchase_qty`, `purchase_amount`, `purchase_rate`, `sales_rate`, `balance`) VALUES
(1, 1, '100000001', 7, '2019-02-14', 10, 1000.00, 100.000, 0.00, 0.00),
(2, 1, '100000002', 4, '2019-02-14', 13, 2600.00, 200.000, 0.00, 0.00),
(3, 1, '100000004', 7, '2019-02-14', 9, 8100.00, 900.000, 0.00, 0.00),
(4, 1, '100000005', 6, '2019-02-14', 7, 1470.00, 210.000, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_company`
--

CREATE TABLE `purchase_company` (
  `purchase_no` int(11) NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `purchase_discount` float(11,2) DEFAULT 0.00,
  `purchase_amount_total` float(11,2) DEFAULT 0.00,
  `purchase_status` int(1) DEFAULT 0,
  `payment_mode` varchar(1) DEFAULT NULL,
  `balance` float(11,2) DEFAULT 0.00,
  `grand_total` float(11,2) DEFAULT 0.00,
  `due_amount` float(11,2) DEFAULT NULL,
  `purchase_user_id` int(11) DEFAULT NULL,
  `pur_no` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `purchase_company`
--

INSERT INTO `purchase_company` (`purchase_no`, `purchase_date`, `vendor_id`, `company_id`, `purchase_discount`, `purchase_amount_total`, `purchase_status`, `payment_mode`, `balance`, `grand_total`, `due_amount`, `purchase_user_id`, `pur_no`) VALUES
(1, '2019-02-14', 3, 0, 2.00, 12906.60, 1, NULL, 0.00, 13170.00, 0.00, 1, 'PUR-12019-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchase_return`
--

CREATE TABLE `purchase_return` (
  `return_id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `purchase_no` int(11) NOT NULL,
  `return_date` date NOT NULL,
  `item_id` varchar(13) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `purchase_qty` int(11) DEFAULT NULL,
  `return_qty` int(11) NOT NULL,
  `purchase_amount` float(11,2) DEFAULT NULL,
  `purchase_rate` float(11,3) DEFAULT NULL,
  `sales_rate` float(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `route_charges`
--

CREATE TABLE `route_charges` (
  `charge_id` int(11) NOT NULL,
  `source` varchar(100) DEFAULT NULL,
  `destination` varchar(100) DEFAULT NULL,
  `amount` float(11,2) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `sales_no` int(11) NOT NULL,
  `sales_date` date DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `sales_discount` int(11) NOT NULL,
  `sales_amount_total` float(11,2) DEFAULT NULL,
  `paid` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `sales_status` varchar(1) DEFAULT NULL,
  `payment_mode` varchar(1) DEFAULT NULL,
  `grand_total` float(11,2) DEFAULT NULL,
  `invoice_no` int(11) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `vat` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales_detail`
--

CREATE TABLE `sales_detail` (
  `sales_id` int(11) NOT NULL,
  `sales_no` int(11) DEFAULT NULL,
  `item_id` varchar(13) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sales_qty` int(11) DEFAULT NULL,
  `sales_discount` float(11,2) DEFAULT NULL,
  `sales_rate` int(11) DEFAULT NULL,
  `sales_amount` float(11,2) DEFAULT NULL,
  `sales_status` varchar(1) DEFAULT NULL,
  `payment_mode` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales_return`
--

CREATE TABLE `sales_return` (
  `return_id` int(11) NOT NULL,
  `sales_no` int(11) DEFAULT NULL,
  `sales_id` int(11) NOT NULL,
  `sales_date` date NOT NULL,
  `return_date` date NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `sales_qty` int(11) DEFAULT NULL,
  `return_qty` int(11) DEFAULT NULL,
  `sales_rate` float(11,2) DEFAULT NULL,
  `sales_amount` float(11,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `value`) VALUES
(1, 'terms', '<p></p><p></p><p></p><ul><li>All approvals (NOCs) related to clearance of underground services will arrange Nove Global.&nbsp;<br></li>\r\n<li>The above-quoted transportation charges are based on the present prevailing rates which should be valid two months. Beyond that transportation, charges may vary.&nbsp;<br></li>\r\n<li>Driver, Trailer &amp; Diesel will be provided by deluxe general transport.&nbsp;<br></li>\r\n<li>Deluxe general transport will not responsible for any kind of natural disaster etc.&nbsp;<br></li>\r\n<li>In the event of adverse weather condition like a sandstorm, strong rain, high wind velocity or any other force majeure, which disable our equipment from working, will not be considered as contract working time.<br></li>\r\n<li>&nbsp;All gate passes and documents for equipment and operation must be provided by Nove Global.&nbsp;<br></li>\r\n<li>Any consequences will mutually decide if not in our quotation or agreement<br></li></ul><p></p><p></p><p></p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock`
--

CREATE TABLE `stock` (
  `stock_no` int(11) NOT NULL,
  `item_id` varchar(13) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `stock_qty` int(11) DEFAULT NULL,
  `purchase_rate` int(11) NOT NULL,
  `stock_rate` float(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stock`
--

INSERT INTO `stock` (`stock_no`, `item_id`, `category_id`, `stock_qty`, `purchase_rate`, `stock_rate`) VALUES
(1, '100000001', 7, 244, 100, 110.00),
(2, '100000002', 4, 332, 200, 210.00),
(3, '100000003', 7, 128, 290, 335.00),
(4, '100000004', 7, 23, 900, 1250.00),
(5, '100000005', 6, 24, 210, 305.00),
(6, '100000006', 7, 15, 1050, 1380.00),
(7, '100000007', 4, 1, 980, 1250.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `usr_group`
--

CREATE TABLE `usr_group` (
  `GROUP_ID` int(11) NOT NULL,
  `GROUP_NAME` varchar(100) NOT NULL,
  `CREATED_DATE` date DEFAULT NULL,
  `CREATED_USERID` int(11) DEFAULT NULL,
  `UPDATED_DATE` date DEFAULT NULL,
  `UPDATED_USERID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `usr_group`
--

INSERT INTO `usr_group` (`GROUP_ID`, `GROUP_NAME`, `CREATED_DATE`, `CREATED_USERID`, `UPDATED_DATE`, `UPDATED_USERID`) VALUES
(1, 'Superadmin', '2015-02-27', 1, NULL, NULL),
(2, 'General Manager', '2015-02-27', 1, NULL, NULL),
(3, 'Designer', '2015-02-27', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `usr_menu`
--

CREATE TABLE `usr_menu` (
  `MENU_ID` int(11) NOT NULL,
  `MENU_TEXT` varchar(100) DEFAULT NULL,
  `MENU_URL` varchar(500) DEFAULT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `SORT_ORDER` int(11) DEFAULT NULL,
  `SHOW_IN_MENU` int(11) DEFAULT NULL,
  `IS_ADMIN` varchar(1) DEFAULT NULL,
  `CREATED_DATE` date DEFAULT NULL,
  `CREATED_USERID` int(11) DEFAULT NULL,
  `UPDATED_DATE` date DEFAULT NULL,
  `UPDATED_USERID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `usr_menu`
--

INSERT INTO `usr_menu` (`MENU_ID`, `MENU_TEXT`, `MENU_URL`, `PARENT_ID`, `SORT_ORDER`, `SHOW_IN_MENU`, `IS_ADMIN`, `CREATED_DATE`, `CREATED_USERID`, `UPDATED_DATE`, `UPDATED_USERID`) VALUES
(1, 'User Management', '#', 0, 1, 1, '1', NULL, NULL, NULL, NULL),
(2, 'Add User', 'users/add_user', 1, 2, 1, NULL, NULL, NULL, NULL, NULL),
(3, 'General Settings', '#', 0, 2, 1, NULL, NULL, NULL, NULL, NULL),
(4, 'Add Menu', 'generals/addmenu', 3, 3, 1, NULL, NULL, NULL, NULL, NULL),
(5, 'People', '#', 0, 3, 1, NULL, NULL, NULL, NULL, NULL),
(9, 'List Employees', 'employees/employee_list', 5, 6, 1, NULL, NULL, NULL, NULL, NULL),
(18, 'Add Menu', 'generals/addmenu', 1, 2, 1, NULL, '2016-06-09', 1, NULL, NULL),
(21, 'Add Group', 'generals/add_group', 3, 2, 1, NULL, '2016-06-16', 1, NULL, NULL),
(31, 'Product', 'Category/list_category', 0, 4, 1, NULL, '2018-05-06', 1, NULL, NULL),
(32, 'Manage Category', 'Category/list_category', 31, 1, 1, NULL, '2018-05-06', 1, NULL, NULL),
(33, 'Manage Vendor', 'vendor/list_vendors', 5, 2, 1, NULL, '2018-05-06', 1, NULL, NULL),
(34, 'Manage Customers', 'customer/list_customers', 5, 3, 1, NULL, '2018-05-06', 1, NULL, NULL),
(35, 'Purchase', '#', 0, 5, 1, NULL, '2018-05-06', 1, NULL, NULL),
(36, 'New Purchase', 'purchase/new_purchase', 35, 1, 1, NULL, '2018-05-06', 1, NULL, NULL),
(37, 'Purchase History', 'purchase/purchase_history', 35, 2, 1, NULL, '2018-05-06', 1, NULL, NULL),
(38, 'Sales', '#', 0, 6, 1, NULL, '2018-05-06', 1, NULL, NULL),
(39, 'New Sale', 'sales/new_sale', 38, 1, 1, NULL, '2018-05-06', 1, NULL, NULL),
(40, 'Sales History', 'sales/sales_history', 38, 2, 1, NULL, '2018-05-06', 1, NULL, NULL),
(41, 'Stock', '#', 0, 7, 1, NULL, '2018-05-06', 1, NULL, NULL),
(42, 'List Stock', 'stock/list_stock', 41, 1, 1, NULL, '2018-05-06', 1, NULL, NULL),
(43, 'List Products', 'item/list_items', 31, 2, 1, NULL, '2018-05-06', 1, NULL, NULL),
(44, 'Reports', '#', 0, 8, 1, NULL, '2018-05-11', 1, NULL, NULL),
(45, 'Purchase Report', 'reports/purchase', 44, 1, 1, NULL, '2018-05-11', 1, NULL, NULL),
(46, 'Sales Report', 'reports/sales_report', 44, 2, 1, NULL, '2018-05-11', 1, NULL, NULL),
(47, 'Company Info', 'Generals/edit_company_info', 3, 3, 1, NULL, '2018-05-11', 1, NULL, NULL),
(48, 'List Companies', 'company/list_company', 5, 4, 1, NULL, '2018-05-11', 1, NULL, NULL),
(49, 'Currency Settings', 'Generals/change_currency', 3, 4, 1, NULL, '2019-01-24', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `usr_permission`
--

CREATE TABLE `usr_permission` (
  `PER_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `MENU_ID` int(11) NOT NULL,
  `PER_SELECT` varchar(1) NOT NULL,
  `PER_INSERT` varchar(1) NOT NULL,
  `PER_UPDATE` varchar(1) NOT NULL,
  `PER_DELETE` varchar(1) NOT NULL,
  `CREATED_DATE` date DEFAULT NULL,
  `CREATED_USERID` int(11) DEFAULT NULL,
  `UPDATED_DATE` date DEFAULT NULL,
  `UPDATED_USERID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `usr_permission`
--

INSERT INTO `usr_permission` (`PER_ID`, `GROUP_ID`, `MENU_ID`, `PER_SELECT`, `PER_INSERT`, `PER_UPDATE`, `PER_DELETE`, `CREATED_DATE`, `CREATED_USERID`, `UPDATED_DATE`, `UPDATED_USERID`) VALUES
(1, 2, 2, '1', '1', '1', '0', NULL, NULL, '2018-05-17', 1),
(2, 2, 3, '0', '0', '0', '0', NULL, NULL, '2018-05-17', 1),
(3, 2, 4, '0', '0', '0', '0', NULL, NULL, '2018-05-17', 1),
(4, 2, 5, '1', '0', '0', '0', NULL, NULL, '2018-05-17', 1),
(5, 2, 6, '0', '0', '0', '0', NULL, NULL, '2016-06-16', 1),
(6, 2, 9, '1', '0', '0', '0', NULL, NULL, '2018-05-17', 1),
(7, 2, 10, '0', '0', '0', '0', NULL, NULL, '2016-06-16', 1),
(8, 2, 11, '0', '0', '0', '0', NULL, NULL, '2016-06-16', 1),
(9, 2, 12, '1', '0', '0', '0', NULL, NULL, '2016-06-16', 1),
(10, 2, 13, '1', '0', '0', '0', NULL, NULL, '2016-06-16', 1),
(11, 2, 14, '1', '0', '0', '0', NULL, NULL, '2016-06-16', 1),
(12, 2, 15, '0', '0', '0', '0', '2015-03-02', 1, '2016-06-16', 1),
(13, 2, 16, '0', '0', '0', '0', '2015-03-02', 1, '2016-06-16', 1),
(14, 2, 17, '0', '0', '0', '0', '2015-03-02', 1, '2016-06-16', 1),
(15, 2, 18, '0', '0', '0', '0', '2015-03-02', 1, '2018-05-17', 1),
(16, 2, 19, '1', '0', '0', '0', '2015-03-02', 1, '2016-06-16', 1),
(17, 1, 2, '0', '0', '0', '0', '2015-03-06', 1, '2015-04-15', 1),
(18, 1, 3, '1', '1', '1', '1', '2015-03-06', 1, '2015-04-15', 1),
(19, 1, 5, '0', '0', '0', '0', '2015-03-06', 1, '2015-04-15', 1),
(20, 1, 6, '0', '0', '0', '0', '2015-03-06', 1, '2015-04-15', 1),
(21, 1, 9, '0', '0', '0', '0', '2015-03-06', 1, NULL, NULL),
(22, 1, 10, '0', '0', '0', '0', '2015-03-06', 1, NULL, NULL),
(23, 1, 11, '0', '0', '0', '0', '2015-03-06', 1, NULL, NULL),
(24, 1, 12, '0', '0', '0', '0', '2015-03-06', 1, '2015-04-15', 1),
(25, 1, 13, '0', '0', '0', '0', '2015-03-06', 1, '2015-04-15', 1),
(26, 1, 14, '0', '0', '0', '0', '2015-03-06', 1, '2015-04-15', 1),
(27, 1, 15, '0', '0', '0', '0', '2015-03-06', 1, NULL, NULL),
(28, 1, 16, '0', '0', '0', '0', '2015-03-06', 1, NULL, NULL),
(29, 1, 17, '0', '0', '0', '0', '2015-03-06', 1, NULL, NULL),
(30, 1, 18, '0', '0', '0', '0', '2015-03-06', 1, NULL, NULL),
(31, 1, 19, '0', '0', '0', '0', '2015-03-06', 1, NULL, NULL),
(32, 1, 21, '1', '1', '1', '1', '2015-03-06', 1, '2015-04-15', 1),
(33, 1, 22, '1', '1', '1', '1', '2015-03-06', 1, '2015-04-15', 1),
(34, 2, 21, '0', '0', '0', '0', '2015-03-16', 1, '2018-05-17', 1),
(35, 2, 22, '1', '0', '0', '0', '2015-03-16', 1, '2017-10-18', 1),
(36, 2, 23, '0', '0', '0', '0', '2015-03-16', 1, '2017-10-18', 1),
(37, 2, 24, '0', '0', '0', '0', '2015-03-16', 1, '2017-10-18', 1),
(38, 2, 25, '0', '0', '0', '0', '2015-03-16', 1, '2017-10-18', 1),
(39, 1, 23, '0', '0', '0', '0', '2015-04-15', 1, '2015-04-15', 1),
(40, 1, 24, '0', '0', '0', '0', '2015-04-15', 1, '2015-04-15', 1),
(41, 1, 25, '0', '0', '0', '0', '2015-04-15', 1, '2015-04-15', 1),
(42, 1, 26, '0', '0', '0', '0', '2015-04-15', 1, '2015-04-15', 1),
(43, 2, 26, '0', '0', '0', '0', '2015-09-11', 1, '2017-10-18', 1),
(44, 2, 27, '0', '0', '0', '0', '2015-09-11', 1, '2017-10-18', 1),
(45, 2, 28, '0', '0', '0', '0', '2015-09-11', 1, '2017-10-18', 1),
(46, 2, 29, '0', '0', '0', '0', '2015-09-11', 1, '2017-10-18', 1),
(47, 2, 1, '1', '0', '0', '0', '2016-06-16', 1, '2018-05-17', 1),
(48, 2, 7, '0', '0', '0', '0', '2016-06-16', 1, NULL, NULL),
(49, 2, 8, '0', '0', '0', '0', '2016-06-16', 1, NULL, NULL),
(50, 2, 20, '0', '0', '0', '0', '2016-06-16', 1, NULL, NULL),
(51, 3, 1, '0', '0', '0', '0', '2017-08-01', 1, NULL, NULL),
(52, 3, 2, '0', '0', '0', '0', '2017-08-01', 1, NULL, NULL),
(53, 3, 3, '0', '0', '0', '0', '2017-08-01', 1, NULL, NULL),
(54, 3, 4, '0', '0', '0', '0', '2017-08-01', 1, NULL, NULL),
(55, 3, 5, '1', '0', '0', '0', '2017-08-01', 1, NULL, NULL),
(56, 3, 9, '1', '0', '0', '0', '2017-08-01', 1, NULL, NULL),
(57, 3, 18, '0', '0', '0', '0', '2017-08-01', 1, NULL, NULL),
(58, 3, 21, '0', '0', '0', '0', '2017-08-01', 1, NULL, NULL),
(59, 2, 31, '1', '0', '0', '0', '2018-05-11', 1, '2018-05-17', 1),
(60, 2, 32, '1', '1', '0', '0', '2018-05-11', 1, '2018-05-17', 1),
(61, 2, 33, '1', '0', '0', '0', '2018-05-11', 1, '2018-05-17', 1),
(62, 2, 34, '1', '0', '0', '0', '2018-05-11', 1, '2018-05-17', 1),
(63, 2, 35, '1', '0', '0', '0', '2018-05-11', 1, '2018-05-17', 1),
(64, 2, 36, '0', '0', '0', '0', '2018-05-11', 1, '2018-05-17', 1),
(65, 2, 37, '1', '0', '0', '0', '2018-05-11', 1, '2018-05-17', 1),
(66, 2, 38, '1', '0', '0', '0', '2018-05-11', 1, '2018-05-17', 1),
(67, 2, 39, '0', '0', '0', '0', '2018-05-11', 1, '2018-05-17', 1),
(68, 2, 40, '1', '0', '0', '0', '2018-05-11', 1, '2018-05-17', 1),
(69, 2, 41, '1', '0', '0', '0', '2018-05-11', 1, '2018-05-17', 1),
(70, 2, 42, '1', '0', '0', '0', '2018-05-11', 1, '2018-05-17', 1),
(71, 2, 43, '1', '1', '0', '0', '2018-05-11', 1, '2018-05-17', 1),
(72, 2, 44, '1', '0', '0', '0', '2018-05-11', 1, '2018-05-17', 1),
(73, 2, 45, '1', '0', '0', '0', '2018-05-11', 1, '2018-05-17', 1),
(74, 2, 46, '1', '0', '0', '0', '2018-05-11', 1, '2018-05-17', 1),
(75, 2, 47, '0', '0', '0', '0', '2018-05-11', 1, '2018-05-17', 1),
(76, 2, 48, '1', '0', '0', '0', '2018-05-11', 1, '2018-05-17', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `usr_user`
--

CREATE TABLE `usr_user` (
  `USER_ID` int(11) NOT NULL,
  `USER_NAME` varchar(100) DEFAULT NULL,
  `U_PASSWORD` varchar(500) DEFAULT NULL,
  `EMP_NO` varchar(20) DEFAULT NULL,
  `logged_in` int(1) DEFAULT NULL,
  `IS_ACTIVE` varchar(1) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `SUP_ADMIN` varchar(1) DEFAULT NULL,
  `CREATED_DATE` date DEFAULT NULL,
  `CREATED_USERID` int(11) DEFAULT NULL,
  `UPDATED_DATE` date DEFAULT NULL,
  `UPDATED_USERID` int(11) DEFAULT NULL,
  `FULL_NAME` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `usr_user`
--

INSERT INTO `usr_user` (`USER_ID`, `USER_NAME`, `U_PASSWORD`, `EMP_NO`, `logged_in`, `IS_ACTIVE`, `GROUP_ID`, `SUP_ADMIN`, `CREATED_DATE`, `CREATED_USERID`, `UPDATED_DATE`, `UPDATED_USERID`, `FULL_NAME`) VALUES
(1, 'superadmin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', '0', NULL, '1', 1, NULL, NULL, NULL, '2017-08-08', 1, ''),
(2, 'sameer', 'd033e22ae348aeb5660fc2140aec35850c4da997', '1', NULL, '1', 2, NULL, '2015-03-16', 1, '2015-09-11', 0, ''),
(4, 'sohail', '202cb962ac59075b964b07152d234b70', '3', NULL, '1', 3, NULL, '2016-08-03', 1, NULL, NULL, ''),
(5, '0', 'bb589d0621e5472f470fa3425a234c74b1e202e8', '0', NULL, '1', 0, NULL, '2018-05-11', 1, NULL, NULL, ''),
(6, NULL, NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'alya', '1111', NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, 'putri'),
(9, 'anggi', '1111', NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, 'anggi'),
(10, 'nomi', '1111', '2', NULL, '1', 2, NULL, NULL, NULL, NULL, NULL, 'nomi'),
(11, 'sonia', '1111', '4', NULL, '1', 2, NULL, NULL, NULL, NULL, NULL, 'sonia'),
(12, '', '', '4', NULL, '1', 2, NULL, NULL, NULL, NULL, NULL, ''),
(14, 'alyaa', '1111', '6', NULL, '1', 2, NULL, NULL, NULL, NULL, NULL, 'alyaa'),
(15, 'yaa', 'a9522e54c81a2b6058365dac919d1fa18dd54d9d', '7', NULL, '1', 2, NULL, NULL, NULL, NULL, NULL, 'yaa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `usr_user_copy`
--

CREATE TABLE `usr_user_copy` (
  `USER_ID` int(11) NOT NULL,
  `USER_NAME` varchar(100) NOT NULL,
  `U_PASSWORD` varchar(500) NOT NULL,
  `EMP_NO` varchar(20) DEFAULT NULL,
  `logged_in` int(1) DEFAULT NULL,
  `IS_ACTIVE` varchar(1) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `SUP_ADMIN` varchar(1) DEFAULT NULL,
  `CREATED_DATE` date DEFAULT NULL,
  `CREATED_USERID` int(11) DEFAULT NULL,
  `UPDATED_DATE` date DEFAULT NULL,
  `UPDATED_USERID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `usr_user_copy`
--

INSERT INTO `usr_user_copy` (`USER_ID`, `USER_NAME`, `U_PASSWORD`, `EMP_NO`, `logged_in`, `IS_ACTIVE`, `GROUP_ID`, `SUP_ADMIN`, `CREATED_DATE`, `CREATED_USERID`, `UPDATED_DATE`, `UPDATED_USERID`) VALUES
(1, 'superadmin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', '0', NULL, '1', 1, NULL, NULL, NULL, '2017-08-08', 1),
(2, 'sameer', 'd033e22ae348aeb5660fc2140aec35850c4da997', '1', NULL, '1', 2, NULL, '2015-03-16', 1, '2015-09-11', 0),
(4, 'sohail', '202cb962ac59075b964b07152d234b70', '3', NULL, '1', 3, NULL, '2016-08-03', 1, NULL, NULL),
(5, '0', 'bb589d0621e5472f470fa3425a234c74b1e202e8', '0', NULL, '1', 0, NULL, '2018-05-11', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(100) DEFAULT NULL,
  `phone_no` varchar(100) DEFAULT NULL,
  `fax_no` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `vendor_name`, `phone_no`, `fax_no`, `email`, `company_id`) VALUES
(1, 'Syed Asad Khan', '333', '0000', 'ABCD@YAHOO.COM', 0),
(2, 'Anees', '333', '0000', 'ABCD@YAHOO.COM', 0),
(3, 'Imran', '1233', '12133', 'admin@yahoo.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`business_settings_id`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `coa`
--
ALTER TABLE `coa`
  ADD PRIMARY KEY (`MAIN_CODE`,`SUB_CODE`,`TR_HEAD`);

--
-- Indeks untuk tabel `coa_trans`
--
ALTER TABLE `coa_trans`
  ADD PRIMARY KEY (`VNO`,`TRDATE`,`MAIN_CODE`,`SUB_CODE`,`TR_HEAD`),
  ADD KEY `FK_coa_trans_coa_id` (`MAIN_CODE`,`SUB_CODE`,`TR_HEAD`);

--
-- Indeks untuk tabel `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indeks untuk tabel `company_information`
--
ALTER TABLE `company_information`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `currency_settings`
--
ALTER TABLE `currency_settings`
  ADD PRIMARY KEY (`currency_settings_id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeks untuk tabel `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employee_profile`
--
ALTER TABLE `employee_profile`
  ADD PRIMARY KEY (`EMP_ID`);

--
-- Indeks untuk tabel `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indeks untuk tabel `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indeks untuk tabel `purchase_company`
--
ALTER TABLE `purchase_company`
  ADD PRIMARY KEY (`purchase_no`);

--
-- Indeks untuk tabel `purchase_return`
--
ALTER TABLE `purchase_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indeks untuk tabel `route_charges`
--
ALTER TABLE `route_charges`
  ADD PRIMARY KEY (`charge_id`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_no`);

--
-- Indeks untuk tabel `sales_detail`
--
ALTER TABLE `sales_detail`
  ADD KEY `sales_id` (`sales_id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indeks untuk tabel `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_no`);

--
-- Indeks untuk tabel `usr_group`
--
ALTER TABLE `usr_group`
  ADD PRIMARY KEY (`GROUP_ID`),
  ADD UNIQUE KEY `UK_GROUP_NAME` (`GROUP_NAME`);

--
-- Indeks untuk tabel `usr_menu`
--
ALTER TABLE `usr_menu`
  ADD PRIMARY KEY (`MENU_ID`),
  ADD KEY `FK_usr_menu_usr_menu_menu_id` (`PARENT_ID`);

--
-- Indeks untuk tabel `usr_permission`
--
ALTER TABLE `usr_permission`
  ADD PRIMARY KEY (`PER_ID`),
  ADD KEY `FK_usr_permission_usr_group_group_id` (`GROUP_ID`),
  ADD KEY `FK_usr_permission_usr_menu_menu_id` (`MENU_ID`);

--
-- Indeks untuk tabel `usr_user`
--
ALTER TABLE `usr_user`
  ADD PRIMARY KEY (`USER_ID`),
  ADD UNIQUE KEY `UK_USER_NAME` (`USER_NAME`),
  ADD KEY `FK_usr_user_hrm_employees_emp_no` (`EMP_NO`),
  ADD KEY `FK_usr_user_usr_group_group_id` (`GROUP_ID`);

--
-- Indeks untuk tabel `usr_user_copy`
--
ALTER TABLE `usr_user_copy`
  ADD PRIMARY KEY (`USER_ID`),
  ADD UNIQUE KEY `UK_USER_NAME` (`USER_NAME`),
  ADD KEY `FK_usr_user_hrm_employees_emp_no` (`EMP_NO`),
  ADD KEY `FK_usr_user_usr_group_group_id` (`GROUP_ID`);

--
-- Indeks untuk tabel `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `business_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `company_information`
--
ALTER TABLE `company_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `currency_settings`
--
ALTER TABLE `currency_settings`
  MODIFY `currency_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `employee_profile`
--
ALTER TABLE `employee_profile`
  MODIFY `EMP_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `route_charges`
--
ALTER TABLE `route_charges`
  MODIFY `charge_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sales_detail`
--
ALTER TABLE `sales_detail`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `usr_user`
--
ALTER TABLE `usr_user`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

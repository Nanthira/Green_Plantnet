-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2023 at 06:48 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mini-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(64) NOT NULL,
  `product_type_id` varchar(16) NOT NULL,
  `price` int(16) NOT NULL,
  `image_url` varchar(64) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_type_id`, `price`, `image_url`, `size`) VALUES
(1, 'ต้นช้อนเงินช้อนทอง 10\"', 'A1', 790, 'https://co.lnwfile.com/_/co/_raw/km/iz/1p.jpg', 10),
(2, 'ต้นมอนสเตอร่า  10\"', 'A2', 450, 'https://co.lnwfile.com/_/co/_raw/ed/m2/jc.jpg', 10),
(3, 'ต้นปาล์มพัดจีบ 10\"', 'A2', 550, 'https://co.lnwfile.com/_/co/_raw/ut/3t/vk.jpg', 10),
(4, 'ต้นวาสนา 4\"', 'A1', 390, 'https://co.lnwfile.com/_/co/_raw/gj/hk/ez.jpg', 4),
(5, 'ต้นยางอินเดีย สีดำ 10\"', 'A2', 490, 'https://co.lnwfile.com/_/co/_raw/6k/30/d3.jpg', 10),
(6, 'ต้นลิ้นมังกร 6\"', 'A2', 220, 'https://co.lnwfile.com/_/co/_raw/g8/q1/1z.jpg', 6),
(7, 'ต้นไทรใบสัก 10\"', 'A2', 590, 'https://co.lnwfile.com/_/co/_raw/kc/cw/8o.jpg', 10),
(8, 'ต้นซานาดู 10\"', 'A2', 620, 'https://co.lnwfile.com/_/co/_raw/cs/a0/9r.jpg', 10),
(9, 'ต้นจั๋งจีน 10\"', 'A2', 490, 'https://co.lnwfile.com/_/co/_raw/h0/gu/jr.jpg', 10),
(10, 'ต้นหมากเหลือง 10\"', 'A3', 390, 'https://co.lnwfile.com/_/co/_raw/in/oc/kk.jpg', 10),
(11, 'ต้นจั๋งญี่ปุ่น 10\"', 'A2', 490, 'https://co.lnwfile.com/_/co/_raw/2p/gd/y1.jpg', 10),
(12, 'ต้นปาล์มไผ่ 12\"', 'A2', 690, 'https://co.lnwfile.com/_/co/_raw/g9/70/88.jpg', 12),
(13, 'ต้นลิ้นมังกร (Golden Frame) 6\"', 'A1', 540, 'https://co.lnwfile.com/_/co/_raw/vm/31/f8.jpg', 6),
(14, 'ต้นลิ้นมังกร (โลตัส) 6\"', 'A1', 320, 'https://co.lnwfile.com/_/co/_raw/yd/mv/cp.jpg', 6),
(15, 'ต้นซุปเปอร์พิ้งค์ 6\"', 'A1', 350, 'https://co.lnwfile.com/_/co/_raw/3q/0q/as.jpg', 6),
(16, 'ต้นกวักมรกต 8\"', 'A1', 350, 'https://co.lnwfile.com/_/co/_raw/20/tj/4c.jpg', 8),
(17, 'ต้นออมชมพู 6\"', 'A3', 550, 'https://co.lnwfile.com/_/co/_raw/tu/1i/ap.jpg', 6),
(18, 'ต้นซุปเปอร์เรด 6\"', 'A1', 290, 'https://co.lnwfile.com/_/co/_raw/f8/lt/eq.jpg', 6),
(19, 'ต้นออมเงิน 6\"', 'A1', 239, 'https://co.lnwfile.com/_/co/_raw/es/jp/ev.jpg', 6),
(20, 'ต้นวาสนา 6\"', 'A1', 490, 'https://co.lnwfile.com/_/co/_raw/3r/xh/gu.jpg', 6),
(21, 'ต้นวาสนา 8\"', 'A1', 590, 'https://co.lnwfile.com/_/co/_raw/t0/9j/2e.jpg', 8),
(22, 'ต้นวาสนา 10\"', 'A1', 790, 'https://co.lnwfile.com/_/co/_raw/aq/0j/dl.jpg', 10),
(23, 'ต้นวาสนา 12\"', 'A1', 1290, 'https://co.lnwfile.com/_/co/_raw/gj/hk/ez.jpg', 12),
(24, 'ต้นลิ้นมังกร 8\"', 'A2', 320, 'https://co.lnwfile.com/_/co/_raw/fn/tt/qq.jpg', 8),
(25, 'ต้นลิ้นมังกร 10\"', 'A2', 390, 'https://co.lnwfile.com/_/co/_raw/ml/te/ie.jpg', 10),
(26, 'ต้นลิ้นมังกร 8\"', 'A2', 320, 'https://co.lnwfile.com/_/co/_raw/fn/tt/qq.jpg', 8),
(27, 'ต้นลิ้นมังกร 10\"', 'A2', 390, 'https://co.lnwfile.com/_/co/_raw/ml/te/ie.jpg', 10),
(28, 'ต้นไทรใบสัก 15\"', 'A2', 2290, 'https://co.lnwfile.com/_/co/_raw/0w/j6/b7.jpg', 15),
(30, 'ต้นปาล์มไผ่แคระ 8\"', 'A2', 690, 'https://co.lnwfile.com/_/co/_raw/l9/s7/j3.jpg', 8),
(31, 'ต้นลิ้นมังกร (Golden Frame) 8\"', 'A1', 790, 'https://co.lnwfile.com/_/co/_raw/jw/25/h4.jpg', 8),
(32, 'ต้นลิ้นมังกร (โลตัส) 8\"', 'A1', 690, 'https://co.lnwfile.com/_/co/_raw/2k/mb/b5.jpg', 8),
(33, 'ต้นออมนาค 6\"', 'A1', 239, 'https://co.lnwfile.com/_/co/_raw/by/4b/qz.jpg', 6),
(34, 'ต้นออมนาค 6\"', 'A1', 239, 'https://co.lnwfile.com/_/co/_raw/by/4b/qz.jpg', 6),
(35, 'ฟิโลเดนดรอน เบอร์กิ้น 8\"', 'A2', 669, 'https://co.lnwfile.com/_/co/_raw/fg/o6/te.jpg', 8),
(36, 'ต้นล่ำซำ 10\"', 'B2', 490, 'https://co.lnwfile.com/_/co/_raw/uf/vm/rm.jpg', 10),
(37, 'ต้นดอนญ่า สีชมพู 10\"', 'B1', 390, 'https://co.lnwfile.com/_/co/_raw/bw/wo/z3.jpg', 10),
(38, 'ต้นพุดน้ำบุศย์ 10\"', 'B2', 390, 'https://co.lnwfile.com/_/co/_raw/uz/pt/76.jpg', 10),
(39, 'ต้นโมกแคระ 10\"', 'B1', 450, 'https://co.lnwfile.com/_/co/_raw/1y/fn/g0.jpg', 10),
(40, 'ต้นโมกแคระ 12\"', 'B1', 560, 'https://co.lnwfile.com/_/co/_raw/d7/9f/om.jpg', 12),
(41, 'ต้นพุดบุญรักษา 10\"', 'B1', 420, 'https://co.lnwfile.com/_/co/_raw/lj/mt/25.jpg', 10),
(42, 'ต้นพุดบุญรักษา 15\"', 'B1', 990, 'https://co.lnwfile.com/_/co/_raw/lj/mt/25.jpg', 15),
(43, 'ต้นไข่มุกอันดามัน 6\"', 'B1', 390, 'https://co.lnwfile.com/_/co/_raw/1u/el/7o.jpg', 6),
(44, 'ต้นกระดังงาสงขลา 10\"', 'B1', 390, 'https://co.lnwfile.com/_/co/_raw/37/ge/ye.jpg', 10),
(45, 'สนหอม 10\"', 'B1', 320, 'https://co.lnwfile.com/_/co/_raw/ki/ka/zo.jpg', 10),
(46, 'ต้นแก้วเจ้าจอม 10\"', 'B2', 490, 'https://co.lnwfile.com/_/co/_raw/kf/y9/ou.jpg', 10),
(47, 'ฟิโลเดนดรอน เบอร์กิ้น 8\"', 'A2', 669, 'https://co.lnwfile.com/_/co/_raw/fg/o6/te.jpg', 8),
(48, 'ต้นบานบุรี 10\"', 'B1', 350, 'https://co.lnwfile.com/_/co/_raw/ik/6d/f8.jpg', 10),
(49, 'ต้นสายน้ำผึ้ง 10”', 'B3', 420, 'https://co.lnwfile.com/_/co/_raw/se/ef/sl.jpg', 10),
(50, 'ต้นชมนาด 10\"', 'B1', 450, 'https://co.lnwfile.com/_/co/_raw/50/cm/gs.jpg', 10),
(51, 'ต้นชบาเมเปิ้ล 10\"', 'B1', 450, 'https://co.lnwfile.com/_/co/_raw/f6/nv/r8.jpg', 10),
(52, 'ต้นชบาดอกซ้อน สีแดง 10\"', 'B1', 350, 'https://co.lnwfile.com/_/co/_raw/xo/68/d5.jpg', 10),
(53, 'ต้นเล็บมือนาง (ต้น) 10\"', 'B1', 420, 'https://co.lnwfile.com/_/co/_raw/vm/m1/sz.jpg', 10),
(54, 'ต้นเล็บมือนาง (เลื้อย) 10\"', 'B1', 420, 'https://co.lnwfile.com/_/co/_raw/6o/m9/3i.jpg', 10),
(55, 'ต้นพุดสามสี 15\"', 'B1', 890, 'https://co.lnwfile.com/_/co/_raw/jh/mv/hv.jpg', 15),
(56, 'ต้นพุดสามสี 10\"', 'B1', 420, 'https://co.lnwfile.com/_/co/_raw/jx/bj/i6.jpg', 10),
(57, 'ต้นโยทะกาเลื้อย 10\"', 'B3', 450, 'https://co.lnwfile.com/_/co/_raw/an/i8/p3.jpg', 10),
(58, 'ต้นเข็มพิกุล 10\"', 'B1', 320, 'https://co.lnwfile.com/_/co/_raw/9h/oh/gy.jpg', 10),
(59, 'ต้นหงส์ฟู่ 10\"', 'B1', 390, 'https://co.lnwfile.com/_/co/_raw/gq/8o/db.jpg', 10),
(60, 'ต้นรักแรกพบ (สีชมพู) 11\"', 'B1', 320, 'https://co.lnwfile.com/_/co/_raw/ro/8y/w8.jpg', 11),
(61, 'ต้นรักแรกพบ (สีเหลือง) 11\"', 'B1', 320, 'https://co.lnwfile.com/_/co/_raw/eu/3u/2i.jpg', 11),
(62, 'ต้นรักแรกพบ (สีส้ม) 11\"', 'B1', 320, 'https://co.lnwfile.com/_/co/_raw/10/lh/fn.jpg', 11),
(63, 'ต้นรักแรกพบ (สีแดง) 11\"', 'B1', 320, 'https://co.lnwfile.com/_/co/_raw/x4/rs/lr.jpg', 11),
(64, 'ต้นเฟื่องฟ้าสาวิตรี 10\"', 'B3', 450, 'https://co.lnwfile.com/_/co/_raw/4c/o4/nt.jpg', 10),
(65, 'ต้นเชอรี่แคระ กระถาง 10\"', 'B1', 390, 'https://co.lnwfile.com/_/co/_raw/7w/37/y0.jpg', 10),
(66, 'ต้นสนฉัตร 10\"', 'B2', 450, 'https://co.lnwfile.com/_/co/_raw/68/mr/k6.jpg', 10),
(67, 'ต้นสนฉัตร 15\"', 'B2', 1150, 'https://co.lnwfile.com/_/co/_raw/2a/p5/76.jpg', 15),
(68, 'ต้นชะแมบทอง 10\"', 'B1', 420, 'https://co.lnwfile.com/_/co/_raw/6w/gv/su.jpg', 10),
(69, 'ต้นส้มจี๊ด 10\"', 'B1', 390, 'https://co.lnwfile.com/_/co/_raw/w6/63/d0.jpg', 10),
(70, 'ต้นส้มจี๊ด 12\"', 'B1', 490, 'https://co.lnwfile.com/_/co/_raw/w6/63/d0.jpg', 12),
(71, 'ต้นส้มจี๊ดด่าง 10\"', 'B1', 390, 'https://co.lnwfile.com/_/co/_raw/my/vp/67.jpg', 10),
(72, 'ต้นนกน้อยนำโชค 8\"', 'B1', 290, 'https://co.lnwfile.com/_/co/_raw/a8/vw/h2.jpg', 8),
(73, 'ต้นนกน้อยนำโชค 10\"', 'B1', 390, 'https://co.lnwfile.com/_/co/_raw/sk/de/7v.jpg', 10),
(74, 'ต้นนกน้อยนำโชค 15\"', 'B1', 1290, 'https://co.lnwfile.com/_/co/_raw/z5/q4/xf.jpg', 15),
(75, 'ต้นชะแมบทอง 10\"', 'B1', 420, 'https://co.lnwfile.com/_/co/_raw/6w/gv/su.jpg', 10),
(76, 'ต้นส้มจี๊ด 10\"', 'B1', 390, 'https://co.lnwfile.com/_/co/_raw/w6/63/d0.jpg', 10),
(77, 'ต้นส้มจี๊ด 12\"', 'B1', 490, 'https://co.lnwfile.com/_/co/_raw/w6/63/d0.jpg', 12),
(78, 'ต้นส้มจี๊ดด่าง 10\"', 'B1', 390, 'https://co.lnwfile.com/_/co/_raw/my/vp/67.jpg', 10),
(79, 'ต้นนกน้อยนำโชค 8\"', 'B1', 290, 'https://co.lnwfile.com/_/co/_raw/a8/vw/h2.jpg', 8),
(80, 'ต้นนกน้อยนำโชค 10\"', 'B1', 390, 'https://co.lnwfile.com/_/co/_raw/sk/de/7v.jpg', 10),
(81, 'ต้นนกน้อยนำโชค 15\"', 'B1', 1290, 'https://co.lnwfile.com/_/co/_raw/z5/q4/xf.jpg', 15),
(82, 'ต้นแก้วพวงดวงใจ 10\"', 'B1', 390, 'https://co.lnwfile.com/_/co/_raw/db/mw/9s.jpg', 10),
(83, 'ต้นแก้วลิลลี่ 10\"', 'B1', 390, 'https://co.lnwfile.com/_/co/_raw/ah/kr/m8.jpg', 10),
(84, 'ต้นแก้วแคระใบประยงค์ 10\"', 'B1', 490, 'https://co.lnwfile.com/_/co/_raw/pi/p4/bd.jpg', 10),
(85, 'ต้นปีบยูนาน 10\"', 'B1', 350, 'https://co.lnwfile.com/_/co/_raw/rg/td/0y.jpg', 10),
(86, 'ต้นลัดดาวัลย์ กระถาง 10\"', 'B3', 320, 'https://co.lnwfile.com/_/co/_raw/08/ah/8z.jpg', 10),
(87, 'ต้นหอมเจ็ดชั้น 10\"', 'B2', 490, 'https://co.lnwfile.com/_/co/_raw/ot/mi/bi.jpg', 10),
(88, 'ต้นหอมหมื่นลี้ 10\"', 'B2', 420, 'https://co.lnwfile.com/_/co/_raw/gq/98/7e.jpg', 10),
(100, 'ต้นผีเสื้อแสนสวย 10\"', 'ฺB1', 420, 'https://co.lnwfile.com/_/co/_raw/bs/sp/jr.jpg', 10),
(101, 'ต้นมิกกี้เมาส์ 10\"', 'B1', 450, 'https://co.lnwfile.com/_/co/_raw/c1/5b/n3.jpg', 10),
(102, 'ต้นกระเทียมเถา กระถาง 10\"', 'B3', 420, 'https://co.lnwfile.com/_/co/_raw/ea/w4/1p.jpg', 10),
(103, 'ต้นแย้มปีนัง 10\"', 'B1', 350, 'https://co.lnwfile.com/_/co/_raw/fm/fq/n0.jpg', 10),
(104, 'ต้นเรดาร์ (หมวกจีน) 10\"', 'B1', 520, 'https://co.lnwfile.com/_/co/_raw/82/k0/mu.jpg', 10),
(105, 'ต้นทิวา 10\"', 'B1', 420, 'https://co.lnwfile.com/_/co/_raw/no/do/0g.jpg', 10),
(106, 'ต้นพุดชมพู 10\"', 'B1', 450, 'https://co.lnwfile.com/_/co/_raw/dh/u0/jq.jpg', 10),
(107, 'ต้นพวงชมพู 10\"', 'B1', 420, 'https://co.lnwfile.com/_/co/_raw/tz/b5/d0.jpg', 10),
(108, 'ต้นพวงชมพูดอกขาว 10\"', 'B1', 420, 'https://co.lnwfile.com/_/co/_raw/el/8a/ca.jpg', 10),
(109, 'ต้นจำปี (สีขาว) 10\"', 'B2', 320, 'https://co.lnwfile.com/_/co/_raw/ai/3x/2g.jpg', 10),
(110, 'ต้นกระเทียมเถา กระถาง 10\"', 'B3', 420, 'https://co.lnwfile.com/_/co/_raw/ea/w4/1p.jpg', 10),
(111, 'ต้นแย้มปีนัง 10\"', 'B1', 350, 'https://co.lnwfile.com/_/co/_raw/fm/fq/n0.jpg', 10),
(112, 'ต้นเรดาร์ (หมวกจีน) 10\"', 'B1', 520, 'https://co.lnwfile.com/_/co/_raw/82/k0/mu.jpg', 10),
(113, 'ต้นทิวา 10\"', 'B1', 420, 'https://co.lnwfile.com/_/co/_raw/no/do/0g.jpg', 10),
(114, 'ต้นพุดชมพู 10\"', 'B1', 450, 'https://co.lnwfile.com/_/co/_raw/dh/u0/jq.jpg', 10),
(115, 'ต้นพวงชมพู 10\"', 'B1', 420, 'https://co.lnwfile.com/_/co/_raw/tz/b5/d0.jpg', 10),
(116, 'ต้นพวงชมพูดอกขาว 10\"', 'B1', 420, 'https://co.lnwfile.com/_/co/_raw/el/8a/ca.jpg', 10),
(117, 'ต้นจำปี (สีขาว) 10\"', 'B2', 320, 'https://co.lnwfile.com/_/co/_raw/ai/3x/2g.jpg', 10),
(118, 'ต้นเทียนหยดแคระ 10\"\r\n', 'B1', 350, 'https://co.lnwfile.com/_/co/_raw/sa/4c/v5.jpg', 10),
(119, 'ต้นเทียนหยด 10\"', 'B1', 350, 'https://co.lnwfile.com/_/co/_raw/eq/rh/uj.jpg', 10),
(120, 'ต้นสร้อยสายเพชร 10\"', 'B3', 450, 'https://co.lnwfile.com/_/co/_raw/3k/lx/bs.jpg', 10),
(121, 'ต้นสร้อยสายเพชร กระถาง 10\"', 'B3', 450, 'https://co.lnwfile.com/_/co/_raw/va/2u/9y.jpg', 10),
(122, 'ต้นแก้วมุกดา 10\"\r\n', 'B2', 420, 'https://co.lnwfile.com/_/co/_raw/fr/3z/o7.jpg', 10),
(123, 'ต้นโซ่ทองคำ 8\"', 'B2', 250, 'https://co.lnwfile.com/_/co/_raw/iz/qg/y2.jpg', 8),
(124, 'ต้นโซ่ทองคำ 10\"', 'B2', 420, 'https://co.lnwfile.com/_/co/_raw/79/zo/1f.jpg', 10),
(125, 'ต้นหัวใจเศรษฐี 10\"', 'B1', 320, 'https://co.lnwfile.com/_/co/_raw/py/ox/0z.jpg', 10),
(126, 'ต้นประยงค์ 10\"', 'B1', 420, 'https://co.lnwfile.com/_/co/_raw/jh/nf/sg.jpg', 10),
(127, 'ต้นสาวสันทราย 10\"', 'B1', 450, 'https://co.lnwfile.com/_/co/_raw/hz/o7/jy.jpg', 10),
(128, 'ต้นกระดิ่งนางฟ้า 11\"', 'B2', 420, 'https://co.lnwfile.com/_/co/_raw/ax/fr/co.jpg', 11),
(129, 'ต้นเหลืองชัชวาลย์ 10\"', 'B3', 430, 'https://co.lnwfile.com/_/co/_raw/wr/29/xd.jpg', 10),
(130, 'ต้นเหลืองชัชวาลย์ 15\"', 'B3', 1290, 'https://co.lnwfile.com/_/co/_raw/hn/0z/zr.jpg', 15),
(131, 'ต้นกุหลาบเลื้อย 10\"', 'B3', 420, 'https://co.lnwfile.com/_/co/_raw/mb/rz/my.jpg', 10),
(132, 'ต้นม่วงเจริญ 10\"', 'B1', 350, 'https://co.lnwfile.com/_/co/_raw/o2/ey/z2.jpg', 10),
(133, 'ต้นช้องนาง 10\"', 'B1', 350, 'https://co.lnwfile.com/_/co/_raw/dr/zd/lp.jpg', 10),
(134, 'ต้นมังกรคาบแก้ว 10\"', 'B3', 390, 'https://co.lnwfile.com/_/co/_raw/qp/a6/qt.jpg', 10),
(135, 'ต้นมังกรคาบแก้ว สีชมพู (พวงนาค) 10\"', 'B3', 390, 'https://co.lnwfile.com/_/co/_raw/s3/sp/63.jpg', 10),
(136, 'ต้นพวงครามออสเตรเลีย 11\"', 'B3', 390, 'https://co.lnwfile.com/_/co/_raw/6f/oa/o2.jpg', 11),
(137, 'ต้นพวงครามออสเตรเลีย 15\"', 'B3', 1390, 'https://co.lnwfile.com/_/co/_raw/45/mk/to.jpg', 15),
(138, 'ต้นมะลุลี 10”', 'B1', 350, 'https://co.lnwfile.com/_/co/_raw/sz/r1/35.jpg', 10),
(139, 'ต้นมะลุลีแคระ กระถาง 10”', 'B1', 350, 'https://co.lnwfile.com/_/co/_raw/t5/qn/vk.jpg', 10),
(140, 'ต้นมะลิซ้อน 10\"', 'B1', 290, 'https://co.lnwfile.com/_/co/_raw/rk/4c/7b.jpg', 10),
(141, 'ต้นมะลิลา 10\"', 'B1', 290, 'https://co.lnwfile.com/_/co/_raw/zp/a3/df.jpg', 10),
(142, 'ต้นยี่หุบ 10\"', 'B1', 490, 'https://co.lnwfile.com/_/co/_raw/i6/7s/r0.jpg', 10),
(143, 'ต้นพุดตาน 10\"', 'B1', 350, 'https://co.lnwfile.com/_/co/_raw/3h/dg/of.jpg', 10),
(144, 'ต้นสนแผง 15\"', 'B1', 1290, 'https://co.lnwfile.com/_/co/_raw/ls/ft/br.jpg', 15),
(145, 'ต้นสนใบพาย 11\"', 'B1', 450, 'https://co.lnwfile.com/_/co/_raw/db/9i/0u.jpg', 11),
(146, 'ต้นทองหลางลาย 10\"', 'B2', 590, 'https://co.lnwfile.com/_/co/_raw/t5/me/4x.jpg', 10),
(147, 'ต้นเกล็ดกระโห้ 10\"', 'B2', 390, 'https://co.lnwfile.com/_/co/_raw/d2/fx/6b.jpg', 10),
(148, 'ต้นทองหลางลาย กระถาง 12\"', 'B2', 690, 'https://co.lnwfile.com/_/co/_raw/py/zn/ti.jpg', 12),
(149, 'ต้นเกล็ดกระโห้ด่าง 10\"', 'B2', 390, 'https://co.lnwfile.com/_/co/_raw/na/x2/1g.jpg', 10),
(150, 'ต้นเกล็ดกระโห้ด่าง 12\"', 'B2', 550, 'https://co.lnwfile.com/_/co/_raw/qo/xm/4v.jpg', 12),
(151, 'ต้นเป็ดแดง 10\"', 'B1', 350, 'https://co.lnwfile.com/_/co/_raw/ud/sa/nf.jpg', 10),
(152, 'ต้นหนวดปลาหมึกด่างแคระ 10\"', 'B1', 350, 'https://co.lnwfile.com/_/co/_raw/ld/g8/y4.jpg', 10),
(153, 'ต้นยางอินเดีย ด่างเหลือง 10\"', 'B2', 420, 'https://co.lnwfile.com/_/co/_raw/gb/uf/n2.jpg', 10),
(154, 'ต้นซองออฟอินเดีย 10\"', 'B1', 420, 'https://co.lnwfile.com/_/co/_raw/6h/xk/5r.jpg', 10),
(155, 'ต้นแก้วมุกดาด่าง 10\"', 'B2', 450, 'https://co.lnwfile.com/_/co/_raw/fr/3z/o7.jpg', 10),
(156, 'ต้นเต่าร้างด่าง 8\"', 'B1', 420, 'https://co.lnwfile.com/_/co/_raw/zr/x4/i4.jpg', 8),
(157, 'ต้นอินจัน 11\"', 'B2', 420, 'https://co.lnwfile.com/_/co/_raw/xq/wj/lq.jpg', 11),
(158, 'ต้น โมจิโต้ (Holland) 4\"', 'A1', 1290, 'https://co.lnwfile.com/_/co/_raw/ib/k3/af.jpg', 4),
(159, 'ต้น โมจิโต้ (Holland) 6\"', 'A1', 2290, 'https://co.lnwfile.com/_/co/_raw/ib/k3/af.jpg', 6),
(160, 'ต้น โมจิโต้ (Holland) 8\"', 'A1', 4500, 'https://co.lnwfile.com/_/co/_raw/ib/k3/af.jpg', 8),
(161, 'ต้นปาล์มศรีสยาม 10\"', 'B2', 890, 'https://co.lnwfile.com/_/co/_raw/oq/x8/09.jpg', 10),
(162, 'ต้นกรรณิการ์ 10\"', 'B2', 350, 'https://co.lnwfile.com/_/co/_raw/ah/3r/1t.jpg', 10),
(163, 'ต้นม่วงสาหรี่ 10\"', 'B2', 350, 'https://co.lnwfile.com/_/co/_raw/zb/pw/1y.jpg', 10),
(164, 'ต้นพุดลิลลี่ กระถาง 10\"', 'B1', 390, 'https://co.lnwfile.com/_/co/_raw/9n/kb/oo.jpg', 10),
(165, 'ต้นแพรชมพู 10\"', 'B3', 390, 'https://co.lnwfile.com/_/co/_raw/qu/vr/57.jpg', 10),
(166, 'ต้นจันกะพ้อเลื้อย กระถาง 10\"', 'B3', 390, 'https://co.lnwfile.com/_/co/_raw/19/mk/xw.jpg', 10),
(167, 'ต้นองุ่นทะเล 8\"', 'B2', 390, 'https://co.lnwfile.com/_/co/_raw/w7/8f/fv.jpg', 8),
(168, 'ต้นองุ่นทะเล 8\"', 'B2', 390, 'https://co.lnwfile.com/_/co/_raw/w7/8f/fv.jpg', 8),
(169, 'ต้นองุ่นทะเล 11\"', 'B2', 690, 'https://co.lnwfile.com/_/co/_raw/w7/8f/fv.jpg', 11),
(170, 'ต้นสาลิกาลิ้นทอง 8\"', 'B1', 59, 'https://co.lnwfile.com/_/co/_raw/8q/2n/kd.jpg', 8),
(171, 'ต้นสาลิกาลิ้นทอง 10\"', 'B1', 290, 'https://co.lnwfile.com/_/co/_raw/j4/rf/6o.jpg', 10),
(172, 'ต้นหลิวไต้หวันถัก 8\"', 'B1', 890, 'https://co.lnwfile.com/_/co/_raw/oh/y9/58.jpg', 8);

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `product_type_id` varchar(8) NOT NULL,
  `product_type` varchar(64) NOT NULL,
  `type_id` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `product_types`
--

INSERT INTO `product_types` (`product_type_id`, `product_type`, `type_id`) VALUES
('A1', 'ต้นไม้มงคล', 'A'),
('A2', 'ต้นไม้ฟอกอากาศ', 'A'),
('A3', 'ต้นไม้ที่ดูแลง่าย', 'A'),
('B1', 'ไม้ทรงพุ่ม', 'ฺฺB'),
('B2', 'ต้นไม้ยืนต้น', 'B'),
('B3', 'ไม้เลื้อย', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `type_id` varchar(8) NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`type_id`, `type`) VALUES
('A', 'ตั้นไม้ภายในบ้าน'),
('ฺฺB', 'ตั้นไม้ภายนอก');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `user_pwd` varchar(32) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `age` varchar(64) NOT NULL,
  `address` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_pwd`, `first_name`, `age`, `address`, `last_name`, `email`, `phone`, `role_id`) VALUES
(1, 'test1', 'b59c67bf196a4758191e42f76670ceba', 'po', 'po', 'test@test', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

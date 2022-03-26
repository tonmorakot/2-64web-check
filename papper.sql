-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2022 at 02:13 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `papper`
--

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `id` int(11) NOT NULL,
  `f_id` int(11) DEFAULT NULL,
  `d_name` varchar(255) DEFAULT NULL,
  `d_details` varchar(1000) DEFAULT NULL,
  `d_protect` varchar(1000) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`id`, `f_id`, `d_name`, `d_details`, `d_protect`, `createdAt`, `updatedAt`) VALUES
(3, 1, 'โรคใบหงิกเหลืองพริก (Yellow left curl)', 'อาการจะเกิดเร็วและรุนแรงในต้นพริกที่ยังเล็ก ใบพริกแสดงอาการด่างเหลืองสลับสีเขียว เนื้อใบมีสีเขียวซีดและมีจุดสีเขียวบนใบ มีลักษณะโค้งงอ ใบอ่อนของต้นพริกที่ถูกไวรัสเข้าทำลายจะมีขนาดเล็กกว่าต้นปกติและใบมีอาการบิดเบี้ยว ถ้าติดผลจะมีขนาดเล็กและผลบิดเบี้ยวเสียรูปทรง โดยมีแมลงหวี่ขาวยาสูบ เป็นแมลงพาหะนำโรค', '1. ปลูกพริกที่ต้านทางโรค เช่น พริกชี้ฟ้าพันธ์ Papper Hot 10-1,10-8 \r\n2. ตรวจแปลงอย่างสม่ำเสมอ หากพบโรคให้ทำลายต้นพืชที่เป็นโรค โดยการถอนไปเผาทิ้ง หรือฝังดินนอกแปลง เพื่อลดปริมาณของเชื้อสาเหตุ\r\n3. ใช้กับดักกาวเหนียว โดยอาศัยพฤติกรรมของแมลงซึ่งชอบบินเข้าหาวัตถุสีเหลือง หรือรักษาโดยใช้สารชีวภัณฑ์ตามท้องตลาด เช่น บูเวริน ลาเซียน่า บิวเวอเรีย เป็นต้น\r\n', '2022-02-09 20:05:35', '2022-02-09 20:05:35'),
(4, 2, 'โรคราแป้ง (Powdery mildew)', 'ระบาดมากในช่วงฤดูหนาวหรืออากาศเย็น ใบมีสีเหลืองไม่สม่ำเสมอกัน มักแสดงอาการที่ใบแก่ส่วนล่างลำต้นแล้วลามไปยังส่วนบน หากมีอาการรุนแรงทำให้ใบเปลี่ยนเป็นสีเหลืองทั้งใบ ด้านหลังใบมีลักษณะคล้ายขุยสีขาวหรือสปอร์ของเชื้อราปกคลุมอยู่หลังใบ หรือส่วนอื่นเป็นหย่อม ๆ เชื้อจะดูดน้ำเลี้ยงจากพืชทำให้เหลืองซีด และแห้งตาย ถ้าเชื้อเกิดบนยอดอ่อน ใบอ่อน ผลอ่อน อาจทำให้บิดเบี้ยวเสียรูปทรง ในระยะต่อไปบนเนื้อเยื่อสีเหลืองอาจมีจุดเล็ก ๆ สีน้ำตาลเกิดขึ้น เนื่องจากการขยายของเนื้อเยื่อ ใบพริกที่มีเชื้อราเกาะอยู่มาก ๆ ใบจะเหลืองและร่วงหล่นไปในที่สุด', '1. หมั่นตรวจแปลงอย่างสม่ำเสมอ กำจัดเศษซากพืช และวัชพืชในแปลง หากพบโรคให้ทำลายต้นพืชทิ้ง โดยการถอนไปเผาทิ้ง เพื่อลดปริมาณของเชื้อสาเหตุ\r\n2. การรักษาโดยใช้สารเคมี โดยใช้แมนโคเซป หรือโพรพิเนบ คลุกเมล็ดพันธุ์อัตรา 7-10 กรัมต่อเมล็ด 1 กิโลกรัม ในกรณีที่เกิดโรคแล้วควรใช้สารกำมะถันผง หรือซัลเฟอร์ ในการพ่นอัตราการใช้หรือปริมาณสามารถดูตามคำแนะนำการใช้ของตัวผลิตภัณฑ์ได้ \r\n3. การป้องกันโดยใช้สารชีวภัณฑ์ ไตรโคเดอร์มาสำเร็จรูป ซึ่งการใช้งานมีหลายรูปแบบ เช่น การแช่น้ำไตรโคเดอร์มาก่อนเพาะกล้า การฉีดพ่นในแปลงพริกอย่างน้อย 1 ครั้ง/สัปดาห์ ใส่ถังหว่านผสมกับปุ๋ยคอกหรือปุ๋ยหมัก ', '2022-02-09 20:11:11', '2022-02-09 20:11:11'),
(5, 3, 'โรคใบจุดตากบ (Frog eye)', 'มีลักษณะใบเป็นสีเหลืองมีจุดแผลวงกลมเล็ก กลางแผลมีสีเทา ขอบแผลสีน้ำตาล กระจายทั่วไป ต่อมาจุดที่เกิดขึ้นจะขยายวงกว้างจนเป็นแผลขนาดใหญ่ ทำให้ใบไหม้ โดยแผลจะมีรูปร่างเปลี่ยนไปไม่แน่นอนใบที่มีแผลใหญ่หลายแผลจะหลุดล่วงไปก่อน แพร่ระบาดมากในช่วงร้อนชื้น การแพร่ระบาดจะกระจายไปกับลม น้ำฝน หรือไปกับน้ำที่ใช้ในการเพาะปลูก เชื้อติดอยู่กับเศษซากพืชหรือพืชอาศัยอื่น ๆ โรคระบาดได้อย่างรุนแรงในสภาพที่มีอากาศร้อนชื้น', '1. หมั่นตรวจแปลงอย่างสม่ำเสมอ หากพบโรค ให้ทำลายต้นพืชที่เป็นโรคโดยการถอนไปเผาทิ้ง เพื่อลดปริมาณของเชื้อสาเหตุ \r\n2. ไม่ปลูกต้นพริกระยะชิดกันเกินไป เพราะทำให้ความชื้นสูงทำให้โรคระบาดได้ง่าย ควรเว้นระยะปลูกให้มีอากาศถ่ายเทได้สะดวก และลดปริมาณความชื้นในดิน\r\n3. เมื่อเริ่มพบโรคและมีแนวโน้มว่าจะระบาดมากขึ้น ควรลดการให้น้ำละพ่นสารเคมีป้องกัน เช่น สารแมนโคเซป สารมาเนป หรือสารไซเนป โดยพ่นเป็นประจำทุก 5-7 วันต่อครั้ง\r\n4. การป้องกันโดยใช้สารชีวภัณฑ์ ไตรโคเดอร์มาสำเร็จรูป ซึ่งการใช้งานมีหลายรูปแบบ เช่น การแช่น้ำไตรโคเดอร์มาก่อนเพาะกล้า การฉีดพ่นในแปลงพริกอย่างน้อย 1 ครั้ง/สัปดาห์ ใส่ถังหว่านผสมกับปุ๋ยคอกหรือปุ๋ยหมัก ', '2022-02-10 14:51:05', '2022-02-10 14:51:05'),
(6, 4, 'โรคใบด่างประพริก (Chili Veinal Mottle Disease)', 'เชื้อสาเหตุทำให้เนื้อใบด่างสีเหลืองสลับเขียวเข้ม เนื้อใบมีสีเขียวซีดใบมีขนาดเล็กลงและบิดเบี้ยวหลุดล่วงได้ง่าย ต้นชะงักการเจริญเติบโต ถ้าเชื้อเข้าทำลายในระยะต้นกล้า ต้นพริกจะแคระแกร็น การแตกกิ่งด้านข้างลดลง ติดดอกน้อยลง หากติดผล ผลจะมีขนาดเล็กด่างและบิดเบี้ยว แพร่ระบาดโดยมีเพลี้ยอ่อนเป็นพาหะนำโรค', '1. ใช้พันธ์พริกที่ต้านทานโรค\r\n2. หมั่นตรวจแปลงถอนทำลายต้นที่เป็นโรค กำจัดเศษซากพืชและวัชพืชในแปลงไม่ให้เป็นแหล่งอาศัยของแมลงพาหะ\r\n3. รักษาโดยใช้สารชีวภัณฑ์ตามท้องตลาด เช่น บูเวริน ลาเซียน่า บิวเวอเรีย เป็นต้น\r\n4. พ่นสารเคมีป้องกันกำจัดแมลงพาหะ ถ้าพบมีความหนาแน่น 10-20% ของพื้นที่ใบทั้งต้นจากจำนวน 10% ของต้นทั้งหมดให้พ่นสารดังนี้ (1) อิมิดาโคลพริด 10% SL อัตรา 10 มิลลิลิตร (2) ไดโนทีฟู แรน 10% WP อัตรา 10 กรัม (3) ฟิโปรนิล 5% SC อัตรา 20 มิลลิลิตร (4) อีโทเฟนพริกซ์ 20% EC อัตรา 30 มิลลิลิตร (5) คาร์โบซัลแฟน 20% EC อัตรา 40 มิลลิลิตรต่อน้ำ 20 ลิตร ใช้อย่างใดอย่างหนึ่งจนกว่าการระบาดจะลดลง ในกรณีที่เพลี้ยอ่อนยังไม่ตายให้สลับใช้สารเคมีในการพ่น เช่น ใช้สารอิมิดาโคลพริด 10% SL อัตรา 10 มิลลิลิตร ในการพ่นครั้งแรกแต่เพลี้ยอ่อนไม่ตายให้เปลี่ยนไปใช้ ไดโนทีฟู แรน 10% WP อัตรา 10 กรัม เพื่อป้องกันไม่ให้ตัวเพลี้ยอ่อนปรับตัวต่อสารเคมี\r\n', '2022-02-10 14:52:38', '2022-02-10 14:52:38'),
(7, 5, 'โรคไวรัสใบจุดวงแหวน (Ringspot Disease)', 'พบอาการได้ทุกส่วนของต้น ส่วนใหญ่พบอาการบนใบ คือ ใบเป็น จุดวงแหวนสีซีดหรือเป็นจุดสีน้ำตาล ใบไหม้ด่างวงแหวน (ring spot) ด่างประ (mottling) แคระแกร็น (stunting) และใบจุด (local lesion) บนก้านใบ ผลพบ อาการเนื้อเยื่อตายเป็นสะเก็ด', '1. รักษาโดยใช้สารชีวภัณฑ์ตามท้องตลาด เช่น บูเวริน ลาเซียน่า บิวเวอเรีย เป็นต้น \r\n2. ไม่ปลูกพืชหมุนเวียนที่เป็นพืชอาศัยของเชื้อ เช่น มะเขือเทศ\r\n3. หมั่นตรวจแปลงอย่างสม่ำเสมอ หากพบโรค ทำลายต้นพืชที่เป็นโรคโดยการถอนไปเผาทิ้ง เพื่อลดปริมาณของเชื้อสาเหตุ\r\n', '2022-02-10 14:52:38', '2022-02-10 14:52:38'),
(8, 6, 'โรคใบจุดที่เกิดจากแบคทีเรียของพริก (Chili Bacterial Leaf Spot Disease)', 'ใบแสดงอาการจุดวงกลมเล็กหรือมีรูปร่างไม่แน่นอน สีน้ำตาลเข้มหรือมีสีดำเป็นมัน เมื่อจุดขยายใหญ่ขึ้นจะเห็นตรงกลางจุดสีจางล้อมรอบด้วยขอบแผลสีเข้ม หากจุดใกล้กันลามเชื่อมต่อกันจะทำให้เกิดแผลรูปร่างไม่แน่นอน ในใบที่มีอาการรุนแรงจะเป็นสีเหลืองและร่วงจากต้น ถ้าเชื่อเข้าทำลายส่วนของก้านใบและลำต้นจะทำให้เกิดอาการแผลสะเก็ดและกิ่งเหี่ยวได้ การแพร่ระบาดเชื้อจะอาศัยอยู่ในดิน และติดไปกับอุปกรณ์การเกษตร ', '1.หากเป็นต้นกล้าสามารถพ่นด้วย 1% Bordeaux mixture หรือใช้ 0.25% copperOxychloride ควรฉีดพ่นก่อนต้นพริกออกดอกและผล\r\n2. ควรกำจัดต้นที่เป็นโรคออกจากแปลงเพื่อลดแหล่งแพร่ระบาดของโรคในแปลง', '2022-02-10 14:54:41', '2022-02-10 14:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `factors`
--

CREATE TABLE `factors` (
  `id` int(11) NOT NULL,
  `d_id` int(11) DEFAULT NULL,
  `f_wound` varchar(500) DEFAULT NULL,
  `f_more` varchar(500) DEFAULT NULL,
  `f_edge` varchar(500) DEFAULT NULL,
  `f_leaf` varchar(500) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `leafcolors`
--

CREATE TABLE `leafcolors` (
  `id` int(11) NOT NULL,
  `lf_name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leafcolors`
--

INSERT INTO `leafcolors` (`id`, `lf_name`, `createdAt`, `updatedAt`) VALUES
(2, 'สีเหลืองกับสีเขียว', '2022-03-23 06:36:55', '2022-03-23 06:36:55'),
(3, 'สีเหลือง', '2022-03-23 06:37:44', '2022-03-23 06:37:44'),
(4, 'สีเขียวอ่อน', '2022-03-23 06:37:44', '2022-03-23 06:37:44');

-- --------------------------------------------------------

--
-- Table structure for table `moreleafs`
--

CREATE TABLE `moreleafs` (
  `id` int(11) NOT NULL,
  `ml_name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `moreleafs`
--

INSERT INTO `moreleafs` (`id`, `ml_name`, `createdAt`, `updatedAt`) VALUES
(1, 'ด่าง', '2022-03-22 07:35:42', '2022-03-22 07:35:42'),
(2, 'เบี้ยวและหงิกงอ', '2022-03-22 07:59:35', '2022-03-22 07:59:35'),
(3, 'ใบจุดสีขาว', '2022-03-24 14:11:55', '2022-03-24 14:11:55'),
(4, 'ไหม้', '2022-03-24 14:11:55', '2022-03-24 14:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20220209072856-create-disease.js'),
('20220209073559-create-factor.js'),
('20220319063858-create-moreleaf.js'),
('20220319064328-create-moreleaf.js'),
('20220319064651-create-moreleaf.js'),
('20220319064757-create-leafcolor.js'),
('20220319064841-create-morecolor.js'),
('20220319064927-create-woundonleaf.js'),
('20220319065013-create-woundcolor.js');

-- --------------------------------------------------------

--
-- Table structure for table `woundcolors`
--

CREATE TABLE `woundcolors` (
  `id` int(11) NOT NULL,
  `wc_name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `woundcolors`
--

INSERT INTO `woundcolors` (`id`, `wc_name`, `createdAt`, `updatedAt`) VALUES
(1, 'เหลือง', '2022-03-23 06:29:34', '2022-03-23 06:29:34'),
(2, 'น้ำตาล', '2022-03-23 06:29:34', '2022-03-23 06:29:34'),
(3, 'ไม่มีสี', '2022-03-23 06:34:57', '2022-03-23 06:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `woundonleafs`
--

CREATE TABLE `woundonleafs` (
  `id` int(11) NOT NULL,
  `wol_name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `woundonleafs`
--

INSERT INTO `woundonleafs` (`id`, `wol_name`, `createdAt`, `updatedAt`) VALUES
(1, 'มีแผล', '2022-03-23 06:28:37', '2022-03-23 06:28:37'),
(2, 'ไม่มีแผล', '2022-03-23 06:28:37', '2022-03-23 06:28:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factors`
--
ALTER TABLE `factors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leafcolors`
--
ALTER TABLE `leafcolors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moreleafs`
--
ALTER TABLE `moreleafs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `woundcolors`
--
ALTER TABLE `woundcolors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `woundonleafs`
--
ALTER TABLE `woundonleafs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `factors`
--
ALTER TABLE `factors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leafcolors`
--
ALTER TABLE `leafcolors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `moreleafs`
--
ALTER TABLE `moreleafs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `woundcolors`
--
ALTER TABLE `woundcolors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `woundonleafs`
--
ALTER TABLE `woundonleafs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

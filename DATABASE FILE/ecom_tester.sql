-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 06, 2022 at 06:31 AM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_tester`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us - Our Story', '\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n', 'Rhone was the collective vision of a small group of weekday warriors. For years, we were frustrated by the lack of activewear designed for men and wanted something better. With that in mind, we set out to design premium apparel that is made for motion and engineered to endure.\r\n\r\nAdvanced materials and state of the art technology are combined with heritage craftsmanship to create a new standard in activewear. Every product tells a story of premium performance, reminding its wearer to push themselves physically without having to sacrifice comfort and style.\r\n\r\nBeyond our product offering, Rhone is founded on principles of progress and integrity. Just as we aim to become better as a company, we invite men everywhere to raise the bar and join us as we move Forever Forward.');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'Administrator', 'admin@mail.com', 'Password@123', 'user-profile-min.png', '7777775500', 'Morocco', 'Front-End Developer', ' Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical ');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int NOT NULL,
  `bundle_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `flag` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(6, 'Sandbox', 'no', 'category_icon.png'),
(7, 'Shooter', 'yes', 'category_icon.png'),
(8, 'Role-Playing Games', 'yes', 'category_icon.png'),
(9, 'sports', 'no', 'category_icon.png'),
(10, 'Action-Adventure', 'no', 'category_icon.png'),
(11, 'Social Simulation', 'no', 'category_icon.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'ecomstore@mail.com', 'Contact  To Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int NOT NULL,
  `product_id` int NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int NOT NULL,
  `coupon_used` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(5, 8, 'Sale', '10', 'CASTRO', 2, 1),
(6, 14, 'Sale', '65', 'CODEASTRO', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int NOT NULL,
  `full_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `full_name`, `username`, `customer_email`, `customer_pass`, `customer_contact`, `customer_address`) VALUES
(7, 'mister toad', 'mistertoad', 'toad@myemail.com', 'UTSA2022se!', '210210210', 'toad ave'),
(8, 'betty boop', 'bettyboop', 'betty@email.com', 'Password@123', '1121121122', '112 Betty Dr');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `due_amount` int NOT NULL,
  `invoice_no` int NOT NULL,
  `qty` int NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_status`) VALUES
(17, 2, 100, 1715523401, 2, 'Large', 'pending'),
(23, 3, 20, 1762810884, 1, 'Medium', 'Complete'),
(24, 4, 100, 1972602052, 1, 'Large', 'Complete'),
(25, 4, 90, 2008540778, 1, 'Medium', 'pending'),
(27, 5, 120, 2138906686, 1, 'Small', 'Complete'),
(28, 5, 180, 361540113, 2, 'Medium', 'Complete'),
(29, 3, 100, 858195683, 1, 'Large', 'Complete'),
(31, 6, 245, 901707655, 1, 'Medium', 'Complete'),
(32, 6, 75, 2125554712, 1, 'Large', 'pending'),
(33, 7, 50, 159258825, 2, '', 'pending'),
(34, 7, 35, 159258825, 1, '', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(9, 'Nintendo Switch', 'yes', 'switch_icon.png'),
(10, 'PS4', 'yes', 'ps4_icon.png'),
(11, 'PC', '', 'pc_icon.png'),
(12, 'XBOX One', 'yes', 'xbox_logo.png'),
(13, 'XBOX Series X', 'yes', 'xbox_logo.png'),
(14, 'PS5', 'yes', 'ps4_icon.png');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int NOT NULL,
  `invoice_no` int NOT NULL,
  `amount` int NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int NOT NULL,
  `code` int NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(2, 1607603019, 447, 'UBL/Omni', 5678, 33, '11/1/2016'),
(3, 314788500, 345, 'UBL/Omni', 443, 865, '11/1/2016'),
(4, 6906, 400, 'Western Union', 101025780, 696950, 'January 1'),
(5, 10023, 20, 'Bank Code', 1000010101, 6969, '09/14/2021'),
(6, 69088, 100, 'Bank Code', 1010101022, 88669, '09/14/2021'),
(7, 1835758347, 480, 'Western Union', 1785002101, 66990, '09-04-2021'),
(8, 1835758347, 480, 'Bank Code', 1012125550, 66500, '09-14-2021'),
(9, 1144520, 480, 'Bank Code', 1025000020, 66990, '09-14-2021'),
(10, 2145000000, 480, 'Bank Code', 2147483647, 66580, '09-14-2021'),
(20, 858195683, 100, 'Bank Code', 1400256000, 47850, '09-13-2021'),
(21, 2138906686, 120, 'Bank Code', 1455000020, 202020, '09-13-2021'),
(22, 2138906686, 120, 'Bank Code', 1450000020, 202020, '09-15-2021'),
(23, 361540113, 180, 'Western Union', 1470000020, 12001, '09-15-2021'),
(24, 361540113, 180, 'UBL/Omni', 1258886650, 200, '09-15-2021'),
(25, 901707655, 245, 'Western Union', 1200002588, 88850, '09-15-2021');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `invoice_no` int NOT NULL,
  `product_id` text NOT NULL,
  `qty` int NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(17, 2, 1715523401, '9', 2, 'Large', 'pending'),
(23, 3, 1762810884, '12', 1, 'Medium', 'Complete'),
(24, 4, 1972602052, '5', 1, 'Large', 'Complete'),
(25, 4, 2008540778, '13', 1, 'Medium', 'pending'),
(27, 5, 2138906686, '14', 1, 'Small', 'Complete'),
(28, 5, 361540113, '13', 2, 'Medium', 'Complete'),
(29, 3, 858195683, '5', 1, 'Large', 'Complete'),
(31, 6, 901707655, '8', 1, 'Medium', 'Complete'),
(32, 6, 2125554712, '15', 1, 'Large', 'pending'),
(33, 7, 159258825, '21', 2, '', 'pending'),
(34, 7, 159258825, '37', 1, '', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `p_cat_id` int NOT NULL,
  `cat_id` int NOT NULL,
  `manufacturer_id` int NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int NOT NULL,
  `product_psp_price` int NOT NULL,
  `product_desc` varchar(2000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_features` varchar(2000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `product_quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`, `product_quantity`) VALUES
(16, 10, 6, 9, '2022-04-05 06:13:10', 'Minecraft', 'minecraft-switch', 'minecraft_switch_1.jpeg', 'minecraft_showcase_1.jpg', 'minecraft_showcase_2.jpeg', 25, 0, '\r\nMinecraft for the Nintendo Switch! Minecraft is a game about placing blocks and going on adventures. Explore randomly generated worlds and build amazing things from the simplest of homes to the grandest of castles. Play in creative mode with unlimited resources or mine deep into the world in survival mode, crafting weapons and armor to fend off the dangerous mobs.\r\n\r\n\r\n', '<ul>\r\n<li>Minecraft is a game about placing blocks and going on adventures</li>\r\n<li>Explore randomly generated worlds and build amazing things from the simplest of homes to the grandest of castles</li>\r\n<li>Play in creative mode with unlimited resources or mine deep into the world in survival mode, crafting weapons and armor to fend off the dangerous mobs</li>\r\n<li>Play on the go in handheld or tabletop modes</li>\r\n<li>Play and share with friends on mobile, PC and console</li>\r\n<li>Discover community creations in the new in-game store</li>\r\n<li>Access new mini games and game modes through Servers</li>\r\n<li>Share the couch with four player split screen </li>\r\n</ul>\r\n\r\n', '\r\nhttps://www.youtube.com/watch?v=HqllNjR7vl8\r\n', 'game', 'NULL', 'product', 200),
(17, 10, 6, 10, '2022-04-05 23:37:07', 'Minecraft', 'minecraft-ps4', 'minecraft_ps4_01.jpeg', 'minecraft_showcase_1.jpg', 'minecraft_showcase_2.jpeg', 30, 24, '\r\n\r\n\r\nBuild! Craft! Explore! Bring your imaginations to life with Minecraft Starter Collection– PlayStation® 4. The critically acclaimed Minecraft offers bigger worlds and greater draw distance than the PS3 and PS Vita editions. Create your own world, then, build, explore and conquer. When night falls the monsters appear, so be sure to build a shelter before they arrive. Will you hide from monsters or craft tools, armor and weapons to fight back? The world is only limited by your imagination!\r\n\r\n\r\n', '\r\n\r\n<ul>\r\n<li>Use your imagination to create your ideal Minecraft world.\r\n</li>\r\n<li>Survive the night when monsters come out to play\r\n</li>\r\n<li>Play and share with friends on console, mobile and Windows 10.\r\n</li>\r\n<li>Discover community creations in the new in-game store.\r\n</li>\r\n<li>Access new mini games and game modes through Servers.\r\n</li>\r\n<li>Share the couch with four player split screen\r\n</li>\r\n</ul>\r\n\r\n', '\r\n\r\n\r\nhttps://www.youtube.com/watch?v=MknH08OJHyE\r\n\r\n\r\n\r\n\r\n', 'game', 'NULL', 'product', 300),
(18, 11, 6, 11, '2022-04-05 06:59:23', 'The Sims 4', 'sims-4-pc', 'the_sims_4_1.jpeg', 'the_sims_4_showcase_1.jpeg', 'the_sims_4_showcase_2.png', 40, 35, '\r\n\r\nUnleash your imagination and create a unique world of Sims that’s an expression of you! Explore and customize every detail from Sims to homes, and much more. Choose how Sims look, act, and dress, then decide how they’ll live out each day. Design and build incredible homes for every family, then decorate with your favorite furnishings and décor. Travel to different neighborhoods where you can meet other Sims and learn about their lives. Discover beautiful locations with distinctive environments and go on spontaneous adventures. Manage the ups and downs of Sims’ everyday lives and see what happens when you play out scenarios from your own real life! Tell your stories your way while developing relationships, pursuing careers and life aspirations, and immersing yourself in this extraordinary game, where the possibilities are endless. Play with life!\r\n\r\n\r\n', '\r\n\r\n<ul>\r\n<li>Create Unique Sims – A variety of Sims are yours to personalize, each with distinct appearances, dynamic personalities, and inspiring aspirations. Use powerful customization features to bring your imagination to life. </li>\r\n<li>Create yourself, your favorite celebrities, your fantasy, or your friends! </li>\r\n<li>Change your Sims’ clothing to reflect your mood, develop stories that deepen your world, and give their lives purpose with traits and aspirations.\r\n</li>\r\n<li>Build the Perfect Home – Effortlessly build and design ideal homes for your Sims using Build Mode. Construct the home of your – and their – dreams by planning its layout, choosing furnishings, and altering the landscape and terrain. You can even add a pool, basement, and garden, or rebuild with new ideas and designs!\r\n</li>\r\n<li>\r\nExplore Vibrant Worlds – Travel between locations, discover amazing and distinctive neighborhoods, and encounter captivating venues. Your Sims can visit new communities to expand their social circle, hang out with friends, or throw unforgettable parties.\r\n</li>\r\n<li>Play with Life – Control the rich and entertaining moments of your Sims’ lives from their relationships to their careers. Your choices shape every aspect of their lives from birth, to being a toddler, and into adulthood. Along the way, develop your Sims’ skills, pursue original hobbies, take them on adventures, start new families, and much more.\r\n</li>\r\n<li>Add New Experiences – Use the Gallery to find inspiration from a community of players just like you, where you can add content to your game or share your own creations. Download, like, and comment on your favorite Sims, homes, and fully-designed rooms. Join the community, join the fun!\r\n</li>\r\n</ul>\r\n\r\n\r\n', '\r\n\r\nhttps://www.youtube.com/watch?v=WjPPjU8OARg\r\n\r\n', 'game', 'Sale', 'product', 200),
(19, 11, 6, 10, '2022-04-05 06:09:32', 'The Sims 4', 'sims-4-ps4', 'the_sims_4_ps4_1.jpeg', 'the_sims_4_showcase_1.jpeg', 'the_sims_4_showcase_2.png', 25, 0, '\r\nUnleash your imagination and create a unique world of Sims that’s an expression of you! Explore and customize every detail from Sims to homes, and much more. Choose how Sims look, act, and dress, then decide how they’ll live out each day. Design and build incredible homes for every family, then decorate with your favorite furnishings and décor. Travel to different neighborhoods where you can meet other Sims and learn about their lives. Discover beautiful locations with distinctive environments and go on spontaneous adventures. Manage the ups and downs of Sims’ everyday lives and see what happens when you play out scenarios from your own real life! Tell your stories your way while developing relationships, pursuing careers and life aspirations, and immersing yourself in this extraordinary game, where the possibilities are endless. Play with life!\r\n\r\n', '\r\n<ul>\r\n<li>Create Unique Sims – A variety of Sims are yours to personalize, each with distinct appearances, dynamic personalities, and inspiring aspirations. Use powerful customization features to bring your imagination to life. </li>\r\n<li>Create yourself, your favorite celebrities, your fantasy, or your friends! </li>\r\n<li>Change your Sims’ clothing to reflect your mood, develop stories that deepen your world, and give their lives purpose with traits and aspirations.\r\n</li>\r\n<li>Build the Perfect Home – Effortlessly build and design ideal homes for your Sims using Build Mode. Construct the home of your – and their – dreams by planning its layout, choosing furnishings, and altering the landscape and terrain. You can even add a pool, basement, and garden, or rebuild with new ideas and designs!\r\n</li>\r\n<li>\r\nExplore Vibrant Worlds – Travel between locations, discover amazing and distinctive neighborhoods, and encounter captivating venues. Your Sims can visit new communities to expand their social circle, hang out with friends, or throw unforgettable parties.\r\n</li>\r\n<li>Play with Life – Control the rich and entertaining moments of your Sims’ lives from their relationships to their careers. Your choices shape every aspect of their lives from birth, to being a toddler, and into adulthood. Along the way, develop your Sims’ skills, pursue original hobbies, take them on adventures, start new families, and much more.\r\n</li>\r\n<li>Add New Experiences – Use the Gallery to find inspiration from a community of players just like you, where you can add content to your game or share your own creations. Download, like, and comment on your favorite Sims, homes, and fully-designed rooms. Join the community, join the fun!\r\n</li>\r\n</ul>\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'game', 'NULL', 'product', 100),
(20, 12, 6, 10, '2022-04-05 06:25:28', 'Grand Theft Auto V', 'gta-ps4', 'gta_image_1.jpeg', 'gta_showcase_1.jpeg', 'gta_showcase_2.jpeg', 25, 0, 'Welcome to Los Santos where self-help gurus, starlets, and fading celebrities, once the envy of the Western world, are now struggling to stay afloat. In Grand Theft Auto V, you follow the epic storylines of A young street hustler, a retired bank robber and a terrifying psychopath. The trio must pull off a series of dangerous heists to survive in a ruthless city in which they can trust nobody, least of all each other.\r\nWith Grand Theft Auto Online, the dynamic and ever-evolving GTA universe allows you to play online with up to 30 players. Rise through the ranks to become a CEO of a criminal empire by trading contraband or form a motorcycle club and rule the streets. Pull off complex co-operative heists or enter radical, adrenaline-fueled stunt races. Or create your own content to play and share with the Grand Theft Auto community.\r\n', '<ul>\r\n<li>Grand Theft Auto Online - Discover an ever-evolving world of choices and ways to play as you climb the criminal ranks of Los Santos and Blaine County in the ultimate shared Online experience.</li>\r\n<li>Grand Theft Auto V - When a young street hustler, a retired bank robber and a terrifying psychopath land themselves in trouble, they must pull off a series of dangerous heists to survive in a city in which they can trust nobody, least of all each other.</li>\r\n<li>Launch Your Criminal Empire - Launch business ventures from your Maze Bank West Executive Office, research powerful weapons technology from your underground Gunrunning Bunker and use your Counterfeit Cash Factory to start a lucrative counterfeiting operation.</li>\r\n<li>A Fleet Of Powerful Vehicles - Tear through the streets with a range of 10 high performance vehicles including a Supercar, Motorcycles, the weaponized Dune FAV, a Helicopter, a Rally Car and more. You’ll also get properties including a 10-car garage to store your growing fleet.</li>\r\n<li>Weapons, Clothing & Tattoos - You’ll also get access to the Compact Grenade Launcher, Marksman Rifle and Compact Rifle along with Stunt Racing Outfits, Biker Tattoos and more.</li>\r\n</ul>\r\n\r\n', '\r\n\r\n', 'game', 'NULL', 'product', 150),
(21, 12, 6, 12, '2022-04-05 23:37:22', 'Grand Theft Auto V', 'gta-xbox1', 'gta_xbox_image_1.jpeg', 'gta_showcase_1.jpeg', 'gta_showcase_2.jpeg', 25, 15, '\r\n\r\nWelcome to Los Santos where self-help gurus, starlets, and fading celebrities, once the envy of the Western world, are now struggling to stay afloat. In Grand Theft Auto V, you follow the epic storylines of A young street hustler, a retired bank robber and a terrifying psychopath. The trio must pull off a series of dangerous heists to survive in a ruthless city in which they can trust nobody, least of all each other.\r\nWith Grand Theft Auto Online, the dynamic and ever-evolving GTA universe allows you to play online with up to 30 players. Rise through the ranks to become a CEO of a criminal empire by trading contraband or form a motorcycle club and rule the streets. Pull off complex co-operative heists or enter radical, adrenaline-fueled stunt races. Or create your own content to play and share with the Grand Theft Auto community.\r\n\r\n\r\n\r\n', '\r\n\r\n<ul>\r\n<li>Grand Theft Auto Online - Discover an ever-evolving world of choices and ways to play as you climb the criminal ranks of Los Santos and Blaine County in the ultimate shared Online experience.</li>\r\n<li>Grand Theft Auto V - When a young street hustler, a retired bank robber and a terrifying psychopath land themselves in trouble, they must pull off a series of dangerous heists to survive in a city in which they can trust nobody, least of all each other.</li>\r\n<li>Launch Your Criminal Empire - Launch business ventures from your Maze Bank West Executive Office, research powerful weapons technology from your underground Gunrunning Bunker and use your Counterfeit Cash Factory to start a lucrative counterfeiting operation.</li>\r\n<li>A Fleet Of Powerful Vehicles - Tear through the streets with a range of 10 high performance vehicles including a Supercar, Motorcycles, the weaponized Dune FAV, a Helicopter, a Rally Car and more. You’ll also get properties including a 10-car garage to store your growing fleet.</li>\r\n<li>Weapons, Clothing & Tattoos - You’ll also get access to the Compact Grenade Launcher, Marksman Rifle and Compact Rifle along with Stunt Racing Outfits, Biker Tattoos and more.</li>\r\n</ul>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'game', 'NULL', 'product', 150),
(23, 13, 7, 10, '2022-04-05 06:55:43', 'Call of Duty: Black Ops Cold War', 'cod-bops-war', 'cod_bop_ps4.jpeg', 'cod_showcase_1.jpeg', 'cod_showcase_2.jpeg', 50, 0, '\r\n\r\n\r\n\r\nThe iconic Black Ops series is back with Call of Duty®: Black Ops Cold War on PS4 - the direct sequel to the original and fan-favorite Call of Duty®: Black Ops. CoD Black Ops Cold War will drop fans into the depths of the Cold War’s volatile geopolitical battle of the early 1980s. Nothing is ever as it seems in a gripping single-player Campaign, where players will come face-to-face with historical figures and hard truths, as they battle around the globe through iconic locales like East Berlin, Vietnam, Turkey, Soviet KGB headquarters and more.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n<ul>\r\n<li>Single-player Campaign where players will come face-to-face with historical figures and battle around the globe through iconic locales like East Berlin, Vietnam, Turkey, Soviet KGB headquarters and more</li>\r\n\r\n<li>Play alongside iconic characters Woods, Mason and Hudson and a new cast of Operatives attempting to stop a plot decades in the making.</li>\r\n<li>Follow the trail of Perseus who is on a mission to destabilize the global balance of power and change the course of history</li>\r\n<li>Experience Multiplayer and Zombies with a wholenew arsenal of weapons and equipment</li>\r\n</ul>\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'game', 'NULL', 'product', 200),
(24, 13, 7, 12, '2022-04-05 06:58:33', 'Call of Duty: Black Ops Cold War', 'cod-bops-war-xbox', 'cod_xbox_1.jpeg', 'cod_showcase_1.jpeg', 'cod_showcase_2.jpeg', 50, 0, '\r\nThe iconic Black Ops series is back with Call of Duty®: Black Ops Cold War on PS4 - the direct sequel to the original and fan-favorite Call of Duty®: Black Ops. CoD Black Ops Cold War will drop fans into the depths of the Cold War’s volatile geopolitical battle of the early 1980s. Nothing is ever as it seems in a gripping single-player Campaign, where players will come face-to-face with historical figures and hard truths, as they battle around the globe through iconic locales like East Berlin, Vietnam, Turkey, Soviet KGB headquarters and more.\r\n\r\n\r\n', '\r\n<ul>\r\n<li>Single-player Campaign where players will come face-to-face with historical figures and battle around the globe through iconic locales like East Berlin, Vietnam, Turkey, Soviet KGB headquarters and more</li>\r\n\r\n<li>Play alongside iconic characters Woods, Mason and Hudson and a new cast of Operatives attempting to stop a plot decades in the making.</li>\r\n<li>Follow the trail of Perseus who is on a mission to destabilize the global balance of power and change the course of history</li>\r\n<li>Experience Multiplayer and Zombies with a wholenew arsenal of weapons and equipment</li>\r\n</ul>\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'game', 'NULL', 'product', 300),
(25, 14, 7, 9, '2022-04-05 07:13:13', 'DOOM', 'doom-switch', 'doom_switch.jpeg', 'doom_showcase_1.jpeg', 'doom_showcase_2.jpeg', 45, 0, 'id software brings back DOOM on Nintendo Switch. \r\n DOOM returns as a brutally fun and challenging modern-day shooter experience. Relentless demons, impossibly destructive guns, and fast, fluid movement provide the foundation for intense, first-person combat.', '<ul><li>A Relentless Campaign - There is no taking cover or stopping to regenerate health as you beat back Hell\'s raging demon hordes. Combine your arsenal of futuristic and iconic guns, upgrades, movement and an advanced melee system to knock-down, slash, stomp, crush, and blow apart demons in creative and violent ways.</li>\r\n<li>Return of id Multiplayer - Dominate your opponents in DOOM\'s signature, fast-paced arena-style combat. In both classic and all-new game modes, annihilate your enemies utilizing your personal blend of skill, powerful weapons, vertical movement, and unique power-ups that allow you to play as a demon.</li></ul>', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'game', 'NULL', 'product', 500),
(26, 11, 8, 11, '2022-04-05 07:22:34', 'Anthem', 'anthem-pc', 'anthem_pc.jpeg', 'anthem_showcase_1.jpeg', 'anthem_showcase_2.jpeg', 50, 0, 'On a world left unfinished by the gods, a shadowy faction threatens all of humankind. The only thing that stands between these villains and the ancient technology they covet are the Freelancers.\r\nADVENTURE TOGETHER - TRIUMPH AS ONE with Anthem on PC!\r\n', '<ul>\r\n<li>Choose from an arsenal of customizable exosuits: Every time you enter the world as a Freelancer, you will access your collection and select a powerful Javelin exosuit – armor designed to provide its pilot with incredible offensive and defensive capabilities. </li>\r\n<li>Personalize your Javelins to showcase your accomplishments: The Javelin exosuits – and accompanying gear, weapons, and equipment – can be heavily customized and personalized. </li>\r\n<li>Explore an ever-changing world of danger and mystery: Powered by EA\'s Frostbite game engine, Anthem\'s visually spectacular, evolving, and open world features unpredictable conditions, hazards, and enemies. </li>\r\n</ul>\r\n', '\r\n\r\n', 'game', 'NULL', 'product', 400),
(27, 11, 8, 10, '2022-04-05 07:26:21', 'Anthem', 'anthem-ps4', 'anthem_ps4.jpeg', 'anthem_showcase_1.jpeg', 'anthem_showcase_2.jpeg', 15, 0, 'On a world left unfinished by the gods, a shadowy faction threatens all of humankind. The only thing that stands between these villains and the ancient technology they covet are the Freelancers.\r\nADVENTURE TOGETHER - TRIUMPH AS ONE with Anthem on PS4!\r\n', '<ul>\r\n<li>Choose from an arsenal of customizable exosuits: Every time you enter the world as a Freelancer, you will access your collection and select a powerful Javelin exosuit – armor designed to provide its pilot with incredible offensive and defensive capabilities. </li>\r\n<li>Personalize your Javelins to showcase your accomplishments: The Javelin exosuits – and accompanying gear, weapons, and equipment – can be heavily customized and personalized. </li>\r\n<li>Explore an ever-changing world of danger and mystery: Powered by EA\'s Frostbite game engine, Anthem\'s visually spectacular, evolving, and open world features unpredictable conditions, hazards, and enemies. </li>\r\n</ul>\r\n\r\n', '\r\n\r\n', 'game', 'NULL', 'product', 200),
(28, 11, 8, 12, '2022-04-05 07:29:39', 'Anthem Legion of Dawn Edition', 'anthem-xbox1', 'Anthem-Legion-of-Dawn-Edition.jpeg', 'anthem_showcase_1.jpeg', 'anthem_showcase_2.jpeg', 50, 0, 'On a world left unfinished by the gods, a shadowy faction threatens all of humankind. The only thing that stands between these villains and the ancient technology they covet are the Freelancers.\r\nADVENTURE TOGETHER - TRIUMPH AS ONE\r\nTeam with up to three other players in cooperative adventures that reward both combined effort and individual skill. Each player\'s choice of javelin exosuit will shape their contribution and strategic role. As you explore, you will discover a gripping story filled with unique and memorable characters. Seamless and intelligent matchmaking will ensure you can quickly and easily find other players to adventure alongside.\r\n\r\n', '\r\n<ul>\r\n<li>Choose from an arsenal of customizable exosuits: Every time you enter the world as a Freelancer, you will access your collection and select a powerful Javelin exosuit – armor designed to provide its pilot with incredible offensive and defensive capabilities. </li>\r\n<li>Personalize your Javelins to showcase your accomplishments: The Javelin exosuits – and accompanying gear, weapons, and equipment – can be heavily customized and personalized. </li>\r\n<li>Explore an ever-changing world of danger and mystery: Powered by EA\'s Frostbite game engine, Anthem\'s visually spectacular, evolving, and open world features unpredictable conditions, hazards, and enemies. </li>\r\n</ul>\r\n\r\n', '\r\n\r\n', 'game', 'NULL', 'product', NULL),
(29, 11, 9, 9, '2022-04-05 07:36:44', 'FIFA 22', 'fifa-22-switch', 'fifa22.jpeg', 'fifa22_showcase.jpeg', 'fifa22_showcase_2.jpeg', 20, 0, '\r\nPowered by Football™, EA SPORTS™ FIFA 22 brings the game even closer to the real thing with fundamental gameplay advances and a new season of innovation across every mode.\r\n', '<ul><li>Enjoy an overhauled Player Career experience with Career Mode, which lets you create a club and lead them from relegation candidates to global giants</li>\r\n<li>Express your style and connect with your squad in street football playgrounds all over the world with VOLTA FOOTBALL</li>\r\n<li>Build your dream squad and compete in the most popular mode in FIFA with FIFA Ultimate Team</li></ul>\r\n\r\n', '\r\n\r\n', 'game', 'NULL', 'product', NULL),
(30, 11, 9, 10, '2022-04-05 07:39:06', 'FIFA 22', 'fifa-22-ps4', 'FIFA-22----PlayStation-4.jpeg', 'fifa22_showcase.jpeg', 'fifa22_showcase_2.jpeg', 25, 0, '\r\n\r\nPowered by Football™, EA SPORTS™ FIFA 22 brings the game even closer to the real thing with fundamental gameplay advances and a new season of innovation across every mode.\r\n\r\n\r\n\r\n', '\r\n<ul><li>Enjoy an overhauled Player Career experience with Career Mode, which lets you create a club and lead them from relegation candidates to global giants</li>\r\n<li>Express your style and connect with your squad in street football playgrounds all over the world with VOLTA FOOTBALL</li>\r\n<li>Build your dream squad and compete in the most popular mode in FIFA with FIFA Ultimate Team</li></ul>\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n', 'game', 'NULL', 'product', NULL),
(32, 13, 7, 9, '2022-04-05 18:15:54', 'Overwatch', 'ow-switch', 'overwatch_switch.jpeg', 'overwatch_showcase_1.jpeg', 'overwatch_showcase_2.jpeg', 25, 0, 'Come together in Overwatch Origins Edition on Nintendo Switch. Soldiers. Scientists. Adventurers. Oddities.In a time of global crisis, an international task force of heroes banded together to restore peace to a war-torn world.\r\n', '\r\n<ul><li>Overwatch - Hero Skins - Pay homage to the original Overwatch strike force by wearing the vintage skins Blackwatch Reyes or Strike-Commander Morrison. Explore other heroes\' origins with Overgrown Bastion, Security Chief Pharah, and even Slipstream Tracer!</li> <li>Diablo III - Mercy\'s Wings - Slay demonic forces throughout the High Heavens and Burning Hells as you don Mercy\'s wings. All of Sanctuary will know of your allegiance to Overwatch!</li> <li>World of Warcraft - Baby Winston Pet - Adorably cuddly and highly intellectual, the Baby Winston pet will be at your side as you fight your way through Azeroth.</li></ul>\r\n', '\r\nhttps://www.youtube.com/watch?v=dushZybUYnM\r\n', 'game', 'NULL', 'product', NULL),
(33, 13, 7, 10, '2022-04-05 18:18:23', 'Overwatch', 'ow-ps4', 'overwatch_ps4.jpeg', 'overwatch_showcase_1.jpeg', 'overwatch_showcase_2.jpeg', 25, 0, '\r\nCome together in Overwatch Origins Edition on Nintendo Switch. Soldiers. Scientists. Adventurers. Oddities.In a time of global crisis, an international task force of heroes banded together to restore peace to a war-torn world.\r\n\r\n\r\n\r\n', '\r\n<ul><li>Overwatch - Hero Skins - Pay homage to the original Overwatch strike force by wearing the vintage skins Blackwatch Reyes or Strike-Commander Morrison. Explore other heroes\' origins with Overgrown Bastion, Security Chief Pharah, and even Slipstream Tracer!</li> <li>Diablo III - Mercy\'s Wings - Slay demonic forces throughout the High Heavens and Burning Hells as you don Mercy\'s wings. All of Sanctuary will know of your allegiance to Overwatch!</li> <li>World of Warcraft - Baby Winston Pet - Adorably cuddly and highly intellectual, the Baby Winston pet will be at your side as you fight your way through Azeroth.</li></ul>\r\n', '\r\nhttps://www.youtube.com/watch?v=dushZybUYnM\r\n', 'game', 'NULL', 'product', NULL),
(34, 13, 7, 12, '2022-04-05 18:19:46', 'Overwatch', 'ow-xbox1', 'overwatch_xbox1.jpeg', 'overwatch_showcase_1.jpeg', 'overwatch_showcase_2.jpeg', 25, 0, '\r\nCome together in Overwatch Origins Edition on Nintendo Switch. Soldiers. Scientists. Adventurers. Oddities.In a time of global crisis, an international task force of heroes banded together to restore peace to a war-torn world.\r\n\r\n\r\n\r\n', '<ul><li>Overwatch - Hero Skins - Pay homage to the original Overwatch strike force by wearing the vintage skins Blackwatch Reyes or Strike-Commander Morrison. Explore other heroes\' origins with Overgrown Bastion, Security Chief Pharah, and even Slipstream Tracer!</li> <li>Diablo III - Mercy\'s Wings - Slay demonic forces throughout the High Heavens and Burning Hells as you don Mercy\'s wings. All of Sanctuary will know of your allegiance to Overwatch!</li> <li>World of Warcraft - Baby Winston Pet - Adorably cuddly and highly intellectual, the Baby Winston pet will be at your side as you fight your way through Azeroth.</li></ul>\r\n\r\n', 'https://www.youtube.com/watch?v=dushZybUYnM\r\n\r\n', 'game', 'NULL', 'product', NULL),
(35, 10, 6, 9, '2022-04-05 18:32:33', 'Minecraft Dungeons Ultimate Edition', 'mc-dungeons-switch', 'mc_dungeon_switch.jpeg', 'mc_showcase_1.jpeg', 'mc_showcase_2.jpeg', 40, 0, '\r\n\r\nExperience the complete story of Minecraft Dungeons from the beginning to the End! Grab the Ultimate Edition which includes the base game and all six DLCs: Jungle Awakens, Creeping Winter, Howling Peaks, Flames of the Nether, Hidden Depths, and Echoing Void—all included in-disc and at a lower price than purchasing the game and each DLC separately. Fight scores of mobs, explore dimension-hopping levels, and discover untold treasures as you follow the story of the Arch-Illager and the Orb of Dominance\r\n\r\n\r\n\r\n', '\r\n\r\n<ul><li>Includes the full game and all six DLCs in-disc\r\n4K Ultra HD, Offline and Online Single Player, Offline and Online Co-op 2-4 Players, and Cross-Platform Play!</li>\r\n<li>Epicness! Explore treasure-stuffed levels in a quest to take down the evil Arch-Illager!</li></ul>\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'game', 'NULL', 'product', NULL),
(36, 10, 6, 10, '2022-04-05 18:32:43', 'Minecraft Dungeons Ultimate Edition', 'mc-dungeons-ps4', 'mc_dungeons_ps4.jpeg', 'mc_showcase_1.jpeg', 'mc_showcase_2.jpeg', 25, 0, '\r\nExperience the complete story of Minecraft Dungeons from the beginning to the End! Grab the Ultimate Edition which includes the base game and all six DLCs: Jungle Awakens, Creeping Winter, Howling Peaks, Flames of the Nether, Hidden Depths, and Echoing Void—all included in-disc and at a lower price than purchasing the game and each DLC separately. Fight scores of mobs, explore dimension-hopping levels, and discover untold treasures as you follow the story of the Arch-Illager and the Orb of Dominance\r\n\r\n\r\n', '\r\n\r\n<ul><li>Includes the full game and all six DLCs in-disc\r\n4K Ultra HD, Offline and Online Single Player, Offline and Online Co-op 2-4 Players, and Cross-Platform Play!</li>\r\n<li>Epicness! Explore treasure-stuffed levels in a quest to take down the evil Arch-Illager!</li></ul>\r\n\r\n', '\r\n\r\n\r\n\r\n', 'game', 'NULL', 'product', NULL),
(37, 12, 10, 10, '2022-04-05 18:39:27', 'Red Dead Redemption 2 ', 'rdr2-ps4', 'rdr_ps4.jpeg', 'rdr_showcase_1.jpeg', 'rdr_showcase_3.jpeg', 35, 0, 'The end of the Wild West era has begun. After a robbery gone wrong in the western town of Blackwater, Arthur Morgan and the Van der Linde gang are forced to flee. With federal agents and the best bounty hunters in the nation massing on their heels, the gang must rob, steal and fight their way across the rugged heartland of America in order to survive. As deepening internal divisions threaten to tear the gang apart, Arthur must make a choice between his own ideals and loyalty to the gang who raised him.\r\n\r\n', '<ul><li>Explore The Rugged Heartland Of America - Discover some of the towns dotted across the vast and varied landscape of Red Dead Redemption 2; from the forests of West Elizabeth to the mountains of Ambarino to the plains of New Hanover to the swamps of Lemoyne.</li>\r\n<li>Wildlife - The diverse habitats and climates of Red Dead Redemption 2 are home to around 200 species of animals, birds and fish, all of which behave and respond to their environment in a unique way.</li>\r\n<li>Weaponry - Detail, depth and choice define every aspect of Red Dead Redemption 2, and weapons are no exception.</li>\r\n</ul>\r\n\r\n', '\r\n\r\n', 'game', 'NULL', 'product', NULL),
(38, 12, 10, 12, '2022-04-05 18:41:09', 'Red Dead Redemption 2 ', 'rdr2-xbox1', 'rdr_xbox1.jpeg', 'rdr_showcase_1.jpeg', 'rdr_showcase_3.jpeg', 30, 0, '\r\nThe end of the Wild West era has begun. After a robbery gone wrong in the western town of Blackwater, Arthur Morgan and the Van der Linde gang are forced to flee. With federal agents and the best bounty hunters in the nation massing on their heels, the gang must rob, steal and fight their way across the rugged heartland of America in order to survive. As deepening internal divisions threaten to tear the gang apart, Arthur must make a choice between his own ideals and loyalty to the gang who raised him.\r\n', '<ul><li>Explore The Rugged Heartland Of America - Discover some of the towns dotted across the vast and varied landscape of Red Dead Redemption 2; from the forests of West Elizabeth to the mountains of Ambarino to the plains of New Hanover to the swamps of Lemoyne.</li>\r\n<li>Wildlife - The diverse habitats and climates of Red Dead Redemption 2 are home to around 200 species of animals, birds and fish, all of which behave and respond to their environment in a unique way.</li>\r\n<li>Weaponry - Detail, depth and choice define every aspect of Red Dead Redemption 2, and weapons are no exception.</li>\r\n</ul>\r\n\r\n', '\r\n\r\n', 'game', 'NULL', 'product', NULL),
(39, 12, 10, 11, '2022-04-05 18:42:41', 'Red Dead Redemption 2 ', 'rdr2-pc', 'rdr_pc.jpeg', 'rdr_showcase_1.jpeg', 'rdr_showcase_3.jpeg', 40, 0, '\r\n\r\nThe end of the Wild West era has begun. After a robbery gone wrong in the western town of Blackwater, Arthur Morgan and the Van der Linde gang are forced to flee. With federal agents and the best bounty hunters in the nation massing on their heels, the gang must rob, steal and fight their way across the rugged heartland of America in order to survive. As deepening internal divisions threaten to tear the gang apart, Arthur must make a choice between his own ideals and loyalty to the gang who raised him.', '\r\n<ul><li>Explore The Rugged Heartland Of America - Discover some of the towns dotted across the vast and varied landscape of Red Dead Redemption 2; from the forests of West Elizabeth to the mountains of Ambarino to the plains of New Hanover to the swamps of Lemoyne.</li>\r\n<li>Wildlife - The diverse habitats and climates of Red Dead Redemption 2 are home to around 200 species of animals, birds and fish, all of which behave and respond to their environment in a unique way.</li>\r\n<li>Weaponry - Detail, depth and choice define every aspect of Red Dead Redemption 2, and weapons are no exception.</li>\r\n</ul>\r\n', '\r\n\r\n', 'game', 'NULL', 'product', NULL),
(40, 15, 11, 9, '2022-04-05 19:00:00', 'Animal Crossing New Horizons', 'ac-nh', 'ac_switch.jpeg', 'ac_showcase_1.jpeg', 'ac_showcase_2.jpeg', 50, 0, 'Escape to a deserted island and create your own paradise as you explore, create, and customize in the Animal Crossing: New Horizons game. Your island getaway has a wealth of natural resources that can be used to craft everything from tools to creature comforts. You can hunt down insects at the crack of dawn, decorate your paradise throughout the day, or enjoy sunset on the beach while fishing in the ocean. The time of day and season match real life, so each day on your island is a chance to check in and find new surprises all year round.\r\n\r\n', '\r\n<ul>\r\n<li>Customize your character and home, and decorate the landscape (with furniture, if you like!), as you create your very own island paradise.</li>\r\n<li>Experience a robust new crafting system—collect materials to construct everything from furniture to tools!</li>\r\n<li>Enjoy a variety of relaxing activities like gardening, fishing, decorating, interacting with charming NPCs, and more, as classic Animal Crossing experiences come to life in fun new ways within the deserted-island setting.</li>\r\n<li>Up to eight players can reside on an island; four residents of the same island can play together simultaneously on a single system.</li>\r\n</ul>\r\n', '\r\n\r\nhttps://www.youtube.com/watch?v=EScckZ95_uc', 'game', 'NULL', 'product', NULL),
(41, 15, 8, 9, '2022-04-05 19:07:21', 'Pokemon Brilliant Diamond', 'poke-diamond', 'poke-diamond.jpeg', 'poke-pearl-showcase1.jpeg', 'poke-pearl-showcase-2.jpeg', 60, 0, '\r\nRevisit the Sinnoh region and the story of the Pokémon Diamond Version game Experience the nostalgic story from the Pokémon Diamond Version game in a reimagined adventure, Pokémon™ Brilliant Diamond, now on the Nintendo Switch™ system! Adventures in the Pokémon Brilliant Diamond game will take place in the familiar Sinnoh region. Rich in nature and with mighty Mount Coronet at its heart, Sinnoh is a land of many myths passed down through the ages. You’ll choose either Turtwig, Chimchar, or Piplup to be your first partner Pokémon and then set off on your journey to become the Champion of the Pokémon League. Along the way, you’ll be able to encounter the Legendary Pokémon Dialga.\r\n', '<ul>\r\n<li>Revisit the Sinnoh region from the original Pokémon Diamond Version game and set off to try and become the Champion of the Pokémon League</li>\r\n<li>The Pokémon Brilliant Diamond game brings new life to this remade classic with added features</li>\r\n<li>Explore the Grand Underground to dig up items and Pokémon Fossils, build a Secret Base, and more!</li>\r\n<li>Test your style and rhythm in a Super Contest Show</li>\r\n<li>A reimagined adventure, now for the Nintendo Switch system</li>\r\n</ul>\r\n\r\n', '\r\n\r\n', 'game', 'NULL', 'product', NULL),
(42, 15, 8, 9, '2022-04-05 19:08:54', 'Pokemon Shining Pearl', 'poke-pearl', 'poke-pearl.jpeg', 'poke-pearl-showcase1.jpeg', 'poke-pearl-showcase-2.jpeg', 60, 0, '\r\n\r\n\r\n\r\nRevisit the Sinnoh region and the story of the Pokémon Diamond Version game Experience the nostalgic story from the Pokémon Diamond Version game in a reimagined adventure, Pokémon™ Brilliant Diamond, now on the Nintendo Switch™ system! Adventures in the Pokémon Brilliant Diamond game will take place in the familiar Sinnoh region. Rich in nature and with mighty Mount Coronet at its heart, Sinnoh is a land of many myths passed down through the ages. You’ll choose either Turtwig, Chimchar, or Piplup to be your first partner Pokémon and then set off on your journey to become the Champion of the Pokémon League. Along the way, you’ll be able to encounter the Legendary Pokémon Dialga.\r\n\r\n', '\r\n\r\n<ul>\r\n<li>Revisit the Sinnoh region from the original Pokémon Diamond Version game and set off to try and become the Champion of the Pokémon League</li>\r\n<li>The Pokémon Brilliant Diamond game brings new life to this remade classic with added features</li>\r\n<li>Explore the Grand Underground to dig up items and Pokémon Fossils, build a Secret Base, and more!</li>\r\n<li>Test your style and rhythm in a Super Contest Show</li>\r\n<li>A reimagined adventure, now for the Nintendo Switch system</li>\r\n</ul>\r\n', '\r\n\r\n', 'game', 'NULL', 'product', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(10, 'MOJANG', 'yes', 'mojang_logo.png'),
(11, 'EA Games', 'yes', 'ea_logo.png'),
(12, 'Rockstar Games', 'no', 'rockstar_logo.png'),
(13, 'Activision', 'yes', 'activision_logo.png'),
(14, 'id Software', 'no', 'id_logo-removebg-preview.png'),
(15, 'Nintendo', 'yes', 'nintendo_logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int NOT NULL,
  `store_title` varchar(255) NOT NULL,
  `store_image` varchar(255) NOT NULL,
  `store_desc` text NOT NULL,
  `store_button` varchar(255) NOT NULL,
  `store_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `store_title`, `store_image`, `store_desc`, `store_button`, `store_url`) VALUES
(4, 'London Store', 'store (3).jpg', '<p style=\"text-align: center;\"><strong>180-182 RECENTS STREET, LONDON, W1B 5BT</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
(5, 'New York Store', 'store (1).png', '<p style=\"text-align: center;\"><strong>109 COLUMBUS CIRCLE, NEW YORK, NY10023</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
(6, 'Paris Store', 'store (2).jpg', '<p style=\"text-align: center;\"><strong>2133 RUE SAINT-HONORE, 75001 PARIS&nbsp;</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules And Regulations', 'rules', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.&nbsp;</p>'),
(2, 'Refund Policy', 'link2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on'),
(3, 'Pricing and Promotions Policy', 'link3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(2, 2, 8),
(3, 5, 13),
(4, 3, 13),
(5, 6, 15),
(7, 8, 34);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

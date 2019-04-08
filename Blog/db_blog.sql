-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2017 at 01:24 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(5, 'Sports'),
(7, 'HealthCare'),
(8, 'Foods'),
(9, 'Cars');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(1, 'Mehedi', 'Hasan', 'mehedihasancste@gmail.com', 'Welcome to Javaâ€”the worldâ€™s most widely used computer programming .\r\nWelcome to Javaâ€”the worldâ€™s most widely used computer programming', 0, '2017-06-10 23:11:16'),
(3, 'Robiul', 'Islam', 'robiul@gmail.com', 'Welcome to Javaâ€”the worldâ€™s most widely used computer programming language. Youâ€™re\r\nalready......', 0, '2017-06-11 21:13:51'),
(4, 'Shoag', 'roy', 'roy@gmail.com', 'Welcome to Javaâ€”the worldâ€™s most widely used computer programming language. Youâ€™re\r\nalready......', 1, '2017-06-11 21:14:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Training with live project.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About Us', '<p>In the design of electronic circuitry, it is often necessary to make the pins of several<br />components electrically equivalent by wiring them together. To interconnect a set<br />of n pins, we can use an arrangement of n - 1 wires, each connecting two pins.<br />Of all such arrangements, the one that uses the least amount of wire is usually the<br />most desirable.<br />We can model this wiring problem with a connected, undirected graph G =<br />(V, E), where V is the set of pins, E is the set of possible interconnections between<br />pairs of pins, and for each edge (u, v) E E, we have a weight w(u, u) specifying<br />the cost (amount of wire needed) to connect u and u. We then wish to find an<br />acyclic subset T 5 E that connects all of the vertices and whose total weight<br />is minimized. Since T is acyclic and connects all of the vertices, it must form a tree,<br />which we call a spanning tree since it &ldquo;spans&rdquo; the graph G. We call the problem of<br />determining the tree T the minimum-spanning-tree problem.&rsquo; Figure 23.1 shows<br />an example of a connected graph and its minimum spanning tree.<br />In this chapter, we shall examine two algorithms for solving the minimumspanning-<br />tree problem: Kruskal&rsquo;s algorithm and Prim&rsquo;s algorithm. Each can easily<br />be made to run in time O (E lg V) using ordinary binary heaps. By using Fibonacci<br />heaps, Prim&rsquo;s algorithm can be sped up to run in time O(E + V lg V), which is an<br />improvement if I V I is much smaller than I E I.<br />The two algorithms are greedy algorithms, as described in Chapter 16. At each<br />step of an algorithm, one of several possible choices must be made. The greedy<br />strategy advocates making the choice that is the best at the moment. Such a strategy<br />is not generally guaranteed to find globally optimal solutions to problems.</p>'),
(2, 'NSC', '<p>à¦•à¦¿ô€‘à¦‰à¦Ÿà¦¾à¦° à¦¬à¦¾ à¦‡ô€€¼à¦¾à¦°à§‡à¦¨à¦Ÿ à¦¹à§‡ô€’ à¦à§ à¦Ÿà¦¾ à¦ªà¦¿à¦°à§‡à¦¬à¦¶ (à¦à¦‡à¦¬à¦¾à¦° ô€€Žà¦²à¦–à¦•à§‡à¦• à¦¬à¦•à¦¾ à¦¿à¦¦à§‡à¦¬à¦¨ à¦¨à¦¾, à¦¿ô€€à¦œ), à¦¸à¦¾à¦°à¦¾à¦¿à¦¦à¦¨ à¦¤à¦¾à§‡à¦¤ à¦®à§‡à¦œ à¦¥à¦¾à¦•à§‡à¦² à¦†à¦ªà¦¿à¦¨ à¦¿à¦¨à§‡à¦œà¦“ ô€€Žà¦¸à¦‡ à¦ªà¦¿à¦°à§‡à¦¬à§‡à¦¶à¦°<br />à¦‰à¦ªà¦¾à¦¦à¦¾à¦¨à¥¤ à¦†à¦° à¦†à¦ªà¦¨à¦¾à¦° ô€€Žà¦¬à¦¿à¦¶à¦°à¦­à¦¾à¦— à¦¸à¦®à§Ÿ à¦•à¦¾à§‡à¦Ÿ à¦‡ô€€¼à¦¾à¦°à§‡à¦¨à¦Ÿ ô€“à¦¾à¦‰à¦œà¦¾à§‡à¦°à¥¤ ô€“à¦¾à¦‰à¦œà¦¾à§‡à¦°à¦° ô€€Žà¦¯ à¦œà¦¾à§Ÿà¦—à¦¾à¦Ÿà¦¾à§‡à¦¤ à¦†à¦ªà¦¿à¦¨ ô€€Žà¦•à¦¾à§‡à¦¨à¦¾ à¦“à§‡à§Ÿà¦¬à¦¸à¦¾à¦‡à§‡à¦Ÿà¦° à¦¨à¦¾à¦®/ à¦¿à¦ à¦•à¦¾à¦¨à¦¾<br />à¦¿à¦²à§‡à¦–à¦¨ ( &ldquo;www.google.com&rdquo;), à¦¤à¦¾à§‡à¦• à¦¬à§‡à¦² &ldquo;Address bar&rdquo;. ô€€Žà¦¸à¦–à¦¾à§‡à¦¨ à¦“à§‡à§Ÿà¦¬à¦¸à¦¾à¦‡à§‡à¦Ÿà¦° à¦¨à¦¾à§‡à¦®à¦° à¦†à§‡à¦— &ldquo;https&rdquo; ô€€Žà¦¯à¦¾à¦— à¦•à¦°à¦¾ à¦¹à§Ÿà¥¤ https à¦®à¦¾à§‡à¦¨<br />(hypertext transfer protocol secure) à¦¯à¦¾ à¦¿à¦¨à¦¿ô€•à¦¤ à¦•à§‡à¦° à¦†à¦ªà¦¨à¦¾à§‡à¦• à¦ªà¦¾à¦ à¦¾à§‡à¦¨à¦¾ à¦“à§‡à§Ÿà¦¬à¦¸à¦¾à¦‡à¦Ÿ à¦…à¦¨ô€€¶ ô€€Žà¦•à¦‰ ô€€Žà¦¦à¦–à§‡à¦¤ à¦ªà¦¾à§‡à¦° à¦¨à¦¾à¥¤ à¦†à¦° à¦ªà§à§‡à¦°à¦¾ à¦¿à¦œà¦¿à¦¨à¦¸à¦Ÿà¦¾à§‡à¦•<br />à¦¬à§‡à¦² URL (Uniform/Universal Resource Locator). à¦“à§‡à§Ÿà¦¬à¦¸à¦¾à¦‡à§‡à¦Ÿà¦° à¦à§‡ô€€Ÿà¦¸/ à¦¿à¦ à¦•à¦¾à¦¨à¦¾ ô€–à¦¤ô€— à¦¹à§‡à¦¤ à¦¹à§Ÿ (à¦…à¦¥à¦¾ô€€¸ ô€€€ www.google.com à¦¨à¦¾à§‡à¦®<br />à¦¸à¦¾à¦°à¦¾ à¦¦à§à¦¿à¦¨à§Ÿà¦¾à§‡à¦¤ à¦à¦•à¦¾à¦¿à¦§à¦• à¦“à§‡à§Ÿà¦¬à¦¸à¦¾à¦‡à¦Ÿ à¦¥à¦¾à¦•à§‡à¦¤ à¦ªà¦¾à¦°à§‡à¦¬ à¦¨à¦¾)<br />à¦ªà¦¿à¦°à§‡à¦¬à§‡à¦¶à¦° à¦—à¦¿ô€€» à¦›à¦¾à¦¿à§œà§‡à§Ÿ à¦¸à¦¾à¦°à¦¾ à¦¦à§à¦¿à¦¨à§Ÿà¦¾à¦° à¦®à¦¾à¦¨à§à¦·à§‡à¦• à¦†à¦ªà¦¨à¦¾à¦° à¦“à§‡à§Ÿà¦¬à¦¸à¦¾à¦‡à¦Ÿ ô€€Žà¦¦à¦–à¦¾à¦‡à§‡à¦¤ à¦¹à§‡à¦²à¥¤ à¦†à¦ªà¦¨à¦¾à§‡à¦• à¦à¦•à¦Ÿà¦¾ à¦“à§‡à§Ÿà¦¬à¦¸à¦¾à¦‡à§‡à¦Ÿà¦° à¦à§‡ô€€Ÿà¦¸ (ô€€Žà¦¡à¦¾à§‡à¦®à¦‡à¦¨) à¦¿à¦•à¦¨à§‡à¦¤<br />à¦¹à§‡à¦¬ à¦à¦¬à¦‚ à¦“à§‡à§Ÿà¦¬à¦¸à¦¾à¦‡à¦Ÿà¦¿à¦Ÿ ô€€Žà¦•à¦¾à§‡à¦¨à¦¾ à¦à¦•à¦Ÿà¦¾ à¦¸à¦¾à¦­ô€€¸ à¦¾à§‡à¦° (ô€€Žà¦¹à¦¾à¦¿ô€‹à¦‚) à¦°à¦¾à¦–à§‡à¦¤ à¦¹à§‡à¦¬à¥¤ ô€€Žà¦•à¦¾à§‡à¦¨à¦¾ à¦¸à¦¾à¦­ô€€¸ à¦¾à§‡à¦° à¦“à§‡à§Ÿà¦¬à¦¸à¦¾à¦‡à¦Ÿ à¦¨à¦¾ à¦°à¦¾à¦–à§‡à¦² ô€€Žà¦•à¦‰ à¦¤à¦¾ à¦–à§à¦œà§‡à¦²à¦“ ô€€Žà¦¦à¦–à§‡à¦¤ à¦ªà¦¾à§‡à¦¬ à¦¨à¦¾à¥¤<br />à¦¸à¦¾à¦§à¦¾à¦°à¦¨à¦¤ à§§ à¦¬à¦¾ à§© à¦¬à¦›à§‡à¦°à¦° à¦œà¦¨ô€€¶ ô€€Žà¦¡à¦¾à§‡à¦®à¦‡à¦¨ à¦“ ô€€Žà¦¹à¦¾à¦¿ô€‹à¦‚ à¦¸à¦¾à¦¿à¦­ô€€¸ à¦¸ ô€€Žà¦•à¦¨à¦¾ à¦¹à§Ÿà¥¤<br />ô€€¬à¦¥à§‡à¦® ô€€Žà¦¦à¦–à§‡à¦¤ à¦¹à§‡à¦¬ à¦†à¦ªà¦¿à¦¨ ô€€Žà¦¯ à¦¨à¦¾à§‡à¦®à¦° à¦“à§‡à§Ÿà¦¬à¦¸à¦¾à¦‡à¦Ÿ ô€˜à¦¤à¦°à§€ à¦•à¦°à§‡à¦¤ à¦šà¦¾à¦¨ à¦¤à¦¾ à¦†à§‡à¦› à¦¿à¦•à¦¨à¦¾à¥¤ à¦¯à¦¿à¦¦ à¦…à¦¨ô€€¶ ô€€Žà¦•à¦‰ ô€€Žà¦¸à¦‡ à¦¨à¦¾à¦®à¦Ÿà¦¾ à¦¿à¦•à§‡à¦¨ ô€€Žà¦¨à§Ÿ à¦¤à¦¾à¦¹à§‡à¦² à¦†à¦ªà¦¿à¦¨ ô€€Žà¦¸à¦‡<br />à¦¨à¦¾à¦®à¦Ÿà¦¾ à¦ªà¦¾à§‡à¦¬à¦¨ à¦¨à¦¾à¥¤ à¦…à§‡à¦¨à¦•à¦Ÿà¦¾ ô€€Žà¦®à¦¾à¦¬à¦¾à¦‡à§‡à¦² à¦¿à¦¸à§‡à¦®à¦° à¦®à¦¤à¥¤ ô€€Žà¦¯à¦®à¦¨, à¦†à¦ªà¦¨à¦¾à¦° à¦¬ô€†à§ à¦° ô€€Žà¦«à¦¾à¦¨ à¦¨ô€™à¦°à¦¿à¦Ÿ à¦¿à¦•ô€š à¦†à¦ªà¦¿à¦¨ à¦¿à¦•à¦¨à§‡à¦¤ à¦ªà¦¾à¦°à§‡à¦¬à¦¨ à¦¨à¦¾à¥¤ à¦†à¦ªà¦¨à¦¾à§‡à¦• à¦…à¦¨ô€€¶ à¦†à§‡à¦°à¦•à¦¿à¦Ÿ<br />à¦¨ô€™à¦° à¦¿à¦•à¦¨à§‡à¦¤ à¦¹à§‡à¦¬à¥¤ à¦†à¦ªà¦¿à¦¨ à¦šà¦¾à¦‡à§‡à¦² à¦¬ô€†à§ à¦° à¦•à¦¾à¦› ô€€Žà¦¥à§‡à¦• à¦ à¦¿à¦¸à¦®à¦¿à¦Ÿ à¦à§‡à¦¨ à¦¬ô€€¶à¦¬à¦¹à¦¾à¦° à¦•à¦°à§‡à¦¤ à¦ªà¦¾à§‡à¦°à¦¨à¥¤</p>'),
(3, 'CSTE', '<p>à¦•à¦¿ô€‘à¦‰à¦Ÿà¦¾à¦° à¦¬à¦¾ à¦‡ô€€¼à¦¾à¦°à§‡à¦¨à¦Ÿ à¦¹à§‡ô€’ à¦à§ à¦Ÿà¦¾ à¦ªà¦¿à¦°à§‡à¦¬à¦¶ (à¦à¦‡à¦¬à¦¾à¦° ô€€Žà¦²à¦–à¦•à§‡à¦• à¦¬à¦•à¦¾ à¦¿à¦¦à§‡à¦¬à¦¨ à¦¨à¦¾, à¦¿ô€€à¦œ), à¦¸à¦¾à¦°à¦¾à¦¿à¦¦à¦¨ à¦¤à¦¾à§‡à¦¤ à¦®à§‡à¦œ à¦¥à¦¾à¦•à§‡à¦² à¦†à¦ªà¦¿à¦¨ à¦¿à¦¨à§‡à¦œà¦“ ô€€Žà¦¸à¦‡ à¦ªà¦¿à¦°à§‡à¦¬à§‡à¦¶à¦°<br />à¦‰à¦ªà¦¾à¦¦à¦¾à¦¨à¥¤ à¦†à¦° à¦†à¦ªà¦¨à¦¾à¦° ô€€Žà¦¬à¦¿à¦¶à¦°à¦­à¦¾à¦— à¦¸à¦®à§Ÿ à¦•à¦¾à§‡à¦Ÿ à¦‡ô€€¼à¦¾à¦°à§‡à¦¨à¦Ÿ ô€“à¦¾à¦‰à¦œà¦¾à§‡à¦°à¥¤ ô€“à¦¾à¦‰à¦œà¦¾à§‡à¦°à¦° ô€€Žà¦¯ à¦œà¦¾à§Ÿà¦—à¦¾à¦Ÿà¦¾à§‡à¦¤ à¦†à¦ªà¦¿à¦¨ ô€€Žà¦•à¦¾à§‡à¦¨à¦¾ à¦“à§‡à§Ÿà¦¬à¦¸à¦¾à¦‡à§‡à¦Ÿà¦° à¦¨à¦¾à¦®/ à¦¿à¦ à¦•à¦¾à¦¨à¦¾<br />à¦¿à¦²à§‡à¦–à¦¨ ( &ldquo;www.google.com&rdquo;), à¦¤à¦¾à§‡à¦• à¦¬à§‡à¦² &ldquo;Address bar&rdquo;. ô€€Žà¦¸à¦–à¦¾à§‡à¦¨ à¦“à§‡à§Ÿà¦¬à¦¸à¦¾à¦‡à§‡à¦Ÿà¦° à¦¨à¦¾à§‡à¦®à¦° à¦†à§‡à¦— &ldquo;https&rdquo; ô€€Žà¦¯à¦¾à¦— à¦•à¦°à¦¾ à¦¹à§Ÿà¥¤ https à¦®à¦¾à§‡à¦¨<br />(hypertext transfer protocol secure) à¦¯à¦¾ à¦¿à¦¨à¦¿ô€•à¦¤ à¦•à§‡à¦° à¦†à¦ªà¦¨à¦¾à§‡à¦• à¦ªà¦¾à¦ à¦¾à§‡à¦¨à¦¾ à¦“à§‡à§Ÿà¦¬à¦¸à¦¾à¦‡à¦Ÿ à¦…à¦¨ô€€¶ ô€€Žà¦•à¦‰ ô€€Žà¦¦à¦–à§‡à¦¤ à¦ªà¦¾à§‡à¦° à¦¨à¦¾à¥¤ à¦†à¦° à¦ªà§à§‡à¦°à¦¾ à¦¿à¦œà¦¿à¦¨à¦¸à¦Ÿà¦¾à§‡à¦•<br />à¦¬à§‡à¦² URL (Uniform/Universal Resource Locator). à¦“à§‡à§Ÿà¦¬à¦¸à¦¾à¦‡à§‡à¦Ÿà¦° à¦à§‡ô€€Ÿà¦¸/ à¦¿à¦ à¦•à¦¾à¦¨à¦¾ ô€–à¦¤ô€— à¦¹à§‡à¦¤ à¦¹à§Ÿ (à¦…à¦¥à¦¾ô€€¸ ô€€€ www.google.com à¦¨à¦¾à§‡à¦®<br />à¦¸à¦¾à¦°à¦¾ à¦¦à§à¦¿à¦¨à§Ÿà¦¾à§‡à¦¤ à¦à¦•à¦¾à¦¿à¦§à¦• à¦“à§‡à§Ÿà¦¬à¦¸à¦¾à¦‡à¦Ÿ à¦¥à¦¾à¦•à§‡à¦¤ à¦ªà¦¾à¦°à§‡à¦¬ à¦¨à¦¾)<br />à¦ªà¦¿à¦°à§‡à¦¬à§‡à¦¶à¦° à¦—à¦¿ô€€» à¦›à¦¾à¦¿à§œà§‡à§Ÿ à¦¸à¦¾à¦°à¦¾ à¦¦à§à¦¿à¦¨à§Ÿà¦¾à¦° à¦®à¦¾à¦¨à§à¦·à§‡à¦• à¦†à¦ªà¦¨à¦¾à¦° à¦“à§‡à§Ÿà¦¬à¦¸à¦¾à¦‡à¦Ÿ ô€€Žà¦¦à¦–à¦¾à¦‡à§‡à¦¤ à¦¹à§‡à¦²à¥¤ à¦†à¦ªà¦¨à¦¾à§‡à¦• à¦à¦•à¦Ÿà¦¾ à¦“à§‡à§Ÿà¦¬à¦¸à¦¾à¦‡à§‡à¦Ÿà¦° à¦à§‡ô€€Ÿà¦¸ (ô€€Žà¦¡à¦¾à§‡à¦®à¦‡à¦¨) à¦¿à¦•à¦¨à§‡à¦¤<br />à¦¹à§‡à¦¬ à¦à¦¬à¦‚ à¦“à§‡à§Ÿà¦¬à¦¸à¦¾à¦‡à¦Ÿà¦¿à¦Ÿ ô€€Žà¦•à¦¾à§‡à¦¨à¦¾ à¦à¦•à¦Ÿà¦¾ à¦¸à¦¾à¦­ô€€¸ à¦¾à§‡à¦° (ô€€Žà¦¹à¦¾à¦¿ô€‹à¦‚) à¦°à¦¾à¦–à§‡à¦¤ à¦¹à§‡à¦¬à¥¤ ô€€Žà¦•à¦¾à§‡à¦¨à¦¾ à¦¸à¦¾à¦­ô€€¸ à¦¾à§‡à¦° à¦“à§‡à§Ÿà¦¬à¦¸à¦¾à¦‡à¦Ÿ à¦¨à¦¾ à¦°à¦¾à¦–à§‡à¦² ô€€Žà¦•à¦‰ à¦¤à¦¾ à¦–à§à¦œà§‡à¦²à¦“ ô€€Žà¦¦à¦–à§‡à¦¤ à¦ªà¦¾à§‡à¦¬ à¦¨à¦¾à¥¤<br />à¦¸à¦¾à¦§à¦¾à¦°à¦¨à¦¤ à§§ à¦¬à¦¾ à§© à¦¬à¦›à§‡à¦°à¦° à¦œà¦¨ô€€¶ ô€€Žà¦¡à¦¾à§‡à¦®à¦‡à¦¨ à¦“ ô€€Žà¦¹à¦¾à¦¿ô€‹à¦‚ à¦¸à¦¾à¦¿à¦­ô€€¸ à¦¸ ô€€Žà¦•à¦¨à¦¾ à¦¹à§Ÿà¥¤<br />ô€€¬à¦¥à§‡à¦® ô€€Žà¦¦à¦–à§‡à¦¤ à¦¹à§‡à¦¬ à¦†à¦ªà¦¿à¦¨ ô€€Žà¦¯ à¦¨à¦¾à§‡à¦®à¦° à¦“à§‡à§Ÿà¦¬à¦¸à¦¾à¦‡à¦Ÿ ô€˜à¦¤à¦°à§€ à¦•à¦°à§‡à¦¤ à¦šà¦¾à¦¨ à¦¤à¦¾ à¦†à§‡à¦› à¦¿à¦•à¦¨à¦¾à¥¤ à¦¯à¦¿à¦¦ à¦…à¦¨ô€€¶ ô€€Žà¦•à¦‰ ô€€Žà¦¸à¦‡ à¦¨à¦¾à¦®à¦Ÿà¦¾ à¦¿à¦•à§‡à¦¨ ô€€Žà¦¨à§Ÿ à¦¤à¦¾à¦¹à§‡à¦² à¦†à¦ªà¦¿à¦¨ ô€€Žà¦¸à¦‡<br />à¦¨à¦¾à¦®à¦Ÿà¦¾ à¦ªà¦¾à§‡à¦¬à¦¨ à¦¨à¦¾à¥¤ à¦…à§‡à¦¨à¦•à¦Ÿà¦¾ ô€€Žà¦®à¦¾à¦¬à¦¾à¦‡à§‡à¦² à¦¿à¦¸à§‡à¦®à¦° à¦®à¦¤à¥¤ ô€€Žà¦¯à¦®à¦¨, à¦†à¦ªà¦¨à¦¾à¦° à¦¬ô€†à§ à¦° ô€€Žà¦«à¦¾à¦¨ à¦¨ô€™à¦°à¦¿à¦Ÿ à¦¿à¦•ô€š à¦†à¦ªà¦¿à¦¨ à¦¿à¦•à¦¨à§‡à¦¤ à¦ªà¦¾à¦°à§‡à¦¬à¦¨ à¦¨à¦¾à¥¤ à¦†à¦ªà¦¨à¦¾à§‡à¦• à¦…à¦¨ô€€¶ à¦†à§‡à¦°à¦•à¦¿à¦Ÿ<br />à¦¨ô€™à¦° à¦¿à¦•à¦¨à§‡à¦¤ à¦¹à§‡à¦¬à¥¤ à¦†à¦ªà¦¿à¦¨ à¦šà¦¾à¦‡à§‡à¦² à¦¬ô€†à§ à¦° à¦•à¦¾à¦› ô€€Žà¦¥à§‡à¦• à¦ à¦¿à¦¸à¦®à¦¿à¦Ÿ à¦à§‡à¦¨ à¦¬ô€€¶à¦¬à¦¹à¦¾à¦° à¦•à¦°à§‡à¦¤ à¦ªà¦¾à§‡à¦°à¦¨à¥¤</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `tags` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(6, 8, 'Snacks', '<p>Welcome to Java&mdash;the world&rsquo;s most widely used computer programming language. You&rsquo;re<br />already familiar with the powerful tasks computers perform. Using this textbook, you&rsquo;ll<br />write instructions commanding computers to perform those kinds of tasks. Software (i.e.,<br />the instructions you write) controls hardware (i.e., computers).<br />You&rsquo;ll learn object-oriented programming&mdash;today&rsquo;s key programming methodology.<br />You&rsquo;ll create and work with many software objects in this text.<br />Java is the preferred language for meeting many organizations&rsquo; enterprise programming<br />needs. Java has also become the language of choice for implementing Internet-based</p>', 'upload/79249e52b5.jpg', 'Lucio', 'Food', '2017-06-06 21:24:44', 2),
(7, 7, 'HealthCare center', '<p>Welcome to Java&mdash;the world&rsquo;s most widely used computer programming language. You&rsquo;re<br />already familiar with the powerful tasks computers perform. Using this textbook, you&rsquo;ll<br />write instructions commanding computers to perform those kinds of tasks. Software (i.e.,<br />the instructions you write) controls hardware (i.e., computers).<br />You&rsquo;ll learn......</p>', 'upload/995f8d7ed4.jpg', 'Luckee', 'HealthCare', '2017-06-06 21:29:40', 3),
(8, 9, 'Welcome to our shop', '<p>High quality lamborghini car.Model 2017.High quality lamborghini car.Model 2017.High quality lamborghini car.Model 2017.High quality lamborghini car.Model 2017.High quality lamborghini car.Model 2017.High quality lamborghini car.Model 2017.High quality lamborghini car.Model 2017.High quality lamborghini car.Model 2017.High quality lamborghini car.Model 2017</p>', 'upload/278997ff75.jpg', 'Admin', 'Cars', '2017-06-06 23:25:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(4, 'First Slider', 'upload/slider/cf65ef3580.jpg'),
(5, 'Second Slider', 'upload/slider/6c6e785d00.jpg'),
(6, 'Third Slider', 'upload/slider/fdce49fab8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'http://facebook.com', 'http://twitter.com', 'http://linkedin.com', 'http://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'green');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(1, 'Md.Mehedi Hasan', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'mehedihasancste@gmail.com', '<p>Hy my name is mehedi.I am admin in this blog.</p>', 0),
(2, 'MD.Hasan', 'author', '02bd92faa38aaa6cc0ea75e59937a1ef ', 'hasan@gmail.com', '<p>Hy my name is hasan And i am a author in this page</p>', 1),
(3, 'Nahid', 'editor', '5aee9dbd2a188839105073571bee1b1f ', 'nahid@gmail.com', '<p>Hy my name is nahid . I am a editor in this page.</p>', 2);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `slogan` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'My Website', 'Visit for learn', 'upload/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

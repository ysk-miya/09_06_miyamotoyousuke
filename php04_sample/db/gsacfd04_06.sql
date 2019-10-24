-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2019 年 10 月 24 日 10:00
-- サーバのバージョン： 10.4.6-MariaDB
-- PHP のバージョン: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacfd04_06`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `event_table`
--

CREATE TABLE `event_table` (
  `id` int(11) NOT NULL,
  `name` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `event_table`
--

INSERT INTO `event_table` (`id`, `name`, `email`, `event`, `age`, `comment`, `indate`) VALUES
(8, '宮本洋介', 'aaaaaaaaa@gmail.com', 'pilates', '20代', 'あああああ', '2019-10-17 22:35:10'),
(9, '田中', 'bbbbbbb@gmail.com', 'yoga', '20代', 'いいいいい', '2019-10-17 22:35:27'),
(11, '中村', 'ddddddd@gmail.com', 'training', '50代', 'ええええええ', '2019-10-17 22:36:21'),
(13, '佐々木', 'pppppp@aaaa.com', 'training', '60代', 'ssssss', '2019-10-17 22:40:26'),
(14, '山田', 'fffffffff@gmail.com', 'training', '70代', 'おおおおお', '2019-10-17 23:28:03'),
(16, '井田', 'gggg@gmail.com', 'course', '40代', 'aaaa', '2019-10-19 14:04:00'),
(17, '宮本洋介', 'bbbbbbb@gmail.com', 'pilates', '20代', 'vvvvv', '2019-10-19 14:12:43');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comment`, `indate`) VALUES
(1, '独習PHP 第3版 ', 'https://www.amazon.co.jp/独習PHP-第3版-山田祥寛-ebook/dp/B01FH3KVNU/ref=sr_1_2?__mk_ja_JP=カタカナ&keywords=PHP&qid=1570265615&sr=8-2', 'Book１', '2019-10-05 17:54:23'),
(2, 'PHPフレームワーク Laravel入門', 'https://www.amazon.co.jp/PHPフレームワーク-Laravel入門-掌田津耶乃-ebook/dp/B07CLLW4MX/ref=sr_1_5?__mk_ja_JP=カタカナ&keywords=PHP&qid=1570265615&sr=8-5', 'Book2', '2019-10-05 17:56:48'),
(3, 'よくわかるPHPの教科書', 'https://www.amazon.co.jp/%E3%82%88%E3%81%8F%E3%82%8F%E3%81%8B%E3%82%8BPHP%E3%81%AE%E6%95%99%E7%A7%91%E6%9B%B8-%E3%80%90PHP7%E5%AF%BE%E5%BF%9C%E7%89%88%E3%80%91-%E3%81%9F%E3%81%AB%E3%81%90%E3%81%A1%E3%81%BE%E3%81%93%E3%81%A8/dp/4839964688/ref=sr_1_4?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=PHP&qid=1570265615&sr=8-4', 'Book3', '2019-10-06 16:40:34'),
(4, '初めてのPHP 単行本', 'https://www.amazon.co.jp/%E5%88%9D%E3%82%81%E3%81%A6%E3%81%AEPHP-David-Sklar/dp/4873117933/ref=sr_1_11?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=PHP&qid=1570265615&sr=8-11', 'Book4', '2019-10-09 15:42:26'),
(5, 'スラスラわかるPHP', 'https://www.amazon.co.jp/%E3%82%B9%E3%83%A9%E3%82%B9%E3%83%A9%E3%82%8F%E3%81%8B%E3%82%8BPHP-%E5%BF%97%E7%94%B0-%E4%BB%81%E7%BE%8E/dp/4798125806/ref=sr_1_12?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=PHP&qid=1570265615&sr=8-12', 'Book5', '2019-10-09 15:44:25'),
(9, 'パーフェクトPHP', 'https://www.amazon.co.jp/%E3%83%91%E3%83%BC%E3%83%95%E3%82%A7%E3%82%AF%E3%83%88PHP-%E5%B0%8F%E5%B7%9D%E9%9B%84%E5%A4%A7-ebook/dp/B00P0UDWQY/ref=sr_1_13?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=PHP&qid=1570265615&sr=8-13', 'Book6', '2019-10-09 15:46:37'),
(10, 'PHPフレームワーク Laravel入門', 'https://www.amazon.co.jp/PHP%E3%83%95%E3%83%AC%E3%83%BC%E3%83%A0%E3%83%AF%E3%83%BC%E3%82%AF-Laravel%E5%85%A5%E9%96%80-%E6%8E%8C%E7%94%B0%E6%B4%A5%E8%80%B6%E4%B9%83-ebook/dp/B07CLLW4MX/ref=sr_1_5?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=PHP&qid=1570265615&sr=8-5', 'Book7', '2019-10-09 23:47:45'),
(11, '気づけばプロ並みPHP 改訂版', 'https://www.amazon.co.jp/%E6%B0%97%E3%81%A5%E3%81%91%E3%81%B0%E3%83%97%E3%83%AD%E4%B8%A6%E3%81%BFPHP-%E6%94%B9%E8%A8%82%E7%89%88-%E3%82%BC%E3%83%AD%E3%81%8B%E3%82%89%E4%BD%9C%E3%82%8C%E3%82%8B%E4%BA%BA%E3%81%AB%E3%81%AA%E3%82%8B-%E8%B0%B7%E8%97%A4-%E8%B3%A2%E4%B8%80/dp/4865940650/ref=sr_1_1?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=PHP&qid=1570265615&sr=8-1', 'Book8', '2019-10-10 14:19:09'),
(12, '1冊ですべて身につくHTML & CSSとWebデザイン入門講座', 'https://www.amazon.co.jp/1%E5%86%8A%E3%81%A7%E3%81%99%E3%81%B9%E3%81%A6%E8%BA%AB%E3%81%AB%E3%81%A4%E3%81%8FHTML-CSS%E3%81%A8Web%E3%83%87%E3%82%B6%E3%82%A4%E3%83%B3%E5%85%A5%E9%96%80%E8%AC%9B%E5%BA%A7-Mana/dp/4797398892/ref=sr_1_1?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=HTML&qid=1570684764&sr=8-1', 'Book9', '2019-10-10 14:20:43'),
(13, 'スラスラわかるHTML＆CSSのきほん 第2版', 'https://www.amazon.co.jp/%E3%82%B9%E3%83%A9%E3%82%B9%E3%83%A9%E3%82%8F%E3%81%8B%E3%82%8BHTML%EF%BC%86CSS%E3%81%AE%E3%81%8D%E3%81%BB%E3%82%93-%E7%AC%AC2%E7%89%88-%E7%8B%A9%E9%87%8E-%E7%A5%90%E6%9D%B1-ebook/dp/B07C4FV2QM/ref=sr_1_2?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=HTML&qid=1570684764&sr=8-2', 'Book10', '2019-10-10 14:21:16'),
(14, '世界一わかりやすい HTML5&CSS3コーディングとサイト制作の教科書', 'https://www.amazon.co.jp/%E4%B8%96%E7%95%8C%E4%B8%80%E3%82%8F%E3%81%8B%E3%82%8A%E3%82%84%E3%81%99%E3%81%84-HTML5-CSS3%E3%82%B3%E3%83%BC%E3%83%87%E3%82%A3%E3%83%B3%E3%82%B0%E3%81%A8%E3%82%B5%E3%82%A4%E3%83%88%E5%88%B6%E4%BD%9C%E3%81%AE%E6%95%99%E7%A7%91%E6%9B%B8-%E8%B5%A4%E9%96%93-%E5%85%AC%E5%A4%AA%E9%83%8E/dp/4297103028/ref=sr_1_3?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=HTML&qid=1570684764&sr=8-3', 'Book11', '2019-10-10 14:21:55'),
(15, 'HTML&CSSとWebデザインが 1冊できちんと身につく本', 'https://www.amazon.co.jp/HTML-CSS%E3%81%A8Web%E3%83%87%E3%82%B6%E3%82%A4%E3%83%B3%E3%81%8C-1%E5%86%8A%E3%81%A7%E3%81%8D%E3%81%A1%E3%82%93%E3%81%A8%E8%BA%AB%E3%81%AB%E3%81%A4%E3%81%8F%E6%9C%AC-%E6%9C%8D%E9%83%A8-%E9%9B%84%E6%A8%B9/dp/4774190640/ref=sr_1_4?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=HTML&qid=1570684764&sr=8-4', 'Book12', '2019-10-10 14:22:36'),
(16, 'いちばんよくわかるHTML5&CSS3デザインきちんと入門 (Design&IDEA) ', 'https://www.amazon.co.jp/%E3%81%84%E3%81%A1%E3%81%B0%E3%82%93%E3%82%88%E3%81%8F%E3%82%8F%E3%81%8B%E3%82%8BHTML5-CSS3%E3%83%87%E3%82%B6%E3%82%A4%E3%83%B3%E3%81%8D%E3%81%A1%E3%82%93%E3%81%A8%E5%85%A5%E9%96%80-Design-IDEA-%E7%8B%A9%E9%87%8E/dp/4797388544/ref=sr_1_5?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=HTML&qid=1570684764&sr=8-5', 'Book13', '2019-10-10 14:23:17'),
(17, 'HTML5/CSS3モダンコーディング フロントエンドエンジニアが教える3つの本格レイアウト ', 'https://www.amazon.co.jp/HTML5-CSS3%E3%83%A2%E3%83%80%E3%83%B3%E3%82%B3%E3%83%BC%E3%83%87%E3%82%A3%E3%83%B3%E3%82%B0-%E3%83%95%E3%83%AD%E3%83%B3%E3%83%88%E3%82%A8%E3%83%B3%E3%83%89%E3%82%A8%E3%83%B3%E3%82%B8%E3%83%8B%E3%82%A2%E3%81%8C%E6%95%99%E3%81%88%E3%82%8B3%E3%81%A4%E3%81%AE%E6%9C%AC%E6%A0%BC%E3%83%AC%E3%82%A4%E3%82%A2%E3%82%A6%E3%83%88-%E3%82%B9%E3%82%BF%E3%83%B3%E3%83%80%E3%83%BC%E3%83%89%E3%83%BB%E3%82%B0%E3%83%AA%E3%83%83%E3%83%89%E3%83%BB%E3%82%B7%E3%83%B3%E3%82%B0%E3%83%AB%E3%83%9A%E3%83%BC%E3%82%B8%E3%83%AC%E3%82%A4%E3%82%A2%E3%82%A6%E3%83%88%E3%81%AE%E4%BD%9C%E3%82%8A%E6%96%B9-%E5%90%89%E7%94%B0%E7%9C%9F%E9%BA%BB-ebook/dp/B0176GNY26/ref=sr_1_6?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=HTML&qid=1570684764&sr=8-6', 'Book14', '2019-10-10 14:25:46'),
(18, '今すぐ使えるかんたんPLUS+ HTML5&CSS3 完全大事典 ', 'https://www.amazon.co.jp/%E4%BB%8A%E3%81%99%E3%81%90%E4%BD%BF%E3%81%88%E3%82%8B%E3%81%8B%E3%82%93%E3%81%9F%E3%82%93PLUS-HTML5-CSS3-%E5%AE%8C%E5%85%A8%E5%A4%A7%E4%BA%8B%E5%85%B8-%E4%BB%8A%E3%81%99%E3%81%90%E4%BD%BF%E3%81%88%E3%82%8B%E3%81%8B%E3%82%93%E3%81%9F%E3%82%93PLUS%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA/dp/4774198110/ref=sr_1_7?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=HTML&qid=1570684764&sr=8-7', 'Book15', '2019-10-10 14:26:35'),
(19, '６ステップでマスターする　「最新標準」HTML CSSデザイン', 'https://www.amazon.co.jp/%EF%BC%96%E3%82%B9%E3%83%86%E3%83%83%E3%83%97%E3%81%A7%E3%83%9E%E3%82%B9%E3%82%BF%E3%83%BC%E3%81%99%E3%82%8B-%E3%80%8C%E6%9C%80%E6%96%B0%E6%A8%99%E6%BA%96%E3%80%8DHTML-CSS%E3%83%87%E3%82%B6%E3%82%A4%E3%83%B3%EF%BC%88%E5%9B%BA%E5%AE%9A%E3%83%AC%E3%82%A4%E3%82%A2%E3%82%A6%E3%83%88%E7%89%88%EF%BC%89-%E3%82%A8%E3%83%93%E3%82%B9%E3%82%B3%E3%83%A0-ebook/dp/B01LCVDD0O/ref=sr_1_8?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=HTML&qid=1570684764&sr=8-8', 'Book16', '2019-10-10 14:27:15'),
(20, 'HTML5&CSS3標準デザイン講座 30LESSONS【第2版】', 'https://www.amazon.co.jp/HTML5-CSS3%E6%A8%99%E6%BA%96%E3%83%87%E3%82%B6%E3%82%A4%E3%83%B3%E8%AC%9B%E5%BA%A7-30LESSONS%E3%80%90%E7%AC%AC2%E7%89%88%E3%80%91-%E8%8D%89%E9%87%8E-%E3%81%82%E3%81%91%E3%81%BF/dp/4798158135/ref=sr_1_9?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=HTML&qid=1570684764&sr=8-9', 'Book17', '2019-10-10 14:27:55'),
(21, 'これからWebをはじめる人のHTML&CSS、JavaScriptのきほんのきほん ', 'https://www.amazon.co.jp/%E3%81%93%E3%82%8C%E3%81%8B%E3%82%89Web%E3%82%92%E3%81%AF%E3%81%98%E3%82%81%E3%82%8B%E4%BA%BA%E3%81%AEHTML-CSS%E3%80%81JavaScript%E3%81%AE%E3%81%8D%E3%81%BB%E3%82%93%E3%81%AE%E3%81%8D%E3%81%BB%E3%82%93-%E3%81%9F%E3%81%AB%E3%81%90%E3%81%A1%E3%81%BE%E3%81%93%E3%81%A8/dp/4839959714/ref=sr_1_10?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=HTML&qid=1570684764&sr=8-10', 'Book18', '2019-10-10 14:28:41'),
(22, '改訂新版JavaScript本格入門 ~モダンスタイルによる基礎から現場での応用まで', 'https://www.amazon.co.jp/%E6%94%B9%E8%A8%82%E6%96%B0%E7%89%88JavaScript%E6%9C%AC%E6%A0%BC%E5%85%A5%E9%96%80-%E3%83%A2%E3%83%80%E3%83%B3%E3%82%B9%E3%82%BF%E3%82%A4%E3%83%AB%E3%81%AB%E3%82%88%E3%82%8B%E5%9F%BA%E7%A4%8E%E3%81%8B%E3%82%89%E7%8F%BE%E5%A0%B4%E3%81%A7%E3%81%AE%E5%BF%9C%E7%94%A8%E3%81%BE%E3%81%A7-%E5%B1%B1%E7%94%B0-%E7%A5%A5%E5%AF%9B/dp/477418411X/ref=sr_1_1?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=javascript&qid=1570685365&sr=8-1', 'Book19', '2019-10-10 14:29:52'),
(23, '確かな力が身につくJavaScript「超」入門 第2版 ', 'https://www.amazon.co.jp/%E7%A2%BA%E3%81%8B%E3%81%AA%E5%8A%9B%E3%81%8C%E8%BA%AB%E3%81%AB%E3%81%A4%E3%81%8FJavaScript%E3%80%8C%E8%B6%85%E3%80%8D%E5%85%A5%E9%96%80-%E7%AC%AC2%E7%89%88-%E7%8B%A9%E9%87%8E-%E7%A5%90%E6%9D%B1/dp/4815601577/ref=sr_1_2?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=javascript&qid=1570685365&sr=8-2', 'Book20', '2019-10-10 14:30:26'),
(24, 'JavaScript コードレシピ集 ', 'https://www.amazon.co.jp/JavaScript-%E3%82%B3%E3%83%BC%E3%83%89%E3%83%AC%E3%82%B7%E3%83%94%E9%9B%86-%E6%B1%A0%E7%94%B0-%E6%B3%B0%E5%BB%B6/dp/4297103680/ref=sr_1_3?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=javascript&qid=1570685365&sr=8-3', 'Book21', '2019-10-10 14:31:01'),
(25, 'スラスラ読める JavaScript ふりがなプログラミング', 'https://www.amazon.co.jp/%E3%82%B9%E3%83%A9%E3%82%B9%E3%83%A9%E8%AA%AD%E3%82%81%E3%82%8B-JavaScript-%E3%81%B5%E3%82%8A%E3%81%8C%E3%81%AA%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0-%E3%81%B5%E3%82%8A%E3%81%8C%E3%81%AA%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA-%E3%83%AA%E3%83%96%E3%83%AD%E3%83%AF%E3%83%BC%E3%82%AF%E3%82%B9/dp/4295003859/ref=sr_1_4?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=javascript&qid=1570685365&sr=8-4', 'Book22', '2019-10-10 14:31:40'),
(26, '開眼! JavaScript ―言語仕様から学ぶJavaScriptの本質', 'https://www.amazon.co.jp/%E9%96%8B%E7%9C%BC-JavaScript-%E2%80%95%E8%A8%80%E8%AA%9E%E4%BB%95%E6%A7%98%E3%81%8B%E3%82%89%E5%AD%A6%E3%81%B6JavaScript%E3%81%AE%E6%9C%AC%E8%B3%AA-Cody-Lindley/dp/487311621X/ref=sr_1_5?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=javascript&qid=1570685365&sr=8-5', 'Book23', '2019-10-10 14:32:10'),
(27, 'いちばんやさしいJavaScriptの教本 第2版 ECMAScript 2017(ES8)対応', 'https://www.amazon.co.jp/%E3%81%84%E3%81%A1%E3%81%B0%E3%82%93%E3%82%84%E3%81%95%E3%81%97%E3%81%84JavaScript%E3%81%AE%E6%95%99%E6%9C%AC-ECMAScript-2017-%E4%BA%BA%E6%B0%97%E8%AC%9B%E5%B8%AB%E3%81%8C%E6%95%99%E3%81%88%E3%82%8BWeb%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0%E5%85%A5%E9%96%80-%E3%80%8C%E3%81%84%E3%81%A1%E3%81%B0%E3%82%93%E3%82%84%E3%81%95%E3%81%97%E3%81%84%E6%95%99%E6%9C%AC%E3%80%8D%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA/dp/4295005924/ref=sr_1_6?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=javascript&qid=1570685365&sr=8-6', 'Book24', '2019-10-10 14:33:10'),
(28, '確かな力が身につくJavaScript「超」入門', 'https://www.amazon.co.jp/%E7%A2%BA%E3%81%8B%E3%81%AA%E5%8A%9B%E3%81%8C%E8%BA%AB%E3%81%AB%E3%81%A4%E3%81%8FJavaScript%E3%80%8C%E8%B6%85%E3%80%8D%E5%85%A5%E9%96%80-%E7%A2%BA%E3%81%8B%E3%81%AA%E5%8A%9B%E3%81%8C%E8%BA%AB%E3%81%AB%E3%81%A4%E3%81%8F%E3%80%8C%E8%B6%85%E3%80%8D%E5%85%A5%E9%96%80%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA-%E7%8B%A9%E9%87%8E-%E7%A5%90%E6%9D%B1/dp/4797383585/ref=sr_1_7?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=javascript&qid=1570685365&sr=8-7', 'Book25', '2019-10-10 14:33:26'),
(29, 'よくわかるJavaScript', 'https://www.amazon.co.jp/%E3%82%88%E3%81%8F%E3%82%8F%E3%81%8B%E3%82%8BJavaScript-%E9%AB%98%E6%A9%8B-%E9%BA%BB%E5%A5%88-ebook/dp/B07QF487N8/ref=sr_1_10?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=javascript&qid=1570685365&sr=8-10', 'Book26', '2019-10-10 14:34:19'),
(30, 'JavaScript Ninjaの極意 ', 'https://www.amazon.co.jp/JavaScript-Ninja%E3%81%AE%E6%A5%B5%E6%84%8F-Bear-Bibeault-ebook/dp/B00ESXY9MA/ref=sr_1_13?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=javascript&qid=1570685365&sr=8-13', 'Book27', '2019-10-10 14:35:03'),
(31, 'Laravel 5.5 サンプルプログラム', 'https://www.amazon.co.jp/Laravel-5-5-%E3%82%B5%E3%83%B3%E3%83%97%E3%83%AB%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%A0-%E7%99%BD%E5%B2%A9%E7%99%BB-ebook/dp/B078KDCPLK/ref=sr_1_9?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&crid=KITN3XFOGI6P&keywords=laravel&qid=1570685732&sprefix=lara%2Caps%2C231&sr=8-9', 'Book28', '2019-10-10 14:36:09'),
(32, 'はじめてのLaravel5.5入門 ~AWS Cloud9で学ぶ', 'https://www.amazon.co.jp/%E3%81%AF%E3%81%98%E3%82%81%E3%81%A6%E3%81%AELaravel5-5%E5%85%A5%E9%96%80-AWS-Cloud9%E3%81%A7%E5%AD%A6%E3%81%B6-%E5%B1%B1%E5%B4%8E-%E5%A4%A7%E5%8A%A9-ebook/dp/B07R9RPVCR/ref=sr_1_11?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&crid=KITN3XFOGI6P&keywords=laravel&qid=1570685732&sprefix=lara%2Caps%2C231&sr=8-11', 'Book29', '2019-10-10 14:37:08'),
(33, '速習 React 速習シリーズ', 'https://www.amazon.co.jp/%E9%80%9F%E7%BF%92-React-%E9%80%9F%E7%BF%92%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA-%E5%B1%B1%E7%94%B0%E7%A5%A5%E5%AF%9B-ebook/dp/B07GWFRCR1/ref=sr_1_2?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=react&qid=1570685847&sr=8-2', 'Book30', '2019-10-10 14:37:55'),
(34, 'Reactビギナーズガイド ―コンポーネントベースのフロントエンド開発入門', 'https://www.amazon.co.jp/React%E3%83%93%E3%82%AE%E3%83%8A%E3%83%BC%E3%82%BA%E3%82%AC%E3%82%A4%E3%83%89-%E2%80%95%E3%82%B3%E3%83%B3%E3%83%9D%E3%83%BC%E3%83%8D%E3%83%B3%E3%83%88%E3%83%99%E3%83%BC%E3%82%B9%E3%81%AE%E3%83%95%E3%83%AD%E3%83%B3%E3%83%88%E3%82%A8%E3%83%B3%E3%83%89%E9%96%8B%E7%99%BA%E5%85%A5%E9%96%80-Stoyan-Stefanov/dp/4873117887/ref=sr_1_3?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=react&qid=1570685847&sr=8-3', 'Book31', '2019-10-10 14:38:23'),
(35, 'React入門 React・Reduxの導入からサーバサイドレンダリングによるUXの向上まで', 'https://www.amazon.co.jp/React%E5%85%A5%E9%96%80-React%E3%83%BBRedux%E3%81%AE%E5%B0%8E%E5%85%A5%E3%81%8B%E3%82%89%E3%82%B5%E3%83%BC%E3%83%90%E3%82%B5%E3%82%A4%E3%83%89%E3%83%AC%E3%83%B3%E3%83%80%E3%83%AA%E3%83%B3%E3%82%B0%E3%81%AB%E3%82%88%E3%82%8BUX%E3%81%AE%E5%90%91%E4%B8%8A%E3%81%BE%E3%81%A7-%E7%A9%B4%E4%BA%95%E5%AE%8F%E5%B9%B8-ebook/dp/B078XDLL2J/ref=sr_1_4?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=react&qid=1570685847&sr=8-4', 'Book32', '2019-10-10 14:39:08'),
(36, 'React開発 現場の教科書', 'https://www.amazon.co.jp/React%E9%96%8B%E7%99%BA-%E7%8F%BE%E5%A0%B4%E3%81%AE%E6%95%99%E7%A7%91%E6%9B%B8-%E7%9F%B3%E6%A9%8B-%E5%95%93%E5%A4%AA/dp/4839960496/ref=sr_1_6?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&keywords=react&qid=1570685847&sr=8-6', 'Book33', '2019-10-10 14:39:54');

-- --------------------------------------------------------

--
-- テーブルの構造 `php02_table`
--

CREATE TABLE `php02_table` (
  `id` int(12) NOT NULL,
  `task` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `php02_table`
--

INSERT INTO `php02_table` (`id`, `task`, `deadline`, `comment`, `indate`) VALUES
(4, 'kadai5', '2019-10-08', 'test4', '2019-10-05 16:01:26'),
(5, 'kadai5', '2019-10-09', 'test5', '2019-10-05 16:01:44'),
(6, 'kadai6', '2019-10-10', 'test6', '2019-10-05 16:02:03'),
(7, 'kadai7', '2019-10-11', 'test7', '2019-10-05 16:02:22'),
(8, 'kadai8', '2019-10-13', 'test8', '2019-10-05 16:02:38'),
(9, 'kadai9', '2019-10-15', 'test9', '2019-10-05 16:03:12'),
(10, 'kadai10', '2019-10-16', 'test10', '2019-10-05 16:03:37'),
(12, '課題', '2019-10-02', 'qqqqq', '2019-10-05 17:11:49'),
(13, 'アイウエオ', '2019-10-22', 'sssss', '2019-10-05 17:12:49'),
(20, '課題23', '2019-10-18', 'テスト', '2019-10-24 16:23:44');

-- --------------------------------------------------------

--
-- テーブルの構造 `user_table`
--

CREATE TABLE `user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`, `indate`) VALUES
(17, '管理者', '1111', 'aaaa', 1, 0, '2019-10-20 04:31:03'),
(18, 'ユーザー', '2222', 'bbbb', 0, 0, '2019-10-20 04:31:22'),
(20, 'ユーザー(退会)', '3333', 'cccc', 0, 1, '2019-10-20 04:31:59'),
(21, '管理者(退会)', '4444', 'dddd', 1, 1, '2019-10-21 22:33:59');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `event_table`
--
ALTER TABLE `event_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `php02_table`
--
ALTER TABLE `php02_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `event_table`
--
ALTER TABLE `event_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- テーブルのAUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- テーブルのAUTO_INCREMENT `php02_table`
--
ALTER TABLE `php02_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- テーブルのAUTO_INCREMENT `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

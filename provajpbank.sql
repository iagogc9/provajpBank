-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Jun-2025 às 14:01
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jpbank`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agencias`
--

CREATE TABLE `agencias` (
  `id` int(11) NOT NULL,
  `numeroDaConta` int(11) DEFAULT NULL,
  `nomeAgencia` varchar(45) DEFAULT NULL,
  `endereco` text DEFAULT NULL,
  `gerente` varchar(45) DEFAULT NULL,
  `telefone` bigint(11) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `cnpj` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cartao`
--

CREATE TABLE `cartao` (
  `numeroCartao` int(11) NOT NULL,
  `nomeCliente` varchar(45) DEFAULT NULL,
  `codigoSeguranca` smallint(3) DEFAULT NULL,
  `numeroAgencia` bigint(5) DEFAULT NULL,
  `numeroDaConta` bigint(6) DEFAULT NULL,
  `dataVencimento` varchar(5) DEFAULT NULL,
  `cor` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cartao`
--

INSERT INTO `cartao` (`numeroCartao`, `nomeCliente`, `codigoSeguranca`, `numeroAgencia`, `numeroDaConta`, `dataVencimento`, `cor`) VALUES
(1, 'Antoio Neymar Santos', 897, 12465, 895267, '10/26', 'vermelho'),
(2, 'Baloteli Ribeiro', 898, 12785, 895268, '12/22', 'preto'),
(3, 'Roberto Silveira', 899, 76365, 895269, '09/30', 'preto'),
(4, 'Jucelino do Arrocha', 810, 87365, 895270, '03/29', 'amarelo'),
(5, 'Silvio Santos', 811, 99365, 895271, '12/29', 'cinza'),
(6, 'Cleiton Rasta', 812, 90365, 895272, '10/25', 'prata'),
(7, 'Marcio Zont', 813, 87365, 895273, '01/25', 'roxo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `idCLiente` int(11) NOT NULL,
  `nome` varchar(15) DEFAULT NULL,
  `sobrenome` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `genero` varchar(10) DEFAULT NULL,
  `nomeEmpresa` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`idCLiente`, `nome`, `sobrenome`, `email`, `genero`, `nomeEmpresa`) VALUES
(1, 'Valma', 'Mazin', 'vmazin0@reference.com', 'Female', 'Rooxo'),
(2, 'Cornie', 'Prevost', 'cprevost1@washingtonpost.com', 'Male', 'Tagcat'),
(3, 'Marlo', 'Martel', 'mmartel2@nifty.com', 'Male', 'Bluejam'),
(4, 'Gav', 'Mogg', 'gmogg3@discovery.com', 'Male', 'Fiveclub'),
(5, 'Kenn', 'Gurnee', 'kgurnee4@spiegel.de', 'Male', 'Kazio'),
(6, 'Kenyon', 'Callum', 'kcallum5@sohu.com', 'Male', 'Vidoo'),
(7, 'Mendel', 'Spaldin', 'mspaldin6@lycos.com', 'Male', 'Topicshots'),
(8, 'Hamil', 'McGinnis', 'hmcginnis7@redcross.org', 'Male', 'Shufflebeat'),
(9, 'Chris', 'Smithson', 'csmithson8@dmoz.org', 'Male', 'Abatz'),
(10, 'Loise', 'Longhurst', 'llonghurst9@quantcast.com', 'Female', 'Voonyx'),
(11, 'Evaleen', 'Erlam', 'eerlama@umn.edu', 'Female', 'Twimbo'),
(12, 'Megan', 'Etherton', 'methertonb@jalbum.net', 'Female', 'Plajo'),
(13, 'Tani', 'Beamont', 'tbeamontc@cam.ac.uk', 'Female', 'Yakitri'),
(14, 'Dela', 'Pargeter', 'dpargeterd@nature.com', 'Female', 'Roombo'),
(15, 'Reggy', 'Travis', 'rtravise@who.int', 'Male', 'JumpXS'),
(16, 'Dorthea', 'Kennewell', 'dkennewellf@hhs.gov', 'Female', 'Meejo'),
(17, 'Rosanne', 'Diggens', 'rdiggensg@issuu.com', 'Female', 'Blogtags'),
(18, 'Delbert', 'Slevin', 'dslevinh@tripod.com', 'Male', 'Myworks'),
(19, 'Erie', 'Gannan', 'egannani@barnesandnoble.com', 'Male', 'Minyx'),
(20, 'Darla', 'Tether', 'dtetherj@i2i.jp', 'Female', 'Avamm'),
(21, 'Viola', 'Mounce', 'vmouncek@chicagotribune.com', 'Female', 'Ooba'),
(22, 'Joe', 'MacKnockiter', 'jmacknockiterl@examiner.com', 'Male', 'Cogibox'),
(23, 'Dael', 'Roake', 'droakem@cbslocal.com', 'Genderquee', 'Yodel'),
(24, 'Margaux', 'Vayne', 'mvaynen@mayoclinic.com', 'Female', 'Skalith'),
(25, 'Shirline', 'Ashdown', 'sashdowno@dot.gov', 'Female', 'Meetz'),
(26, 'Zacharia', 'Naughton', 'znaughtonp@pcworld.com', 'Male', 'Tavu'),
(27, 'Cleopatra', 'Arpino', 'carpinoq@redcross.org', 'Female', 'Brainverse'),
(28, 'Sigismund', 'Kirk', 'skirkr@pinterest.com', 'Male', 'Zoovu'),
(29, 'Maxie', 'Hands', 'mhandss@about.com', 'Female', 'Yombu'),
(30, 'Edeline', 'Panswick', 'epanswickt@t-online.de', 'Female', 'Skiptube'),
(31, 'Annie', 'Niessen', 'aniessenu@ibm.com', 'Female', 'Zoomdog'),
(32, 'Weylin', 'Sizland', 'wsizlandv@oakley.com', 'Agender', 'Quire'),
(33, 'Ravi', 'Josifovitz', 'rjosifovitzw@cbc.ca', 'Male', 'Geba'),
(34, 'Alvina', 'Satchell', 'asatchellx@xrea.com', 'Female', 'Brainverse'),
(35, 'Brinn', 'Eby', 'bebyy@wix.com', 'Agender', 'Devpoint'),
(36, 'Tallie', 'Jales', 'tjalesz@istockphoto.com', 'Male', 'Yacero'),
(37, 'Kelci', 'Yurocjhin', 'kyurocjhin10@google.es', 'Female', 'Yadel'),
(38, 'Hartley', 'Keers', 'hkeers11@oaic.gov.au', 'Male', 'Kwilith'),
(39, 'Von', 'Scales', 'vscales12@blogspot.com', 'Male', 'Mymm'),
(40, 'Gav', 'Ardley', 'gardley13@samsung.com', 'Male', 'Twitterlist'),
(41, 'Bar', 'Dulen', 'bdulen14@live.com', 'Male', 'Skinder'),
(42, 'Garrett', 'Haddinton', 'ghaddinton15@squarespace.com', 'Genderflui', 'Trilith'),
(43, 'Jacquenetta', 'Hawk', 'jhawk16@dropbox.com', 'Female', 'Camimbo'),
(44, 'Pat', 'Mayow', 'pmayow17@unicef.org', 'Female', 'Skyba'),
(45, 'Benedikta', 'Morena', 'bmorena18@smugmug.com', 'Female', 'Zoombox'),
(46, 'Sharlene', 'Shuter', 'sshuter19@eepurl.com', 'Female', 'Realfire'),
(47, 'Pauly', 'Oxbrow', 'poxbrow1a@si.edu', 'Female', 'Skyble'),
(48, 'Tallie', 'Varns', 'tvarns1b@alibaba.com', 'Female', 'Dynabox'),
(49, 'Arlen', 'Dunican', 'adunican1c@ifeng.com', 'Male', 'Browsetype'),
(50, 'Ardisj', 'Hutfield', 'ahutfield1d@shinystat.com', 'Female', 'Tekfly'),
(51, 'Guss', 'Mouget', 'gmouget1e@nytimes.com', 'Male', 'Wikibox'),
(52, 'Maribel', 'Leatherbarrow', 'mleatherbarrow1f@latimes.com', 'Female', 'Fanoodle'),
(53, 'Horatia', 'Jouhning', 'hjouhning1g@paypal.com', 'Female', 'Dabjam'),
(54, 'Anett', 'Meekings', 'ameekings1h@state.gov', 'Female', 'Skynoodle'),
(55, 'Caty', 'Pusey', 'cpusey1i@reference.com', 'Female', 'Roomm'),
(56, 'Dara', 'Rippingall', 'drippingall1j@spotify.com', 'Female', 'Cogibox'),
(57, 'Corey', 'Eke', 'ceke1k@archive.org', 'Male', 'Zoovu'),
(58, 'Donica', 'Duckels', 'dduckels1l@weebly.com', 'Female', 'Mydeo'),
(59, 'Wain', 'Pickard', 'wpickard1m@creativecommons.org', 'Male', 'Quimm'),
(60, 'Della', 'Rallings', 'drallings1n@tiny.cc', 'Female', 'Devpoint'),
(61, 'Wileen', 'Petraitis', 'wpetraitis1o@istockphoto.com', 'Female', 'Photobean'),
(62, 'Maddi', 'Cowitz', 'mcowitz1p@over-blog.com', 'Female', 'Quatz'),
(63, 'Christa', 'Attreed', 'cattreed1q@webmd.com', 'Female', 'Demizz'),
(64, 'Sela', 'Hearsum', 'shearsum1r@mashable.com', 'Female', 'Gabspot'),
(65, 'Ollie', 'Citrine', 'ocitrine1s@nba.com', 'Female', 'Flashdog'),
(66, 'Nikolas', 'Fullerd', 'nfullerd1t@springer.com', 'Male', 'Yotz'),
(67, 'Tabby', 'McGann', 'tmcgann1u@census.gov', 'Male', 'Jayo'),
(68, 'Roch', 'Gallienne', 'rgallienne1v@hud.gov', 'Genderflui', 'Einti'),
(69, 'Cherish', 'Coakley', 'ccoakley1w@mit.edu', 'Female', 'Jabbersphere'),
(70, 'Erda', 'Braunton', 'ebraunton1x@nps.gov', 'Female', 'Voomm'),
(71, 'Rakel', 'Dobeson', 'rdobeson1y@thetimes.co.uk', 'Female', 'Babblestorm'),
(72, 'Flem', 'Daniau', 'fdaniau1z@craigslist.org', 'Male', 'Geba'),
(73, 'Kissiah', 'Wraith', 'kwraith20@yahoo.com', 'Female', 'Flashpoint'),
(74, 'Lurlene', 'Varns', 'lvarns21@vkontakte.ru', 'Female', 'LiveZ'),
(75, 'Tomi', 'Burril', 'tburril22@chron.com', 'Female', 'Feedfire'),
(76, 'Katee', 'Leatt', 'kleatt23@bigcartel.com', 'Female', 'Feedfire'),
(77, 'Lynna', 'Bevan', 'lbevan24@phpbb.com', 'Female', 'Realbridge'),
(78, 'Benyamin', 'Eddins', 'beddins25@google.nl', 'Male', 'Tagfeed'),
(79, 'Nichole', 'Crudge', 'ncrudge26@ocn.ne.jp', 'Male', 'Zoomcast'),
(80, 'Napoleon', 'Cleverly', 'ncleverly27@deliciousdays.com', 'Male', 'Rhyloo'),
(81, 'Falkner', 'Maccree', 'fmaccree28@exblog.jp', 'Polygender', 'Flashpoint'),
(82, 'Tiffi', 'Taborre', 'ttaborre29@answers.com', 'Female', 'Yozio'),
(83, 'Monika', 'Brockley', 'mbrockley2a@fda.gov', 'Female', 'Devpoint'),
(84, 'Fayina', 'de Tocqueville', 'fdetocqueville2b@tripadvisor.com', 'Female', 'Thoughtblab'),
(85, 'Trista', 'Askham', 'taskham2c@time.com', 'Female', 'Feedmix'),
(86, 'Barney', 'Forrestor', 'bforrestor2d@tinypic.com', 'Male', 'Wikizz'),
(87, 'Rowland', 'Klugel', 'rklugel2e@statcounter.com', 'Male', 'Photobug'),
(88, 'Berte', 'Smitham', 'bsmitham2f@dell.com', 'Non-binary', 'Photojam'),
(89, 'Sisile', 'Banane', 'sbanane2g@army.mil', 'Female', 'Voonder'),
(90, 'Elizabet', 'Curwood', 'ecurwood2h@sourceforge.net', 'Genderquee', 'Eimbee'),
(91, 'Shanta', 'D\'Hooghe', 'sdhooghe2i@bandcamp.com', 'Female', 'Ntags'),
(92, 'Pincas', 'Standon', 'pstandon2j@twitpic.com', 'Male', 'Realpoint'),
(93, 'Mil', 'MacCurlye', 'mmaccurlye2k@apple.com', 'Female', 'Innojam'),
(94, 'Dore', 'Devine', 'ddevine2l@google.ca', 'Male', 'Fivechat'),
(95, 'Catina', 'Illem', 'cillem2m@europa.eu', 'Female', 'Voolia'),
(96, 'Karen', 'Verralls', 'kverralls2n@telegraph.co.uk', 'Female', 'Skipfire'),
(97, 'Obed', 'Trassler', 'otrassler2o@theatlantic.com', 'Male', 'Chatterbridge'),
(98, 'Tirrell', 'Egalton', 'tegalton2p@ox.ac.uk', 'Male', 'Flashdog'),
(99, 'Reta', 'Callacher', 'rcallacher2q@edublogs.org', 'Female', 'Yata'),
(100, 'Rici', 'Olerenshaw', 'rolerenshaw2r@chronoengine.com', 'Female', 'Realblab'),
(101, 'Marvin', 'Rizzardini', 'mrizzardini2s@prnewswire.com', 'Male', 'Gigazoom'),
(102, 'Tove', 'Franzke', 'tfranzke2t@bbb.org', 'Female', 'Oodoo'),
(103, 'Aldis', 'Ledington', 'aledington2u@unicef.org', 'Male', 'Pixonyx'),
(104, 'Filbert', 'Kopfer', 'fkopfer2v@yahoo.com', 'Male', 'Kazio'),
(105, 'Eddi', 'Edis', 'eedis2w@addthis.com', 'Female', 'Plambee'),
(106, 'Flossie', 'Whitten', 'fwhitten2x@istockphoto.com', 'Female', 'Realblab'),
(107, 'Guillaume', 'Rown', 'grown2y@g.co', 'Male', 'Tavu'),
(108, 'Billy', 'Carhart', 'bcarhart2z@amazon.co.uk', 'Female', 'Trupe'),
(109, 'Marie', 'O\'Kane', 'mokane30@sogou.com', 'Female', 'Aibox'),
(110, 'Audy', 'Wadforth', 'awadforth31@123-reg.co.uk', 'Female', 'Devify'),
(111, 'Nadeen', 'Pigeon', 'npigeon32@berkeley.edu', 'Female', 'Yotz'),
(112, 'Tabby', 'Beri', 'tberi33@cbsnews.com', 'Male', 'Shuffletag'),
(113, 'Shalne', 'Chaff', 'schaff34@facebook.com', 'Female', 'Blogpad'),
(114, 'Demetri', 'Franceschielli', 'dfranceschielli35@bbb.org', 'Male', 'Teklist'),
(115, 'Jandy', 'Lathwood', 'jlathwood36@earthlink.net', 'Female', 'Zoonder'),
(116, 'Eloisa', 'Bonnefin', 'ebonnefin37@adobe.com', 'Female', 'Yodo'),
(117, 'Paige', 'Finn', 'pfinn38@privacy.gov.au', 'Male', 'Dynazzy'),
(118, 'Gregg', 'Marjanski', 'gmarjanski39@google.it', 'Male', 'Mita'),
(119, 'Davine', 'Hollows', 'dhollows3a@skyrock.com', 'Female', 'Edgeblab'),
(120, 'Claiborne', 'Lared', 'clared3b@apple.com', 'Male', 'Trupe'),
(121, 'Gardy', 'Phippard', 'gphippard3c@harvard.edu', 'Male', 'Realfire'),
(122, 'Moe', 'Ketchell', 'mketchell3d@w3.org', 'Male', 'Meedoo'),
(123, 'Arabela', 'Deniskevich', 'adeniskevich3e@istockphoto.com', 'Female', 'Feedfish'),
(124, 'Elena', 'Cockram', 'ecockram3f@i2i.jp', 'Female', 'Voomm'),
(125, 'Cad', 'Livick', 'clivick3g@clickbank.net', 'Genderquee', 'Oodoo'),
(126, 'Ewart', 'Leades', 'eleades3h@ehow.com', 'Male', 'Trilith'),
(127, 'Rip', 'Dorkin', 'rdorkin3i@stanford.edu', 'Male', 'Izio'),
(128, 'Stacee', 'McCay', 'smccay3j@deviantart.com', 'Male', 'Flashpoint'),
(129, 'Hoyt', 'Aldhouse', 'haldhouse3k@reference.com', 'Male', 'Reallinks'),
(130, 'Mabel', 'Wood', 'mwood3l@elegantthemes.com', 'Female', 'Linkbuzz'),
(131, 'Hal', 'Rawles', 'hrawles3m@hugedomains.com', 'Male', 'Voonte'),
(132, 'Jethro', 'Castan', 'jcastan3n@t-online.de', 'Male', 'Jetwire'),
(133, 'Meryl', 'Sutcliffe', 'msutcliffe3o@senate.gov', 'Male', 'Skajo'),
(134, 'Maisey', 'Clarricoates', 'mclarricoates3p@walmart.com', 'Non-binary', 'Quaxo'),
(135, 'Andreas', 'Cristofaro', 'acristofaro3q@statcounter.com', 'Male', 'Voonix'),
(136, 'Gregorio', 'Arnley', 'garnley3r@mapquest.com', 'Male', 'Cogibox'),
(137, 'Michel', 'Geldeard', 'mgeldeard3s@ihg.com', 'Male', 'Skivee'),
(138, 'Orren', 'Briddle', 'obriddle3t@eepurl.com', 'Male', 'Rhybox'),
(139, 'Verile', 'Hubeaux', 'vhubeaux3u@tripadvisor.com', 'Female', 'Meevee'),
(140, 'Sydelle', 'Higgoe', 'shiggoe3v@cpanel.net', 'Female', 'Centizu'),
(141, 'Lilla', 'Malling', 'lmalling3w@uol.com.br', 'Non-binary', 'Meevee'),
(142, 'Prue', 'Coal', 'pcoal3x@wikispaces.com', 'Female', 'Janyx'),
(143, 'Olly', 'Pacey', 'opacey3y@netvibes.com', 'Female', 'Twimm'),
(144, 'Adelice', 'Blakelock', 'ablakelock3z@stumbleupon.com', 'Polygender', 'Tagchat'),
(145, 'Gard', 'Bearcroft', 'gbearcroft40@ed.gov', 'Male', 'Photolist'),
(146, 'Hilda', 'Millberg', 'hmillberg41@ocn.ne.jp', 'Female', 'Npath'),
(147, 'Benedikt', 'Dollard', 'bdollard42@bigcartel.com', 'Bigender', 'Oozz'),
(148, 'Gayler', 'Twelftree', 'gtwelftree43@flavors.me', 'Male', 'Kamba'),
(149, 'Jaynell', 'Cadamy', 'jcadamy44@miibeian.gov.cn', 'Female', 'Topicblab'),
(150, 'Tarrah', 'D\'orsay', 'tdorsay45@constantcontact.com', 'Female', 'Mita'),
(151, 'Claudette', 'Grisard', 'cgrisard46@sourceforge.net', 'Female', 'Tagcat'),
(152, 'Eloisa', 'Bourrel', 'ebourrel47@blogspot.com', 'Female', 'Devbug'),
(153, 'Yolanda', 'Spadaro', 'yspadaro48@4shared.com', 'Female', 'Skyba'),
(154, 'Ortensia', 'Dinzey', 'odinzey49@dell.com', 'Female', 'Mynte'),
(155, 'Jarib', 'Tosney', 'jtosney4a@answers.com', 'Male', 'Topicblab'),
(156, 'Noami', 'Kiddey', 'nkiddey4b@google.it', 'Female', 'Topicblab'),
(157, 'Tymon', 'Mosby', 'tmosby4c@flickr.com', 'Male', 'Jaloo'),
(158, 'Hayley', 'Kearney', 'hkearney4d@edublogs.org', 'Female', 'Nlounge'),
(159, 'Andi', 'Whitwam', 'awhitwam4e@china.com.cn', 'Genderquee', 'Quimm'),
(160, 'Xenos', 'Rittelmeyer', 'xrittelmeyer4f@phpbb.com', 'Genderquee', 'Blogtags'),
(161, 'Westbrook', 'Normant', 'wnormant4g@hostgator.com', 'Male', 'Buzzshare'),
(162, 'Jonas', 'Yonge', 'jyonge4h@apache.org', 'Male', 'Twitternation'),
(163, 'Aleda', 'Cartman', 'acartman4i@elegantthemes.com', 'Female', 'Voonix'),
(164, 'Josefa', 'Panswick', 'jpanswick4j@flickr.com', 'Female', 'Photobean'),
(165, 'Tripp', 'Pizzey', 'tpizzey4k@jalbum.net', 'Male', 'Riffpath'),
(166, 'Hasty', 'Hopkins', 'hhopkins4l@flickr.com', 'Genderquee', 'Aibox'),
(167, 'Devlen', 'Van Geffen', 'dvangeffen4m@cam.ac.uk', 'Bigender', 'Muxo'),
(168, 'Juliana', 'MacKartan', 'jmackartan4n@nhs.uk', 'Female', 'Einti'),
(169, 'Candide', 'Duchart', 'cduchart4o@disqus.com', 'Female', 'Gigashots'),
(170, 'Marc', 'Alexandre', 'malexandre4p@engadget.com', 'Male', 'Flashpoint'),
(171, 'Annis', 'Wollrauch', 'awollrauch4q@usnews.com', 'Female', 'Fanoodle'),
(172, 'Rici', 'Littlewood', 'rlittlewood4r@alexa.com', 'Female', 'Skiptube'),
(173, 'Courtney', 'McNirlin', 'cmcnirlin4s@msn.com', 'Female', 'Kamba'),
(174, 'Richie', 'Hayball', 'rhayball4t@un.org', 'Male', 'Omba'),
(175, 'Artemis', 'Darko', 'adarko4u@acquirethisname.com', 'Male', 'Realcube'),
(176, 'Dosi', 'Liversedge', 'dliversedge4v@ameblo.jp', 'Female', 'Mybuzz'),
(177, 'Ransom', 'Mathiot', 'rmathiot4w@sciencedirect.com', 'Male', 'Thoughtbeat'),
(178, 'Melinda', 'Aleksankin', 'maleksankin4x@cmu.edu', 'Female', 'Tambee'),
(179, 'Charlotta', 'Mathe', 'cmathe4y@tumblr.com', 'Female', 'Cogibox'),
(180, 'Cheslie', 'Treker', 'ctreker4z@apple.com', 'Female', 'Rhynyx'),
(181, 'Kimberlee', 'O\'Tierney', 'kotierney50@businesswire.com', 'Female', 'Skipfire'),
(182, 'Leonore', 'Hubber', 'lhubber51@engadget.com', 'Female', 'Buzzster'),
(183, 'Caralie', 'McCloughlin', 'cmccloughlin52@purevolume.com', 'Female', 'Thoughtstorm'),
(184, 'Arabele', 'Skellen', 'askellen53@indiegogo.com', 'Female', 'Skidoo'),
(185, 'Darnell', 'Gudahy', 'dgudahy54@godaddy.com', 'Male', 'Gevee'),
(186, 'Diandra', 'Strangward', 'dstrangward55@archive.org', 'Female', 'Thoughtbeat'),
(187, 'Khalil', 'Skures', 'kskures56@wufoo.com', 'Male', 'Miboo'),
(188, 'Emogene', 'Grealy', 'egrealy57@theglobeandmail.com', 'Female', 'Trudoo'),
(189, 'Skipp', 'Whorlton', 'swhorlton58@wp.com', 'Male', 'Voolith'),
(190, 'Gaby', 'Trump', 'gtrump59@altervista.org', 'Male', 'Browsebug'),
(191, 'Abbey', 'Gookes', 'agookes5a@omniture.com', 'Male', 'Latz'),
(192, 'Camellia', 'Ferber', 'cferber5b@printfriendly.com', 'Female', 'Skinte'),
(193, 'Chase', 'Oakden', 'coakden5c@typepad.com', 'Male', 'BlogXS'),
(194, 'Blinni', 'Mainwaring', 'bmainwaring5d@ihg.com', 'Female', 'Dabfeed'),
(195, 'Alano', 'Webland', 'awebland5e@google.com', 'Male', 'Wikizz'),
(196, 'Cello', 'Ranscomb', 'cranscomb5f@exblog.jp', 'Male', 'Abatz'),
(197, 'Gerri', 'Breche', 'gbreche5g@answers.com', 'Male', 'Tambee'),
(198, 'Willow', 'Feore', 'wfeore5h@imdb.com', 'Female', 'Topiclounge'),
(199, 'Padgett', 'Niblett', 'pniblett5i@ebay.com', 'Male', 'Wordware'),
(200, 'Sammy', 'Hunsworth', 'shunsworth5j@wsj.com', 'Male', 'Centizu'),
(201, 'Alice', 'Fitzmaurice', 'afitzmaurice5k@t.co', 'Female', 'Edgetag'),
(202, 'Wayland', 'Juster', 'wjuster5l@cnet.com', 'Male', 'Zoombeat'),
(203, 'Willette', 'Tyght', 'wtyght5m@squarespace.com', 'Female', 'Eadel'),
(204, 'Judy', 'Jedrzejkiewicz', 'jjedrzejkiewicz5n@bloglines.com', 'Female', 'Ainyx'),
(205, 'Patin', 'Keneford', 'pkeneford5o@mozilla.org', 'Male', 'Teklist'),
(206, 'Hamilton', 'De Souza', 'hdesouza5p@mayoclinic.com', 'Male', 'Eamia'),
(207, 'Elfrida', 'Turrell', 'eturrell5q@ocn.ne.jp', 'Bigender', 'Babbleblab'),
(208, 'Sarette', 'Pye', 'spye5r@hatena.ne.jp', 'Female', 'Dynava'),
(209, 'Shaun', 'Isaksen', 'sisaksen5s@storify.com', 'Male', 'Realblab'),
(210, 'Karry', 'Giraudel', 'kgiraudel5t@delicious.com', 'Female', 'Innotype'),
(211, 'Hilario', 'Sidlow', 'hsidlow5u@nhs.uk', 'Non-binary', 'Mudo'),
(212, 'Ursola', 'Jacobi', 'ujacobi5v@cornell.edu', 'Female', 'Snaptags'),
(213, 'Bev', 'Starkie', 'bstarkie5w@ycombinator.com', 'Female', 'Rhyloo'),
(214, 'Iseabal', 'Headon', 'iheadon5x@tinyurl.com', 'Female', 'Realbridge'),
(215, 'Iorgo', 'Sebright', 'isebright5y@java.com', 'Male', 'Voolia'),
(216, 'Stinky', 'Jacobsen', 'sjacobsen5z@angelfire.com', 'Male', 'Meemm'),
(217, 'Aldon', 'Pitts', 'apitts60@i2i.jp', 'Male', 'Youspan'),
(218, 'Keir', 'Paish', 'kpaish61@mtv.com', 'Male', 'Jamia'),
(219, 'Gaven', 'Onthank', 'gonthank62@amazon.de', 'Male', 'Flipopia'),
(220, 'Allyson', 'Pepler', 'apepler63@mozilla.org', 'Female', 'Jabbersphere'),
(221, 'Robinet', 'Martensen', 'rmartensen64@biglobe.ne.jp', 'Female', 'Realcube'),
(222, 'Gabby', 'Cronk', 'gcronk65@go.com', 'Male', 'Youspan'),
(223, 'Gill', 'MacKim', 'gmackim66@economist.com', 'Male', 'Skipstorm'),
(224, 'Rickey', 'Rollings', 'rrollings67@homestead.com', 'Male', 'Tagpad'),
(225, 'Roana', 'Ciric', 'rciric68@stanford.edu', 'Female', 'Oozz'),
(226, 'Lise', 'Corzor', 'lcorzor69@wikimedia.org', 'Female', 'Jabberstorm'),
(227, 'Abbey', 'Dederick', 'adederick6a@wikispaces.com', 'Genderquee', 'Topicware'),
(228, 'Amelie', 'Bugby', 'abugby6b@berkeley.edu', 'Female', 'Lajo'),
(229, 'Regan', 'Dayment', 'rdayment6c@dion.ne.jp', 'Female', 'Gabvine'),
(230, 'Devin', 'Edson', 'dedson6d@technorati.com', 'Female', 'Pixonyx'),
(231, 'Rad', 'Roback', 'rroback6e@oracle.com', 'Male', 'Rhynoodle'),
(232, 'Robbert', 'Sidey', 'rsidey6f@home.pl', 'Male', 'Edgetag'),
(233, 'Poppy', 'Meier', 'pmeier6g@mozilla.com', 'Female', 'Avamba'),
(234, 'Vanya', 'Hedin', 'vhedin6h@bloglovin.com', 'Male', 'Yoveo'),
(235, 'Melodie', 'Conibere', 'mconibere6i@google.it', 'Female', 'Podcat'),
(236, 'Skip', 'Sainter', 'ssainter6j@dailymail.co.uk', 'Male', 'Flipbug'),
(237, 'Allister', 'Perton', 'aperton6k@usnews.com', 'Genderquee', 'Flashdog'),
(238, 'Craggie', 'Cammiemile', 'ccammiemile6l@over-blog.com', 'Male', 'Mynte'),
(239, 'Carolina', 'Lottrington', 'clottrington6m@netvibes.com', 'Female', 'Jatri'),
(240, 'Kimbra', 'Karel', 'kkarel6n@blinklist.com', 'Female', 'Lazzy'),
(241, 'Duky', 'Gallager', 'dgallager6o@constantcontact.com', 'Male', 'Quire'),
(242, 'Clayborne', 'Palffrey', 'cpalffrey6p@auda.org.au', 'Male', 'DabZ'),
(243, 'Zacharia', 'Tandy', 'ztandy6q@squidoo.com', 'Male', 'Tavu'),
(244, 'Dorrie', 'Moggie', 'dmoggie6r@newyorker.com', 'Female', 'Dynabox'),
(245, 'Lothario', 'Terrill', 'lterrill6s@google.com.hk', 'Male', 'Jetpulse'),
(246, 'Danie', 'Aujean', 'daujean6t@hibu.com', 'Male', 'Kwimbee'),
(247, 'Winne', 'Stern', 'wstern6u@dell.com', 'Female', 'Mybuzz'),
(248, 'Ardelle', 'Corder', 'acorder6v@reddit.com', 'Female', 'Feedmix'),
(249, 'Jami', 'Kenneway', 'jkenneway6w@wired.com', 'Female', 'Dynava'),
(250, 'Frannie', 'Trye', 'ftrye6x@fda.gov', 'Female', 'Kwideo'),
(251, 'Nonah', 'Gabrieli', 'ngabrieli6y@parallels.com', 'Female', 'Quire'),
(252, 'Patricia', 'Boissieux', 'pboissieux6z@icq.com', 'Female', 'Feedmix'),
(253, 'Norah', 'Curdell', 'ncurdell70@barnesandnoble.com', 'Female', 'Jaloo'),
(254, 'Johannah', 'Kornilyev', 'jkornilyev71@usatoday.com', 'Female', 'Brainverse'),
(255, 'Dyanne', 'Phidgin', 'dphidgin72@alibaba.com', 'Female', 'Linktype'),
(256, 'Anjela', 'Fadell', 'afadell73@google.com.br', 'Female', 'Twinder'),
(257, 'Leopold', 'True', 'ltrue74@vimeo.com', 'Male', 'Yodo'),
(258, 'Johannah', 'Sutliff', 'jsutliff75@myspace.com', 'Female', 'Youopia'),
(259, 'Ranique', 'Treeby', 'rtreeby76@princeton.edu', 'Female', 'Quinu'),
(260, 'Jareb', 'Alloway', 'jalloway77@free.fr', 'Male', 'Cogilith'),
(261, 'Steward', 'Creavin', 'screavin78@twitter.com', 'Male', 'Twitterbridge'),
(262, 'Sonja', 'Derrick', 'sderrick79@huffingtonpost.com', 'Female', 'Brainsphere'),
(263, 'Patsy', 'Bour', 'pbour7a@nationalgeographic.com', 'Female', 'Eabox'),
(264, 'Baily', 'Shanks', 'bshanks7b@usda.gov', 'Male', 'Devcast'),
(265, 'Westbrooke', 'Garthside', 'wgarthside7c@sitemeter.com', 'Male', 'Flashset'),
(266, 'Theda', 'Dana', 'tdana7d@csmonitor.com', 'Female', 'Quimm'),
(267, 'Jeddy', 'Carrabott', 'jcarrabott7e@reverbnation.com', 'Male', 'Zooveo'),
(268, 'Marcelia', 'Thrower', 'mthrower7f@patch.com', 'Female', 'Mydo'),
(269, 'Karel', 'Faro', 'kfaro7g@cnet.com', 'Male', 'Flipbug'),
(270, 'Haley', 'Barthrup', 'hbarthrup7h@gizmodo.com', 'Male', 'Cogidoo'),
(271, 'Cletus', 'Conochie', 'cconochie7i@biglobe.ne.jp', 'Male', 'Twinder'),
(272, 'Bartolemo', 'Boakes', 'bboakes7j@state.gov', 'Male', 'Devcast'),
(273, 'Hendrik', 'Haestier', 'hhaestier7k@ezinearticles.com', 'Male', 'Jabbersphere'),
(274, 'Travers', 'Stollberger', 'tstollberger7l@uiuc.edu', 'Male', 'Shufflebeat'),
(275, 'Berry', 'Woosnam', 'bwoosnam7m@noaa.gov', 'Female', 'Topicshots'),
(276, 'Cornelius', 'Elvy', 'celvy7n@earthlink.net', 'Male', 'Ainyx'),
(277, 'Kaia', 'Gilston', 'kgilston7o@state.tx.us', 'Female', 'Brightdog'),
(278, 'Ambur', 'Maskell', 'amaskell7p@gravatar.com', 'Genderflui', 'Flipstorm'),
(279, 'Munroe', 'Grute', 'mgrute7q@berkeley.edu', 'Male', 'LiveZ'),
(280, 'Sharlene', 'Schall', 'sschall7r@icq.com', 'Female', 'Yamia'),
(281, 'Jeramie', 'Jeanneau', 'jjeanneau7s@berkeley.edu', 'Male', 'Meeveo'),
(282, 'Dane', 'Gilliat', 'dgilliat7t@desdev.cn', 'Male', 'Browseblab'),
(283, 'Dunc', 'Goter', 'dgoter7u@marriott.com', 'Male', 'Yodo'),
(284, 'Pasquale', 'Fiveash', 'pfiveash7v@java.com', 'Male', 'Innotype'),
(285, 'Griffith', 'Jollie', 'gjollie7w@nationalgeographic.com', 'Male', 'BlogXS'),
(286, 'Janot', 'Elce', 'jelce7x@archive.org', 'Female', 'Mynte'),
(287, 'Stesha', 'Laybourn', 'slaybourn7y@intel.com', 'Female', 'Centidel'),
(288, 'Cass', 'Minshull', 'cminshull7z@ox.ac.uk', 'Male', 'Feedbug'),
(289, 'Del', 'Pressland', 'dpressland80@gravatar.com', 'Male', 'Gabtype'),
(290, 'Veronike', 'Leggatt', 'vleggatt81@marriott.com', 'Female', 'Kare'),
(291, 'Mitchael', 'Dewdney', 'mdewdney82@prnewswire.com', 'Male', 'Reallinks'),
(292, 'Stavros', 'Kyteley', 'skyteley83@last.fm', 'Male', 'Yambee'),
(293, 'Brenden', 'Khan', 'bkhan84@spotify.com', 'Male', 'Pixonyx'),
(294, 'Angelo', 'Heningham', 'aheningham85@hostgator.com', 'Male', 'Quatz'),
(295, 'Paul', 'Zammitt', 'pzammitt86@furl.net', 'Male', 'Kimia'),
(296, 'Bobbi', 'Flury', 'bflury87@ustream.tv', 'Female', 'Blogtags'),
(297, 'Carolyne', 'Bowland', 'cbowland88@blogger.com', 'Bigender', 'Blogpad'),
(298, 'Jill', 'Tabard', 'jtabard89@nyu.edu', 'Female', 'Layo'),
(299, 'Luke', 'Keddle', 'lkeddle8a@cnbc.com', 'Male', 'Divape'),
(300, 'Michell', 'Perllman', 'mperllman8b@e-recht24.de', 'Female', 'Voolia'),
(301, 'Keane', 'Floyed', 'kfloyed8c@ucoz.com', 'Male', 'Leenti'),
(302, 'Chere', 'Weddell', 'cweddell8d@oaic.gov.au', 'Female', 'Devify'),
(303, 'Saul', 'Cesconi', 'scesconi8e@state.gov', 'Male', 'Fivechat'),
(304, 'Lorraine', 'Ciccarello', 'lciccarello8f@mit.edu', 'Female', 'Yodoo'),
(305, 'Gilberta', 'Carbery', 'gcarbery8g@un.org', 'Female', 'Rhynoodle'),
(306, 'Brook', 'Reed', 'breed8h@nymag.com', 'Male', 'Skyvu'),
(307, 'Dante', 'Ryall', 'dryall8i@oakley.com', 'Male', 'Oyonder'),
(308, 'Gary', 'Chatan', 'gchatan8j@whitehouse.gov', 'Male', 'Voolith'),
(309, 'Pat', 'Matiebe', 'pmatiebe8k@marketwatch.com', 'Female', 'Edgeify'),
(310, 'Truman', 'Newhouse', 'tnewhouse8l@ow.ly', 'Male', 'Skinte'),
(311, 'Quinn', 'Hanbury', 'qhanbury8m@sbwire.com', 'Female', 'Trudeo'),
(312, 'Vick', 'Rainville', 'vrainville8n@nifty.com', 'Male', 'Fliptune'),
(313, 'Olivie', 'Malcolm', 'omalcolm8o@360.cn', 'Female', 'Brightbean'),
(314, 'Clarita', 'Eim', 'ceim8p@microsoft.com', 'Female', 'Mybuzz'),
(315, 'Shanda', 'Allner', 'sallner8q@weibo.com', 'Female', 'Feedmix'),
(316, 'Joey', 'Pratton', 'jpratton8r@toplist.cz', 'Male', 'Oyope'),
(317, 'Vaclav', 'Layman', 'vlayman8s@who.int', 'Male', 'Quatz'),
(318, 'Farrand', 'McGeaney', 'fmcgeaney8t@bing.com', 'Female', 'Kwideo'),
(319, 'Camile', 'Chatelain', 'cchatelain8u@newyorker.com', 'Female', 'Flashdog'),
(320, 'Hendrik', 'Wilsone', 'hwilsone8v@unicef.org', 'Polygender', 'Realcube'),
(321, 'Raimondo', 'Langan', 'rlangan8w@ucla.edu', 'Male', 'Thoughtstorm'),
(322, 'Elie', 'Hovey', 'ehovey8x@vistaprint.com', 'Female', 'Thoughtworks'),
(323, 'Beatriz', 'Bilbie', 'bbilbie8y@goodreads.com', 'Female', 'Realbuzz'),
(324, 'Pat', 'Jeannenet', 'pjeannenet8z@eepurl.com', 'Male', 'Geba'),
(325, 'Clarita', 'Wartonby', 'cwartonby90@cnbc.com', 'Female', 'Vimbo'),
(326, 'Adriaens', 'Yare', 'ayare91@meetup.com', 'Female', 'Skimia'),
(327, 'Ruperta', 'Fullagar', 'rfullagar92@wufoo.com', 'Female', 'Zoomdog'),
(328, 'Sascha', 'Quinnelly', 'squinnelly93@simplemachines.org', 'Male', 'Zoonoodle'),
(329, 'Jacklyn', 'Kull', 'jkull94@nyu.edu', 'Female', 'Youopia'),
(330, 'Annabel', 'Di Dello', 'adidello95@tuttocitta.it', 'Female', 'Dabjam'),
(331, 'Nike', 'Lundon', 'nlundon96@clickbank.net', 'Female', 'Fliptune'),
(332, 'Langston', 'Hanson', 'lhanson97@geocities.jp', 'Male', 'Feedfire'),
(333, 'Warner', 'Goundry', 'wgoundry98@histats.com', 'Male', 'Jetpulse'),
(334, 'Cordey', 'Woodfin', 'cwoodfin99@bandcamp.com', 'Non-binary', 'Zava'),
(335, 'Ashlen', 'Cawley', 'acawley9a@cpanel.net', 'Female', 'Thoughtblab'),
(336, 'Barbe', 'O\'Hickee', 'bohickee9b@zdnet.com', 'Female', 'Aivee'),
(337, 'Sunny', 'Pevreal', 'spevreal9c@foxnews.com', 'Male', 'Wikido'),
(338, 'Tanner', 'Methley', 'tmethley9d@ebay.co.uk', 'Male', 'Meedoo'),
(339, 'Rey', 'Greenley', 'rgreenley9e@earthlink.net', 'Female', 'Demizz'),
(340, 'Florrie', 'Hickenbottom', 'fhickenbottom9f@360.cn', 'Female', 'Trilith'),
(341, 'Bruis', 'Flatley', 'bflatley9g@networkadvertising.org', 'Male', 'LiveZ'),
(342, 'Chloris', 'Tournay', 'ctournay9h@microsoft.com', 'Female', 'Oba'),
(343, 'Kennan', 'Patek', 'kpatek9i@shutterfly.com', 'Male', 'Pixoboo'),
(344, 'Pam', 'Raithbie', 'praithbie9j@ucoz.ru', 'Female', 'Youtags'),
(345, 'York', 'Lawton', 'ylawton9k@amazon.com', 'Non-binary', 'Feednation'),
(346, 'Siffre', 'Cochet', 'scochet9l@soup.io', 'Male', 'Wikibox'),
(347, 'Orlando', 'Draper', 'odraper9m@census.gov', 'Male', 'Aimbo'),
(348, 'Jonas', 'Borton', 'jborton9n@blogspot.com', 'Male', 'Kwimbee'),
(349, 'Anabella', 'Kobieriecki', 'akobieriecki9o@examiner.com', 'Female', 'Ntags'),
(350, 'Val', 'Wraith', 'vwraith9p@businesswire.com', 'Female', 'Abatz'),
(351, 'Kendra', 'Quinet', 'kquinet9q@bluehost.com', 'Female', 'Youtags'),
(352, 'Ursuline', 'Hinkley', 'uhinkley9r@blinklist.com', 'Agender', 'Twitternation'),
(353, 'Noak', 'Oldred', 'noldred9s@free.fr', 'Male', 'BlogXS'),
(354, 'Raffarty', 'Agg', 'ragg9t@sakura.ne.jp', 'Male', 'Blogspan'),
(355, 'Aleen', 'Strippel', 'astrippel9u@smugmug.com', 'Female', 'Eabox'),
(356, 'Nellie', 'Heffernon', 'nheffernon9v@joomla.org', 'Female', 'Fatz'),
(357, 'Othello', 'Morrice', 'omorrice9w@yolasite.com', 'Male', 'Edgeclub'),
(358, 'Andrey', 'Twine', 'atwine9x@comcast.net', 'Male', 'Jabberbean'),
(359, 'Godfree', 'Schroter', 'gschroter9y@paypal.com', 'Genderflui', 'Dabvine'),
(360, 'Lorrie', 'Trase', 'ltrase9z@cpanel.net', 'Male', 'Zoombeat'),
(361, 'Gusty', 'MacAlister', 'gmacalistera0@tumblr.com', 'Female', 'Demimbu'),
(362, 'Gamaliel', 'Gorden', 'ggordena1@blogger.com', 'Male', 'Blogpad'),
(363, 'Domenico', 'Goldie', 'dgoldiea2@ameblo.jp', 'Male', 'Gabspot'),
(364, 'Beth', 'Coatts', 'bcoattsa3@cornell.edu', 'Female', 'Centidel'),
(365, 'Dennet', 'Farans', 'dfaransa4@feedburner.com', 'Male', 'Tagcat'),
(366, 'Jervis', 'Herreros', 'jherrerosa5@delicious.com', 'Male', 'Devify'),
(367, 'Parker', 'Leabeater', 'pleabeatera6@studiopress.com', 'Male', 'Skyba'),
(368, 'Rafaellle', 'Wemes', 'rwemesa7@newyorker.com', 'Male', 'Topiczoom'),
(369, 'Truda', 'Ivery', 'tiverya8@nba.com', 'Female', 'Yabox'),
(370, 'Nealy', 'Bowcher', 'nbowchera9@discuz.net', 'Polygender', 'Edgeclub'),
(371, 'Biron', 'Ivasyushkin', 'bivasyushkinaa@a8.net', 'Male', 'Voonyx'),
(372, 'Ed', 'Prendergrass', 'eprendergrassab@posterous.com', 'Male', 'Linktype'),
(373, 'Maire', 'Le Franc', 'mlefrancac@psu.edu', 'Female', 'Tagcat'),
(374, 'Rhett', 'Jedraszczyk', 'rjedraszczykad@accuweather.com', 'Male', 'Jabberbean'),
(375, 'Marika', 'Pedersen', 'mpedersenae@canalblog.com', 'Female', 'Realblab'),
(376, 'Lisle', 'Phipard-Shears', 'lphipardshearsaf@weather.com', 'Male', 'Oloo'),
(377, 'Powell', 'Hearnden', 'phearndenag@independent.co.uk', 'Male', 'Quamba'),
(378, 'Giacobo', 'Wickmann', 'gwickmannah@mysql.com', 'Male', 'Jetpulse'),
(379, 'Warren', 'Marcham', 'wmarchamai@rediff.com', 'Male', 'Janyx'),
(380, 'Hartwell', 'Maasze', 'hmaaszeaj@abc.net.au', 'Male', 'Tagfeed'),
(381, 'Jacintha', 'Jacox', 'jjacoxak@gizmodo.com', 'Female', 'Fatz'),
(382, 'Annie', 'Sutherel', 'asutherelal@mashable.com', 'Female', 'Twitterwire'),
(383, 'Moise', 'Strognell', 'mstrognellam@hibu.com', 'Male', 'Centizu'),
(384, 'Corty', 'Alten', 'caltenan@elegantthemes.com', 'Male', 'Geba'),
(385, 'Elinore', 'Cloney', 'ecloneyao@domainmarket.com', 'Female', 'Tagcat'),
(386, 'Benita', 'Cullinan', 'bcullinanap@seattletimes.com', 'Female', 'Twitternation'),
(387, 'Sianna', 'Rassmann', 'srassmannaq@nature.com', 'Female', 'Kanoodle'),
(388, 'Arlen', 'Handasyde', 'ahandasydear@ocn.ne.jp', 'Non-binary', 'Kwideo'),
(389, 'Kayla', 'Withnall', 'kwithnallas@godaddy.com', 'Female', 'Kwimbee'),
(390, 'Rance', 'Dawidsohn', 'rdawidsohnat@joomla.org', 'Male', 'Pixope'),
(391, 'Robbin', 'Hoyle', 'rhoyleau@nature.com', 'Female', 'Tavu'),
(392, 'Bernhard', 'Spragge', 'bspraggeav@prlog.org', 'Male', 'Twimm'),
(393, 'Jeramie', 'Zini', 'jziniaw@geocities.jp', 'Male', 'Voonyx'),
(394, 'Zelig', 'Todeo', 'ztodeoax@webeden.co.uk', 'Male', 'Meemm'),
(395, 'Calida', 'Cartmale', 'ccartmaleay@miitbeian.gov.cn', 'Female', 'Feedfire'),
(396, 'Patricio', 'Gegay', 'pgegayaz@weibo.com', 'Male', 'Muxo'),
(397, 'Burr', 'Tweedy', 'btweedyb0@dell.com', 'Male', 'Yodo'),
(398, 'Thorndike', 'Timmis', 'ttimmisb1@nih.gov', 'Genderquee', 'Jabbersphere'),
(399, 'Barclay', 'Whitington', 'bwhitingtonb2@mapquest.com', 'Male', 'Zoovu'),
(400, 'Pippa', 'Pleven', 'pplevenb3@addtoany.com', 'Female', 'Centizu'),
(401, 'Courtnay', 'Ennion', 'cennionb4@java.com', 'Male', 'Tagtune'),
(402, 'Moira', 'Cribbins', 'mcribbinsb5@ft.com', 'Female', 'Topiczoom'),
(403, 'Kaylyn', 'Maycey', 'kmayceyb6@booking.com', 'Female', 'Trudoo'),
(404, 'Merlina', 'Pashenkov', 'mpashenkovb7@forbes.com', 'Bigender', 'Topicblab'),
(405, 'Meghan', 'Cotesford', 'mcotesfordb8@myspace.com', 'Polygender', 'Divanoodle'),
(406, 'Patsy', 'Blumfield', 'pblumfieldb9@istockphoto.com', 'Female', 'Youfeed'),
(407, 'Angie', 'Traylen', 'atraylenba@cmu.edu', 'Female', 'Trunyx'),
(408, 'Carmina', 'Greenin', 'cgreeninbb@zdnet.com', 'Female', 'Aimbu'),
(409, 'Karlis', 'Kemmons', 'kkemmonsbc@desdev.cn', 'Bigender', 'Oozz'),
(410, 'Ruthanne', 'Golt', 'rgoltbd@google.com.au', 'Female', 'Eire'),
(411, 'Manya', 'Blennerhassett', 'mblennerhassettbe@vimeo.com', 'Female', 'Gabtune'),
(412, 'Korey', 'Whiteson', 'kwhitesonbf@irs.gov', 'Male', 'Edgeblab'),
(413, 'Darda', 'Venning', 'dvenningbg@tinyurl.com', 'Female', 'Edgetag'),
(414, 'Dale', 'Chell', 'dchellbh@baidu.com', 'Female', 'Riffpedia'),
(415, 'Timmie', 'Gillopp', 'tgilloppbi@odnoklassniki.ru', 'Female', 'Edgeblab'),
(416, 'Colin', 'Penfold', 'cpenfoldbj@mail.ru', 'Male', 'Babbleopia'),
(417, 'Larina', 'Craine', 'lcrainebk@bigcartel.com', 'Female', 'Riffpedia'),
(418, 'Timmi', 'Giffard', 'tgiffardbl@youtube.com', 'Non-binary', 'Rhyzio'),
(419, 'Branden', 'Zemler', 'bzemlerbm@bravesites.com', 'Male', 'Browsezoom'),
(420, 'Mariejeanne', 'Lynagh', 'mlynaghbn@apache.org', 'Female', 'Wikivu'),
(421, 'Beck', 'Beeho', 'bbeehobo@icq.com', 'Male', 'Kazio'),
(422, 'Zonda', 'Scyner', 'zscynerbp@latimes.com', 'Female', 'Zoomdog'),
(423, 'Demetrius', 'Gerler', 'dgerlerbq@sbwire.com', 'Male', 'Kwinu'),
(424, 'Erl', 'Semiras', 'esemirasbr@deviantart.com', 'Male', 'Fatz'),
(425, 'Zuzana', 'McDell', 'zmcdellbs@pagesperso-orange.fr', 'Female', 'Divanoodle'),
(426, 'Aretha', 'Tembey', 'atembeybt@netlog.com', 'Female', 'Edgetag'),
(427, 'May', 'Flemmich', 'mflemmichbu@scribd.com', 'Female', 'Oyoloo'),
(428, 'Dee dee', 'Cabral', 'dcabralbv@redcross.org', 'Female', 'Photobean'),
(429, 'Daphna', 'Zupa', 'dzupabw@discuz.net', 'Female', 'Tagcat'),
(430, 'Perle', 'Wallwork', 'pwallworkbx@sun.com', 'Female', 'Zoovu'),
(431, 'Corena', 'Tinkler', 'ctinklerby@google.co.jp', 'Bigender', 'Rooxo'),
(432, 'Graig', 'Brodway', 'gbrodwaybz@arstechnica.com', 'Male', 'Skivee'),
(433, 'Sydney', 'Gaine of England', 'sgaineofenglandc0@sun.com', 'Female', 'Cogidoo'),
(434, 'Ulberto', 'Grimley', 'ugrimleyc1@apache.org', 'Male', 'Kwilith'),
(435, 'Amalle', 'Brinsden', 'abrinsdenc2@squarespace.com', 'Female', 'Topicblab'),
(436, 'Lorne', 'Brou', 'lbrouc3@shop-pro.jp', 'Male', 'Brightdog'),
(437, 'Rosanne', 'Douthwaite', 'rdouthwaitec4@bloglovin.com', 'Female', 'Oyonder'),
(438, 'Reilly', 'Titmuss', 'rtitmussc5@lulu.com', 'Male', 'Edgewire'),
(439, 'Carlyle', 'Odo', 'codoc6@digg.com', 'Male', 'Linklinks'),
(440, 'Hermione', 'Pargiter', 'hpargiterc7@blogger.com', 'Female', 'Riffpedia'),
(441, 'Madalena', 'Lathom', 'mlathomc8@shinystat.com', 'Female', 'Topiczoom'),
(442, 'Cosetta', 'Colquite', 'ccolquitec9@google.ca', 'Female', 'Vinder'),
(443, 'Rochette', 'Pagen', 'rpagenca@cbc.ca', 'Female', 'Twitterworks'),
(444, 'Gisele', 'Toby', 'gtobycb@nature.com', 'Female', 'Yakidoo'),
(445, 'Maudie', 'Davet', 'mdavetcc@github.com', 'Female', 'Meeveo'),
(446, 'Chandal', 'Lyfe', 'clyfecd@google.fr', 'Female', 'Meejo'),
(447, 'Kathryne', 'Chappelow', 'kchappelowce@prlog.org', 'Female', 'Tavu'),
(448, 'Jacobo', 'Clayhill', 'jclayhillcf@abc.net.au', 'Male', 'Buzzster'),
(449, 'Kelley', 'Assender', 'kassendercg@printfriendly.com', 'Male', 'Wikido'),
(450, 'Ingaborg', 'Pietsma', 'ipietsmach@craigslist.org', 'Female', 'Brainlounge'),
(451, 'Loydie', 'Filipowicz', 'lfilipowiczci@mlb.com', 'Male', 'Meedoo'),
(452, 'Ferrel', 'Seint', 'fseintcj@phoca.cz', 'Male', 'Yombu'),
(453, 'Chad', 'Pashe', 'cpasheck@arstechnica.com', 'Female', 'Twimbo'),
(454, 'Gifford', 'Kulas', 'gkulascl@cyberchimps.com', 'Male', 'Eire'),
(455, 'Nikolaus', 'Davitt', 'ndavittcm@behance.net', 'Male', 'Fatz'),
(456, 'Tadeas', 'Drillingcourt', 'tdrillingcourtcn@usnews.com', 'Male', 'Abata'),
(457, 'Dela', 'Skermer', 'dskermerco@usa.gov', 'Female', 'Kwinu'),
(458, 'Cass', 'Steed', 'csteedcp@cdc.gov', 'Male', 'Realbridge'),
(459, 'Andrew', 'Sprackling', 'aspracklingcq@wisc.edu', 'Male', 'Zazio'),
(460, 'Leanor', 'Froggatt', 'lfroggattcr@wix.com', 'Female', 'Kwinu'),
(461, 'Tally', 'Joontjes', 'tjoontjescs@tiny.cc', 'Male', 'Twitterlist'),
(462, 'Godiva', 'Letts', 'glettsct@wired.com', 'Female', 'Youopia'),
(463, 'Asher', 'Vittet', 'avittetcu@vk.com', 'Male', 'Blogtags'),
(464, 'Rodina', 'Chad', 'rchadcv@sbwire.com', 'Female', 'Skyvu'),
(465, 'Mahmud', 'Hazeman', 'mhazemancw@google.com.hk', 'Male', 'Yodo'),
(466, 'Rodolph', 'Jorin', 'rjorincx@archive.org', 'Male', 'LiveZ'),
(467, 'Jodi', 'O\'Daly', 'jodalycy@va.gov', 'Male', 'Eare'),
(468, 'Edd', 'Kinane', 'ekinanecz@ed.gov', 'Male', 'Eadel'),
(469, 'Abbye', 'Tejada', 'atejadad0@buzzfeed.com', 'Female', 'Vidoo'),
(470, 'Antonetta', 'McCarney', 'amccarneyd1@smugmug.com', 'Female', 'Yoveo'),
(471, 'Korie', 'Crichmer', 'kcrichmerd2@shutterfly.com', 'Female', 'Babbleblab'),
(472, 'Sher', 'Drivers', 'sdriversd3@vkontakte.ru', 'Female', 'Buzzshare'),
(473, 'Robby', 'Houtby', 'rhoutbyd4@dion.ne.jp', 'Female', 'Lazz'),
(474, 'Fredrika', 'Songust', 'fsongustd5@umn.edu', 'Female', 'Kaymbo'),
(475, 'Benoit', 'Cleife', 'bcleifed6@harvard.edu', 'Male', 'Wikibox'),
(476, 'Sylvester', 'Sargant', 'ssargantd7@skype.com', 'Male', 'Wordify'),
(477, 'Hurley', 'Shawyers', 'hshawyersd8@macromedia.com', 'Male', 'Dablist'),
(478, 'Jeanine', 'Beecker', 'jbeeckerd9@cisco.com', 'Genderquee', 'Devify'),
(479, 'Regen', 'See', 'rseeda@plala.or.jp', 'Male', 'Gabspot'),
(480, 'Merrill', 'Gerring', 'mgerringdb@dailymotion.com', 'Female', 'Dabfeed'),
(481, 'Murielle', 'MacDuff', 'mmacduffdc@dropbox.com', 'Female', 'Gabtune'),
(482, 'Giraldo', 'Sparkwill', 'gsparkwilldd@networksolutions.com', 'Male', 'Bluejam'),
(483, 'Abe', 'Christaeas', 'achristaeasde@harvard.edu', 'Male', 'Yakitri'),
(484, 'Cissy', 'Heads', 'cheadsdf@nymag.com', 'Female', 'Topicware'),
(485, 'Torin', 'Meaking', 'tmeakingdg@aboutads.info', 'Male', 'Abatz'),
(486, 'Keeley', 'Willson', 'kwillsondh@foxnews.com', 'Genderquee', 'Trilith'),
(487, 'Blair', 'Kiljan', 'bkiljandi@cnet.com', 'Bigender', 'Feednation'),
(488, 'Tamarah', 'Guitt', 'tguittdj@networkadvertising.org', 'Genderquee', 'Jabbertype'),
(489, 'Peder', 'Kmietsch', 'pkmietschdk@eepurl.com', 'Male', 'Blogtag'),
(490, 'Rogers', 'Silvers', 'rsilversdl@indiegogo.com', 'Male', 'Jaloo'),
(491, 'Antonietta', 'Softley', 'asoftleydm@usda.gov', 'Female', 'Edgeclub'),
(492, 'Bruis', 'McIlherran', 'bmcilherrandn@xing.com', 'Male', 'Mybuzz'),
(493, 'Stephani', 'Simanenko', 'ssimanenkodo@symantec.com', 'Agender', 'Shuffletag'),
(494, 'Isiahi', 'Hartless', 'ihartlessdp@hostgator.com', 'Male', 'Gigaclub'),
(495, 'Eduard', 'Ridsdale', 'eridsdaledq@prlog.org', 'Male', 'Oyoloo'),
(496, 'Reiko', 'Clarridge', 'rclarridgedr@dion.ne.jp', 'Female', 'Tagcat'),
(497, 'Whitney', 'Wherrett', 'wwherrettds@businessweek.com', 'Male', 'Feedspan'),
(498, 'Nikolia', 'McClean', 'nmccleandt@github.com', 'Female', 'Talane'),
(499, 'Vergil', 'Brammer', 'vbrammerdu@cyberchimps.com', 'Male', 'Linklinks'),
(500, 'Chiquita', 'Grigoire', 'cgrigoiredv@newsvine.com', 'Female', 'Browsebug'),
(501, 'Humfrey', 'McLeese', 'hmcleesedw@nydailynews.com', 'Male', 'Babbleset'),
(502, 'Dari', 'Hards', 'dhardsdx@spotify.com', 'Female', 'Buzzdog'),
(503, 'Agatha', 'Shalliker', 'ashallikerdy@last.fm', 'Female', 'Twimbo'),
(504, 'Olivette', 'Phebee', 'ophebeedz@jalbum.net', 'Female', 'Zoonoodle'),
(505, 'Myrtice', 'Lante', 'mlantee0@businesswire.com', 'Female', 'Aimbu'),
(506, 'Dorey', 'Curtain', 'dcurtaine1@springer.com', 'Male', 'Centizu'),
(507, 'Denney', 'Flaubert', 'dflauberte2@people.com.cn', 'Male', 'Vipe'),
(508, 'Wren', 'Broxap', 'wbroxape3@slideshare.net', 'Female', 'Topiclounge'),
(509, 'Maximilien', 'Lant', 'mlante4@weibo.com', 'Male', 'Jatri'),
(510, 'Elke', 'Stollberg', 'estollberge5@sohu.com', 'Female', 'Twitternation'),
(511, 'Joann', 'Beeckx', 'jbeeckxe6@friendfeed.com', 'Female', 'Thoughtstorm'),
(512, 'Nelia', 'Cakebread', 'ncakebreade7@fc2.com', 'Female', 'Quaxo'),
(513, 'Tammara', 'Sor', 'tsore8@deviantart.com', 'Female', 'Linkbuzz'),
(514, 'De', 'Fowle', 'dfowlee9@un.org', 'Polygender', 'Skinder'),
(515, 'Christan', 'Tomaello', 'ctomaelloea@techcrunch.com', 'Female', 'Yodoo'),
(516, 'Binky', 'Old', 'boldeb@cnbc.com', 'Male', 'Wordtune'),
(517, 'Noelle', 'Nattrass', 'nnattrassec@1und1.de', 'Female', 'Agivu'),
(518, 'Clementine', 'Twatt', 'ctwatted@census.gov', 'Bigender', 'Skilith'),
(519, 'Cobby', 'Pirelli', 'cpirelliee@dailymotion.com', 'Male', 'Feedfish'),
(520, 'Gary', 'Oloshkin', 'goloshkinef@latimes.com', 'Male', 'Photolist'),
(521, 'Euphemia', 'Cady', 'ecadyeg@craigslist.org', 'Female', 'Trunyx'),
(522, 'Blake', 'Joiner', 'bjoinereh@xrea.com', 'Female', 'Tagchat'),
(523, 'Dugald', 'Caine', 'dcaineei@issuu.com', 'Male', 'Zazio'),
(524, 'Tore', 'Caghy', 'tcaghyej@usatoday.com', 'Male', 'Twitterwire'),
(525, 'Joellyn', 'McAllen', 'jmcallenek@ucsd.edu', 'Female', 'Jaxnation'),
(526, 'Aprilette', 'Greenhaugh', 'agreenhaughel@prweb.com', 'Female', 'Browseblab'),
(527, 'Manny', 'Grebert', 'mgrebertem@reference.com', 'Non-binary', 'Youtags'),
(528, 'Lurleen', 'Brumbye', 'lbrumbyeen@globo.com', 'Female', 'Pixonyx'),
(529, 'Liv', 'Goodee', 'lgoodeeeo@irs.gov', 'Female', 'Livefish'),
(530, 'Reginald', 'Wittrington', 'rwittringtonep@zimbio.com', 'Genderflui', 'Mita'),
(531, 'Dalt', 'Cady', 'dcadyeq@accuweather.com', 'Male', 'Browsebug'),
(532, 'Teodora', 'Hansford', 'thansforder@nbcnews.com', 'Female', 'Skyba'),
(533, 'Tatiania', 'Le Gassick', 'tlegassickes@psu.edu', 'Female', 'Brainverse'),
(534, 'Rabi', 'Guirard', 'rguirardet@businessweek.com', 'Male', 'Livepath'),
(535, 'Sashenka', 'Gever', 'sgevereu@independent.co.uk', 'Female', 'Thoughtbeat'),
(536, 'Schuyler', 'Duffett', 'sduffettev@economist.com', 'Male', 'Rhynyx'),
(537, 'Langsdon', 'Kippin', 'lkippinew@hexun.com', 'Male', 'Yabox'),
(538, 'Skippy', 'Shellard', 'sshellardex@pagesperso-orange.fr', 'Male', 'Viva'),
(539, 'Fredi', 'Tesche', 'ftescheey@flavors.me', 'Female', 'Agimba'),
(540, 'Sander', 'Severs', 'sseversez@google.es', 'Male', 'Skalith'),
(541, 'Kingsley', 'Nisuis', 'knisuisf0@harvard.edu', 'Male', 'Ooba'),
(542, 'Ragnar', 'Leake', 'rleakef1@narod.ru', 'Male', 'Topicstorm'),
(543, 'Jamey', 'Krzyzowski', 'jkrzyzowskif2@angelfire.com', 'Male', 'Jabbertype'),
(544, 'Shannon', 'Prophet', 'sprophetf3@oracle.com', 'Male', 'Jabbertype'),
(545, 'Laurena', 'Marzello', 'lmarzellof4@loc.gov', 'Female', 'Centizu'),
(546, 'Isabelita', 'Allery', 'ialleryf5@statcounter.com', 'Female', 'Eire'),
(547, 'Athene', 'Daintith', 'adaintithf6@parallels.com', 'Female', 'Katz'),
(548, 'Kamilah', 'McCrackan', 'kmccrackanf7@uiuc.edu', 'Female', 'Voolia'),
(549, 'Gib', 'Vivian', 'gvivianf8@goodreads.com', 'Polygender', 'Npath'),
(550, 'Sile', 'Farre', 'sfarref9@reference.com', 'Female', 'Camimbo'),
(551, 'Ezequiel', 'Deport', 'edeportfa@loc.gov', 'Male', 'Voolith'),
(552, 'Ardelia', 'Marjanski', 'amarjanskifb@businessweek.com', 'Female', 'Brainsphere'),
(553, 'Rora', 'Robyns', 'rrobynsfc@europa.eu', 'Female', 'Babbleopia'),
(554, 'Vera', 'Allred', 'vallredfd@china.com.cn', 'Female', 'Demizz'),
(555, 'Baxie', 'Fawdrie', 'bfawdriefe@google.cn', 'Male', 'Devcast'),
(556, 'Paddie', 'Fullerton', 'pfullertonff@google.nl', 'Male', 'Fivechat'),
(557, 'Kimbra', 'Spalls', 'kspallsfg@nih.gov', 'Female', 'Gabspot'),
(558, 'Lurette', 'Hanretty', 'lhanrettyfh@so-net.ne.jp', 'Female', 'Zooxo'),
(559, 'Helga', 'Griffiths', 'hgriffithsfi@hp.com', 'Female', 'Rhynoodle'),
(560, 'Blithe', 'Poone', 'bpoonefj@state.tx.us', 'Female', 'Livetube'),
(561, 'Chlo', 'Revelle', 'crevellefk@fc2.com', 'Female', 'Pixonyx'),
(562, 'Toby', 'Haggerwood', 'thaggerwoodfl@auda.org.au', 'Male', 'Rooxo'),
(563, 'Luz', 'Boyle', 'lboylefm@disqus.com', 'Female', 'Realmix'),
(564, 'Phylys', 'Poker', 'ppokerfn@state.tx.us', 'Female', 'Skidoo'),
(565, 'Callida', 'Vasilchenko', 'cvasilchenkofo@hubpages.com', 'Genderflui', 'Wordware'),
(566, 'Derron', 'Rozier', 'drozierfp@sakura.ne.jp', 'Male', 'Yodo'),
(567, 'Jyoti', 'Jeffery', 'jjefferyfq@webnode.com', 'Female', 'InnoZ'),
(568, 'Staffard', 'Sellwood', 'ssellwoodfr@statcounter.com', 'Male', 'Twitterwire'),
(569, 'Jonell', 'Tivnan', 'jtivnanfs@state.tx.us', 'Female', 'Jabberstorm'),
(570, 'Korie', 'Rudolf', 'krudolfft@imgur.com', 'Female', 'Livetube'),
(571, 'Erich', 'Hartup', 'ehartupfu@360.cn', 'Male', 'Layo'),
(572, 'Leif', 'Arndt', 'larndtfv@jalbum.net', 'Male', 'Skipstorm'),
(573, 'Giorgi', 'Dilkes', 'gdilkesfw@usda.gov', 'Male', 'Ainyx'),
(574, 'Angelico', 'Charter', 'acharterfx@technorati.com', 'Male', 'Jabberstorm'),
(575, 'Roselle', 'Camacho', 'rcamachofy@boston.com', 'Female', 'Quire'),
(576, 'Buck', 'Agott', 'bagottfz@unblog.fr', 'Male', 'Pixonyx'),
(577, 'Zane', 'Georgot', 'zgeorgotg0@chron.com', 'Male', 'Yamia'),
(578, 'Yalonda', 'Ferran', 'yferrang1@cyberchimps.com', 'Female', 'Gabcube'),
(579, 'Kelcie', 'Popescu', 'kpopescug2@woothemes.com', 'Female', 'Dynava'),
(580, 'Terri', 'Allchorne', 'tallchorneg3@bluehost.com', 'Male', 'Photobug'),
(581, 'Grace', 'Brickell', 'gbrickellg4@businesswire.com', 'Male', 'Cogilith'),
(582, 'Elvin', 'Stroder', 'estroderg5@yandex.ru', 'Male', 'Trilith'),
(583, 'Aila', 'Corday', 'acordayg6@skyrock.com', 'Non-binary', 'Aibox'),
(584, 'Luis', 'Pook', 'lpookg7@samsung.com', 'Male', 'Demimbu'),
(585, 'Collette', 'Daniells', 'cdaniellsg8@cornell.edu', 'Female', 'Oloo'),
(586, 'Elicia', 'Braidford', 'ebraidfordg9@chron.com', 'Female', 'Twitterbridge'),
(587, 'Carey', 'Seawright', 'cseawrightga@wp.com', 'Male', 'Edgewire'),
(588, 'Arlena', 'Stiant', 'astiantgb@cam.ac.uk', 'Genderquee', 'Rhyzio'),
(589, 'Alfredo', 'MacGebenay', 'amacgebenaygc@privacy.gov.au', 'Male', 'Twitterworks'),
(590, 'Inigo', 'Angove', 'iangovegd@multiply.com', 'Male', 'Trunyx'),
(591, 'Dag', 'McQuirk', 'dmcquirkge@shinystat.com', 'Male', 'Mynte'),
(592, 'Kyla', 'Reinbech', 'kreinbechgf@yellowbook.com', 'Non-binary', 'Feedfire'),
(593, 'Noelle', 'Covelle', 'ncovellegg@prweb.com', 'Female', 'Zazio'),
(594, 'Alia', 'Torricella', 'atorricellagh@etsy.com', 'Female', 'Babbleset'),
(595, 'Ali', 'Nitti', 'anittigi@oaic.gov.au', 'Female', 'Zoombox'),
(596, 'Melinde', 'Trevorrow', 'mtrevorrowgj@1und1.de', 'Female', 'Realfire'),
(597, 'Cherrita', 'Nisby', 'cnisbygk@senate.gov', 'Female', 'Topicware'),
(598, 'Eartha', 'Etchingham', 'eetchinghamgl@economist.com', 'Female', 'Feedfish'),
(599, 'Gerrard', 'Keer', 'gkeergm@usa.gov', 'Male', 'Devshare'),
(600, 'Willa', 'Gerson', 'wgersongn@infoseek.co.jp', 'Female', 'Meevee'),
(601, 'Cornell', 'Odeson', 'codesongo@hud.gov', 'Agender', 'Reallinks'),
(602, 'Maurizia', 'Butlin', 'mbutlingp@vinaora.com', 'Female', 'Photolist'),
(603, 'Zared', 'Brabbins', 'zbrabbinsgq@pinterest.com', 'Male', 'Roodel'),
(604, 'Siobhan', 'Sketh', 'sskethgr@tripadvisor.com', 'Female', 'Twimm'),
(605, 'Dallon', 'Angier', 'dangiergs@dailymail.co.uk', 'Male', 'Chatterpoint'),
(606, 'Beitris', 'Rainbow', 'brainbowgt@aboutads.info', 'Female', 'Browsedrive'),
(607, 'Briggs', 'Emmanuele', 'bemmanuelegu@jiathis.com', 'Male', 'Kwideo'),
(608, 'Lari', 'Wand', 'lwandgv@npr.org', 'Female', 'Dynabox'),
(609, 'Silvain', 'Le Sieur', 'slesieurgw@biblegateway.com', 'Male', 'Wordtune'),
(610, 'Ursola', 'Rickwood', 'urickwoodgx@paypal.com', 'Polygender', 'Fatz'),
(611, 'Gaby', 'Freckingham', 'gfreckinghamgy@blogspot.com', 'Male', 'Geba'),
(612, 'Pietra', 'Reckus', 'preckusgz@webeden.co.uk', 'Female', 'Jaloo'),
(613, 'Manfred', 'Ferreras', 'mferrerash0@uiuc.edu', 'Male', 'Feedspan'),
(614, 'Hadrian', 'Golston', 'hgolstonh1@slate.com', 'Male', 'Wordware'),
(615, 'Kara-lynn', 'Brignall', 'kbrignallh2@naver.com', 'Female', 'Quinu'),
(616, 'Christophe', 'Deverock', 'cdeverockh3@opera.com', 'Male', 'Rhyzio'),
(617, 'Verine', 'Abrahmovici', 'vabrahmovicih4@cpanel.net', 'Female', 'Oyoba'),
(618, 'Araldo', 'Christoforou', 'achristoforouh5@storify.com', 'Male', 'Voonyx'),
(619, 'Shanan', 'Pease', 'speaseh6@unesco.org', 'Male', 'Realcube'),
(620, 'Francisca', 'Fleisch', 'ffleischh7@xinhuanet.com', 'Female', 'Oyonder'),
(621, 'Wade', 'Buckthorp', 'wbuckthorph8@usa.gov', 'Male', 'Eabox'),
(622, 'Dorisa', 'Wigelsworth', 'dwigelsworthh9@hhs.gov', 'Female', 'Skyble'),
(623, 'Fremont', 'Izhak', 'fizhakha@paypal.com', 'Male', 'Fiveclub'),
(624, 'Wilbur', 'Longmead', 'wlongmeadhb@facebook.com', 'Male', 'Thoughtworks'),
(625, 'Falkner', 'Struther', 'fstrutherhc@amazon.co.jp', 'Male', 'Feedspan'),
(626, 'Dante', 'Waltho', 'dwalthohd@cargocollective.com', 'Male', 'Linklinks'),
(627, 'Jeramie', 'Rigardeau', 'jrigardeauhe@4shared.com', 'Male', 'Kanoodle'),
(628, 'Skelly', 'Gocher', 'sgocherhf@shareasale.com', 'Male', 'Devpulse'),
(629, 'Toma', 'Aspinwall', 'taspinwallhg@princeton.edu', 'Female', 'Fadeo'),
(630, 'Augustus', 'Lascelles', 'alascelleshh@state.tx.us', 'Male', 'Gabspot'),
(631, 'Kyle', 'O\'Mailey', 'komaileyhi@ucla.edu', 'Male', 'Zoomlounge'),
(632, 'Ibby', 'Van Driel', 'ivandrielhj@oaic.gov.au', 'Female', 'Jazzy'),
(633, 'Briggs', 'Brompton', 'bbromptonhk@google.fr', 'Male', 'Midel'),
(634, 'Winnah', 'Lowry', 'wlowryhl@omniture.com', 'Female', 'Nlounge'),
(635, 'Godfree', 'Sibille', 'gsibillehm@discovery.com', 'Male', 'Zoomzone'),
(636, 'Culver', 'Zorzoni', 'czorzonihn@java.com', 'Male', 'Fliptune'),
(637, 'Morse', 'Roggieri', 'mroggieriho@photobucket.com', 'Male', 'Voomm'),
(638, 'Minny', 'Kirtley', 'mkirtleyhp@msn.com', 'Female', 'Oodoo'),
(639, 'Delora', 'Brikner', 'dbriknerhq@free.fr', 'Female', 'Dabtype'),
(640, 'Skipp', 'Carwithen', 'scarwithenhr@clickbank.net', 'Male', 'Riffwire'),
(641, 'Tabor', 'Limpenny', 'tlimpennyhs@wordpress.com', 'Male', 'Plambee'),
(642, 'Fianna', 'Delgardillo', 'fdelgardilloht@issuu.com', 'Female', 'Mydo'),
(643, 'Ennis', 'Spilsted', 'espilstedhu@fotki.com', 'Male', 'Aimbo'),
(644, 'Lyndsie', 'Aldrick', 'laldrickhv@xinhuanet.com', 'Female', 'Fivespan'),
(645, 'Rosalie', 'Sprakes', 'rsprakeshw@npr.org', 'Female', 'Yoveo'),
(646, 'Veronika', 'Troni', 'vtronihx@symantec.com', 'Female', 'Realcube'),
(647, 'Artemas', 'Gillum', 'agillumhy@indiegogo.com', 'Male', 'Twimm'),
(648, 'Shaine', 'Whyke', 'swhykehz@geocities.jp', 'Female', 'Livepath'),
(649, 'Raleigh', 'Hallbird', 'rhallbirdi0@godaddy.com', 'Male', 'Dabvine'),
(650, 'Hugibert', 'Godlee', 'hgodleei1@cmu.edu', 'Male', 'Tekfly'),
(651, 'Ivie', 'Burnsall', 'iburnsalli2@ycombinator.com', 'Female', 'Mydo'),
(652, 'Jessie', 'Piers', 'jpiersi3@topsy.com', 'Male', 'Linklinks'),
(653, 'Ginny', 'Shakespeare', 'gshakespearei4@1und1.de', 'Female', 'Oyondu'),
(654, 'Gerti', 'Thody', 'gthodyi5@nba.com', 'Female', 'Tavu'),
(655, 'Shaylynn', 'Domelow', 'sdomelowi6@ft.com', 'Female', 'Skilith'),
(656, 'Pierre', 'Tomaselli', 'ptomasellii7@archive.org', 'Male', 'Geba'),
(657, 'Sansone', 'Scolding', 'sscoldingi8@chron.com', 'Male', 'Wikivu'),
(658, 'Duffy', 'Poles', 'dpolesi9@dedecms.com', 'Male', 'InnoZ'),
(659, 'Greer', 'Lantiff', 'glantiffia@tripod.com', 'Female', 'Skyba'),
(660, 'Elia', 'Lamputt', 'elamputtib@com.com', 'Agender', 'Quimba'),
(661, 'Robb', 'Swanson', 'rswansonic@com.com', 'Male', 'Pixonyx'),
(662, 'Herc', 'Blakeman', 'hblakemanid@baidu.com', 'Male', 'Meeveo'),
(663, 'Tracy', 'Richardson', 'trichardsonie@devhub.com', 'Male', 'Yamia'),
(664, 'Eb', 'Keijser', 'ekeijserif@geocities.com', 'Bigender', 'Dablist'),
(665, 'Paulina', 'Burgoin', 'pburgoinig@list-manage.com', 'Female', 'Skiba'),
(666, 'Annecorinne', 'Kuhndel', 'akuhndelih@wired.com', 'Female', 'Shufflester'),
(667, 'Derek', 'Budik', 'dbudikii@example.com', 'Male', 'Viva'),
(668, 'Loree', 'Maddy', 'lmaddyij@alexa.com', 'Female', 'Talane'),
(669, 'Urbanus', 'McEnhill', 'umcenhillik@ed.gov', 'Male', 'Thoughtworks'),
(670, 'Eduard', 'Tremouille', 'etremouilleil@huffingtonpost.com', 'Male', 'Fadeo'),
(671, 'Roselia', 'Pezey', 'rpezeyim@flickr.com', 'Female', 'Voomm'),
(672, 'Catlaina', 'MacGahey', 'cmacgaheyin@dedecms.com', 'Female', 'Katz'),
(673, 'Corena', 'Minihan', 'cminihanio@baidu.com', 'Female', 'Skipstorm'),
(674, 'Antonia', 'Derrell', 'aderrellip@discovery.com', 'Female', 'Skajo'),
(675, 'Anabella', 'Demschke', 'ademschkeiq@yahoo.com', 'Female', 'Oyoba'),
(676, 'Ailina', 'Banbrook', 'abanbrookir@phoca.cz', 'Agender', 'Oyoloo'),
(677, 'Aloysius', 'Whybray', 'awhybrayis@microsoft.com', 'Male', 'Realfire'),
(678, 'Daniel', 'Room', 'droomit@pcworld.com', 'Male', 'Zoombeat'),
(679, 'Zechariah', 'Crisp', 'zcrispiu@ehow.com', 'Male', 'Agimba'),
(680, 'Miltie', 'Neesam', 'mneesamiv@shinystat.com', 'Male', 'Fiveclub'),
(681, 'Nye', 'Dainter', 'ndainteriw@youtube.com', 'Male', 'Flashdog'),
(682, 'Myrtle', 'Dalman', 'mdalmanix@vk.com', 'Female', 'Buzzster'),
(683, 'Ingemar', 'Pinyon', 'ipinyoniy@patch.com', 'Male', 'Livetube'),
(684, 'Leupold', 'Painten', 'lpainteniz@wikimedia.org', 'Male', 'Fatz'),
(685, 'Olivie', 'Tieman', 'otiemanj0@bing.com', 'Female', 'Oodoo'),
(686, 'Neile', 'MacWhirter', 'nmacwhirterj1@so-net.ne.jp', 'Female', 'Quimm'),
(687, 'Riannon', 'Millmore', 'rmillmorej2@umich.edu', 'Female', 'Meejo'),
(688, 'Davidde', 'Liverock', 'dliverockj3@nps.gov', 'Male', 'Innojam'),
(689, 'Burr', 'Rowley', 'browleyj4@elegantthemes.com', 'Male', 'Divape'),
(690, 'Robby', 'Huntly', 'rhuntlyj5@weather.com', 'Male', 'Avavee'),
(691, 'Cybil', 'Lunnon', 'clunnonj6@admin.ch', 'Female', 'Trilia'),
(692, 'Darcy', 'Heinig', 'dheinigj7@merriam-webster.com', 'Polygender', 'Linkbuzz'),
(693, 'Delores', 'Sorbey', 'dsorbeyj8@mapquest.com', 'Female', 'Thoughtbeat'),
(694, 'Pippo', 'Anchor', 'panchorj9@is.gd', 'Male', 'Ooba'),
(695, 'Waverly', 'Khilkov', 'wkhilkovja@altervista.org', 'Male', 'Oyope');
INSERT INTO `clientes` (`idCLiente`, `nome`, `sobrenome`, `email`, `genero`, `nomeEmpresa`) VALUES
(696, 'Koralle', 'Hardinge', 'khardingejb@dyndns.org', 'Female', 'Livepath'),
(697, 'Beilul', 'Gossington', 'bgossingtonjc@epa.gov', 'Bigender', 'Trilia'),
(698, 'Baily', 'Tethcote', 'btethcotejd@indiegogo.com', 'Male', 'Blogtags'),
(699, 'Bernard', 'Bottrell', 'bbottrellje@merriam-webster.com', 'Male', 'Layo'),
(700, 'Ramonda', 'Spurryer', 'rspurryerjf@hhs.gov', 'Female', 'Flashset');

-- --------------------------------------------------------

--
-- Estrutura da tabela `conta`
--

CREATE TABLE `conta` (
  `numeroConta` int(11) NOT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `saldo` float DEFAULT NULL,
  `possuiPendencias` tinyint(1) DEFAULT NULL,
  `dataCriacao` date DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `fatura` text DEFAULT NULL,
  `encerramentoDaFatura` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `conta`
--

INSERT INTO `conta` (`numeroConta`, `idCliente`, `saldo`, `possuiPendencias`, `dataCriacao`, `tipo`, `fatura`, `encerramentoDaFatura`) VALUES
(1, NULL, 13.5, 1, '2020-05-09', 'corrente', '999.999', '2025-06-11'),
(2, NULL, 1.01, 0, '2021-09-09', 'poupança', '19.50', '2025-06-11'),
(3, NULL, 0.5, 0, '2022-10-12', 'corrente', '5.79', '2025-06-11'),
(4, NULL, 100.01, 1, '2023-11-05', 'digital', '9.80', '2025-06-11'),
(5, NULL, 51.51, 1, '2024-05-11', 'corrente', '9.9', '2025-06-11'),
(6, NULL, 1.001, 0, '2025-08-12', 'credito', '99.95', '2025-06-11'),
(7, NULL, 550.01, 0, '2025-08-12', 'corrente', '69.9', '2025-06-11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `cpf` bigint(11) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `dataAdmissao` datetime DEFAULT NULL,
  `setor` varchar(45) DEFAULT NULL,
  `cargaHoraria` int(11) DEFAULT NULL,
  `turno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`cpf`, `nome`, `email`, `dataAdmissao`, `setor`, `cargaHoraria`, `turno`) VALUES
(12345678910, 'Roberto Vastos', 'vastinho@gmail.com', '2005-05-12 00:00:00', 'administração', 8, 2),
(12345678911, 'Mauricio Varela', 'varelao@gmail.com', '2005-05-04 00:00:00', 'segurança', 12, 1),
(12345678912, 'Marilia Campos', 'marilhac@gmail.com', '2005-05-08 00:00:00', 'administração', 10, 2),
(12345678913, 'Juvenal Rodrigues', 'jujurdgs@gmail.com', '2005-05-09 00:00:00', 'atendimento', 6, 3),
(12345678914, 'Jõao Paulo', 'jpzinho@gmail.com', '2005-05-10 00:00:00', 'administração', 6, 3),
(12345678915, 'Renata Silva', 'ingrata06@gmail.com', '2005-05-12 00:00:00', 'atendimento', 10, 2),
(12345678916, 'Diego Vastos', 'vastinhojr@gmail.com', '2005-05-11 00:00:00', 'administração', 6, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL,
  `idDoCliente` int(11) DEFAULT NULL,
  `numeroDoCartao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `agencias`
--
ALTER TABLE `agencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `numeroDaConta` (`numeroDaConta`);

--
-- Índices para tabela `cartao`
--
ALTER TABLE `cartao`
  ADD PRIMARY KEY (`numeroCartao`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCLiente`);

--
-- Índices para tabela `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`numeroConta`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `idDoCliente` (`idDoCliente`),
  ADD KEY `numeroDoCartao` (`numeroDoCartao`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agencias`
--
ALTER TABLE `agencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cartao`
--
ALTER TABLE `cartao`
  MODIFY `numeroCartao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `conta`
--
ALTER TABLE `conta`
  MODIFY `numeroConta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `agencias`
--
ALTER TABLE `agencias`
  ADD CONSTRAINT `agencias_ibfk_1` FOREIGN KEY (`numeroDaConta`) REFERENCES `conta` (`numeroConta`);

--
-- Limitadores para a tabela `conta`
--
ALTER TABLE `conta`
  ADD CONSTRAINT `conta_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCLiente`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`idDoCliente`) REFERENCES `clientes` (`idCLiente`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`numeroDoCartao`) REFERENCES `cartao` (`numeroCartao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `pigcms_reservation`;");
E_C("CREATE TABLE `pigcms_reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `addtype` varchar(20) NOT NULL DEFAULT 'house_book',
  `address` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `lng` varchar(13) NOT NULL,
  `lat` varchar(13) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `headpic` varchar(200) NOT NULL,
  `info` text,
  `typename` varchar(50) NOT NULL,
  `typename2` varchar(50) NOT NULL,
  `typename3` varchar(50) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `date` varchar(50) NOT NULL,
  `allnums` varchar(50) NOT NULL,
  `name_show` tinyint(4) NOT NULL DEFAULT '1',
  `time_show` tinyint(4) NOT NULL DEFAULT '1',
  `txt1` varchar(50) NOT NULL,
  `value1` varchar(50) NOT NULL,
  `txt2` varchar(50) NOT NULL,
  `value2` varchar(50) NOT NULL,
  `txt3` varchar(50) NOT NULL,
  `value3` varchar(50) NOT NULL,
  `txt4` varchar(50) NOT NULL,
  `value4` varchar(50) NOT NULL,
  `txt5` varchar(50) NOT NULL,
  `value5` varchar(50) NOT NULL,
  `select1` varchar(50) NOT NULL,
  `svalue1` varchar(100) NOT NULL,
  `select2` varchar(50) NOT NULL,
  `svalue2` varchar(100) NOT NULL,
  `select3` varchar(50) NOT NULL,
  `svalue3` varchar(100) NOT NULL,
  `select4` varchar(50) NOT NULL,
  `svalue4` varchar(100) NOT NULL,
  `select5` varchar(50) NOT NULL,
  `svalue5` varchar(100) NOT NULL,
  `datename` varchar(100) NOT NULL,
  `take` int(11) NOT NULL DEFAULT '1',
  `email` varchar(30) NOT NULL,
  `open_email` tinyint(4) NOT NULL DEFAULT '0',
  `sms` varchar(13) NOT NULL,
  `open_sms` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='预约'");

require("../../inc/footer.php");
?>
<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('latin1');
E_D("DROP TABLE IF EXISTS `tp_service_logs`;");
E_C("CREATE TABLE `tp_service_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `enddate` int(11) NOT NULL,
  `keyword` varchar(200) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=latin1");

require("../../inc/footer.php");
?>
<?php
require("../../inc/header.php");

/*
		SoftName : EmpireBak Version 2010
		Author   : wm_chief
		Copyright: Powered by www.phome.net
*/

DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `pigcms_token_open`;");
E_C("CREATE TABLE `pigcms_token_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `queryname` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8");
E_D("replace into `pigcms_token_open` values('6','7','gjhmix1401009360','tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,,,wall,shake,forum,medical,message,share,hotel,school');");

require("../../inc/footer.php");
?>
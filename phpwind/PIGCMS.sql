

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `pigcms_access`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_access`;
CREATE TABLE `pigcms_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_access
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_adma`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_adma`;
CREATE TABLE `pigcms_adma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `url` varchar(100) NOT NULL,
  `copyright` varchar(50) NOT NULL,
  `info` varchar(120) NOT NULL,
  `title` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='diy 宣传页';



-- ----------------------------
-- Table structure for `pigcms_alipay_config`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_alipay_config`;
CREATE TABLE `pigcms_alipay_config` (
  `token` varchar(60) NOT NULL,
  `paytype` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `pid` varchar(40) NOT NULL DEFAULT '',
  `key` varchar(200) NOT NULL DEFAULT '',
  `partnerkey` varchar(100) NOT NULL DEFAULT '',
  `appsecret` varchar(200) NOT NULL DEFAULT '',
  `appid` varchar(60) NOT NULL DEFAULT '',
  `paysignkey` varchar(200) NOT NULL DEFAULT '',
  `partnerid` varchar(200) NOT NULL DEFAULT '',
  `open` tinyint(1) NOT NULL DEFAULT '0',
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_api`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_api`;
CREATE TABLE `pigcms_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `token` varchar(60) NOT NULL,
  `url` varchar(100) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `is_colation` tinyint(1) NOT NULL,
  `colation_keyword` varchar(100) NOT NULL,
  `number` tinyint(1) NOT NULL,
  `order` tinyint(1) NOT NULL,
  `time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`token`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='第三方api接口表';


-- ----------------------------
-- Table structure for `pigcms_areply`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_areply`;
CREATE TABLE `pigcms_areply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `token` char(30) NOT NULL,
  `home` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_attribute`;
CREATE TABLE `pigcms_attribute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `catid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `name` varchar(100) NOT NULL COMMENT '属性名',
  `value` varchar(100) NOT NULL COMMENT '属性值',
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`catid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品的属性';

-- ----------------------------
-- Records of pigcms_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_behavior`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_behavior`;
CREATE TABLE `pigcms_behavior` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `date` varchar(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `model` varchar(60) NOT NULL,
  `num` int(11) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM AUTO_INCREMENT=501 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_busines`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_busines`;
CREATE TABLE `pigcms_busines` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `mtitle` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `album_id` int(11) NOT NULL,
  `toppicurl` varchar(200) NOT NULL DEFAULT '',
  `roompicurl` varchar(200) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `longitude` char(11) NOT NULL DEFAULT '',
  `latitude` char(11) NOT NULL DEFAULT '',
  `business_desc` text NOT NULL,
  `type` char(15) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `blogo` varchar(200) NOT NULL,
  `businesphone` char(13) NOT NULL DEFAULT '',
  `orderInfo` varchar(800) NOT NULL DEFAULT '',
  `compyphone` char(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_busines
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_busines_comment`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_busines_comment`;
CREATE TABLE `pigcms_busines_comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` varchar(50) NOT NULL DEFAULT '',
  `face_picurl` varchar(200) NOT NULL,
  `face_desc` varchar(1000) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_busines_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_busines_main`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_busines_main`;
CREATE TABLE `pigcms_busines_main` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `main_desc` text NOT NULL,
  `type` char(15) NOT NULL,
  `telphone` char(12) NOT NULL DEFAULT '',
  `maddress` varchar(50) NOT NULL DEFAULT '',
  `desc_pic` varchar(200) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_busines_main
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_busines_pic`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_busines_pic`;
CREATE TABLE `pigcms_busines_pic` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `bid_id` int(11) NOT NULL,
  `picurl_1` varchar(200) NOT NULL DEFAULT '',
  `picurl_2` varchar(200) NOT NULL DEFAULT '',
  `picurl_3` varchar(200) NOT NULL DEFAULT '',
  `picurl_4` varchar(200) NOT NULL DEFAULT '',
  `picurl_5` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL,
  `ablum_id` int(11) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_busines_pic
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_busines_second`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_busines_second`;
CREATE TABLE `pigcms_busines_second` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mid_id` int(11) NOT NULL,
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `learntime` varchar(100) NOT NULL,
  `datatype` varchar(100) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `second_desc` text NOT NULL,
  `oneprice` decimal(10,2) DEFAULT '0.00',
  `googsnumber` bigint(20) NOT NULL DEFAULT '0',
  `havenumber` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_busines_second
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_car`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_car`;
CREATE TABLE `pigcms_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `www` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `sort` int(11) DEFAULT NULL,
  `info` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_car
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_car_utility`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_car_utility`;
CREATE TABLE `pigcms_car_utility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_carmodel`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_carmodel`;
CREATE TABLE `pigcms_carmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brand_serise` varchar(50) NOT NULL,
  `model_year` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `panorama_id` int(11) DEFAULT '0',
  `guide_price` decimal(10,3) NOT NULL,
  `dealer_price` decimal(10,3) NOT NULL,
  `emission` double NOT NULL,
  `stalls` tinyint(4) DEFAULT NULL,
  `box` tinyint(4) NOT NULL,
  `pic_url` varchar(200) NOT NULL,
  `s_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_carmodel
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_carnews`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_carnews`;
CREATE TABLE `pigcms_carnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `news_id` int(11) NOT NULL,
  `pre_id` int(11) NOT NULL,
  `usedcar_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_carnews
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_carowner`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_carowner`;
CREATE TABLE `pigcms_carowner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '''''',
  `head_url` varchar(200) NOT NULL DEFAULT '''''',
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_carowner
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_carsaler`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_carsaler`;
CREATE TABLE `pigcms_carsaler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `mobile` char(13) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `salestype` tinyint(4) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_carsaler
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_carseries`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_carseries`;
CREATE TABLE `pigcms_carseries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `shortname` varchar(50) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_carseries
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_carset`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_carset`;
CREATE TABLE `pigcms_carset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `head_url` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL,
  `title1` varchar(50) NOT NULL DEFAULT '',
  `title2` varchar(50) NOT NULL DEFAULT '',
  `title3` varchar(50) NOT NULL DEFAULT '',
  `title4` varchar(50) NOT NULL DEFAULT '',
  `title5` varchar(50) NOT NULL DEFAULT '',
  `title6` varchar(50) NOT NULL DEFAULT '',
  `head_url_1` varchar(200) NOT NULL DEFAULT '',
  `head_url_2` varchar(200) NOT NULL DEFAULT '',
  `head_url_3` varchar(200) NOT NULL DEFAULT '',
  `head_url_4` varchar(200) NOT NULL DEFAULT '',
  `head_url_5` varchar(200) NOT NULL DEFAULT '',
  `head_url_6` varchar(200) NOT NULL DEFAULT '',
  `url1` varchar(200) NOT NULL DEFAULT '',
  `url2` varchar(200) NOT NULL DEFAULT '',
  `url3` varchar(200) NOT NULL DEFAULT '',
  `url4` varchar(200) NOT NULL DEFAULT '',
  `url5` varchar(200) NOT NULL DEFAULT '',
  `url6` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_carset
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_caruser`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_caruser`;
CREATE TABLE `pigcms_caruser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `brand_serise` varchar(50) NOT NULL,
  `car_no` varchar(20) NOT NULL,
  `car_userName` varchar(50) NOT NULL,
  `car_startTime` varchar(50) NOT NULL,
  `car_insurance_lastDate` varchar(50) NOT NULL,
  `car_insurance_lastCost` decimal(10,2) NOT NULL,
  `car_care_mileage` int(11) NOT NULL,
  `user_tel` char(11) NOT NULL,
  `car_care_lastDate` varchar(50) NOT NULL,
  `car_care_lastCost` decimal(10,2) NOT NULL,
  `kfinfo` varchar(200) NOT NULL DEFAULT '',
  `insurance_Date` varchar(50) DEFAULT NULL,
  `insurance_Cost` decimal(10,2) DEFAULT NULL,
  `care_mileage` int(11) DEFAULT NULL,
  `car_care_Date` varchar(50) DEFAULT NULL,
  `car_care_Cost` decimal(10,2) DEFAULT NULL,
  `car_buyTime` varchar(50) NOT NULL DEFAULT '',
  `car_care_inspection` varchar(50) NOT NULL DEFAULT '',
  `care_next_mileage` int(11) NOT NULL DEFAULT '0',
  `next_care_inspection` varchar(50) NOT NULL DEFAULT '',
  `next_insurance_Date` varchar(50) NOT NULL DEFAULT '',
  `carmodel` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='3G car';

-- ----------------------------
-- Records of pigcms_caruser
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_case`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_case`;
CREATE TABLE `pigcms_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `url` char(255) NOT NULL,
  `img` char(200) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_catemenu`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_catemenu`;
CREATE TABLE `pigcms_catemenu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `name` varchar(120) NOT NULL,
  `orderss` varchar(10) NOT NULL DEFAULT '0',
  `picurl` varchar(120) NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT '0',
  `status` varchar(10) NOT NULL,
  `RadioGroup1` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_classify`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_classify`;
CREATE TABLE `pigcms_classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `info` varchar(90) NOT NULL COMMENT '分类描述',
  `sorts` int(6) NOT NULL COMMENT '显示顺序',
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `token` varchar(30) NOT NULL,
  `path` varchar(3000) DEFAULT '0',
  `tpid` tinyint(4) DEFAULT '1',
  `conttpid` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_company`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_company`;
CREATE TABLE `pigcms_company` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(60) NOT NULL,
  `password` varchar(32) NOT NULL,
  `shortname` varchar(50) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `tel` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL DEFAULT '',
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `intro` text NOT NULL,
  `catid` mediumint(3) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `isbranch` tinyint(1) NOT NULL DEFAULT '0',
  `logourl` varchar(180) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_company_staff`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_company_staff`;
CREATE TABLE `pigcms_company_staff` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `companyid` int(10) NOT NULL,
  `token` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `tel` varchar(11) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `companyid` (`companyid`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_company_staff
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_dining_table`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_dining_table`;
CREATE TABLE `pigcms_dining_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `image` varchar(200) NOT NULL,
  `isbox` tinyint(1) unsigned NOT NULL,
  `isorder` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `isbox` (`isbox`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_dining_table
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_dish`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_dish`;
CREATE TABLE `pigcms_dish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `unit` varchar(3) NOT NULL,
  `price` float NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL,
  `isopen` tinyint(1) unsigned NOT NULL,
  `image` varchar(200) NOT NULL COMMENT '片',
  `des` varchar(500) NOT NULL,
  `creattime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`),
  KEY `isopen` (`isopen`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_dish
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_dish_company`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_dish_company`;
CREATE TABLE `pigcms_dish_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `istakeaway` tinyint(1) unsigned NOT NULL,
  `price` float NOT NULL,
  `payonline` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_dish_company
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_dish_like`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_dish_like`;
CREATE TABLE `pigcms_dish_like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `did` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `wecha_id` (`wecha_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_dish_like
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_dish_order`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_dish_order`;
CREATE TABLE `pigcms_dish_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `price` float NOT NULL,
  `nums` smallint(3) unsigned NOT NULL,
  `info` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `address` varchar(200) NOT NULL,
  `tableid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `reservetime` int(11) NOT NULL,
  `isuse` tinyint(1) NOT NULL,
  `paid` tinyint(1) unsigned NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `printed` tinyint(1) unsigned NOT NULL,
  `des` varchar(500) NOT NULL,
  `takeaway` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`wecha_id`),
  KEY `token` (`token`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_dish_order
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_dish_sort`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_dish_sort`;
CREATE TABLE `pigcms_dish_sort` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `des` varchar(500) NOT NULL,
  `image` varchar(200) NOT NULL,
  `num` smallint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_dish_sort
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_dish_table`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_dish_table`;
CREATE TABLE `pigcms_dish_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `tableid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `reservetime` int(10) unsigned NOT NULL,
  `creattime` int(10) unsigned NOT NULL,
  `orderid` int(10) unsigned NOT NULL,
  `isuse` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `wecha_id` (`wecha_id`,`reservetime`),
  KEY `tableid` (`tableid`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_dish_table
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_diyform`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_diyform`;
CREATE TABLE `pigcms_diyform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `age` tinyint(2) NOT NULL,
  `qq` int(11) NOT NULL,
  `photo` int(11) NOT NULL,
  `tel` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_diyform
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_diyform_set`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_diyform_set`;
CREATE TABLE `pigcms_diyform_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `jion_num` int(5) NOT NULL,
  `select_name` varchar(200) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_diyform_set
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_diymen_class`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_diymen_class`;
CREATE TABLE `pigcms_diymen_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `url` varchar(150) NOT NULL,
  `is_show` tinyint(1) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_diymen_set`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_diymen_set`;
CREATE TABLE `pigcms_diymen_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `appid` varchar(18) NOT NULL,
  `appsecret` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_estate`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_estate`;
CREATE TABLE `pigcms_estate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `matchtype` tinyint(11) NOT NULL COMMENT '关键词匹配模式：',
  `cover` varchar(200) NOT NULL COMMENT '图文消息封面',
  `panorama_id` int(11) NOT NULL,
  `classify_id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  `banner` varchar(200) NOT NULL,
  `video` varchar(200) DEFAULT NULL,
  `house_banner` varchar(200) NOT NULL,
  `place` varchar(80) NOT NULL DEFAULT '',
  `lng` varchar(15) NOT NULL,
  `lat` varchar(15) NOT NULL,
  `estate_desc` text NOT NULL,
  `project_brief` text NOT NULL,
  `traffic_desc` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `token_2` (`token`),
  FULLTEXT KEY `token` (`token`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='楼盘简介';

-- ----------------------------
-- Records of pigcms_estate
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_estate_album`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_estate_album`;
CREATE TABLE `pigcms_estate_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `poid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_estate_album
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_estate_expert`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_estate_expert`;
CREATE TABLE `pigcms_estate_expert` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `face` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_estate_expert
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_estate_housetype`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_estate_housetype`;
CREATE TABLE `pigcms_estate_housetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `panorama_id` int(10) NOT NULL DEFAULT '0',
  `son_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `floor_num` varchar(20) NOT NULL,
  `area` varchar(50) NOT NULL,
  `fang` int(11) NOT NULL,
  `ting` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `abid` varchar(200) NOT NULL,
  `type1` varchar(200) NOT NULL,
  `type2` varchar(200) NOT NULL,
  `type3` varchar(200) NOT NULL,
  `type4` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `panorama_id` (`panorama_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_estate_housetype
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_estate_impress`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_estate_impress`;
CREATE TABLE `pigcms_estate_impress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `is_show` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_estate_impress
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_estate_impress_add`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_estate_impress_add`;
CREATE TABLE `pigcms_estate_impress_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imp_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_estate_impress_add
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_estate_son`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_estate_son`;
CREATE TABLE `pigcms_estate_son` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='子楼盘';

-- ----------------------------
-- Records of pigcms_estate_son
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_files`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_files`;
CREATE TABLE `pigcms_files` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `size` int(10) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_flash`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_flash`;
CREATE TABLE `pigcms_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `info` varchar(90) NOT NULL,
  `tip` smallint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `tip` (`tip`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='3g网站头部flash';


-- ----------------------------
-- Table structure for `pigcms_forum_comment`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_forum_comment`;
CREATE TABLE `pigcms_forum_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `content` varchar(3000) NOT NULL,
  `createtime` int(11) NOT NULL,
  `favourid` varchar(3000) DEFAULT NULL,
  `replyid` varchar(3000) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `token` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_forum_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_forum_config`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_forum_config`;
CREATE TABLE `pigcms_forum_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bgurl` varchar(200) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `comcheck` varchar(4) NOT NULL DEFAULT '',
  `intro` varchar(600) NOT NULL DEFAULT '',
  `ischeck` tinyint(4) NOT NULL DEFAULT '0',
  `pv` float NOT NULL DEFAULT '0',
  `forumname` char(60) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `token` varchar(50) NOT NULL,
  `isopen` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_forum_message`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_forum_message`;
CREATE TABLE `pigcms_forum_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(3000) NOT NULL,
  `createtime` int(11) NOT NULL,
  `fromuid` varchar(50) NOT NULL,
  `touid` varchar(40) NOT NULL,
  `fromuname` varchar(60) DEFAULT NULL,
  `touname` varchar(60) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `isread` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_forum_message
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_forum_topics`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_forum_topics`;
CREATE TABLE `pigcms_forum_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `content` varchar(1500) NOT NULL,
  `likeid` varchar(3000) DEFAULT NULL,
  `commentid` varchar(3000) DEFAULT NULL,
  `favourid` varchar(3000) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `photos` varchar(300) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_forum_topics
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_function`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_function`;
CREATE TABLE `pigcms_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` tinyint(3) NOT NULL,
  `usenum` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `funname` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `isserve` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_function
-- ----------------------------
INSERT INTO `pigcms_function` VALUES ('1', '1', '0', '天气查询', 'tianqi', '天气查询服务:例  城市名+天气', '1', '1');
INSERT INTO `pigcms_function` VALUES ('2', '1', '0', '糗事', 'qiushi', '糗事　直接发送糗事', '1', '1');
INSERT INTO `pigcms_function` VALUES ('3', '1', '0', '计算器', 'jishuan', '计算器使用方法　例：计算50-50　，计算100*100', '1', '1');
INSERT INTO `pigcms_function` VALUES ('4', '4', '0', '朗读', 'langdu', '朗读＋关键词　例：朗读pigcms多用户营销系统', '1', '1');
INSERT INTO `pigcms_function` VALUES ('5', '3', '0', '健康指数查询', 'jiankang', '健康指数查询　健康＋高，＋重　例：健康170,65', '1', '1');
INSERT INTO `pigcms_function` VALUES ('6', '1', '0', '快递查询', 'kuaidi', '快递＋快递名＋快递号　例：快递顺丰117215889174', '1', '1');
INSERT INTO `pigcms_function` VALUES ('7', '1', '0', '笑话', 'xiaohua', '笑话　直接发送笑话', '1', '1');
INSERT INTO `pigcms_function` VALUES ('8', '2', '0', '藏头诗', 'changtoushi', ' 藏头诗+关键词　例：藏头诗我爱你', '1', '1');
INSERT INTO `pigcms_function` VALUES ('9', '1', '0', '陪聊', 'peiliao', '聊天　直接输入聊天关键词即可', '1', '1');
INSERT INTO `pigcms_function` VALUES ('10', '1', '0', '聊天', 'liaotian', '聊天　直接输入聊天关键词即可', '1', '1');
INSERT INTO `pigcms_function` VALUES ('11', '3', '0', '周公解梦', 'mengjian', '周公解梦　梦见+关键词　例如:梦见父母', '1', '1');
INSERT INTO `pigcms_function` VALUES ('12', '2', '0', '语音翻译', 'yuyinfanyi', '翻译＋关键词 例：翻译你好', '1', '1');
INSERT INTO `pigcms_function` VALUES ('13', '2', '0', '火车查询', 'huoche', '火车查询　火车＋城市＋目的地　例火车上海南京', '1', '1');
INSERT INTO `pigcms_function` VALUES ('14', '2', '0', '公交查询', 'gongjiao', '公交＋城市＋公交编号　例：上海公交774', '1', '1');
INSERT INTO `pigcms_function` VALUES ('15', '2', '0', '身份证查询', 'shenfenzheng', '身份证＋号码　　例：身份证342423198803015568', '1', '1');
INSERT INTO `pigcms_function` VALUES ('16', '1', '0', '手机归属地查询', 'shouji', '手机归属地查询(吉凶 运势) 手机＋手机号码　例：手机13917778912', '1', '1');
INSERT INTO `pigcms_function` VALUES ('17', '3', '0', '音乐查询', 'yinle', '音乐＋音乐名 ?例：音乐爱你一万年', '1', '1');
INSERT INTO `pigcms_function` VALUES ('18', '1', '0', '附近周边信息查询', 'fujin', '附近周边信息查询(ＬＢＳ） 回复:附近+关键词  例:附近酒店', '1', '1');
INSERT INTO `pigcms_function` VALUES ('43', '4', '0', '抽奖', 'lottery', '抽奖,输入抽奖即可参加幸运大转盘', '1', '1');
INSERT INTO `pigcms_function` VALUES ('20', '3', '0', '淘宝店铺', 'taobao', '输入淘宝＋关键词　即可访问淘宝3g手机店铺', '2', '1');
INSERT INTO `pigcms_function` VALUES ('21', '4', '0', '会员资料管理', 'userinfo', '会员资料管理　输入会员　即可参与', '2', '1');
INSERT INTO `pigcms_function` VALUES ('22', '1', '0', '翻译', 'fanyi', '翻译＋关键词 例：翻译你好', '1', '1');
INSERT INTO `pigcms_function` VALUES ('23', '4', '0', '第三方接口', 'api', '第三方接口整合模块，请在管理平台下载接口文件并配置接口信息，', '1', '1');
INSERT INTO `pigcms_function` VALUES ('24', '1', '0', '姓名算命', 'suanming', '姓名算命 算命＋关键词　例：算命李白', '1', '1');
INSERT INTO `pigcms_function` VALUES ('25', '3', '0', '百度百科', 'baike', '百度百科　使用方法：百科＋关键词　例：百科北京', '2', '1');
INSERT INTO `pigcms_function` VALUES ('26', '2', '0', '彩票查询', 'caipiao', '回复内容:彩票+彩种即可查询彩票中奖信息,例：彩票双色球', '1', '1');
INSERT INTO `pigcms_function` VALUES ('42', '4', '0', '幸运大转盘', 'choujiang', '输入抽奖　即可参加幸运大转盘抽奖活动', '2', '1');
INSERT INTO `pigcms_function` VALUES ('29', '1', '0', '3G首页', 'shouye', '输入首页,访问微3g 网站', '1', '1');
INSERT INTO `pigcms_function` VALUES ('30', '1', '0', 'DIY宣传页', 'adma', 'DIY宣传页,用于创建二维码宣传页权限开启', '1', '1');
INSERT INTO `pigcms_function` VALUES ('31', '4', '0', '会员卡', 'huiyuanka', '尊贵享受vip会员卡,回复会员卡即可领取会员卡', '1', '1');
INSERT INTO `pigcms_function` VALUES ('36', '4', '0', '通用预订系统', 'host_kev', '通用预订系统 可用于酒店预订，ktv订房，旅游预订等。', '2', '1');
INSERT INTO `pigcms_function` VALUES ('34', '1', '0', '歌词查询', 'geci', '歌词查询 回复歌词＋歌名即可查询一首歌曲的歌词,例：歌词醉清风', '1', '1');
INSERT INTO `pigcms_function` VALUES ('35', '2', '0', '域名whois查询', '', '域名whois查询　回复域名＋域名 可查询网站备案信息,域名whois注册时间等等\r\n 例：域名pigcms.com', '1', '1');
INSERT INTO `pigcms_function` VALUES ('37', '4', '0', '自定义表单', 'diyform', '自定义表单(用于报名，预约,留言)等', '1', '1');
INSERT INTO `pigcms_function` VALUES ('38', '2', '0', '无线网络订餐', 'dx', '无线网络订餐', '1', '1');
INSERT INTO `pigcms_function` VALUES ('39', '2', '0', '在线商城', 'shop', '在线商城,购买系统', '1', '1');
INSERT INTO `pigcms_function` VALUES ('40', '2', '0', '在线团购系统', 'etuan', '在线团购系统', '1', '1');
INSERT INTO `pigcms_function` VALUES ('41', '4', '0', '自定义菜单', 'diymen_set', '自定义菜单,一键生成轻app', '1', '1');
INSERT INTO `pigcms_function` VALUES ('44', '4', '0', '刮刮卡', 'gua2', '刮刮卡抽奖活动', '1', '1');
INSERT INTO `pigcms_function` VALUES ('45', '4', '0', '全景', 'panorama', '', '1', '1');
INSERT INTO `pigcms_function` VALUES ('46', '4', '0', '婚庆喜帖', 'wedding', '', '2', '1');
INSERT INTO `pigcms_function` VALUES ('47', '4', '0', '投票', 'vote', '', '2', '1');
INSERT INTO `pigcms_function` VALUES ('48', '4', '0', '房产', 'estate', '', '2', '1');
INSERT INTO `pigcms_function` VALUES ('49', '4', '0', '3G相册', 'album', '', '1', '1');
INSERT INTO `pigcms_function` VALUES ('50', '4', '0', '砸金蛋', 'GoldenEgg', '', '2', '1');
INSERT INTO `pigcms_function` VALUES ('51', '4', '0', '水果机', 'LuckyFruit', '', '2', '1');
INSERT INTO `pigcms_function` VALUES ('52', '4', '0', '留言板', 'message', '', '2', '1');
INSERT INTO `pigcms_function` VALUES ('53', '4', '0', '微汽车', 'car', '', '2', '1');
INSERT INTO `pigcms_function` VALUES ('59', '1', '0', '', '', '', '1', '1');
INSERT INTO `pigcms_function` VALUES ('55', '5', '0', '', '', '', '2', '1');
INSERT INTO `pigcms_function` VALUES ('56', '1', '0', '', '', '', '1', '1');
INSERT INTO `pigcms_function` VALUES ('57', '5', '0', '', '', '', '2', '1');
INSERT INTO `pigcms_function` VALUES ('58', '5', '0', '高级模板', 'advanceTpl', '高级模板', '2', '1');
INSERT INTO `pigcms_function` VALUES ('60', '4', '0', '微信墙', 'wall', '', '1', '1');
INSERT INTO `pigcms_function` VALUES ('61', '4', '0', '摇一摇', 'shake', '', '1', '1');
INSERT INTO `pigcms_function` VALUES ('62', '4', '0', '微论坛', 'forum', '', '1', '1');
INSERT INTO `pigcms_function` VALUES ('63', '4', '0', '微医疗', 'medical', '', '1', '1');
INSERT INTO `pigcms_function` VALUES ('64', '4', '0', '群发消息', 'message', '', '1', '1');
INSERT INTO `pigcms_function` VALUES ('65', '4', '0', '分享统计', 'share', '', '1', '1');
INSERT INTO `pigcms_function` VALUES ('66', '4', '0', '酒店宾馆', 'hotel', '', '1', '1');
INSERT INTO `pigcms_function` VALUES ('67', '4', '0', '微教育', 'school', '', '1', '1');

-- ----------------------------
-- Table structure for `pigcms_greeting_card`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_greeting_card`;
CREATE TABLE `pigcms_greeting_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `num` int(11) NOT NULL,
  `click` int(11) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `bakcground_url` varchar(200) NOT NULL,
  `mp3` varchar(200) NOT NULL,
  `style` tinyint(2) NOT NULL,
  `name` varchar(60) NOT NULL,
  `zfname` varchar(60) NOT NULL,
  `copy` varchar(200) NOT NULL,
  `info` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_greeting_card
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_home`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_home`;
CREATE TABLE `pigcms_home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL,
  `picurl` varchar(120) NOT NULL,
  `apiurl` varchar(150) NOT NULL,
  `homeurl` varchar(120) NOT NULL,
  `info` varchar(120) NOT NULL,
  `musicurl` varchar(180) NOT NULL DEFAULT '',
  `plugmenucolor` varchar(10) NOT NULL DEFAULT '',
  `copyright` varchar(200) NOT NULL DEFAULT '',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `radiogroup` mediumint(4) NOT NULL DEFAULT '0',
  `advancetpl` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_home_background`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_home_background`;
CREATE TABLE `pigcms_home_background` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `taxis` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_home_background
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_host`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_host`;
CREATE TABLE `pigcms_host` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL COMMENT '关键词',
  `title` varchar(50) NOT NULL COMMENT '商家名称',
  `address` varchar(50) NOT NULL COMMENT '商家地',
  `tel` varchar(13) NOT NULL COMMENT '商家电话',
  `tel2` varchar(13) NOT NULL COMMENT '手机号',
  `ppicurl` varchar(250) NOT NULL COMMENT '订房封面图片',
  `headpic` varchar(250) NOT NULL COMMENT '订单页头部图片',
  `name` varchar(50) NOT NULL COMMENT '文字描述',
  `sort` int(11) NOT NULL COMMENT '排序',
  `picurl` varchar(100) NOT NULL COMMENT '图片地址',
  `url` varchar(50) NOT NULL COMMENT '图片跳转地址以http',
  `info` text NOT NULL COMMENT '商家介绍：',
  `info2` text NOT NULL COMMENT '订房说明u',
  `creattime` int(11) NOT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='酒店商家设置';


-- ----------------------------
-- Table structure for `pigcms_host_list_add`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_host_list_add`;
CREATE TABLE `pigcms_host_list_add` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hid` int(11) NOT NULL COMMENT '商家id',
  `token` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL COMMENT '房间类型',
  `typeinfo` varchar(100) NOT NULL COMMENT '简要说明',
  `price` decimal(10,2) NOT NULL COMMENT '原价：',
  `yhprice` decimal(10,2) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '文字描述',
  `picurl` varchar(110) NOT NULL COMMENT '图片地址',
  `url` varchar(100) NOT NULL COMMENT '图片跳转地址以http',
  `info` text NOT NULL COMMENT '配套设施',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='房间类型信息表';


-- ----------------------------
-- Table structure for `pigcms_host_order`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_host_order`;
CREATE TABLE `pigcms_host_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `book_people` varchar(50) NOT NULL COMMENT '预订人',
  `tel` varchar(13) NOT NULL COMMENT '电话',
  `check_in` int(11) NOT NULL COMMENT '入住时间',
  `check_out` int(11) NOT NULL COMMENT '离开时间',
  `room_type` varchar(50) NOT NULL COMMENT '房间类型',
  `book_time` int(11) NOT NULL COMMENT '预订时间',
  `book_num` int(11) NOT NULL COMMENT '预订数量',
  `price` decimal(10,2) NOT NULL COMMENT ' 价格',
  `order_status` int(11) NOT NULL COMMENT '订单状态 1 成功,2 失败,3 未处理',
  `hid` int(11) NOT NULL COMMENT '订房商家id',
  `remarks` varchar(250) NOT NULL COMMENT '留言备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='订单管理';



-- ----------------------------
-- Table structure for `pigcms_hotels_house`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_hotels_house`;
CREATE TABLE `pigcms_hotels_house` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(80) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `sid` (`sid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_hotels_house
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_hotels_house_sort`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_hotels_house_sort`;
CREATE TABLE `pigcms_hotels_house_sort` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `vprice` float NOT NULL,
  `note` varchar(500) NOT NULL,
  `num` tinyint(1) unsigned NOT NULL,
  `houses` smallint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_hotels_house_sort
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_hotels_order`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_hotels_order`;
CREATE TABLE `pigcms_hotels_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `nums` smallint(3) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `time` int(11) NOT NULL,
  `startdate` int(8) unsigned NOT NULL,
  `enddate` int(8) unsigned NOT NULL,
  `paid` tinyint(1) unsigned NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `printed` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`wecha_id`),
  KEY `token` (`token`),
  KEY `orderid` (`orderid`),
  KEY `enddate` (`enddate`),
  KEY `sid` (`sid`),
  KEY `stardate` (`startdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_hotels_order
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_img`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_img`;
CREATE TABLE `pigcms_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `keyword` char(255) NOT NULL,
  `type` varchar(1) NOT NULL COMMENT '关键词匹配类型',
  `text` text NOT NULL COMMENT '简介',
  `classid` int(11) NOT NULL,
  `classname` varchar(60) NOT NULL,
  `pic` char(255) NOT NULL COMMENT '封面图片',
  `showpic` varchar(1) NOT NULL COMMENT '图片是否显示封面',
  `info` text NOT NULL COMMENT '图文详细内容',
  `url` char(255) NOT NULL COMMENT '图文外链地址',
  `createtime` varchar(13) NOT NULL,
  `uptatetime` varchar(13) NOT NULL,
  `click` int(11) NOT NULL,
  `token` char(30) NOT NULL,
  `title` varchar(60) NOT NULL,
  `usort` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='微信图文';



-- ----------------------------
-- Table structure for `pigcms_indent`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_indent`;
CREATE TABLE `pigcms_indent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `gid` tinyint(2) NOT NULL,
  `month` mediumint(5) NOT NULL DEFAULT '0',
  `uname` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `info` int(11) NOT NULL,
  `indent_id` char(20) NOT NULL,
  `widtrade_no` varchar(20) NOT NULL,
  `price` float NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_keyword`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_keyword`;
CREATE TABLE `pigcms_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` char(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `module` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_leave`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_leave`;
CREATE TABLE `pigcms_leave` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `token` varchar(60) NOT NULL,
  `time` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=268 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of pigcms_leave
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_links`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_links`;
CREATE TABLE `pigcms_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_links
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_lottery`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_lottery`;
CREATE TABLE `pigcms_lottery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joinnum` int(11) NOT NULL COMMENT '参与人数',
  `click` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `starpicurl` varchar(100) NOT NULL COMMENT '填写活动开始图片网址',
  `title` varchar(60) NOT NULL COMMENT '活动名称',
  `txt` varchar(60) NOT NULL COMMENT '用户输入兑奖时候的显示信息',
  `sttxt` varchar(200) NOT NULL COMMENT '简介',
  `statdate` int(11) NOT NULL COMMENT '活动开始时间',
  `enddate` int(11) NOT NULL COMMENT '活动结束时间',
  `info` varchar(200) NOT NULL COMMENT '活动说明',
  `aginfo` varchar(200) NOT NULL COMMENT '重复抽奖回复',
  `endtite` varchar(60) NOT NULL COMMENT '活动结束公告主题',
  `endpicurl` varchar(100) NOT NULL,
  `endinfo` varchar(60) NOT NULL,
  `fist` varchar(50) NOT NULL COMMENT '一等奖奖品设置',
  `fistnums` int(4) NOT NULL COMMENT '一等奖奖品数量',
  `fistlucknums` int(1) NOT NULL COMMENT '一等奖中奖号码',
  `second` varchar(50) NOT NULL COMMENT '二等奖奖品设置',
  `type` tinyint(1) NOT NULL,
  `secondnums` int(4) NOT NULL,
  `secondlucknums` int(1) NOT NULL,
  `third` varchar(50) NOT NULL,
  `thirdnums` int(4) NOT NULL,
  `thirdlucknums` int(1) NOT NULL,
  `allpeople` int(11) NOT NULL,
  `canrqnums` int(2) NOT NULL COMMENT '个人限制抽奖次数',
  `parssword` int(15) NOT NULL,
  `renamesn` varchar(50) NOT NULL DEFAULT '',
  `renametel` varchar(60) NOT NULL,
  `displayjpnums` int(1) NOT NULL,
  `createtime` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `four` varchar(50) NOT NULL,
  `fournums` int(11) NOT NULL,
  `fourlucknums` int(11) NOT NULL,
  `five` varchar(50) NOT NULL,
  `fivenums` int(11) NOT NULL,
  `fivelucknums` int(11) NOT NULL,
  `six` varchar(50) NOT NULL COMMENT '六等奖',
  `sixnums` int(11) NOT NULL,
  `sixlucknums` int(11) NOT NULL,
  `zjpic` varchar(150) NOT NULL DEFAULT '',
  `daynums` mediumint(4) NOT NULL DEFAULT '0',
  `maxgetprizenum` mediumint(4) NOT NULL DEFAULT '1',
  `needreg` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_lottery
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_lottery_cheat`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_lottery_cheat`;
CREATE TABLE `pigcms_lottery_cheat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `lid` int(10) NOT NULL DEFAULT '0',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `prizetype` mediumint(4) NOT NULL DEFAULT '0',
  `intro` varchar(60) NOT NULL DEFAULT '',
  `code` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_lottery_cheat
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_lottery_record`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_lottery_record`;
CREATE TABLE `pigcms_lottery_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL,
  `usenums` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户使用次数',
  `wecha_id` varchar(60) NOT NULL COMMENT '微信唯一识别码',
  `token` varchar(30) NOT NULL,
  `islottery` int(1) NOT NULL COMMENT '是否中奖',
  `wecha_name` varchar(60) NOT NULL COMMENT '微信号',
  `phone` varchar(15) NOT NULL,
  `sn` varchar(13) NOT NULL COMMENT '中奖后序列号',
  `time` int(11) NOT NULL,
  `prize` varchar(50) NOT NULL DEFAULT '' COMMENT '已中奖项',
  `sendstutas` int(11) NOT NULL DEFAULT '0',
  `sendtime` int(11) NOT NULL,
  PRIMARY KEY (`id`,`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_lottery_record
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_medical_set`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_medical_set`;
CREATE TABLE `pigcms_medical_set` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `head_url` varchar(200) NOT NULL DEFAULT '',
  `album_id` int(11) DEFAULT NULL,
  `menu1` varchar(20) NOT NULL DEFAULT '',
  `menu2` varchar(20) NOT NULL DEFAULT '',
  `menu3` varchar(20) NOT NULL DEFAULT '',
  `menu4` varchar(20) NOT NULL DEFAULT '',
  `menu5` varchar(20) NOT NULL DEFAULT '',
  `menu6` varchar(20) NOT NULL DEFAULT '',
  `menu7` varchar(20) NOT NULL DEFAULT '',
  `menu8` varchar(20) NOT NULL DEFAULT '',
  `hotfocus_id` int(11) NOT NULL,
  `experts_id` int(11) NOT NULL,
  `ceem_id` int(11) NOT NULL,
  `Rcase_id` int(11) NOT NULL,
  `technology_id` int(11) NOT NULL,
  `drug_id` int(11) NOT NULL,
  `evants_id` int(11) NOT NULL,
  `video` text NOT NULL,
  `symptoms_id` int(11) NOT NULL,
  `info` char(200) NOT NULL DEFAULT '',
  `path` varchar(3000) DEFAULT '0',
  `tpid` tinyint(4) DEFAULT '1',
  `conttpid` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_medical_set
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_medical_user`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_medical_user`;
CREATE TABLE `pigcms_medical_user` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `rid` int(11) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT '',
  `truename` varchar(50) NOT NULL DEFAULT '',
  `utel` char(13) NOT NULL,
  `dateline` varchar(50) NOT NULL,
  `sex` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `txt33` varchar(50) NOT NULL DEFAULT '',
  `txt44` varchar(50) NOT NULL DEFAULT '',
  `txt55` varchar(50) NOT NULL DEFAULT '',
  `yyks` varchar(50) NOT NULL DEFAULT '',
  `yyzj` varchar(50) NOT NULL DEFAULT '',
  `yybz` varchar(50) NOT NULL DEFAULT '',
  `yy4` varchar(50) NOT NULL DEFAULT '',
  `yy5` varchar(50) NOT NULL DEFAULT '',
  `uinfo` varchar(50) NOT NULL DEFAULT '',
  `kfinfo` varchar(100) NOT NULL DEFAULT '',
  `remate` int(10) NOT NULL DEFAULT '0',
  `booktime` int(11) DEFAULT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_medical_user
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_member`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_member`;
CREATE TABLE `pigcms_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `isopen` int(1) NOT NULL,
  `homepic` varchar(100) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_member
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_member_card_contact`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_member_card_contact`;
CREATE TABLE `pigcms_member_card_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `sort` tinyint(1) NOT NULL,
  `info` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_member_card_contact
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_member_card_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_member_card_coupon`;
CREATE TABLE `pigcms_member_card_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL,
  `people` int(3) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_member_card_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_member_card_create`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_member_card_create`;
CREATE TABLE `pigcms_member_card_create` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `number` varchar(20) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM AUTO_INCREMENT=1098 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_member_card_exchange`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_member_card_exchange`;
CREATE TABLE `pigcms_member_card_exchange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` mediumint(8) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `everyday` tinyint(4) NOT NULL,
  `continuation` tinyint(4) NOT NULL,
  `reward` tinyint(4) NOT NULL,
  `cardinfo` text NOT NULL,
  `cardinfo2` text NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_member_card_info`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_member_card_info`;
CREATE TABLE `pigcms_member_card_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `description` varchar(12) NOT NULL,
  `class` tinyint(1) NOT NULL,
  `password` varchar(11) NOT NULL,
  `crate_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_member_card_info
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_member_card_integral`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_member_card_integral`;
CREATE TABLE `pigcms_member_card_integral` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `integral` int(8) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_member_card_integral
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_member_card_notice`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_member_card_notice`;
CREATE TABLE `pigcms_member_card_notice` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `endtime` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_member_card_notice
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_member_card_set`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_member_card_set`;
CREATE TABLE `pigcms_member_card_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `cardname` varchar(60) NOT NULL,
  `miniscore` int(10) NOT NULL DEFAULT '0',
  `logo` varchar(200) NOT NULL,
  `bg` varchar(100) NOT NULL,
  `diybg` varchar(200) NOT NULL,
  `msg` varchar(100) NOT NULL,
  `numbercolor` varchar(10) NOT NULL,
  `vipnamecolor` varchar(10) NOT NULL,
  `Lastmsg` varchar(100) NOT NULL,
  `vip` varchar(100) NOT NULL,
  `qiandao` varchar(100) NOT NULL,
  `shopping` varchar(100) NOT NULL,
  `memberinfo` varchar(100) NOT NULL,
  `membermsg` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `miniscore` (`miniscore`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_member_card_sign`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_member_card_sign`;
CREATE TABLE `pigcms_member_card_sign` (
  `id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `sign_time` int(11) NOT NULL,
  `is_sign` int(11) NOT NULL,
  `score_type` int(11) NOT NULL,
  `expense` int(11) NOT NULL,
  `sell_expense` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_member_card_use_record`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_member_card_use_record`;
CREATE TABLE `pigcms_member_card_use_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `itemid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `staffid` int(10) NOT NULL DEFAULT '0',
  `cat` smallint(4) NOT NULL DEFAULT '0',
  `expense` mediumint(4) NOT NULL DEFAULT '0',
  `score` mediumint(4) NOT NULL DEFAULT '0',
  `usecount` mediumint(4) NOT NULL DEFAULT '1',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `itemid` (`itemid`,`cat`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_member_card_use_record
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_member_card_vip`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_member_card_vip`;
CREATE TABLE `pigcms_member_card_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` varchar(200) NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_member_card_vip
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_moopha_article`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_moopha_article`;
CREATE TABLE `pigcms_moopha_article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `channel_id` int(10) NOT NULL,
  `token` varchar(50) NOT NULL,
  `site` int(4) NOT NULL DEFAULT '1',
  `title` varchar(200) NOT NULL,
  `titles` varchar(400) NOT NULL DEFAULT '',
  `subtitle` varchar(200) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `externallink` tinyint(1) NOT NULL DEFAULT '0',
  `thumb` varchar(100) DEFAULT NULL,
  `content` longtext,
  `intro` varchar(2000) NOT NULL,
  `author` varchar(20) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `keywords` varchar(300) DEFAULT NULL,
  `uid` varchar(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  `last_update` int(10) NOT NULL,
  `viewcount` int(10) NOT NULL DEFAULT '0',
  `template` varchar(50) DEFAULT NULL,
  `pagecount` tinyint(2) NOT NULL DEFAULT '1',
  `disagree` int(10) NOT NULL DEFAULT '0',
  `cancomment` tinyint(1) NOT NULL DEFAULT '1',
  `commentcount` int(10) NOT NULL DEFAULT '0',
  `agree` int(10) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `lastcreate` int(10) NOT NULL DEFAULT '1400000000',
  `sourcetype` smallint(2) NOT NULL DEFAULT '0',
  `ex` tinyint(1) DEFAULT '0',
  `pubed` tinyint(1) NOT NULL DEFAULT '1',
  `geoid` mediumint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channel_id` (`channel_id`),
  KEY `channel_id_2` (`channel_id`,`thumb`),
  KEY `time` (`time`),
  KEY `taxis` (`taxis`),
  KEY `ex` (`ex`),
  KEY `geoid` (`geoid`),
  KEY `uid` (`uid`),
  KEY `keywords` (`keywords`),
  KEY `sourcetype` (`sourcetype`),
  KEY `pubed` (`pubed`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_moopha_attachement`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_moopha_attachement`;
CREATE TABLE `pigcms_moopha_attachement` (
  `url` varchar(150) NOT NULL DEFAULT '',
  `pubid` smallint(3) NOT NULL DEFAULT '1',
  `filetype` varchar(10) NOT NULL DEFAULT 'picture',
  `cat` varchar(20) NOT NULL DEFAULT '',
  `catid` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  KEY `cat` (`cat`,`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_moopha_attachement
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_moopha_channel`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_moopha_channel`;
CREATE TABLE `pigcms_moopha_channel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `shortname` varchar(50) NOT NULL DEFAULT '',
  `isnav` tinyint(1) NOT NULL DEFAULT '1',
  `channeltype` tinyint(1) NOT NULL DEFAULT '1',
  `cindex` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL,
  `externallink` tinyint(1) NOT NULL DEFAULT '0',
  `des` mediumtext NOT NULL,
  `thumb` varchar(100) DEFAULT NULL,
  `metatitle` varchar(100) DEFAULT NULL,
  `metakeyword` varchar(100) DEFAULT NULL,
  `metades` varchar(200) DEFAULT NULL,
  `thumbwidth` int(4) NOT NULL,
  `thumbheight` int(4) NOT NULL,
  `thumb2width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb2height` mediumint(4) NOT NULL DEFAULT '0',
  `thumb3width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb3height` mediumint(4) NOT NULL DEFAULT '0',
  `thumb4width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb4height` mediumint(4) NOT NULL DEFAULT '0',
  `parentid` int(10) NOT NULL DEFAULT '0',
  `channeltemplate` int(10) DEFAULT '1',
  `contenttemplate` int(10) DEFAULT '1',
  `autotype` varchar(10) NOT NULL DEFAULT '',
  `ex` tinyint(1) NOT NULL DEFAULT '0',
  `iscity` tinyint(1) NOT NULL DEFAULT '0',
  `site` int(4) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `lastcreate` int(10) NOT NULL DEFAULT '1400000000',
  `pagesize` smallint(3) NOT NULL DEFAULT '30',
  `specialid` mediumint(4) NOT NULL DEFAULT '0',
  `homepicturechannel` tinyint(1) NOT NULL DEFAULT '0',
  `hometextchannel` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `site` (`site`),
  KEY `taxis` (`taxis`),
  KEY `time` (`time`),
  KEY `specialid` (`specialid`),
  KEY `token` (`token`),
  KEY `isnav` (`isnav`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_moopha_channel_contentattribute`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_moopha_channel_contentattribute`;
CREATE TABLE `pigcms_moopha_channel_contentattribute` (
  `channelid` int(4) NOT NULL,
  `attributeid` int(4) NOT NULL,
  `taxis` int(4) NOT NULL DEFAULT '0',
  KEY `channelid` (`channelid`),
  KEY `taxis` (`taxis`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_moopha_channel_contentattribute
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_moopha_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_moopha_keywords`;
CREATE TABLE `pigcms_moopha_keywords` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `link` varchar(150) NOT NULL DEFAULT '',
  `title` varchar(150) NOT NULL DEFAULT '',
  `target` varchar(15) NOT NULL DEFAULT '_blank',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_moopha_keywords
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_moopha_picture`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_moopha_picture`;
CREATE TABLE `pigcms_moopha_picture` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `contentid` int(10) NOT NULL,
  `url` varchar(100) NOT NULL,
  `intro` text NOT NULL,
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contentid` (`contentid`),
  KEY `taxis` (`taxis`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_moopha_picture
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_moopha_site`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_moopha_site`;
CREATE TABLE `pigcms_moopha_site` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `intro` varchar(600) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `logourl` varchar(120) NOT NULL DEFAULT '',
  `siteindex` varchar(50) NOT NULL,
  `taxis` int(4) NOT NULL,
  `main` int(1) NOT NULL,
  `abspath` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(100) DEFAULT NULL,
  `statisticcode` varchar(600) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `siteindex` (`siteindex`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_moopha_template`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_moopha_template`;
CREATE TABLE `pigcms_moopha_template` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `path` varchar(200) NOT NULL,
  `generate_path` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1-index,2-channel,3-template,4-singlepage',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `createhtml` tinyint(1) NOT NULL DEFAULT '1',
  `site` int(4) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `isdefault` (`isdefault`),
  KEY `site` (`site`),
  KEY `time` (`time`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_moopha_user`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_moopha_user`;
CREATE TABLE `pigcms_moopha_user` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `password` char(32) NOT NULL,
  `salt` char(6) NOT NULL,
  `mp` char(11) DEFAULT NULL,
  `qq` varchar(15) DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `regip` varchar(30) DEFAULT NULL,
  `regtime` int(10) DEFAULT NULL,
  `lastloginip` varchar(30) DEFAULT NULL,
  `lastlogintime` int(10) DEFAULT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_moopha_user
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_msg`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_msg`;
CREATE TABLE `pigcms_msg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `qq` int(11) NOT NULL,
  `domain` varchar(60) NOT NULL,
  `time` int(11) NOT NULL,
  `price` int(5) NOT NULL,
  `info` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_msg
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_nearby_user`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_nearby_user`;
CREATE TABLE `pigcms_nearby_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=306 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_node`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_node`;
CREATE TABLE `pigcms_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '节点名称',
  `title` varchar(50) NOT NULL COMMENT '菜单名称',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否激活 1：是 2：否',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `pid` smallint(6) unsigned NOT NULL COMMENT '父ID',
  `level` tinyint(1) unsigned NOT NULL COMMENT '节点等级',
  `data` varchar(255) DEFAULT NULL COMMENT '附加参数',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '菜单显示类型 0:不显示 1:导航菜单 2:左侧菜单',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_node
-- ----------------------------
INSERT INTO `pigcms_node` VALUES ('1', 'cms', '根节点', '1', '', '0', '1', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('2', 'Site', '站点管理', '1', '', '1', '0', null, '0', '1');
INSERT INTO `pigcms_node` VALUES ('3', 'User', '用户管理', '1', '', '1', '0', null, '0', '1');
INSERT INTO `pigcms_node` VALUES ('4', 'extent', '扩展管理', '1', '', '1', '0', null, '10', '1');
INSERT INTO `pigcms_node` VALUES ('5', 'article', '内容管理', '1', '', '1', '0', null, '0', '1');
INSERT INTO `pigcms_node` VALUES ('6', 'Site', '站点设置', '1', '', '2', '2', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('7', 'index', '基本信息设置', '1', '', '6', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('8', 'safe', '安全设置', '1', '', '6', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('9', 'email', '邮箱设置', '1', '', '6', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('10', 'upfile', '附件设置', '1', '', '6', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('11', 'Node', '节点管理', '1', null, '2', '2', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('12', 'add', '添加节点', '1', '', '11', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('13', 'index', '节点列表', '1', '', '11', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('14', 'insert', '写入', '1', '0', '11', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('15', 'edit', '编辑节点', '1', '0', '11', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('16', 'update', '更新节点', '1', '0', '11', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('17', 'del', '删除节点', '1', '0', '11', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('18', 'User', '用户中心', '1', '0', '3', '2', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('19', 'add', '添加用户', '1', '0', '18', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('20', 'index', '用户列表', '1', '0', '18', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('21', 'edit', '编辑用户', '1', '0', '18', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('22', 'insert', '写入数据库', '1', '0', '18', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('23', 'update', '更新用户', '1', '0', '18', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('24', 'del', '删除用户', '1', '0', '18', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('25', 'Group', '管理组', '1', '0', '3', '2', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('26', 'add', '创建用户组', '1', '0', '25', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('27', 'index', '用户组列表', '1', '0', '25', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('28', 'edit', '编辑用户组', '1', '0', '25', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('29', 'del', '删除用户组', '1', '0', '25', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('30', 'insert', '写入数据库', '1', '0', '25', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('31', 'update', '更新用户组', '1', '0', '25', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('32', 'insert', '保存测试', '1', '0', '6', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('36', 'menu', '左侧栏', '1', '0', '35', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('35', 'System', '首页', '1', '0', '2', '2', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('37', 'main', '右侧栏目', '1', '0', '35', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('38', 'Article', '微信图文', '1', '0', '5', '2', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('39', 'index', '图文列表', '1', '0', '38', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('40', 'add', '图文添加', '1', '0', '38', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('41', 'edit', '微信图文编辑', '1', '0', '38', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('42', 'del', '微信图文删除', '1', '0', '38', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('80', 'token', '公众号管理', '1', '0', '1', '2', null, '0', '1');
INSERT INTO `pigcms_node` VALUES ('45', 'Function', '功能模块', '1', '0', '1', '0', null, '0', '1');
INSERT INTO `pigcms_node` VALUES ('46', 'Function', '功能模块', '1', '0', '45', '2', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('47', 'add', '添加模块', '1', '0', '46', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('48', 'User_group', '会员组', '1', '0', '3', '2', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('49', 'add', '添加会员组', '1', '0', '48', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('50', 'Users', '前台用户', '1', '0', '3', '2', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('51', 'index', '用户列表', '1', '0', '50', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('52', 'add', '添加用户', '1', '0', '50', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('53', 'edit', '编辑用户', '1', '0', '50', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('54', 'del', '删除用户', '1', '0', '50', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('55', 'insert', '写入数据库', '1', '0', '50', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('56', 'upsave', '更新用户', '1', '0', '50', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('57', 'Text', '微信文本', '1', '0', '5', '2', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('58', 'index', '文本列表', '1', '0', '57', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('59', 'del', '删除', '1', '0', '57', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('60', 'Custom', '自定义页面', '1', '0', '5', '2', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('61', 'index', '列表', '1', '0', '60', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('62', 'edit', '编辑', '1', '0', '60', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('63', 'del', '删除', '1', '0', '60', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('64', 'Records', '充值记录', '1', '0', '4', '2', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('65', 'index', '充值列表', '1', '0', '64', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('66', 'Case', '用户案例', '1', '0', '4', '2', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('67', 'index', '案例列表', '1', '0', '66', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('68', 'add', '添加案例', '1', '0', '66', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('69', 'edit', '编辑案例', '1', '0', '66', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('70', 'del', '删除案例', '1', '0', '66', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('71', 'insert', '写入数据库', '1', '0', '66', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('72', 'upsave', '更新数据库', '1', '0', '66', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('73', 'Links', '友情链接', '1', '0', '4', '2', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('74', 'index', '友情链接', '1', '0', '73', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('75', 'add', '添加链接', '1', '0', '73', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('76', 'edit', '编辑链接', '1', '0', '73', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('77', 'insert', '插入数据库', '1', '0', '73', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('78', 'upsave', '更新数据库', '1', '0', '73', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('79', 'del', '删除友情链接', '1', '0', '73', '3', null, '0', '0');
INSERT INTO `pigcms_node` VALUES ('81', 'Token', '公众号管理', '1', '0', '80', '2', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('83', 'alipay', '在线支付接口', '1', '0', '6', '3', null, '0', '2');
INSERT INTO `pigcms_node` VALUES ('84', 'sms', '短信接口', '1', '', '6', '3', null, '0', '2');

-- ----------------------------
-- Table structure for `pigcms_norms`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_norms`;
CREATE TABLE `pigcms_norms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '产品参数分类',
  `catid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `value` varchar(150) NOT NULL COMMENT '规格值',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类规格相信值';

-- ----------------------------
-- Records of pigcms_norms
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_ordering_class`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_ordering_class`;
CREATE TABLE `pigcms_ordering_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `name` varchar(10) NOT NULL,
  `sort` tinyint(2) NOT NULL,
  `info` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_ordering_class
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_ordering_set`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_ordering_set`;
CREATE TABLE `pigcms_ordering_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `title` varchar(60) NOT NULL,
  `info` varchar(120) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `flash` text NOT NULL,
  `create_time` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_ordering_set
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_other`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_other`;
CREATE TABLE `pigcms_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_panorama`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_panorama`;
CREATE TABLE `pigcms_panorama` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(300) NOT NULL DEFAULT '',
  `music` varchar(100) NOT NULL DEFAULT '',
  `frontpic` varchar(100) NOT NULL DEFAULT '',
  `rightpic` varchar(100) NOT NULL DEFAULT '',
  `backpic` varchar(100) NOT NULL DEFAULT '',
  `leftpic` varchar(100) NOT NULL DEFAULT '',
  `toppic` varchar(100) NOT NULL DEFAULT '',
  `bottompic` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_panorama
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_photo`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_photo`;
CREATE TABLE `pigcms_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(20) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `isshoinfo` tinyint(1) NOT NULL,
  `num` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  `info` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_photo
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_photo_list`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_photo_list`;
CREATE TABLE `pigcms_photo_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `info` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_photo_list
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_product`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_product`;
CREATE TABLE `pigcms_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sort` int(10) NOT NULL DEFAULT '0',
  `catid` mediumint(4) NOT NULL DEFAULT '0',
  `storeid` mediumint(4) NOT NULL DEFAULT '0',
  `name` varchar(150) NOT NULL DEFAULT '',
  `price` float NOT NULL DEFAULT '0',
  `vprice` float NOT NULL,
  `oprice` float NOT NULL DEFAULT '0',
  `mailprice` float NOT NULL COMMENT '邮费',
  `discount` float NOT NULL DEFAULT '10',
  `intro` text NOT NULL,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `salecount` mediumint(4) NOT NULL DEFAULT '0',
  `logourl` varchar(150) NOT NULL DEFAULT '',
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `groupon` tinyint(1) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `fakemembercount` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `num` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`storeid`),
  KEY `catid_2` (`catid`),
  KEY `storeid` (`storeid`),
  KEY `token` (`token`),
  KEY `price` (`price`),
  KEY `oprice` (`oprice`),
  KEY `discount` (`discount`),
  KEY `dining` (`dining`),
  KEY `groupon` (`groupon`,`endtime`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_product_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_product_attribute`;
CREATE TABLE `pigcms_product_attribute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL COMMENT '属性ID',
  `pid` int(10) unsigned NOT NULL COMMENT '商品ID',
  `name` varchar(100) NOT NULL COMMENT '属性名',
  `value` varchar(100) NOT NULL COMMENT '属性值',
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品属性表';

-- ----------------------------
-- Records of pigcms_product_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_product_cart`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_product_cart`;
CREATE TABLE `pigcms_product_cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `transactionid` varchar(100) NOT NULL DEFAULT '',
  `paytype` varchar(30) NOT NULL DEFAULT '',
  `productid` int(10) NOT NULL DEFAULT '0',
  `code` varchar(50) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `diningtype` mediumint(2) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `total` mediumint(4) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `tel` varchar(14) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `ordertype` mediumint(2) NOT NULL DEFAULT '0',
  `tableid` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `buytime` varchar(100) NOT NULL DEFAULT '',
  `groupon` tinyint(1) NOT NULL DEFAULT '0',
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `year` mediumint(4) NOT NULL DEFAULT '0',
  `month` mediumint(4) NOT NULL DEFAULT '0',
  `day` mediumint(4) NOT NULL DEFAULT '0',
  `hour` smallint(4) NOT NULL DEFAULT '0',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `orderid` varchar(40) NOT NULL DEFAULT '',
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `logistics` varchar(70) NOT NULL DEFAULT '',
  `logisticsid` varchar(50) NOT NULL DEFAULT '',
  `printed` tinyint(1) NOT NULL DEFAULT '0',
  `handled` tinyint(1) NOT NULL DEFAULT '0',
  `handledtime` int(10) NOT NULL DEFAULT '0',
  `handleduid` int(10) NOT NULL DEFAULT '0',
  `score` int(10) unsigned NOT NULL,
  `paymode` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`time`),
  KEY `groupon` (`groupon`),
  KEY `dining` (`dining`),
  KEY `printed` (`printed`),
  KEY `year` (`year`,`month`,`day`,`hour`),
  KEY `diningtype` (`diningtype`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_product_cart_list`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_product_cart_list`;
CREATE TABLE `pigcms_product_cart_list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cartid` int(10) NOT NULL DEFAULT '0',
  `productid` int(10) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `total` mediumint(4) NOT NULL DEFAULT '0',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cartid` (`cartid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_product_cart_list
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_product_cat`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_product_cat`;
CREATE TABLE `pigcms_product_cat` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL,
  `des` varchar(500) NOT NULL DEFAULT '',
  `parentid` mediumint(4) NOT NULL,
  `logourl` varchar(100) NOT NULL,
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  `norms` varchar(100) NOT NULL COMMENT '分类产品的规格',
  `color` varchar(100) NOT NULL COMMENT '分类产品的外观',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `token` (`token`),
  KEY `dining` (`dining`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_product_detail`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_product_detail`;
CREATE TABLE `pigcms_product_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '商品ID',
  `format` varchar(100) NOT NULL COMMENT '商品的规格（大小）',
  `color` varchar(100) NOT NULL COMMENT '颜色',
  `num` int(10) unsigned NOT NULL COMMENT '数量',
  `price` float NOT NULL COMMENT '价格',
  `vprice` float NOT NULL,
  `logo` varchar(200) NOT NULL COMMENT '图标',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品的数量(详细)表';

-- ----------------------------
-- Records of pigcms_product_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_product_diningtable`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_product_diningtable`;
CREATE TABLE `pigcms_product_diningtable` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(500) NOT NULL DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_product_image`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_product_image`;
CREATE TABLE `pigcms_product_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL COMMENT '商品ID',
  `image` varchar(200) NOT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品配图';

-- ----------------------------
-- Records of pigcms_product_image
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_product_mail_price`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_product_mail_price`;
CREATE TABLE `pigcms_product_mail_price` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `price` float NOT NULL COMMENT '满多少元免邮费',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='设置商城免邮';

-- ----------------------------
-- Records of pigcms_product_mail_price
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_product_setting`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_product_setting`;
CREATE TABLE `pigcms_product_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `score` float NOT NULL,
  `paymode` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_product_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_recipe`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_recipe`;
CREATE TABLE `pigcms_recipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `begintime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `monday` text NOT NULL,
  `tuesday` text NOT NULL,
  `wednesday` text NOT NULL,
  `thursday` text NOT NULL,
  `friday` text NOT NULL,
  `saturday` text NOT NULL,
  `sunday` text NOT NULL,
  `ishow` int(1) NOT NULL DEFAULT '1' COMMENT '1:显示,2隐藏,默认1',
  `sort` int(11) NOT NULL DEFAULT '1',
  `type` char(15) NOT NULL DEFAULT '',
  `headpic` varchar(200) NOT NULL,
  `infos` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_recipe
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_recognition`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_recognition`;
CREATE TABLE `pigcms_recognition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `attention_num` int(5) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `code_url` varchar(200) NOT NULL,
  `scene_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_reply`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_reply`;
CREATE TABLE `pigcms_reply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `differ` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `message_id` int(11) NOT NULL,
  `reply` varchar(1000) NOT NULL,
  `time` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `message_id` (`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=243 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of pigcms_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_reply_info`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_reply_info`;
CREATE TABLE `pigcms_reply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `infotype` varchar(20) NOT NULL DEFAULT '',
  `diningyuding` tinyint(1) NOT NULL DEFAULT '1',
  `diningwaimai` tinyint(1) NOT NULL DEFAULT '1',
  `config` text NOT NULL,
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `apiurl` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_requestdata`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_requestdata`;
CREATE TABLE `pigcms_requestdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `day` int(2) NOT NULL,
  `time` int(11) NOT NULL,
  `textnum` int(5) NOT NULL,
  `imgnum` int(5) NOT NULL,
  `videonum` int(5) NOT NULL,
  `other` int(5) NOT NULL,
  `follownum` int(5) NOT NULL,
  `unfollownum` int(5) NOT NULL,
  `3g` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_reservation`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_reservation`;
CREATE TABLE `pigcms_reservation` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='预约';

-- ----------------------------
-- Records of pigcms_reservation
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_reservebook`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_reservebook`;
CREATE TABLE `pigcms_reservebook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `truename` varchar(50) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `housetype` varchar(50) NOT NULL,
  `dateline` varchar(50) NOT NULL,
  `timepart` varchar(50) NOT NULL,
  `info` varchar(100) NOT NULL,
  `type` char(15) NOT NULL,
  `booktime` int(11) NOT NULL,
  `remate` tinyint(3) NOT NULL DEFAULT '0' COMMENT '客服标志',
  `kfinfo` varchar(100) NOT NULL,
  `sex` int(11) DEFAULT '0',
  `age` int(11) NOT NULL DEFAULT '0',
  `address` varchar(50) NOT NULL DEFAULT '',
  `choose` varchar(50) NOT NULL DEFAULT '',
  `number` int(11) NOT NULL DEFAULT '0',
  `paid` int(1) DEFAULT '0',
  `orderid` char(32) NOT NULL DEFAULT '',
  `payprice` decimal(10,2) DEFAULT NULL,
  `shiporder` char(32) NOT NULL DEFAULT '',
  `productName` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `wecha_id` (`wecha_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_reservebook
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_role`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_role`;
CREATE TABLE `pigcms_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '后台组名',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '是否激活 1：是 0：否',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_role
-- ----------------------------
INSERT INTO `pigcms_role` VALUES ('5', '超级管理员', '0', '1', '0', '');
INSERT INTO `pigcms_role` VALUES ('6', '演示组', '0', '1', '0', '');
INSERT INTO `pigcms_role` VALUES ('9', '普通会员', '0', '1', '0', '');
INSERT INTO `pigcms_role` VALUES ('10', '自己', '0', '1', '0', '自己');

-- ----------------------------
-- Table structure for `pigcms_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_role_user`;
CREATE TABLE `pigcms_role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` smallint(6) unsigned NOT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_router`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_router`;
CREATE TABLE `pigcms_router` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `bywechat` tinyint(1) NOT NULL DEFAULT '1',
  `wechat` varchar(50) NOT NULL DEFAULT '',
  `qrcode` varchar(200) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `token` varchar(40) NOT NULL DEFAULT '',
  `gw_id` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_router
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_router_config`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_router_config`;
CREATE TABLE `pigcms_router_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `info` varchar(300) NOT NULL DEFAULT '',
  `contact_qq` varchar(12) NOT NULL DEFAULT '',
  `welcome_img` varchar(200) NOT NULL DEFAULT '',
  `other_img` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_school_classify`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_school_classify`;
CREATE TABLE `pigcms_school_classify` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(50) NOT NULL,
  `ssort` int(5) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` char(20) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `type` (`type`),
  FULLTEXT KEY `type_2` (`type`),
  FULLTEXT KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_school_classify
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_school_score`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_school_score`;
CREATE TABLE `pigcms_school_score` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `xq_id` int(11) NOT NULL,
  `qh_id` int(11) NOT NULL,
  `km_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `my_score` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_school_score
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_school_set_index`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_school_set_index`;
CREATE TABLE `pigcms_school_set_index` (
  `setid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `head_url` varchar(200) NOT NULL,
  `info` varchar(100) NOT NULL,
  `album_id` int(11) NOT NULL,
  `musicurl` varchar(200) NOT NULL DEFAULT '',
  `menu1` varchar(50) NOT NULL,
  `menu1_id` int(11) NOT NULL,
  `menu2` char(15) NOT NULL,
  `menu3` char(15) NOT NULL,
  `menu4` char(15) NOT NULL,
  `menu5` char(15) NOT NULL,
  `menu6` char(15) NOT NULL,
  `menu7` char(15) NOT NULL,
  `menu8` char(15) NOT NULL,
  `menu2_id` int(11) NOT NULL,
  `menu3_id` int(11) NOT NULL,
  `menu4_id` int(11) NOT NULL,
  `menu5_id` int(11) NOT NULL,
  `menu6_id` int(11) NOT NULL,
  PRIMARY KEY (`setid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_school_set_index
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_school_students`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_school_students`;
CREATE TABLE `pigcms_school_students` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `xq_id` int(11) NOT NULL,
  `area_addr` varchar(60) NOT NULL DEFAULT '',
  `bj_id` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `sex` int(1) NOT NULL,
  `createdate` int(11) NOT NULL,
  `seffectivetime` date DEFAULT NULL,
  `stheendtime` date DEFAULT NULL,
  `jf_statu` int(11) DEFAULT NULL,
  `mobile` char(11) NOT NULL,
  `homephone` char(16) NOT NULL,
  `s_name` char(50) NOT NULL,
  `localdate_id` char(20) NOT NULL DEFAULT '',
  `note` varchar(50) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_school_students
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_school_tcourse`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_school_tcourse`;
CREATE TABLE `pigcms_school_tcourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `tid` int(11) NOT NULL,
  `km_id` int(11) NOT NULL,
  `bj_id` int(11) NOT NULL,
  `xq_id` int(11) NOT NULL,
  `sd_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_school_tcourse
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_school_teachers`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_school_teachers`;
CREATE TABLE `pigcms_school_teachers` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` char(50) NOT NULL,
  `birthdate` date NOT NULL,
  `createtime` int(11) NOT NULL,
  `homephone` char(12) NOT NULL,
  `mobile` char(11) NOT NULL,
  `email` char(50) NOT NULL,
  `sex` int(1) NOT NULL,
  `token` varchar(50) NOT NULL,
  `jiontime` date DEFAULT NULL,
  `info` text NOT NULL,
  `faceimg` varchar(200) NOT NULL DEFAULT '',
  `headinfo` varchar(600) NOT NULL DEFAULT '',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_school_teachers
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_selfform`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_selfform`;
CREATE TABLE `pigcms_selfform` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(400) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `successtip` varchar(60) NOT NULL DEFAULT '',
  `failtip` varchar(60) NOT NULL DEFAULT '',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `logourl` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `endtime` (`endtime`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_selfform_input`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_selfform_input`;
CREATE TABLE `pigcms_selfform_input` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formid` int(10) NOT NULL DEFAULT '0',
  `displayname` varchar(30) NOT NULL DEFAULT '',
  `fieldname` varchar(30) NOT NULL DEFAULT '',
  `inputtype` varchar(20) NOT NULL DEFAULT '',
  `options` varchar(200) NOT NULL DEFAULT '',
  `require` tinyint(1) NOT NULL DEFAULT '0',
  `regex` varchar(100) NOT NULL DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `errortip` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `formid` (`formid`,`taxis`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_selfform_value`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_selfform_value`;
CREATE TABLE `pigcms_selfform_value` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formid` int(10) NOT NULL DEFAULT '0',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `values` varchar(2000) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `formid` (`formid`,`wecha_id`,`time`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_send_message`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_send_message`;
CREATE TABLE `pigcms_send_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `msg_id` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `msgtype` varchar(30) NOT NULL DEFAULT '',
  `text` varchar(800) NOT NULL DEFAULT '',
  `imgids` varchar(200) NOT NULL DEFAULT '',
  `mediasrc` varchar(200) NOT NULL DEFAULT '',
  `mediaid` varchar(100) NOT NULL DEFAULT '',
  `reachcount` int(10) NOT NULL DEFAULT '0',
  `groupid` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`time`),
  KEY `msg_id` (`msg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_service_logs`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_service_logs`;
CREATE TABLE `pigcms_service_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `enddate` int(11) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_service_logs
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_service_user`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_service_user`;
CREATE TABLE `pigcms_service_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `token` varchar(60) NOT NULL,
  `userName` varchar(60) NOT NULL,
  `userPwd` varchar(32) NOT NULL,
  `endJoinDate` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_shake`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_shake`;
CREATE TABLE `pigcms_shake` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `isact` int(1) NOT NULL DEFAULT '0',
  `title` varchar(40) NOT NULL,
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(400) NOT NULL DEFAULT '',
  `thumb` varchar(200) NOT NULL DEFAULT '',
  `shownum` int(11) NOT NULL DEFAULT '10',
  `joinnum` int(11) DEFAULT NULL,
  `shaketype` int(11) NOT NULL DEFAULT '1',
  `token` varchar(40) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `isopen` int(1) NOT NULL DEFAULT '0',
  `clienttime` int(11) NOT NULL DEFAULT '3',
  `showtime` int(10) NOT NULL DEFAULT '3',
  `endtime` varchar(13) DEFAULT NULL,
  `background` varchar(150) DEFAULT NULL,
  `backgroundmusic` varchar(150) DEFAULT NULL,
  `music` varchar(150) DEFAULT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `rule` varchar(600) NOT NULL DEFAULT '',
  `info` varchar(600) NOT NULL DEFAULT '',
  `starttime` int(11) NOT NULL,
  `endshake` int(11) NOT NULL,
  `qrcode` varchar(150) DEFAULT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_shake_rt`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_shake_rt`;
CREATE TABLE `pigcms_shake_rt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(12) NOT NULL DEFAULT '',
  `count` int(10) NOT NULL DEFAULT '0',
  `shakeid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `shakeid` (`shakeid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;


-- ----------------------------
-- Table structure for `pigcms_shakelog`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_shakelog`;
CREATE TABLE `pigcms_shakelog` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `token` varchar(40) NOT NULL,
  `mark` longtext,
  `endtime` int(15) NOT NULL,
  `joinnum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_shakelog
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_share`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_share`;
CREATE TABLE `pigcms_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(30) NOT NULL DEFAULT '',
  `moduleid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  `wecha_id` varchar(80) NOT NULL DEFAULT '',
  `to` varchar(30) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`moduleid`,`token`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_share
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_share_set`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_share_set`;
CREATE TABLE `pigcms_share_set` (
  `token` varchar(40) NOT NULL DEFAULT '',
  `score` int(5) NOT NULL DEFAULT '0',
  `daylimit` int(5) NOT NULL DEFAULT '1',
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_share_set
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_site_plugmenu`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_site_plugmenu`;
CREATE TABLE `pigcms_site_plugmenu` (
  `token` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `url` varchar(100) DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `display` tinyint(1) NOT NULL DEFAULT '0',
  KEY `token` (`token`,`taxis`,`display`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_sms_expendrecord`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_sms_expendrecord`;
CREATE TABLE `pigcms_sms_expendrecord` (
  `id` int(11) DEFAULT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `price` int(6) NOT NULL DEFAULT '0',
  `count` int(10) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  KEY `uid` (`uid`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_sms_expendrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_sms_record`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_sms_record`;
CREATE TABLE `pigcms_sms_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(20) NOT NULL,
  `time` int(10) NOT NULL,
  `mp` varchar(11) NOT NULL DEFAULT '',
  `text` varchar(400) NOT NULL DEFAULT '',
  `status` mediumint(4) NOT NULL DEFAULT '0',
  `price` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`token`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_sms_record
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_snccode`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_snccode`;
CREATE TABLE `pigcms_snccode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `wechaname` varchar(60) NOT NULL,
  `caeatetime` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_snccode
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_styleset`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_styleset`;
CREATE TABLE `pigcms_styleset` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `RadioGroup` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_styleset
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_system_info`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_system_info`;
CREATE TABLE `pigcms_system_info` (
  `lastsqlupdate` int(10) NOT NULL,
  `version` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_system_info
-- ----------------------------
INSERT INTO `pigcms_system_info` VALUES ('1400221440', '');

-- ----------------------------
-- Table structure for `pigcms_taobao`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_taobao`;
CREATE TABLE `pigcms_taobao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(64) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `homeurl` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_taobao
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_text`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_text`;
CREATE TABLE `pigcms_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `keyword` char(255) NOT NULL,
  `type` varchar(1) NOT NULL,
  `text` text NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `click` int(11) NOT NULL,
  `token` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='文本回复表';


-- ----------------------------
-- Table structure for `pigcms_token_open`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_token_open`;
CREATE TABLE `pigcms_token_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `queryname` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_update_record`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_update_record`;
CREATE TABLE `pigcms_update_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` varchar(600) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_update_record
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_upyun_attachement`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_upyun_attachement`;
CREATE TABLE `pigcms_upyun_attachement` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `url` varchar(160) NOT NULL,
  `code` varchar(10) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_upyun_attachement
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_user`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_user`;
CREATE TABLE `pigcms_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `role` smallint(6) unsigned NOT NULL COMMENT '组ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1:启用 0:禁止',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `last_login_time` int(11) unsigned NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录IP',
  `last_location` varchar(100) DEFAULT NULL COMMENT '最后登录位置',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of pigcms_user
-- ----------------------------
INSERT INTO `pigcms_user` VALUES ('8', 'admin', '21232f297a57a5a743894a0e4a801fc3', '5', '1', '', '1400470267', '127.0.0.1', '');

-- ----------------------------
-- Table structure for `pigcms_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_user_group`;
CREATE TABLE `pigcms_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxisid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `connectnum` int(11) NOT NULL,
  `iscopyright` tinyint(1) NOT NULL,
  `activitynum` int(3) NOT NULL,
  `price` int(11) NOT NULL,
  `statistics_user` int(11) NOT NULL,
  `create_card_num` int(4) NOT NULL,
  `wechat_card_num` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_user_group
-- ----------------------------
INSERT INTO `pigcms_user_group` VALUES ('1', '1', 'vip0', '2000', '2000', '0', '0', '0', '0', '10', '1', '1');
INSERT INTO `pigcms_user_group` VALUES ('2', '2', 'VIP1', '3000', '3000', '1', '2', '10', '0', '50', '1', '1');
INSERT INTO `pigcms_user_group` VALUES ('3', '3', 'vip2', '40000', '40000', '1', '4', '150', '0', '80', '2', '1');
INSERT INTO `pigcms_user_group` VALUES ('4', '4', 'vip3', '50000', '50000', '1', '5', '200', '0', '100', '3', '1');
INSERT INTO `pigcms_user_group` VALUES ('5', '5', 'vip4', '100000', '100000', '1', '100000', '1000', '0', '100000', '1000', '1');

-- ----------------------------
-- Table structure for `pigcms_user_request`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_user_request`;
CREATE TABLE `pigcms_user_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `msgtype` varchar(15) NOT NULL DEFAULT 'text',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `msgtype` (`msgtype`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_user_request
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_userinfo`;
CREATE TABLE `pigcms_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `portrait` varchar(200) NOT NULL DEFAULT '',
  `wallopen` tinyint(1) NOT NULL DEFAULT '0',
  `total_score` int(10) NOT NULL DEFAULT '0',
  `expensetotal` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `wechaname` varchar(60) NOT NULL,
  `truename` varchar(60) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `bornyear` varchar(4) NOT NULL DEFAULT '',
  `bornmonth` varchar(4) NOT NULL DEFAULT '',
  `bornday` varchar(4) NOT NULL DEFAULT '',
  `qq` varchar(11) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL,
  `age` varchar(3) NOT NULL DEFAULT '',
  `birthday` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `info` varchar(200) NOT NULL,
  `sign_score` int(11) NOT NULL,
  `expend_score` int(11) NOT NULL,
  `continuous` int(11) NOT NULL,
  `add_expend` int(11) NOT NULL,
  `add_expend_time` int(11) NOT NULL,
  `live_time` int(11) NOT NULL,
  `getcardtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_users`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_users`;
CREATE TABLE `pigcms_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inviter` int(10) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `mp` varchar(11) NOT NULL DEFAULT '',
  `smscount` int(10) NOT NULL DEFAULT '0',
  `password` varchar(32) NOT NULL,
  `email` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `lasttime` varchar(13) NOT NULL,
  `status` varchar(1) NOT NULL,
  `createip` varchar(30) NOT NULL,
  `lastip` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `activitynum` int(11) NOT NULL,
  `card_num` int(11) NOT NULL,
  `card_create_status` tinyint(1) NOT NULL,
  `money` int(11) NOT NULL,
  `moneybalance` int(10) NOT NULL DEFAULT '0',
  `spend` int(5) NOT NULL DEFAULT '0',
  `viptime` varchar(13) NOT NULL,
  `connectnum` int(11) NOT NULL DEFAULT '0',
  `lastloginmonth` smallint(2) NOT NULL DEFAULT '0',
  `attachmentsize` int(10) NOT NULL DEFAULT '0',
  `wechat_card_num` int(3) NOT NULL,
  `serviceUserNum` tinyint(3) NOT NULL,
  `invitecode` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='前台用户表';


-- ----------------------------
-- Table structure for `pigcms_voiceresponse`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_voiceresponse`;
CREATE TABLE `pigcms_voiceresponse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `uptatetime` varchar(13) NOT NULL,
  `keyword` char(255) NOT NULL,
  `title` varchar(60) NOT NULL,
  `musicurl` char(255) NOT NULL,
  `hqmusicurl` char(255) NOT NULL,
  `description` char(255) NOT NULL,
  `token` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='语音回复表';

-- ----------------------------
-- Records of pigcms_voiceresponse
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_vote`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_vote`;
CREATE TABLE `pigcms_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` char(5) NOT NULL COMMENT 'text/img 文本/图片',
  `picurl` varchar(500) NOT NULL,
  `showpic` tinyint(4) NOT NULL COMMENT '是否显示图片',
  `info` varchar(500) NOT NULL COMMENT '投票说明',
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `display` tinyint(4) NOT NULL COMMENT '1投票前0投票后2投票结束',
  `cknums` tinyint(3) NOT NULL DEFAULT '1' COMMENT '最多可选择，默认1',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `keyword` (`keyword`),
  FULLTEXT KEY `token` (`token`),
  FULLTEXT KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_vote
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_vote_item`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_vote_item`;
CREATE TABLE `pigcms_vote_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) NOT NULL COMMENT 'vote_id',
  `item` varchar(50) NOT NULL,
  `vcount` int(11) NOT NULL,
  `startpicurl` varchar(200) NOT NULL DEFAULT '',
  `tourl` varchar(200) NOT NULL DEFAULT '',
  `rank` tinyint(4) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_vote_item
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_vote_record`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_vote_record`;
CREATE TABLE `pigcms_vote_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) NOT NULL COMMENT '投票项 1,2,3,',
  `vid` int(11) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `touched` tinyint(4) NOT NULL,
  `touch_time` int(11) NOT NULL COMMENT '投票日期',
  `token` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_vote_record
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_wall`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_wall`;
CREATE TABLE `pigcms_wall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(20) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `logo` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `startbackground` varchar(100) NOT NULL DEFAULT '',
  `background` varchar(100) NOT NULL DEFAULT '',
  `endbackground` varchar(100) NOT NULL DEFAULT '',
  `isopen` tinyint(1) NOT NULL DEFAULT '1',
  `firstprizename` varchar(50) NOT NULL DEFAULT '',
  `firstprizepic` varchar(100) NOT NULL DEFAULT '',
  `firstprizecount` mediumint(5) NOT NULL DEFAULT '0',
  `secondprizename` varchar(50) NOT NULL DEFAULT '',
  `secondprizecount` mediumint(4) NOT NULL DEFAULT '0',
  `secondprizepic` varchar(50) NOT NULL DEFAULT '',
  `thirdprizename` varchar(50) NOT NULL DEFAULT '',
  `thirdprizepic` varchar(100) NOT NULL DEFAULT '',
  `thirdprizecount` mediumint(4) NOT NULL DEFAULT '0',
  `fourthprizename` varchar(50) NOT NULL DEFAULT '',
  `fourthprizecount` mediumint(4) NOT NULL DEFAULT '0',
  `fourthprizepic` varchar(100) NOT NULL DEFAULT '',
  `fifthprizename` varchar(50) NOT NULL DEFAULT '',
  `fifthprizecount` mediumint(5) NOT NULL DEFAULT '0',
  `fifthprizepic` varchar(100) NOT NULL DEFAULT '',
  `sixthprizename` varchar(50) NOT NULL DEFAULT '',
  `sixthprizecount` mediumint(4) NOT NULL DEFAULT '0',
  `sixthprizepic` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `qrcode` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for `pigcms_wall_member`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_wall_member`;
CREATE TABLE `pigcms_wall_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(20) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `portrait` varchar(150) NOT NULL DEFAULT '',
  `nickname` varchar(60) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `wallid` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`wallid`),
  KEY `wecha_id` (`wecha_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_wall_message`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_wall_message`;
CREATE TABLE `pigcms_wall_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `wallid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(20) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `content` varchar(500) NOT NULL DEFAULT '',
  `picture` varchar(150) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `wallid` (`wallid`,`token`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_wall_prize_record`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_wall_prize_record`;
CREATE TABLE `pigcms_wall_prize_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `wallid` int(11) NOT NULL DEFAULT '0',
  `prize` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wallid` (`wallid`,`prize`,`time`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_wall_prize_record
-- ----------------------------
INSERT INTO `pigcms_wall_prize_record` VALUES ('1', '2', '1', '1', '1398232304');
INSERT INTO `pigcms_wall_prize_record` VALUES ('2', '1', '1', '1', '1398232307');

-- ----------------------------
-- Table structure for `pigcms_weather`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_weather`;
CREATE TABLE `pigcms_weather` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` char(9) NOT NULL,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2502 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_weather
-- ----------------------------
INSERT INTO `pigcms_weather` VALUES ('1', '101010100', '北京');
INSERT INTO `pigcms_weather` VALUES ('2', '101010200', '海淀');
INSERT INTO `pigcms_weather` VALUES ('3', '101010400', '顺义');
INSERT INTO `pigcms_weather` VALUES ('4', '101010500', '怀柔');
INSERT INTO `pigcms_weather` VALUES ('5', '101010600', '通州');
INSERT INTO `pigcms_weather` VALUES ('6', '101010700', '昌平');
INSERT INTO `pigcms_weather` VALUES ('7', '101010800', '延庆');
INSERT INTO `pigcms_weather` VALUES ('8', '101010900', '丰台');
INSERT INTO `pigcms_weather` VALUES ('9', '101011000', '石景山');
INSERT INTO `pigcms_weather` VALUES ('10', '101011100', '大兴');
INSERT INTO `pigcms_weather` VALUES ('11', '101011200', '房山');
INSERT INTO `pigcms_weather` VALUES ('12', '101011300', '密云');
INSERT INTO `pigcms_weather` VALUES ('13', '101011400', '门头沟');
INSERT INTO `pigcms_weather` VALUES ('14', '101011500', '平谷');
INSERT INTO `pigcms_weather` VALUES ('15', '101020100', '上海');
INSERT INTO `pigcms_weather` VALUES ('16', '101020200', '闵行');
INSERT INTO `pigcms_weather` VALUES ('17', '101020300', '宝山');
INSERT INTO `pigcms_weather` VALUES ('18', '101020500', '嘉定');
INSERT INTO `pigcms_weather` VALUES ('19', '101020600', '浦东南汇');
INSERT INTO `pigcms_weather` VALUES ('20', '101020700', '金山');
INSERT INTO `pigcms_weather` VALUES ('21', '101020800', '青浦');
INSERT INTO `pigcms_weather` VALUES ('22', '101020900', '松江');
INSERT INTO `pigcms_weather` VALUES ('23', '101021000', '奉贤');
INSERT INTO `pigcms_weather` VALUES ('24', '101021100', '崇明');
INSERT INTO `pigcms_weather` VALUES ('25', '101021300', '浦东');
INSERT INTO `pigcms_weather` VALUES ('26', '101030200', '武清');
INSERT INTO `pigcms_weather` VALUES ('27', '101030300', '宝坻');
INSERT INTO `pigcms_weather` VALUES ('28', '101030400', '东丽');
INSERT INTO `pigcms_weather` VALUES ('29', '101030500', '西青');
INSERT INTO `pigcms_weather` VALUES ('30', '101030600', '北辰');
INSERT INTO `pigcms_weather` VALUES ('31', '101030700', '宁河');
INSERT INTO `pigcms_weather` VALUES ('32', '101030800', '汉沽');
INSERT INTO `pigcms_weather` VALUES ('33', '101030900', '静海');
INSERT INTO `pigcms_weather` VALUES ('34', '101031000', '津南');
INSERT INTO `pigcms_weather` VALUES ('35', '101031100', '塘沽');
INSERT INTO `pigcms_weather` VALUES ('36', '101031200', '大港');
INSERT INTO `pigcms_weather` VALUES ('37', '101031400', '蓟县');
INSERT INTO `pigcms_weather` VALUES ('38', '101040100', '重庆');
INSERT INTO `pigcms_weather` VALUES ('39', '101040200', '永川');
INSERT INTO `pigcms_weather` VALUES ('40', '101040300', '合川');
INSERT INTO `pigcms_weather` VALUES ('41', '101040400', '南川');
INSERT INTO `pigcms_weather` VALUES ('42', '101040500', '江津');
INSERT INTO `pigcms_weather` VALUES ('43', '101040600', '万盛');
INSERT INTO `pigcms_weather` VALUES ('44', '101040700', '渝北');
INSERT INTO `pigcms_weather` VALUES ('45', '101040800', '北碚');
INSERT INTO `pigcms_weather` VALUES ('46', '101041000', '长寿');
INSERT INTO `pigcms_weather` VALUES ('47', '101041100', '黔江');
INSERT INTO `pigcms_weather` VALUES ('48', '101041300', '万州');
INSERT INTO `pigcms_weather` VALUES ('49', '101041400', '涪陵');
INSERT INTO `pigcms_weather` VALUES ('50', '101041500', '开县');
INSERT INTO `pigcms_weather` VALUES ('51', '101041600', '城口');
INSERT INTO `pigcms_weather` VALUES ('52', '101041700', '云阳');
INSERT INTO `pigcms_weather` VALUES ('53', '101041800', '巫溪');
INSERT INTO `pigcms_weather` VALUES ('54', '101041900', '奉节');
INSERT INTO `pigcms_weather` VALUES ('55', '101042000', '巫山');
INSERT INTO `pigcms_weather` VALUES ('56', '101042100', '潼南');
INSERT INTO `pigcms_weather` VALUES ('57', '101042200', '垫江');
INSERT INTO `pigcms_weather` VALUES ('58', '101042300', '梁平');
INSERT INTO `pigcms_weather` VALUES ('59', '101042400', '忠县');
INSERT INTO `pigcms_weather` VALUES ('60', '101042500', '石柱');
INSERT INTO `pigcms_weather` VALUES ('61', '101042600', '大足');
INSERT INTO `pigcms_weather` VALUES ('62', '101042700', '荣昌');
INSERT INTO `pigcms_weather` VALUES ('63', '101042800', '铜梁');
INSERT INTO `pigcms_weather` VALUES ('64', '101042900', '璧山');
INSERT INTO `pigcms_weather` VALUES ('65', '101043000', '丰都');
INSERT INTO `pigcms_weather` VALUES ('66', '101043100', '武隆');
INSERT INTO `pigcms_weather` VALUES ('67', '101043200', '彭水');
INSERT INTO `pigcms_weather` VALUES ('68', '101043300', '綦江');
INSERT INTO `pigcms_weather` VALUES ('69', '101043400', '酉阳');
INSERT INTO `pigcms_weather` VALUES ('70', '101043600', '秀山');
INSERT INTO `pigcms_weather` VALUES ('71', '101050101', '哈尔滨');
INSERT INTO `pigcms_weather` VALUES ('72', '101050102', '双城');
INSERT INTO `pigcms_weather` VALUES ('73', '101050103', '呼兰');
INSERT INTO `pigcms_weather` VALUES ('74', '101050104', '阿城');
INSERT INTO `pigcms_weather` VALUES ('75', '101050105', '宾县');
INSERT INTO `pigcms_weather` VALUES ('76', '101050106', '依兰');
INSERT INTO `pigcms_weather` VALUES ('77', '101050107', '巴彦');
INSERT INTO `pigcms_weather` VALUES ('78', '101050108', '通河');
INSERT INTO `pigcms_weather` VALUES ('79', '101050109', '方正');
INSERT INTO `pigcms_weather` VALUES ('80', '101050110', '延寿');
INSERT INTO `pigcms_weather` VALUES ('81', '101050111', '尚志');
INSERT INTO `pigcms_weather` VALUES ('82', '101050112', '五常');
INSERT INTO `pigcms_weather` VALUES ('83', '101050113', '木兰');
INSERT INTO `pigcms_weather` VALUES ('84', '101050201', '齐齐哈尔');
INSERT INTO `pigcms_weather` VALUES ('85', '101050202', '讷河');
INSERT INTO `pigcms_weather` VALUES ('86', '101050203', '龙江');
INSERT INTO `pigcms_weather` VALUES ('87', '101050204', '甘南');
INSERT INTO `pigcms_weather` VALUES ('88', '101050205', '富裕');
INSERT INTO `pigcms_weather` VALUES ('89', '101050206', '依安');
INSERT INTO `pigcms_weather` VALUES ('90', '101050207', '拜泉');
INSERT INTO `pigcms_weather` VALUES ('91', '101050208', '克山');
INSERT INTO `pigcms_weather` VALUES ('92', '101050209', '克东');
INSERT INTO `pigcms_weather` VALUES ('93', '101050210', '泰来');
INSERT INTO `pigcms_weather` VALUES ('94', '101050301', '牡丹江');
INSERT INTO `pigcms_weather` VALUES ('95', '101050302', '海林');
INSERT INTO `pigcms_weather` VALUES ('96', '101050303', '穆棱');
INSERT INTO `pigcms_weather` VALUES ('97', '101050304', '林口');
INSERT INTO `pigcms_weather` VALUES ('98', '101050305', '绥芬河');
INSERT INTO `pigcms_weather` VALUES ('99', '101050306', '宁安');
INSERT INTO `pigcms_weather` VALUES ('100', '101050307', '东宁');
INSERT INTO `pigcms_weather` VALUES ('101', '101050401', '佳木斯');
INSERT INTO `pigcms_weather` VALUES ('102', '101050402', '汤原');
INSERT INTO `pigcms_weather` VALUES ('103', '101050403', '抚远');
INSERT INTO `pigcms_weather` VALUES ('104', '101050404', '桦川');
INSERT INTO `pigcms_weather` VALUES ('105', '101050405', '桦南');
INSERT INTO `pigcms_weather` VALUES ('106', '101050406', '同江');
INSERT INTO `pigcms_weather` VALUES ('107', '101050407', '富锦');
INSERT INTO `pigcms_weather` VALUES ('108', '101050501', '绥化');
INSERT INTO `pigcms_weather` VALUES ('109', '101050502', '肇东');
INSERT INTO `pigcms_weather` VALUES ('110', '101050503', '安达');
INSERT INTO `pigcms_weather` VALUES ('111', '101050504', '海伦');
INSERT INTO `pigcms_weather` VALUES ('112', '101050505', '明水');
INSERT INTO `pigcms_weather` VALUES ('113', '101050506', '望奎');
INSERT INTO `pigcms_weather` VALUES ('114', '101050507', '兰西');
INSERT INTO `pigcms_weather` VALUES ('115', '101050508', '青冈');
INSERT INTO `pigcms_weather` VALUES ('116', '101050509', '庆安');
INSERT INTO `pigcms_weather` VALUES ('117', '101050510', '绥棱');
INSERT INTO `pigcms_weather` VALUES ('118', '101050601', '黑河');
INSERT INTO `pigcms_weather` VALUES ('119', '101050602', '嫩江');
INSERT INTO `pigcms_weather` VALUES ('120', '101050603', '孙吴');
INSERT INTO `pigcms_weather` VALUES ('121', '101050604', '逊克');
INSERT INTO `pigcms_weather` VALUES ('122', '101050605', '五大连池');
INSERT INTO `pigcms_weather` VALUES ('123', '101050606', '北安');
INSERT INTO `pigcms_weather` VALUES ('124', '101050701', '大兴安岭');
INSERT INTO `pigcms_weather` VALUES ('125', '101050702', '塔河');
INSERT INTO `pigcms_weather` VALUES ('126', '101050703', '漠河');
INSERT INTO `pigcms_weather` VALUES ('127', '101050704', '呼玛');
INSERT INTO `pigcms_weather` VALUES ('128', '101050801', '伊春');
INSERT INTO `pigcms_weather` VALUES ('129', '101050804', '铁力');
INSERT INTO `pigcms_weather` VALUES ('130', '101050805', '嘉荫');
INSERT INTO `pigcms_weather` VALUES ('131', '101050901', '大庆');
INSERT INTO `pigcms_weather` VALUES ('132', '101050902', '林甸');
INSERT INTO `pigcms_weather` VALUES ('133', '101050903', '肇州');
INSERT INTO `pigcms_weather` VALUES ('134', '101050904', '肇源');
INSERT INTO `pigcms_weather` VALUES ('135', '101050905', '杜蒙');
INSERT INTO `pigcms_weather` VALUES ('136', '101051002', '七台河');
INSERT INTO `pigcms_weather` VALUES ('137', '101051003', '勃利');
INSERT INTO `pigcms_weather` VALUES ('138', '101051101', '鸡西');
INSERT INTO `pigcms_weather` VALUES ('139', '101051102', '虎林');
INSERT INTO `pigcms_weather` VALUES ('140', '101051103', '密山');
INSERT INTO `pigcms_weather` VALUES ('141', '101051104', '鸡东');
INSERT INTO `pigcms_weather` VALUES ('142', '101051201', '鹤岗');
INSERT INTO `pigcms_weather` VALUES ('143', '101051202', '绥滨');
INSERT INTO `pigcms_weather` VALUES ('144', '101051203', '萝北');
INSERT INTO `pigcms_weather` VALUES ('145', '101051301', '双鸭山');
INSERT INTO `pigcms_weather` VALUES ('146', '101051302', '集贤');
INSERT INTO `pigcms_weather` VALUES ('147', '101051303', '宝清');
INSERT INTO `pigcms_weather` VALUES ('148', '101051304', '饶河');
INSERT INTO `pigcms_weather` VALUES ('149', '101051305', '友谊');
INSERT INTO `pigcms_weather` VALUES ('150', '101060101', '长春');
INSERT INTO `pigcms_weather` VALUES ('151', '101060102', '农安');
INSERT INTO `pigcms_weather` VALUES ('152', '101060103', '德惠');
INSERT INTO `pigcms_weather` VALUES ('153', '101060104', '九台');
INSERT INTO `pigcms_weather` VALUES ('154', '101060105', '榆树');
INSERT INTO `pigcms_weather` VALUES ('155', '101060201', '吉林');
INSERT INTO `pigcms_weather` VALUES ('156', '101060202', '舒兰');
INSERT INTO `pigcms_weather` VALUES ('157', '101060203', '永吉');
INSERT INTO `pigcms_weather` VALUES ('158', '101060204', '蛟河');
INSERT INTO `pigcms_weather` VALUES ('159', '101060205', '磐石');
INSERT INTO `pigcms_weather` VALUES ('160', '101060206', '桦甸');
INSERT INTO `pigcms_weather` VALUES ('161', '101060302', '敦化');
INSERT INTO `pigcms_weather` VALUES ('162', '101060303', '安图');
INSERT INTO `pigcms_weather` VALUES ('163', '101060304', '汪清');
INSERT INTO `pigcms_weather` VALUES ('164', '101060305', '和龙');
INSERT INTO `pigcms_weather` VALUES ('165', '101060307', '龙井');
INSERT INTO `pigcms_weather` VALUES ('166', '101060308', '珲春');
INSERT INTO `pigcms_weather` VALUES ('167', '101060309', '图们');
INSERT INTO `pigcms_weather` VALUES ('168', '101060312', '延吉');
INSERT INTO `pigcms_weather` VALUES ('169', '101060401', '四平');
INSERT INTO `pigcms_weather` VALUES ('170', '101060402', '双辽');
INSERT INTO `pigcms_weather` VALUES ('171', '101060403', '梨树');
INSERT INTO `pigcms_weather` VALUES ('172', '101060404', '公主岭');
INSERT INTO `pigcms_weather` VALUES ('173', '101060405', '伊通');
INSERT INTO `pigcms_weather` VALUES ('174', '101060501', '通化');
INSERT INTO `pigcms_weather` VALUES ('175', '101060502', '梅河口');
INSERT INTO `pigcms_weather` VALUES ('176', '101060503', '柳河');
INSERT INTO `pigcms_weather` VALUES ('177', '101060504', '辉南');
INSERT INTO `pigcms_weather` VALUES ('178', '101060505', '集安');
INSERT INTO `pigcms_weather` VALUES ('179', '101060601', '白城');
INSERT INTO `pigcms_weather` VALUES ('180', '101060602', '洮南');
INSERT INTO `pigcms_weather` VALUES ('181', '101060603', '大安');
INSERT INTO `pigcms_weather` VALUES ('182', '101060604', '镇赉');
INSERT INTO `pigcms_weather` VALUES ('183', '101060605', '通榆');
INSERT INTO `pigcms_weather` VALUES ('184', '101060701', '辽源');
INSERT INTO `pigcms_weather` VALUES ('185', '101060702', '东丰');
INSERT INTO `pigcms_weather` VALUES ('186', '101060703', '东辽');
INSERT INTO `pigcms_weather` VALUES ('187', '101060801', '松原');
INSERT INTO `pigcms_weather` VALUES ('188', '101060802', '乾安');
INSERT INTO `pigcms_weather` VALUES ('189', '101060803', '前郭');
INSERT INTO `pigcms_weather` VALUES ('190', '101060804', '长岭');
INSERT INTO `pigcms_weather` VALUES ('191', '101060805', '扶余');
INSERT INTO `pigcms_weather` VALUES ('192', '101060901', '白山');
INSERT INTO `pigcms_weather` VALUES ('193', '101060902', '靖宇');
INSERT INTO `pigcms_weather` VALUES ('194', '101060903', '临江');
INSERT INTO `pigcms_weather` VALUES ('195', '101060905', '长白');
INSERT INTO `pigcms_weather` VALUES ('196', '101060906', '抚松');
INSERT INTO `pigcms_weather` VALUES ('197', '101060907', '江源');
INSERT INTO `pigcms_weather` VALUES ('198', '101070101', '沈阳');
INSERT INTO `pigcms_weather` VALUES ('199', '101070103', '辽中');
INSERT INTO `pigcms_weather` VALUES ('200', '101070104', '康平');
INSERT INTO `pigcms_weather` VALUES ('201', '101070105', '法库');
INSERT INTO `pigcms_weather` VALUES ('202', '101070106', '新民');
INSERT INTO `pigcms_weather` VALUES ('203', '101070201', '大连');
INSERT INTO `pigcms_weather` VALUES ('204', '101070202', '瓦房店');
INSERT INTO `pigcms_weather` VALUES ('205', '101070204', '普兰店');
INSERT INTO `pigcms_weather` VALUES ('206', '101070206', '长海');
INSERT INTO `pigcms_weather` VALUES ('207', '101070207', '庄河');
INSERT INTO `pigcms_weather` VALUES ('208', '101070301', '鞍山');
INSERT INTO `pigcms_weather` VALUES ('209', '101070302', '台安');
INSERT INTO `pigcms_weather` VALUES ('210', '101070303', '岫岩');
INSERT INTO `pigcms_weather` VALUES ('211', '101070304', '海城');
INSERT INTO `pigcms_weather` VALUES ('212', '101070401', '抚顺');
INSERT INTO `pigcms_weather` VALUES ('213', '101070402', '新宾');
INSERT INTO `pigcms_weather` VALUES ('214', '101070403', '清原');
INSERT INTO `pigcms_weather` VALUES ('215', '101070501', '本溪');
INSERT INTO `pigcms_weather` VALUES ('216', '101070504', '桓仁');
INSERT INTO `pigcms_weather` VALUES ('217', '101070601', '丹东');
INSERT INTO `pigcms_weather` VALUES ('218', '101070602', '凤城');
INSERT INTO `pigcms_weather` VALUES ('219', '101070603', '宽甸');
INSERT INTO `pigcms_weather` VALUES ('220', '101070604', '东港');
INSERT INTO `pigcms_weather` VALUES ('221', '101070701', '锦州');
INSERT INTO `pigcms_weather` VALUES ('222', '101070702', '凌海');
INSERT INTO `pigcms_weather` VALUES ('223', '101070704', '义县');
INSERT INTO `pigcms_weather` VALUES ('224', '101070705', '黑山');
INSERT INTO `pigcms_weather` VALUES ('225', '101070706', '北镇');
INSERT INTO `pigcms_weather` VALUES ('226', '101070801', '营口');
INSERT INTO `pigcms_weather` VALUES ('227', '101070802', '大石桥');
INSERT INTO `pigcms_weather` VALUES ('228', '101070803', '盖州');
INSERT INTO `pigcms_weather` VALUES ('229', '101070901', '阜新');
INSERT INTO `pigcms_weather` VALUES ('230', '101070902', '彰武');
INSERT INTO `pigcms_weather` VALUES ('231', '101071001', '辽阳');
INSERT INTO `pigcms_weather` VALUES ('232', '101071003', '灯塔');
INSERT INTO `pigcms_weather` VALUES ('233', '101071004', '弓长岭');
INSERT INTO `pigcms_weather` VALUES ('234', '101071101', '铁岭');
INSERT INTO `pigcms_weather` VALUES ('235', '101071102', '开原');
INSERT INTO `pigcms_weather` VALUES ('236', '101071103', '昌图');
INSERT INTO `pigcms_weather` VALUES ('237', '101071104', '西丰');
INSERT INTO `pigcms_weather` VALUES ('238', '101071105', '调兵山');
INSERT INTO `pigcms_weather` VALUES ('239', '101071201', '朝阳');
INSERT INTO `pigcms_weather` VALUES ('240', '101071203', '凌源');
INSERT INTO `pigcms_weather` VALUES ('241', '101071204', '喀左');
INSERT INTO `pigcms_weather` VALUES ('242', '101071205', '北票');
INSERT INTO `pigcms_weather` VALUES ('243', '101071207', '建平');
INSERT INTO `pigcms_weather` VALUES ('244', '101071301', '盘锦');
INSERT INTO `pigcms_weather` VALUES ('245', '101071302', '大洼');
INSERT INTO `pigcms_weather` VALUES ('246', '101071303', '盘山');
INSERT INTO `pigcms_weather` VALUES ('247', '101071401', '葫芦岛');
INSERT INTO `pigcms_weather` VALUES ('248', '101071402', '建昌');
INSERT INTO `pigcms_weather` VALUES ('249', '101071403', '绥中');
INSERT INTO `pigcms_weather` VALUES ('250', '101071404', '兴城');
INSERT INTO `pigcms_weather` VALUES ('251', '101080101', '呼和浩特');
INSERT INTO `pigcms_weather` VALUES ('252', '101080102', '土左');
INSERT INTO `pigcms_weather` VALUES ('253', '101080103', '托克托');
INSERT INTO `pigcms_weather` VALUES ('254', '101080104', '和林格尔');
INSERT INTO `pigcms_weather` VALUES ('255', '101080105', '清水河');
INSERT INTO `pigcms_weather` VALUES ('256', '101080107', '武川');
INSERT INTO `pigcms_weather` VALUES ('257', '101080201', '包头');
INSERT INTO `pigcms_weather` VALUES ('258', '101080202', '白云鄂博');
INSERT INTO `pigcms_weather` VALUES ('259', '101080204', '土右');
INSERT INTO `pigcms_weather` VALUES ('260', '101080205', '固阳');
INSERT INTO `pigcms_weather` VALUES ('261', '101080206', '达茂');
INSERT INTO `pigcms_weather` VALUES ('262', '101080301', '乌海');
INSERT INTO `pigcms_weather` VALUES ('263', '101080401', '乌兰察布');
INSERT INTO `pigcms_weather` VALUES ('264', '101080402', '卓资');
INSERT INTO `pigcms_weather` VALUES ('265', '101080403', '化德');
INSERT INTO `pigcms_weather` VALUES ('266', '101080404', '商都');
INSERT INTO `pigcms_weather` VALUES ('267', '101080406', '兴和');
INSERT INTO `pigcms_weather` VALUES ('268', '101080407', '凉城');
INSERT INTO `pigcms_weather` VALUES ('269', '101080408', '察右前');
INSERT INTO `pigcms_weather` VALUES ('270', '101080409', '察右中');
INSERT INTO `pigcms_weather` VALUES ('271', '101080410', '察右后');
INSERT INTO `pigcms_weather` VALUES ('272', '101080411', '四子王');
INSERT INTO `pigcms_weather` VALUES ('273', '101080412', '丰镇');
INSERT INTO `pigcms_weather` VALUES ('274', '101080501', '通辽');
INSERT INTO `pigcms_weather` VALUES ('275', '101080503', '科左中');
INSERT INTO `pigcms_weather` VALUES ('276', '101080504', '科左后');
INSERT INTO `pigcms_weather` VALUES ('277', '101080506', '开鲁');
INSERT INTO `pigcms_weather` VALUES ('278', '101080507', '库伦');
INSERT INTO `pigcms_weather` VALUES ('279', '101080508', '奈曼');
INSERT INTO `pigcms_weather` VALUES ('280', '101080509', '扎鲁特');
INSERT INTO `pigcms_weather` VALUES ('281', '101080601', '赤峰');
INSERT INTO `pigcms_weather` VALUES ('282', '101080603', '阿鲁');
INSERT INTO `pigcms_weather` VALUES ('283', '101080605', '巴林左');
INSERT INTO `pigcms_weather` VALUES ('284', '101080606', '巴林右');
INSERT INTO `pigcms_weather` VALUES ('285', '101080607', '林西');
INSERT INTO `pigcms_weather` VALUES ('286', '101080608', '克什');
INSERT INTO `pigcms_weather` VALUES ('287', '101080609', '翁牛特');
INSERT INTO `pigcms_weather` VALUES ('288', '101080611', '喀喇沁');
INSERT INTO `pigcms_weather` VALUES ('289', '101080613', '宁城');
INSERT INTO `pigcms_weather` VALUES ('290', '101080614', '敖汉');
INSERT INTO `pigcms_weather` VALUES ('291', '101080701', '鄂尔多斯');
INSERT INTO `pigcms_weather` VALUES ('292', '101080703', '达拉特');
INSERT INTO `pigcms_weather` VALUES ('293', '101080704', '准格尔');
INSERT INTO `pigcms_weather` VALUES ('294', '101080706', '河南');
INSERT INTO `pigcms_weather` VALUES ('295', '101080708', '鄂托克');
INSERT INTO `pigcms_weather` VALUES ('296', '101080709', '杭锦');
INSERT INTO `pigcms_weather` VALUES ('297', '101080710', '乌审');
INSERT INTO `pigcms_weather` VALUES ('298', '101080711', '伊金霍洛');
INSERT INTO `pigcms_weather` VALUES ('299', '101080801', '巴彦淖尔');
INSERT INTO `pigcms_weather` VALUES ('300', '101080802', '五原');
INSERT INTO `pigcms_weather` VALUES ('301', '101080803', '磴口');
INSERT INTO `pigcms_weather` VALUES ('302', '101080804', '乌前');
INSERT INTO `pigcms_weather` VALUES ('303', '101080806', '乌中');
INSERT INTO `pigcms_weather` VALUES ('304', '101080807', '乌后');
INSERT INTO `pigcms_weather` VALUES ('305', '101080810', '杭锦后');
INSERT INTO `pigcms_weather` VALUES ('306', '101080901', '锡林浩特');
INSERT INTO `pigcms_weather` VALUES ('307', '101080903', '二连浩特');
INSERT INTO `pigcms_weather` VALUES ('308', '101080904', '阿巴嘎');
INSERT INTO `pigcms_weather` VALUES ('309', '101080906', '苏左');
INSERT INTO `pigcms_weather` VALUES ('310', '101080907', '苏右');
INSERT INTO `pigcms_weather` VALUES ('311', '101080909', '东乌');
INSERT INTO `pigcms_weather` VALUES ('312', '101080910', '西乌');
INSERT INTO `pigcms_weather` VALUES ('313', '101080911', '太仆寺');
INSERT INTO `pigcms_weather` VALUES ('314', '101080912', '镶黄');
INSERT INTO `pigcms_weather` VALUES ('315', '101080913', '正镶白');
INSERT INTO `pigcms_weather` VALUES ('316', '101080914', '正蓝');
INSERT INTO `pigcms_weather` VALUES ('317', '101080915', '多伦');
INSERT INTO `pigcms_weather` VALUES ('318', '101081000', '呼伦贝尔');
INSERT INTO `pigcms_weather` VALUES ('319', '101081001', '海拉尔');
INSERT INTO `pigcms_weather` VALUES ('320', '101081003', '阿荣');
INSERT INTO `pigcms_weather` VALUES ('321', '101081004', '莫力达瓦');
INSERT INTO `pigcms_weather` VALUES ('322', '101081005', '鄂伦春');
INSERT INTO `pigcms_weather` VALUES ('323', '101081006', '鄂温克');
INSERT INTO `pigcms_weather` VALUES ('324', '101081007', '陈巴尔虎');
INSERT INTO `pigcms_weather` VALUES ('325', '101081008', '新左');
INSERT INTO `pigcms_weather` VALUES ('326', '101081009', '新右');
INSERT INTO `pigcms_weather` VALUES ('327', '101081010', '满洲里');
INSERT INTO `pigcms_weather` VALUES ('328', '101081011', '牙克石');
INSERT INTO `pigcms_weather` VALUES ('329', '101081012', '扎兰屯');
INSERT INTO `pigcms_weather` VALUES ('330', '101081014', '额尔古纳');
INSERT INTO `pigcms_weather` VALUES ('331', '101081015', '根河');
INSERT INTO `pigcms_weather` VALUES ('332', '101081101', '乌兰浩特');
INSERT INTO `pigcms_weather` VALUES ('333', '101081102', '阿尔山');
INSERT INTO `pigcms_weather` VALUES ('334', '101081103', '科右中');
INSERT INTO `pigcms_weather` VALUES ('335', '101081105', '扎赉特');
INSERT INTO `pigcms_weather` VALUES ('336', '101081107', '突泉');
INSERT INTO `pigcms_weather` VALUES ('337', '101081108', '霍林郭勒');
INSERT INTO `pigcms_weather` VALUES ('338', '101081109', '科右前');
INSERT INTO `pigcms_weather` VALUES ('339', '101081201', '阿拉善');
INSERT INTO `pigcms_weather` VALUES ('340', '101081202', '阿右');
INSERT INTO `pigcms_weather` VALUES ('341', '101081203', '额济纳');
INSERT INTO `pigcms_weather` VALUES ('342', '101090101', '石家庄');
INSERT INTO `pigcms_weather` VALUES ('343', '101090102', '井陉');
INSERT INTO `pigcms_weather` VALUES ('344', '101090103', '正定');
INSERT INTO `pigcms_weather` VALUES ('345', '101090104', '栾城');
INSERT INTO `pigcms_weather` VALUES ('346', '101090105', '行唐');
INSERT INTO `pigcms_weather` VALUES ('347', '101090106', '灵寿');
INSERT INTO `pigcms_weather` VALUES ('348', '101090107', '高邑');
INSERT INTO `pigcms_weather` VALUES ('349', '101090108', '深泽');
INSERT INTO `pigcms_weather` VALUES ('350', '101090109', '赞皇');
INSERT INTO `pigcms_weather` VALUES ('351', '101090110', '无极');
INSERT INTO `pigcms_weather` VALUES ('352', '101090111', '平山');
INSERT INTO `pigcms_weather` VALUES ('353', '101090112', '元氏');
INSERT INTO `pigcms_weather` VALUES ('354', '101090113', '赵县');
INSERT INTO `pigcms_weather` VALUES ('355', '101090114', '辛集');
INSERT INTO `pigcms_weather` VALUES ('356', '101090115', '藁城');
INSERT INTO `pigcms_weather` VALUES ('357', '101090116', '晋州');
INSERT INTO `pigcms_weather` VALUES ('358', '101090117', '新乐');
INSERT INTO `pigcms_weather` VALUES ('359', '101090118', '鹿泉');
INSERT INTO `pigcms_weather` VALUES ('360', '101090201', '保定');
INSERT INTO `pigcms_weather` VALUES ('361', '101090202', '满城');
INSERT INTO `pigcms_weather` VALUES ('362', '101090203', '阜平');
INSERT INTO `pigcms_weather` VALUES ('363', '101090204', '徐水');
INSERT INTO `pigcms_weather` VALUES ('364', '101090205', '唐县');
INSERT INTO `pigcms_weather` VALUES ('365', '101090206', '高阳');
INSERT INTO `pigcms_weather` VALUES ('366', '101090207', '容城');
INSERT INTO `pigcms_weather` VALUES ('367', '101090209', '涞源');
INSERT INTO `pigcms_weather` VALUES ('368', '101090210', '望都');
INSERT INTO `pigcms_weather` VALUES ('369', '101090211', '安新');
INSERT INTO `pigcms_weather` VALUES ('370', '101090212', '易县');
INSERT INTO `pigcms_weather` VALUES ('371', '101090214', '曲阳');
INSERT INTO `pigcms_weather` VALUES ('372', '101090215', '蠡县');
INSERT INTO `pigcms_weather` VALUES ('373', '101090216', '顺平');
INSERT INTO `pigcms_weather` VALUES ('374', '101090217', '雄县');
INSERT INTO `pigcms_weather` VALUES ('375', '101090218', '涿州');
INSERT INTO `pigcms_weather` VALUES ('376', '101090219', '定州');
INSERT INTO `pigcms_weather` VALUES ('377', '101090220', '安国');
INSERT INTO `pigcms_weather` VALUES ('378', '101090221', '高碑店');
INSERT INTO `pigcms_weather` VALUES ('379', '101090222', '涞水');
INSERT INTO `pigcms_weather` VALUES ('380', '101090223', '定兴');
INSERT INTO `pigcms_weather` VALUES ('381', '101090224', '清苑');
INSERT INTO `pigcms_weather` VALUES ('382', '101090225', '博野');
INSERT INTO `pigcms_weather` VALUES ('383', '101090301', '张家口');
INSERT INTO `pigcms_weather` VALUES ('384', '101090302', '宣化');
INSERT INTO `pigcms_weather` VALUES ('385', '101090303', '张北');
INSERT INTO `pigcms_weather` VALUES ('386', '101090304', '康保');
INSERT INTO `pigcms_weather` VALUES ('387', '101090305', '沽源');
INSERT INTO `pigcms_weather` VALUES ('388', '101090306', '尚义');
INSERT INTO `pigcms_weather` VALUES ('389', '101090307', '蔚县');
INSERT INTO `pigcms_weather` VALUES ('390', '101090308', '阳原');
INSERT INTO `pigcms_weather` VALUES ('391', '101090309', '怀安');
INSERT INTO `pigcms_weather` VALUES ('392', '101090310', '万全');
INSERT INTO `pigcms_weather` VALUES ('393', '101090311', '怀来');
INSERT INTO `pigcms_weather` VALUES ('394', '101090312', '涿鹿');
INSERT INTO `pigcms_weather` VALUES ('395', '101090313', '赤城');
INSERT INTO `pigcms_weather` VALUES ('396', '101090314', '崇礼');
INSERT INTO `pigcms_weather` VALUES ('397', '101090402', '承德');
INSERT INTO `pigcms_weather` VALUES ('398', '101090404', '兴隆');
INSERT INTO `pigcms_weather` VALUES ('399', '101090405', '平泉');
INSERT INTO `pigcms_weather` VALUES ('400', '101090406', '滦平');
INSERT INTO `pigcms_weather` VALUES ('401', '101090407', '隆化');
INSERT INTO `pigcms_weather` VALUES ('402', '101090408', '丰宁');
INSERT INTO `pigcms_weather` VALUES ('403', '101090409', '宽城');
INSERT INTO `pigcms_weather` VALUES ('404', '101090410', '围场');
INSERT INTO `pigcms_weather` VALUES ('405', '101090501', '唐山');
INSERT INTO `pigcms_weather` VALUES ('406', '101090502', '丰南');
INSERT INTO `pigcms_weather` VALUES ('407', '101090503', '丰润');
INSERT INTO `pigcms_weather` VALUES ('408', '101090504', '滦县');
INSERT INTO `pigcms_weather` VALUES ('409', '101090505', '滦南');
INSERT INTO `pigcms_weather` VALUES ('410', '101090506', '乐亭');
INSERT INTO `pigcms_weather` VALUES ('411', '101090507', '迁西');
INSERT INTO `pigcms_weather` VALUES ('412', '101090508', '玉田');
INSERT INTO `pigcms_weather` VALUES ('413', '101090509', '唐海');
INSERT INTO `pigcms_weather` VALUES ('414', '101090510', '遵化');
INSERT INTO `pigcms_weather` VALUES ('415', '101090511', '迁安');
INSERT INTO `pigcms_weather` VALUES ('416', '101090512', '曹妃甸');
INSERT INTO `pigcms_weather` VALUES ('417', '101090601', '廊坊');
INSERT INTO `pigcms_weather` VALUES ('418', '101090602', '固安');
INSERT INTO `pigcms_weather` VALUES ('419', '101090603', '永清');
INSERT INTO `pigcms_weather` VALUES ('420', '101090604', '香河');
INSERT INTO `pigcms_weather` VALUES ('421', '101090605', '大城');
INSERT INTO `pigcms_weather` VALUES ('422', '101090606', '文安');
INSERT INTO `pigcms_weather` VALUES ('423', '101090607', '大厂');
INSERT INTO `pigcms_weather` VALUES ('424', '101090608', '霸州');
INSERT INTO `pigcms_weather` VALUES ('425', '101090609', '三河');
INSERT INTO `pigcms_weather` VALUES ('426', '101090701', '沧州');
INSERT INTO `pigcms_weather` VALUES ('427', '101090702', '青县');
INSERT INTO `pigcms_weather` VALUES ('428', '101090703', '东光');
INSERT INTO `pigcms_weather` VALUES ('429', '101090704', '海兴');
INSERT INTO `pigcms_weather` VALUES ('430', '101090705', '盐山');
INSERT INTO `pigcms_weather` VALUES ('431', '101090706', '肃宁');
INSERT INTO `pigcms_weather` VALUES ('432', '101090707', '南皮');
INSERT INTO `pigcms_weather` VALUES ('433', '101090708', '吴桥');
INSERT INTO `pigcms_weather` VALUES ('434', '101090709', '献县');
INSERT INTO `pigcms_weather` VALUES ('435', '101090710', '孟村');
INSERT INTO `pigcms_weather` VALUES ('436', '101090711', '泊头');
INSERT INTO `pigcms_weather` VALUES ('437', '101090712', '任丘');
INSERT INTO `pigcms_weather` VALUES ('438', '101090713', '黄骅');
INSERT INTO `pigcms_weather` VALUES ('439', '101090714', '河间');
INSERT INTO `pigcms_weather` VALUES ('440', '101090716', '沧县');
INSERT INTO `pigcms_weather` VALUES ('441', '101090801', '衡水');
INSERT INTO `pigcms_weather` VALUES ('442', '101090802', '枣强');
INSERT INTO `pigcms_weather` VALUES ('443', '101090803', '武邑');
INSERT INTO `pigcms_weather` VALUES ('444', '101090804', '武强');
INSERT INTO `pigcms_weather` VALUES ('445', '101090805', '饶阳');
INSERT INTO `pigcms_weather` VALUES ('446', '101090806', '安平');
INSERT INTO `pigcms_weather` VALUES ('447', '101090807', '故城');
INSERT INTO `pigcms_weather` VALUES ('448', '101090808', '景县');
INSERT INTO `pigcms_weather` VALUES ('449', '101090809', '阜城');
INSERT INTO `pigcms_weather` VALUES ('450', '101090810', '冀州');
INSERT INTO `pigcms_weather` VALUES ('451', '101090811', '深州');
INSERT INTO `pigcms_weather` VALUES ('452', '101090901', '邢台');
INSERT INTO `pigcms_weather` VALUES ('453', '101090902', '临城');
INSERT INTO `pigcms_weather` VALUES ('454', '101090905', '柏乡');
INSERT INTO `pigcms_weather` VALUES ('455', '101090906', '隆尧');
INSERT INTO `pigcms_weather` VALUES ('456', '101090907', '南和');
INSERT INTO `pigcms_weather` VALUES ('457', '101090908', '宁晋');
INSERT INTO `pigcms_weather` VALUES ('458', '101090909', '巨鹿');
INSERT INTO `pigcms_weather` VALUES ('459', '101090910', '新河');
INSERT INTO `pigcms_weather` VALUES ('460', '101090911', '广宗');
INSERT INTO `pigcms_weather` VALUES ('461', '101090912', '平乡');
INSERT INTO `pigcms_weather` VALUES ('462', '101090913', '威县');
INSERT INTO `pigcms_weather` VALUES ('463', '101090914', '清河');
INSERT INTO `pigcms_weather` VALUES ('464', '101090915', '临西');
INSERT INTO `pigcms_weather` VALUES ('465', '101090916', '南宫');
INSERT INTO `pigcms_weather` VALUES ('466', '101090917', '沙河');
INSERT INTO `pigcms_weather` VALUES ('467', '101090918', '任县');
INSERT INTO `pigcms_weather` VALUES ('468', '101090919', '内丘');
INSERT INTO `pigcms_weather` VALUES ('469', '101091001', '邯郸');
INSERT INTO `pigcms_weather` VALUES ('470', '101091002', '峰峰矿');
INSERT INTO `pigcms_weather` VALUES ('471', '101091003', '临漳');
INSERT INTO `pigcms_weather` VALUES ('472', '101091004', '成安');
INSERT INTO `pigcms_weather` VALUES ('473', '101091005', '大名');
INSERT INTO `pigcms_weather` VALUES ('474', '101091006', '涉县');
INSERT INTO `pigcms_weather` VALUES ('475', '101091007', '磁县');
INSERT INTO `pigcms_weather` VALUES ('476', '101091008', '肥乡');
INSERT INTO `pigcms_weather` VALUES ('477', '101091009', '永年');
INSERT INTO `pigcms_weather` VALUES ('478', '101091010', '邱县');
INSERT INTO `pigcms_weather` VALUES ('479', '101091011', '鸡泽');
INSERT INTO `pigcms_weather` VALUES ('480', '101091012', '广平');
INSERT INTO `pigcms_weather` VALUES ('481', '101091013', '馆陶');
INSERT INTO `pigcms_weather` VALUES ('482', '101091014', '魏县');
INSERT INTO `pigcms_weather` VALUES ('483', '101091015', '曲周');
INSERT INTO `pigcms_weather` VALUES ('484', '101091016', '武安');
INSERT INTO `pigcms_weather` VALUES ('485', '101091101', '秦皇岛');
INSERT INTO `pigcms_weather` VALUES ('486', '101091102', '青龙');
INSERT INTO `pigcms_weather` VALUES ('487', '101091103', '昌黎');
INSERT INTO `pigcms_weather` VALUES ('488', '101091104', '抚宁');
INSERT INTO `pigcms_weather` VALUES ('489', '101091105', '卢龙');
INSERT INTO `pigcms_weather` VALUES ('490', '101100101', '太原');
INSERT INTO `pigcms_weather` VALUES ('491', '101100102', '清徐');
INSERT INTO `pigcms_weather` VALUES ('492', '101100103', '阳曲');
INSERT INTO `pigcms_weather` VALUES ('493', '101100104', '娄烦');
INSERT INTO `pigcms_weather` VALUES ('494', '101100105', '古交');
INSERT INTO `pigcms_weather` VALUES ('495', '101100201', '大同');
INSERT INTO `pigcms_weather` VALUES ('496', '101100202', '阳高');
INSERT INTO `pigcms_weather` VALUES ('497', '101100204', '天镇');
INSERT INTO `pigcms_weather` VALUES ('498', '101100205', '广灵');
INSERT INTO `pigcms_weather` VALUES ('499', '101100206', '灵丘');
INSERT INTO `pigcms_weather` VALUES ('500', '101100207', '浑源');
INSERT INTO `pigcms_weather` VALUES ('501', '101100208', '左云');
INSERT INTO `pigcms_weather` VALUES ('502', '101100301', '阳泉');
INSERT INTO `pigcms_weather` VALUES ('503', '101100302', '盂县');
INSERT INTO `pigcms_weather` VALUES ('504', '101100303', '平定');
INSERT INTO `pigcms_weather` VALUES ('505', '101100401', '晋中');
INSERT INTO `pigcms_weather` VALUES ('506', '101100403', '榆社');
INSERT INTO `pigcms_weather` VALUES ('507', '101100404', '左权');
INSERT INTO `pigcms_weather` VALUES ('508', '101100405', '和顺');
INSERT INTO `pigcms_weather` VALUES ('509', '101100406', '昔阳');
INSERT INTO `pigcms_weather` VALUES ('510', '101100407', '寿阳');
INSERT INTO `pigcms_weather` VALUES ('511', '101100408', '太谷');
INSERT INTO `pigcms_weather` VALUES ('512', '101100409', '祁县');
INSERT INTO `pigcms_weather` VALUES ('513', '101100410', '平遥');
INSERT INTO `pigcms_weather` VALUES ('514', '101100411', '灵石');
INSERT INTO `pigcms_weather` VALUES ('515', '101100412', '介休');
INSERT INTO `pigcms_weather` VALUES ('516', '101100501', '长治');
INSERT INTO `pigcms_weather` VALUES ('517', '101100502', '黎城');
INSERT INTO `pigcms_weather` VALUES ('518', '101100503', '屯留');
INSERT INTO `pigcms_weather` VALUES ('519', '101100504', '潞城');
INSERT INTO `pigcms_weather` VALUES ('520', '101100505', '襄垣');
INSERT INTO `pigcms_weather` VALUES ('521', '101100506', '平顺');
INSERT INTO `pigcms_weather` VALUES ('522', '101100507', '武乡');
INSERT INTO `pigcms_weather` VALUES ('523', '101100508', '沁县');
INSERT INTO `pigcms_weather` VALUES ('524', '101100509', '长子');
INSERT INTO `pigcms_weather` VALUES ('525', '101100510', '沁源');
INSERT INTO `pigcms_weather` VALUES ('526', '101100511', '壶关');
INSERT INTO `pigcms_weather` VALUES ('527', '101100601', '晋城');
INSERT INTO `pigcms_weather` VALUES ('528', '101100602', '沁水');
INSERT INTO `pigcms_weather` VALUES ('529', '101100603', '阳城');
INSERT INTO `pigcms_weather` VALUES ('530', '101100604', '陵川');
INSERT INTO `pigcms_weather` VALUES ('531', '101100605', '高平');
INSERT INTO `pigcms_weather` VALUES ('532', '101100606', '泽州');
INSERT INTO `pigcms_weather` VALUES ('533', '101100701', '临汾');
INSERT INTO `pigcms_weather` VALUES ('534', '101100702', '曲沃');
INSERT INTO `pigcms_weather` VALUES ('535', '101100703', '永和');
INSERT INTO `pigcms_weather` VALUES ('536', '101100704', '隰县');
INSERT INTO `pigcms_weather` VALUES ('537', '101100705', '大宁');
INSERT INTO `pigcms_weather` VALUES ('538', '101100706', '吉县');
INSERT INTO `pigcms_weather` VALUES ('539', '101100707', '襄汾');
INSERT INTO `pigcms_weather` VALUES ('540', '101100708', '蒲县');
INSERT INTO `pigcms_weather` VALUES ('541', '101100709', '汾西');
INSERT INTO `pigcms_weather` VALUES ('542', '101100710', '洪洞');
INSERT INTO `pigcms_weather` VALUES ('543', '101100711', '霍州');
INSERT INTO `pigcms_weather` VALUES ('544', '101100712', '乡宁');
INSERT INTO `pigcms_weather` VALUES ('545', '101100713', '翼城');
INSERT INTO `pigcms_weather` VALUES ('546', '101100714', '侯马');
INSERT INTO `pigcms_weather` VALUES ('547', '101100715', '浮山');
INSERT INTO `pigcms_weather` VALUES ('548', '101100716', '安泽');
INSERT INTO `pigcms_weather` VALUES ('549', '101100717', '古县');
INSERT INTO `pigcms_weather` VALUES ('550', '101100801', '运城');
INSERT INTO `pigcms_weather` VALUES ('551', '101100802', '临猗');
INSERT INTO `pigcms_weather` VALUES ('552', '101100803', '稷山');
INSERT INTO `pigcms_weather` VALUES ('553', '101100804', '万荣');
INSERT INTO `pigcms_weather` VALUES ('554', '101100805', '河津');
INSERT INTO `pigcms_weather` VALUES ('555', '101100806', '新绛');
INSERT INTO `pigcms_weather` VALUES ('556', '101100807', '绛县');
INSERT INTO `pigcms_weather` VALUES ('557', '101100808', '闻喜');
INSERT INTO `pigcms_weather` VALUES ('558', '101100809', '垣曲');
INSERT INTO `pigcms_weather` VALUES ('559', '101100810', '永济');
INSERT INTO `pigcms_weather` VALUES ('560', '101100811', '芮城');
INSERT INTO `pigcms_weather` VALUES ('561', '101100812', '夏县');
INSERT INTO `pigcms_weather` VALUES ('562', '101100813', '平陆');
INSERT INTO `pigcms_weather` VALUES ('563', '101100901', '朔州');
INSERT INTO `pigcms_weather` VALUES ('564', '101100903', '山阴');
INSERT INTO `pigcms_weather` VALUES ('565', '101100904', '右玉');
INSERT INTO `pigcms_weather` VALUES ('566', '101100905', '应县');
INSERT INTO `pigcms_weather` VALUES ('567', '101100906', '怀仁');
INSERT INTO `pigcms_weather` VALUES ('568', '101101001', '忻州');
INSERT INTO `pigcms_weather` VALUES ('569', '101101002', '定襄');
INSERT INTO `pigcms_weather` VALUES ('570', '101101003', '五台');
INSERT INTO `pigcms_weather` VALUES ('571', '101101004', '河曲');
INSERT INTO `pigcms_weather` VALUES ('572', '101101005', '偏关');
INSERT INTO `pigcms_weather` VALUES ('573', '101101006', '神池');
INSERT INTO `pigcms_weather` VALUES ('574', '101101007', '宁武');
INSERT INTO `pigcms_weather` VALUES ('575', '101101008', '代县');
INSERT INTO `pigcms_weather` VALUES ('576', '101101009', '繁峙');
INSERT INTO `pigcms_weather` VALUES ('577', '101101011', '保德');
INSERT INTO `pigcms_weather` VALUES ('578', '101101012', '静乐');
INSERT INTO `pigcms_weather` VALUES ('579', '101101013', '岢岚');
INSERT INTO `pigcms_weather` VALUES ('580', '101101014', '五寨');
INSERT INTO `pigcms_weather` VALUES ('581', '101101015', '原平');
INSERT INTO `pigcms_weather` VALUES ('582', '101101100', '吕梁');
INSERT INTO `pigcms_weather` VALUES ('583', '101101101', '离石');
INSERT INTO `pigcms_weather` VALUES ('584', '101101102', '临县');
INSERT INTO `pigcms_weather` VALUES ('585', '101101103', '兴县');
INSERT INTO `pigcms_weather` VALUES ('586', '101101104', '岚县');
INSERT INTO `pigcms_weather` VALUES ('587', '101101105', '柳林');
INSERT INTO `pigcms_weather` VALUES ('588', '101101106', '石楼');
INSERT INTO `pigcms_weather` VALUES ('589', '101101107', '方山');
INSERT INTO `pigcms_weather` VALUES ('590', '101101108', '交口');
INSERT INTO `pigcms_weather` VALUES ('591', '101101109', '中阳');
INSERT INTO `pigcms_weather` VALUES ('592', '101101110', '孝义');
INSERT INTO `pigcms_weather` VALUES ('593', '101101111', '汾阳');
INSERT INTO `pigcms_weather` VALUES ('594', '101101112', '文水');
INSERT INTO `pigcms_weather` VALUES ('595', '101101113', '交城');
INSERT INTO `pigcms_weather` VALUES ('596', '101110101', '西安');
INSERT INTO `pigcms_weather` VALUES ('597', '101110102', '长安');
INSERT INTO `pigcms_weather` VALUES ('598', '101110104', '蓝田');
INSERT INTO `pigcms_weather` VALUES ('599', '101110105', '周至');
INSERT INTO `pigcms_weather` VALUES ('600', '101110106', '户县');
INSERT INTO `pigcms_weather` VALUES ('601', '101110107', '高陵');
INSERT INTO `pigcms_weather` VALUES ('602', '101110200', '咸阳');
INSERT INTO `pigcms_weather` VALUES ('603', '101110201', '三原');
INSERT INTO `pigcms_weather` VALUES ('604', '101110202', '礼泉');
INSERT INTO `pigcms_weather` VALUES ('605', '101110203', '永寿');
INSERT INTO `pigcms_weather` VALUES ('606', '101110204', '淳化');
INSERT INTO `pigcms_weather` VALUES ('607', '101110205', '泾阳');
INSERT INTO `pigcms_weather` VALUES ('608', '101110206', '武功');
INSERT INTO `pigcms_weather` VALUES ('609', '101110207', '乾县');
INSERT INTO `pigcms_weather` VALUES ('610', '101110208', '彬县');
INSERT INTO `pigcms_weather` VALUES ('611', '101110209', '长武');
INSERT INTO `pigcms_weather` VALUES ('612', '101110210', '旬邑');
INSERT INTO `pigcms_weather` VALUES ('613', '101110211', '兴平');
INSERT INTO `pigcms_weather` VALUES ('614', '101110300', '延安');
INSERT INTO `pigcms_weather` VALUES ('615', '101110401', '榆林');
INSERT INTO `pigcms_weather` VALUES ('616', '101110402', '府谷');
INSERT INTO `pigcms_weather` VALUES ('617', '101110403', '神木');
INSERT INTO `pigcms_weather` VALUES ('618', '101110404', '佳县');
INSERT INTO `pigcms_weather` VALUES ('619', '101110405', '定边');
INSERT INTO `pigcms_weather` VALUES ('620', '101110406', '靖边');
INSERT INTO `pigcms_weather` VALUES ('621', '101110407', '横山');
INSERT INTO `pigcms_weather` VALUES ('622', '101110408', '米脂');
INSERT INTO `pigcms_weather` VALUES ('623', '101110409', '子洲');
INSERT INTO `pigcms_weather` VALUES ('624', '101110410', '绥德');
INSERT INTO `pigcms_weather` VALUES ('625', '101110411', '吴堡');
INSERT INTO `pigcms_weather` VALUES ('626', '101110412', '清涧');
INSERT INTO `pigcms_weather` VALUES ('627', '101110501', '渭南');
INSERT INTO `pigcms_weather` VALUES ('628', '101110502', '华县');
INSERT INTO `pigcms_weather` VALUES ('629', '101110503', '潼关');
INSERT INTO `pigcms_weather` VALUES ('630', '101110504', '大荔');
INSERT INTO `pigcms_weather` VALUES ('631', '101110505', '白水');
INSERT INTO `pigcms_weather` VALUES ('632', '101110506', '富平');
INSERT INTO `pigcms_weather` VALUES ('633', '101110507', '蒲城');
INSERT INTO `pigcms_weather` VALUES ('634', '101110508', '澄城');
INSERT INTO `pigcms_weather` VALUES ('635', '101110509', '合阳');
INSERT INTO `pigcms_weather` VALUES ('636', '101110510', '韩城');
INSERT INTO `pigcms_weather` VALUES ('637', '101110511', '华阴');
INSERT INTO `pigcms_weather` VALUES ('638', '101110601', '商洛');
INSERT INTO `pigcms_weather` VALUES ('639', '101110602', '洛南');
INSERT INTO `pigcms_weather` VALUES ('640', '101110603', '柞水');
INSERT INTO `pigcms_weather` VALUES ('641', '101110604', '商州');
INSERT INTO `pigcms_weather` VALUES ('642', '101110605', '镇安');
INSERT INTO `pigcms_weather` VALUES ('643', '101110606', '丹凤');
INSERT INTO `pigcms_weather` VALUES ('644', '101110607', '商南');
INSERT INTO `pigcms_weather` VALUES ('645', '101110608', '山阳');
INSERT INTO `pigcms_weather` VALUES ('646', '101110701', '安康');
INSERT INTO `pigcms_weather` VALUES ('647', '101110702', '紫阳');
INSERT INTO `pigcms_weather` VALUES ('648', '101110703', '石泉');
INSERT INTO `pigcms_weather` VALUES ('649', '101110704', '汉阴');
INSERT INTO `pigcms_weather` VALUES ('650', '101110705', '旬阳');
INSERT INTO `pigcms_weather` VALUES ('651', '101110706', '岚皋');
INSERT INTO `pigcms_weather` VALUES ('652', '101110707', '平利');
INSERT INTO `pigcms_weather` VALUES ('653', '101110708', '白河');
INSERT INTO `pigcms_weather` VALUES ('654', '101110709', '镇坪');
INSERT INTO `pigcms_weather` VALUES ('655', '101110710', '宁陕');
INSERT INTO `pigcms_weather` VALUES ('656', '101110801', '汉中');
INSERT INTO `pigcms_weather` VALUES ('657', '101110802', '略阳');
INSERT INTO `pigcms_weather` VALUES ('658', '101110803', '勉县');
INSERT INTO `pigcms_weather` VALUES ('659', '101110804', '留坝');
INSERT INTO `pigcms_weather` VALUES ('660', '101110805', '洋县');
INSERT INTO `pigcms_weather` VALUES ('661', '101110806', '城固');
INSERT INTO `pigcms_weather` VALUES ('662', '101110807', '西乡');
INSERT INTO `pigcms_weather` VALUES ('663', '101110808', '佛坪');
INSERT INTO `pigcms_weather` VALUES ('664', '101110809', '宁强');
INSERT INTO `pigcms_weather` VALUES ('665', '101110810', '南郑');
INSERT INTO `pigcms_weather` VALUES ('666', '101110811', '镇巴');
INSERT INTO `pigcms_weather` VALUES ('667', '101110901', '宝鸡');
INSERT INTO `pigcms_weather` VALUES ('668', '101110903', '千阳');
INSERT INTO `pigcms_weather` VALUES ('669', '101110904', '麟游');
INSERT INTO `pigcms_weather` VALUES ('670', '101110905', '岐山');
INSERT INTO `pigcms_weather` VALUES ('671', '101110906', '凤翔');
INSERT INTO `pigcms_weather` VALUES ('672', '101110907', '扶风');
INSERT INTO `pigcms_weather` VALUES ('673', '101110908', '眉县');
INSERT INTO `pigcms_weather` VALUES ('674', '101110909', '太白');
INSERT INTO `pigcms_weather` VALUES ('675', '101110910', '凤县');
INSERT INTO `pigcms_weather` VALUES ('676', '101110911', '陇县');
INSERT INTO `pigcms_weather` VALUES ('677', '101111001', '铜川');
INSERT INTO `pigcms_weather` VALUES ('678', '101111003', '宜君');
INSERT INTO `pigcms_weather` VALUES ('679', '101111101', '杨凌');
INSERT INTO `pigcms_weather` VALUES ('680', '101120101', '济南');
INSERT INTO `pigcms_weather` VALUES ('681', '101120103', '商河');
INSERT INTO `pigcms_weather` VALUES ('682', '101120104', '章丘');
INSERT INTO `pigcms_weather` VALUES ('683', '101120105', '平阴');
INSERT INTO `pigcms_weather` VALUES ('684', '101120106', '济阳');
INSERT INTO `pigcms_weather` VALUES ('685', '101120201', '青岛');
INSERT INTO `pigcms_weather` VALUES ('686', '101120204', '即墨');
INSERT INTO `pigcms_weather` VALUES ('687', '101120205', '胶州');
INSERT INTO `pigcms_weather` VALUES ('688', '101120206', '胶南');
INSERT INTO `pigcms_weather` VALUES ('689', '101120207', '莱西');
INSERT INTO `pigcms_weather` VALUES ('690', '101120208', '平度');
INSERT INTO `pigcms_weather` VALUES ('691', '101120301', '淄博');
INSERT INTO `pigcms_weather` VALUES ('692', '101120304', '高青');
INSERT INTO `pigcms_weather` VALUES ('693', '101120306', '沂源');
INSERT INTO `pigcms_weather` VALUES ('694', '101120307', '桓台');
INSERT INTO `pigcms_weather` VALUES ('695', '101120401', '德州');
INSERT INTO `pigcms_weather` VALUES ('696', '101120402', '武城');
INSERT INTO `pigcms_weather` VALUES ('697', '101120403', '临邑');
INSERT INTO `pigcms_weather` VALUES ('698', '101120404', '陵县');
INSERT INTO `pigcms_weather` VALUES ('699', '101120405', '齐河');
INSERT INTO `pigcms_weather` VALUES ('700', '101120406', '乐陵');
INSERT INTO `pigcms_weather` VALUES ('701', '101120407', '庆云');
INSERT INTO `pigcms_weather` VALUES ('702', '101120408', '平原');
INSERT INTO `pigcms_weather` VALUES ('703', '101120409', '宁津');
INSERT INTO `pigcms_weather` VALUES ('704', '101120410', '夏津');
INSERT INTO `pigcms_weather` VALUES ('705', '101120411', '禹城');
INSERT INTO `pigcms_weather` VALUES ('706', '101120501', '烟台');
INSERT INTO `pigcms_weather` VALUES ('707', '101120502', '莱州');
INSERT INTO `pigcms_weather` VALUES ('708', '101120503', '长岛');
INSERT INTO `pigcms_weather` VALUES ('709', '101120504', '蓬莱');
INSERT INTO `pigcms_weather` VALUES ('710', '101120505', '龙口');
INSERT INTO `pigcms_weather` VALUES ('711', '101120506', '招远');
INSERT INTO `pigcms_weather` VALUES ('712', '101120507', '栖霞');
INSERT INTO `pigcms_weather` VALUES ('713', '101120510', '莱阳');
INSERT INTO `pigcms_weather` VALUES ('714', '101120511', '海阳');
INSERT INTO `pigcms_weather` VALUES ('715', '101120601', '潍坊');
INSERT INTO `pigcms_weather` VALUES ('716', '101120602', '青州');
INSERT INTO `pigcms_weather` VALUES ('717', '101120603', '寿光');
INSERT INTO `pigcms_weather` VALUES ('718', '101120604', '临朐');
INSERT INTO `pigcms_weather` VALUES ('719', '101120605', '昌乐');
INSERT INTO `pigcms_weather` VALUES ('720', '101120606', '昌邑');
INSERT INTO `pigcms_weather` VALUES ('721', '101120607', '安丘');
INSERT INTO `pigcms_weather` VALUES ('722', '101120608', '高密');
INSERT INTO `pigcms_weather` VALUES ('723', '101120609', '诸城');
INSERT INTO `pigcms_weather` VALUES ('724', '101120701', '济宁');
INSERT INTO `pigcms_weather` VALUES ('725', '101120702', '嘉祥');
INSERT INTO `pigcms_weather` VALUES ('726', '101120703', '微山');
INSERT INTO `pigcms_weather` VALUES ('727', '101120704', '鱼台');
INSERT INTO `pigcms_weather` VALUES ('728', '101120705', '兖州');
INSERT INTO `pigcms_weather` VALUES ('729', '101120706', '金乡');
INSERT INTO `pigcms_weather` VALUES ('730', '101120707', '汶上');
INSERT INTO `pigcms_weather` VALUES ('731', '101120708', '泗水');
INSERT INTO `pigcms_weather` VALUES ('732', '101120709', '梁山');
INSERT INTO `pigcms_weather` VALUES ('733', '101120710', '曲阜');
INSERT INTO `pigcms_weather` VALUES ('734', '101120711', '邹城');
INSERT INTO `pigcms_weather` VALUES ('735', '101120801', '泰安');
INSERT INTO `pigcms_weather` VALUES ('736', '101120802', '新泰');
INSERT INTO `pigcms_weather` VALUES ('737', '101120804', '肥城');
INSERT INTO `pigcms_weather` VALUES ('738', '101120805', '东平');
INSERT INTO `pigcms_weather` VALUES ('739', '101120806', '宁阳');
INSERT INTO `pigcms_weather` VALUES ('740', '101120901', '临沂');
INSERT INTO `pigcms_weather` VALUES ('741', '101120902', '莒南');
INSERT INTO `pigcms_weather` VALUES ('742', '101120903', '沂南');
INSERT INTO `pigcms_weather` VALUES ('743', '101120904', '苍山');
INSERT INTO `pigcms_weather` VALUES ('744', '101120905', '临沭');
INSERT INTO `pigcms_weather` VALUES ('745', '101120906', '郯城');
INSERT INTO `pigcms_weather` VALUES ('746', '101120907', '蒙阴');
INSERT INTO `pigcms_weather` VALUES ('747', '101120908', '平邑');
INSERT INTO `pigcms_weather` VALUES ('748', '101120909', '费县');
INSERT INTO `pigcms_weather` VALUES ('749', '101120910', '沂水');
INSERT INTO `pigcms_weather` VALUES ('750', '101121001', '菏泽');
INSERT INTO `pigcms_weather` VALUES ('751', '101121002', '鄄城');
INSERT INTO `pigcms_weather` VALUES ('752', '101121003', '郓城');
INSERT INTO `pigcms_weather` VALUES ('753', '101121004', '东明');
INSERT INTO `pigcms_weather` VALUES ('754', '101121005', '定陶');
INSERT INTO `pigcms_weather` VALUES ('755', '101121006', '巨野');
INSERT INTO `pigcms_weather` VALUES ('756', '101121007', '曹县');
INSERT INTO `pigcms_weather` VALUES ('757', '101121008', '成武');
INSERT INTO `pigcms_weather` VALUES ('758', '101121009', '单县');
INSERT INTO `pigcms_weather` VALUES ('759', '101121101', '滨州');
INSERT INTO `pigcms_weather` VALUES ('760', '101121102', '博兴');
INSERT INTO `pigcms_weather` VALUES ('761', '101121103', '无棣');
INSERT INTO `pigcms_weather` VALUES ('762', '101121104', '阳信');
INSERT INTO `pigcms_weather` VALUES ('763', '101121105', '惠民');
INSERT INTO `pigcms_weather` VALUES ('764', '101121106', '沾化');
INSERT INTO `pigcms_weather` VALUES ('765', '101121107', '邹平');
INSERT INTO `pigcms_weather` VALUES ('766', '101121201', '东营');
INSERT INTO `pigcms_weather` VALUES ('767', '101121203', '垦利');
INSERT INTO `pigcms_weather` VALUES ('768', '101121204', '利津');
INSERT INTO `pigcms_weather` VALUES ('769', '101121205', '广饶');
INSERT INTO `pigcms_weather` VALUES ('770', '101121301', '威海');
INSERT INTO `pigcms_weather` VALUES ('771', '101121302', '文登');
INSERT INTO `pigcms_weather` VALUES ('772', '101121303', '荣成');
INSERT INTO `pigcms_weather` VALUES ('773', '101121304', '乳山');
INSERT INTO `pigcms_weather` VALUES ('774', '101121401', '枣庄');
INSERT INTO `pigcms_weather` VALUES ('775', '101121405', '滕州');
INSERT INTO `pigcms_weather` VALUES ('776', '101121501', '日照');
INSERT INTO `pigcms_weather` VALUES ('777', '101121502', '五莲');
INSERT INTO `pigcms_weather` VALUES ('778', '101121503', '莒县');
INSERT INTO `pigcms_weather` VALUES ('779', '101121601', '莱芜');
INSERT INTO `pigcms_weather` VALUES ('780', '101121701', '聊城');
INSERT INTO `pigcms_weather` VALUES ('781', '101121702', '冠县');
INSERT INTO `pigcms_weather` VALUES ('782', '101121703', '阳谷');
INSERT INTO `pigcms_weather` VALUES ('783', '101121704', '高唐');
INSERT INTO `pigcms_weather` VALUES ('784', '101121705', '茌平');
INSERT INTO `pigcms_weather` VALUES ('785', '101121706', '东阿');
INSERT INTO `pigcms_weather` VALUES ('786', '101121707', '临清');
INSERT INTO `pigcms_weather` VALUES ('787', '101121709', '莘县');
INSERT INTO `pigcms_weather` VALUES ('788', '101130101', '乌鲁木齐');
INSERT INTO `pigcms_weather` VALUES ('789', '101130105', '达坂城');
INSERT INTO `pigcms_weather` VALUES ('790', '101130201', '克拉玛依');
INSERT INTO `pigcms_weather` VALUES ('791', '101130202', '乌尔禾');
INSERT INTO `pigcms_weather` VALUES ('792', '101130203', '白碱滩');
INSERT INTO `pigcms_weather` VALUES ('793', '101130301', '石河子');
INSERT INTO `pigcms_weather` VALUES ('794', '101130401', '昌吉');
INSERT INTO `pigcms_weather` VALUES ('795', '101130402', '呼图壁');
INSERT INTO `pigcms_weather` VALUES ('796', '101130403', '米泉');
INSERT INTO `pigcms_weather` VALUES ('797', '101130404', '阜康');
INSERT INTO `pigcms_weather` VALUES ('798', '101130405', '吉木萨尔');
INSERT INTO `pigcms_weather` VALUES ('799', '101130406', '奇台');
INSERT INTO `pigcms_weather` VALUES ('800', '101130407', '玛纳斯');
INSERT INTO `pigcms_weather` VALUES ('801', '101130408', '木垒');
INSERT INTO `pigcms_weather` VALUES ('802', '101130501', '吐鲁番');
INSERT INTO `pigcms_weather` VALUES ('803', '101130503', '克州');
INSERT INTO `pigcms_weather` VALUES ('804', '101130504', '鄯善');
INSERT INTO `pigcms_weather` VALUES ('805', '101130601', '库尔勒');
INSERT INTO `pigcms_weather` VALUES ('806', '101130602', '轮台');
INSERT INTO `pigcms_weather` VALUES ('807', '101130603', '尉犁');
INSERT INTO `pigcms_weather` VALUES ('808', '101130604', '若羌');
INSERT INTO `pigcms_weather` VALUES ('809', '101130605', '且末');
INSERT INTO `pigcms_weather` VALUES ('810', '101130606', '和静');
INSERT INTO `pigcms_weather` VALUES ('811', '101130607', '焉耆');
INSERT INTO `pigcms_weather` VALUES ('812', '101130608', '和硕');
INSERT INTO `pigcms_weather` VALUES ('813', '101130612', '博湖');
INSERT INTO `pigcms_weather` VALUES ('814', '101130701', '阿拉尔');
INSERT INTO `pigcms_weather` VALUES ('815', '101130801', '阿克苏');
INSERT INTO `pigcms_weather` VALUES ('816', '101130802', '乌什');
INSERT INTO `pigcms_weather` VALUES ('817', '101130803', '温宿');
INSERT INTO `pigcms_weather` VALUES ('818', '101130804', '拜城');
INSERT INTO `pigcms_weather` VALUES ('819', '101130805', '新和');
INSERT INTO `pigcms_weather` VALUES ('820', '101130806', '沙雅');
INSERT INTO `pigcms_weather` VALUES ('821', '101130807', '库车');
INSERT INTO `pigcms_weather` VALUES ('822', '101130808', '柯坪');
INSERT INTO `pigcms_weather` VALUES ('823', '101130809', '阿瓦提');
INSERT INTO `pigcms_weather` VALUES ('824', '101130901', '喀什');
INSERT INTO `pigcms_weather` VALUES ('825', '101130902', '英吉沙');
INSERT INTO `pigcms_weather` VALUES ('826', '101130903', '塔什库尔干');
INSERT INTO `pigcms_weather` VALUES ('827', '101130904', '麦盖提');
INSERT INTO `pigcms_weather` VALUES ('828', '101130905', '莎车');
INSERT INTO `pigcms_weather` VALUES ('829', '101130906', '叶城');
INSERT INTO `pigcms_weather` VALUES ('830', '101130907', '泽普');
INSERT INTO `pigcms_weather` VALUES ('831', '101130908', '巴楚');
INSERT INTO `pigcms_weather` VALUES ('832', '101130909', '岳普湖');
INSERT INTO `pigcms_weather` VALUES ('833', '101130910', '伽师');
INSERT INTO `pigcms_weather` VALUES ('834', '101130911', '疏附');
INSERT INTO `pigcms_weather` VALUES ('835', '101130912', '疏勒');
INSERT INTO `pigcms_weather` VALUES ('836', '101131001', '伊宁');
INSERT INTO `pigcms_weather` VALUES ('837', '101131002', '察布查尔');
INSERT INTO `pigcms_weather` VALUES ('838', '101131003', '尼勒克');
INSERT INTO `pigcms_weather` VALUES ('839', '101131005', '巩留');
INSERT INTO `pigcms_weather` VALUES ('840', '101131006', '新源');
INSERT INTO `pigcms_weather` VALUES ('841', '101131007', '昭苏');
INSERT INTO `pigcms_weather` VALUES ('842', '101131008', '特克斯');
INSERT INTO `pigcms_weather` VALUES ('843', '101131009', '霍城');
INSERT INTO `pigcms_weather` VALUES ('844', '101131011', '奎屯');
INSERT INTO `pigcms_weather` VALUES ('845', '101131101', '塔城');
INSERT INTO `pigcms_weather` VALUES ('846', '101131102', '裕民');
INSERT INTO `pigcms_weather` VALUES ('847', '101131103', '额敏');
INSERT INTO `pigcms_weather` VALUES ('848', '101131104', '和布克赛尔');
INSERT INTO `pigcms_weather` VALUES ('849', '101131105', '托里');
INSERT INTO `pigcms_weather` VALUES ('850', '101131106', '乌苏');
INSERT INTO `pigcms_weather` VALUES ('851', '101131107', '沙湾');
INSERT INTO `pigcms_weather` VALUES ('852', '101131201', '哈密');
INSERT INTO `pigcms_weather` VALUES ('853', '101131203', '巴里坤');
INSERT INTO `pigcms_weather` VALUES ('854', '101131204', '伊吾');
INSERT INTO `pigcms_weather` VALUES ('855', '101131301', '和田');
INSERT INTO `pigcms_weather` VALUES ('856', '101131302', '皮山');
INSERT INTO `pigcms_weather` VALUES ('857', '101131303', '策勒');
INSERT INTO `pigcms_weather` VALUES ('858', '101131304', '墨玉');
INSERT INTO `pigcms_weather` VALUES ('859', '101131305', '洛浦');
INSERT INTO `pigcms_weather` VALUES ('860', '101131306', '民丰');
INSERT INTO `pigcms_weather` VALUES ('861', '101131307', '于田');
INSERT INTO `pigcms_weather` VALUES ('862', '101131401', '阿勒泰');
INSERT INTO `pigcms_weather` VALUES ('863', '101131402', '哈巴河');
INSERT INTO `pigcms_weather` VALUES ('864', '101131405', '吉木乃');
INSERT INTO `pigcms_weather` VALUES ('865', '101131406', '布尔津');
INSERT INTO `pigcms_weather` VALUES ('866', '101131407', '福海');
INSERT INTO `pigcms_weather` VALUES ('867', '101131408', '富蕴');
INSERT INTO `pigcms_weather` VALUES ('868', '101131409', '青河');
INSERT INTO `pigcms_weather` VALUES ('869', '101131501', '阿图什');
INSERT INTO `pigcms_weather` VALUES ('870', '101131502', '乌恰');
INSERT INTO `pigcms_weather` VALUES ('871', '101131503', '阿克陶');
INSERT INTO `pigcms_weather` VALUES ('872', '101131504', '阿合奇');
INSERT INTO `pigcms_weather` VALUES ('873', '101131601', '博乐');
INSERT INTO `pigcms_weather` VALUES ('874', '101131602', '温泉');
INSERT INTO `pigcms_weather` VALUES ('875', '101131603', '精河');
INSERT INTO `pigcms_weather` VALUES ('876', '101140101', '拉萨');
INSERT INTO `pigcms_weather` VALUES ('877', '101140102', '当雄');
INSERT INTO `pigcms_weather` VALUES ('878', '101140103', '尼木');
INSERT INTO `pigcms_weather` VALUES ('879', '101140104', '林周');
INSERT INTO `pigcms_weather` VALUES ('880', '101140105', '堆龙德庆');
INSERT INTO `pigcms_weather` VALUES ('881', '101140106', '曲水');
INSERT INTO `pigcms_weather` VALUES ('882', '101140107', '达孜');
INSERT INTO `pigcms_weather` VALUES ('883', '101140108', '墨竹工卡');
INSERT INTO `pigcms_weather` VALUES ('884', '101140201', '日喀则');
INSERT INTO `pigcms_weather` VALUES ('885', '101140202', '拉孜');
INSERT INTO `pigcms_weather` VALUES ('886', '101140204', '聂拉木');
INSERT INTO `pigcms_weather` VALUES ('887', '101140205', '定日');
INSERT INTO `pigcms_weather` VALUES ('888', '101140206', '江孜');
INSERT INTO `pigcms_weather` VALUES ('889', '101140208', '仲巴');
INSERT INTO `pigcms_weather` VALUES ('890', '101140209', '萨嘎');
INSERT INTO `pigcms_weather` VALUES ('891', '101140210', '吉隆');
INSERT INTO `pigcms_weather` VALUES ('892', '101140211', '昂仁');
INSERT INTO `pigcms_weather` VALUES ('893', '101140212', '定结');
INSERT INTO `pigcms_weather` VALUES ('894', '101140213', '萨迦');
INSERT INTO `pigcms_weather` VALUES ('895', '101140214', '谢通门');
INSERT INTO `pigcms_weather` VALUES ('896', '101140215', '楠木林');
INSERT INTO `pigcms_weather` VALUES ('897', '101140216', '岗巴');
INSERT INTO `pigcms_weather` VALUES ('898', '101140217', '白朗');
INSERT INTO `pigcms_weather` VALUES ('899', '101140218', '亚东');
INSERT INTO `pigcms_weather` VALUES ('900', '101140219', '康马');
INSERT INTO `pigcms_weather` VALUES ('901', '101140220', '仁布');
INSERT INTO `pigcms_weather` VALUES ('902', '101140301', '山南');
INSERT INTO `pigcms_weather` VALUES ('903', '101140302', '贡嘎');
INSERT INTO `pigcms_weather` VALUES ('904', '101140303', '札囊');
INSERT INTO `pigcms_weather` VALUES ('905', '101140304', '加查');
INSERT INTO `pigcms_weather` VALUES ('906', '101140305', '浪卡子');
INSERT INTO `pigcms_weather` VALUES ('907', '101140306', '错那');
INSERT INTO `pigcms_weather` VALUES ('908', '101140307', '隆子');
INSERT INTO `pigcms_weather` VALUES ('909', '101140309', '乃东');
INSERT INTO `pigcms_weather` VALUES ('910', '101140310', '桑日');
INSERT INTO `pigcms_weather` VALUES ('911', '101140311', '洛扎');
INSERT INTO `pigcms_weather` VALUES ('912', '101140312', '措美');
INSERT INTO `pigcms_weather` VALUES ('913', '101140313', '琼结');
INSERT INTO `pigcms_weather` VALUES ('914', '101140314', '曲松');
INSERT INTO `pigcms_weather` VALUES ('915', '101140401', '林芝');
INSERT INTO `pigcms_weather` VALUES ('916', '101140402', '波密');
INSERT INTO `pigcms_weather` VALUES ('917', '101140403', '米林');
INSERT INTO `pigcms_weather` VALUES ('918', '101140404', '察隅');
INSERT INTO `pigcms_weather` VALUES ('919', '101140405', '工布江达');
INSERT INTO `pigcms_weather` VALUES ('920', '101140406', '朗县');
INSERT INTO `pigcms_weather` VALUES ('921', '101140407', '墨脱');
INSERT INTO `pigcms_weather` VALUES ('922', '101140501', '昌都');
INSERT INTO `pigcms_weather` VALUES ('923', '101140502', '丁青');
INSERT INTO `pigcms_weather` VALUES ('924', '101140503', '边坝');
INSERT INTO `pigcms_weather` VALUES ('925', '101140504', '洛隆');
INSERT INTO `pigcms_weather` VALUES ('926', '101140505', '左贡');
INSERT INTO `pigcms_weather` VALUES ('927', '101140506', '芒康');
INSERT INTO `pigcms_weather` VALUES ('928', '101140507', '类乌齐');
INSERT INTO `pigcms_weather` VALUES ('929', '101140508', '八宿');
INSERT INTO `pigcms_weather` VALUES ('930', '101140509', '江达');
INSERT INTO `pigcms_weather` VALUES ('931', '101140510', '察雅');
INSERT INTO `pigcms_weather` VALUES ('932', '101140511', '贡觉');
INSERT INTO `pigcms_weather` VALUES ('933', '101140601', '那曲');
INSERT INTO `pigcms_weather` VALUES ('934', '101140602', '尼玛');
INSERT INTO `pigcms_weather` VALUES ('935', '101140603', '嘉黎');
INSERT INTO `pigcms_weather` VALUES ('936', '101140604', '班戈');
INSERT INTO `pigcms_weather` VALUES ('937', '101140605', '安多');
INSERT INTO `pigcms_weather` VALUES ('938', '101140606', '索县');
INSERT INTO `pigcms_weather` VALUES ('939', '101140607', '聂荣');
INSERT INTO `pigcms_weather` VALUES ('940', '101140608', '巴青');
INSERT INTO `pigcms_weather` VALUES ('941', '101140609', '比如');
INSERT INTO `pigcms_weather` VALUES ('942', '101140610', '双湖');
INSERT INTO `pigcms_weather` VALUES ('943', '101140701', '阿里');
INSERT INTO `pigcms_weather` VALUES ('944', '101140702', '改则');
INSERT INTO `pigcms_weather` VALUES ('945', '101140703', '申扎');
INSERT INTO `pigcms_weather` VALUES ('946', '101140705', '普兰');
INSERT INTO `pigcms_weather` VALUES ('947', '101140706', '札达');
INSERT INTO `pigcms_weather` VALUES ('948', '101140707', '噶尔');
INSERT INTO `pigcms_weather` VALUES ('949', '101140708', '日土');
INSERT INTO `pigcms_weather` VALUES ('950', '101140709', '革吉');
INSERT INTO `pigcms_weather` VALUES ('951', '101140710', '措勤');
INSERT INTO `pigcms_weather` VALUES ('952', '101150101', '西宁');
INSERT INTO `pigcms_weather` VALUES ('953', '101150102', '大通');
INSERT INTO `pigcms_weather` VALUES ('954', '101150103', '湟源');
INSERT INTO `pigcms_weather` VALUES ('955', '101150104', '湟中');
INSERT INTO `pigcms_weather` VALUES ('956', '101150201', '海东');
INSERT INTO `pigcms_weather` VALUES ('957', '101150202', '乐都');
INSERT INTO `pigcms_weather` VALUES ('958', '101150203', '民和');
INSERT INTO `pigcms_weather` VALUES ('959', '101150204', '互助');
INSERT INTO `pigcms_weather` VALUES ('960', '101150205', '化隆');
INSERT INTO `pigcms_weather` VALUES ('961', '101150206', '循化');
INSERT INTO `pigcms_weather` VALUES ('962', '101150208', '平安');
INSERT INTO `pigcms_weather` VALUES ('963', '101150301', '黄南');
INSERT INTO `pigcms_weather` VALUES ('964', '101150302', '尖扎');
INSERT INTO `pigcms_weather` VALUES ('965', '101150303', '泽库');
INSERT INTO `pigcms_weather` VALUES ('966', '101150305', '同仁');
INSERT INTO `pigcms_weather` VALUES ('967', '101150401', '海南');
INSERT INTO `pigcms_weather` VALUES ('968', '101150404', '贵德');
INSERT INTO `pigcms_weather` VALUES ('969', '101150406', '兴海');
INSERT INTO `pigcms_weather` VALUES ('970', '101150407', '贵南');
INSERT INTO `pigcms_weather` VALUES ('971', '101150408', '同德');
INSERT INTO `pigcms_weather` VALUES ('972', '101150409', '共和');
INSERT INTO `pigcms_weather` VALUES ('973', '101150501', '果洛');
INSERT INTO `pigcms_weather` VALUES ('974', '101150502', '班玛');
INSERT INTO `pigcms_weather` VALUES ('975', '101150503', '甘德');
INSERT INTO `pigcms_weather` VALUES ('976', '101150504', '达日');
INSERT INTO `pigcms_weather` VALUES ('977', '101150505', '久治');
INSERT INTO `pigcms_weather` VALUES ('978', '101150506', '玛多');
INSERT INTO `pigcms_weather` VALUES ('979', '101150508', '玛沁');
INSERT INTO `pigcms_weather` VALUES ('980', '101150601', '玉树');
INSERT INTO `pigcms_weather` VALUES ('981', '101150602', '称多');
INSERT INTO `pigcms_weather` VALUES ('982', '101150603', '治多');
INSERT INTO `pigcms_weather` VALUES ('983', '101150604', '杂多');
INSERT INTO `pigcms_weather` VALUES ('984', '101150605', '囊谦');
INSERT INTO `pigcms_weather` VALUES ('985', '101150606', '曲麻莱');
INSERT INTO `pigcms_weather` VALUES ('986', '101150701', '海西');
INSERT INTO `pigcms_weather` VALUES ('987', '101150708', '天峻');
INSERT INTO `pigcms_weather` VALUES ('988', '101150709', '乌兰');
INSERT INTO `pigcms_weather` VALUES ('989', '101150716', '德令哈');
INSERT INTO `pigcms_weather` VALUES ('990', '101150801', '海北');
INSERT INTO `pigcms_weather` VALUES ('991', '101150802', '门源');
INSERT INTO `pigcms_weather` VALUES ('992', '101150803', '祁连');
INSERT INTO `pigcms_weather` VALUES ('993', '101150804', '海晏');
INSERT INTO `pigcms_weather` VALUES ('994', '101150806', '刚察');
INSERT INTO `pigcms_weather` VALUES ('995', '101150901', '格尔木');
INSERT INTO `pigcms_weather` VALUES ('996', '101150902', '都兰');
INSERT INTO `pigcms_weather` VALUES ('997', '101160101', '兰州');
INSERT INTO `pigcms_weather` VALUES ('998', '101160102', '皋兰');
INSERT INTO `pigcms_weather` VALUES ('999', '101160103', '永登');
INSERT INTO `pigcms_weather` VALUES ('1000', '101160104', '榆中');
INSERT INTO `pigcms_weather` VALUES ('1001', '101160201', '定西');
INSERT INTO `pigcms_weather` VALUES ('1002', '101160202', '通渭');
INSERT INTO `pigcms_weather` VALUES ('1003', '101160203', '陇西');
INSERT INTO `pigcms_weather` VALUES ('1004', '101160204', '渭源');
INSERT INTO `pigcms_weather` VALUES ('1005', '101160205', '临洮');
INSERT INTO `pigcms_weather` VALUES ('1006', '101160206', '漳县');
INSERT INTO `pigcms_weather` VALUES ('1007', '101160207', '岷县');
INSERT INTO `pigcms_weather` VALUES ('1008', '101160301', '平凉');
INSERT INTO `pigcms_weather` VALUES ('1009', '101160302', '泾川');
INSERT INTO `pigcms_weather` VALUES ('1010', '101160303', '灵台');
INSERT INTO `pigcms_weather` VALUES ('1011', '101160304', '崇信');
INSERT INTO `pigcms_weather` VALUES ('1012', '101160305', '华亭');
INSERT INTO `pigcms_weather` VALUES ('1013', '101160306', '庄浪');
INSERT INTO `pigcms_weather` VALUES ('1014', '101160307', '静宁');
INSERT INTO `pigcms_weather` VALUES ('1015', '101160401', '庆阳');
INSERT INTO `pigcms_weather` VALUES ('1016', '101160402', '西峰');
INSERT INTO `pigcms_weather` VALUES ('1017', '101160403', '环县');
INSERT INTO `pigcms_weather` VALUES ('1018', '101160404', '华池');
INSERT INTO `pigcms_weather` VALUES ('1019', '101160405', '合水');
INSERT INTO `pigcms_weather` VALUES ('1020', '101160406', '正宁');
INSERT INTO `pigcms_weather` VALUES ('1021', '101160407', '宁县');
INSERT INTO `pigcms_weather` VALUES ('1022', '101160408', '镇原');
INSERT INTO `pigcms_weather` VALUES ('1023', '101160409', '庆城');
INSERT INTO `pigcms_weather` VALUES ('1024', '101160501', '武威');
INSERT INTO `pigcms_weather` VALUES ('1025', '101160502', '民勤');
INSERT INTO `pigcms_weather` VALUES ('1026', '101160503', '古浪');
INSERT INTO `pigcms_weather` VALUES ('1027', '101160505', '天祝');
INSERT INTO `pigcms_weather` VALUES ('1028', '101160601', '金昌');
INSERT INTO `pigcms_weather` VALUES ('1029', '101160602', '永昌');
INSERT INTO `pigcms_weather` VALUES ('1030', '101160701', '张掖');
INSERT INTO `pigcms_weather` VALUES ('1031', '101160702', '肃南');
INSERT INTO `pigcms_weather` VALUES ('1032', '101160703', '民乐');
INSERT INTO `pigcms_weather` VALUES ('1033', '101160704', '临泽');
INSERT INTO `pigcms_weather` VALUES ('1034', '101160705', '高台');
INSERT INTO `pigcms_weather` VALUES ('1035', '101160706', '山丹');
INSERT INTO `pigcms_weather` VALUES ('1036', '101160801', '酒泉');
INSERT INTO `pigcms_weather` VALUES ('1037', '101160803', '金塔');
INSERT INTO `pigcms_weather` VALUES ('1038', '101160804', '阿克塞');
INSERT INTO `pigcms_weather` VALUES ('1039', '101160805', '瓜州');
INSERT INTO `pigcms_weather` VALUES ('1040', '101160806', '肃北');
INSERT INTO `pigcms_weather` VALUES ('1041', '101160807', '玉门');
INSERT INTO `pigcms_weather` VALUES ('1042', '101160808', '敦煌');
INSERT INTO `pigcms_weather` VALUES ('1043', '101160901', '天水');
INSERT INTO `pigcms_weather` VALUES ('1044', '101160903', '清水');
INSERT INTO `pigcms_weather` VALUES ('1045', '101160904', '秦安');
INSERT INTO `pigcms_weather` VALUES ('1046', '101160905', '甘谷');
INSERT INTO `pigcms_weather` VALUES ('1047', '101160906', '武山');
INSERT INTO `pigcms_weather` VALUES ('1048', '101160907', '张家川');
INSERT INTO `pigcms_weather` VALUES ('1049', '101161001', '陇南');
INSERT INTO `pigcms_weather` VALUES ('1050', '101161002', '成县');
INSERT INTO `pigcms_weather` VALUES ('1051', '101161003', '文县');
INSERT INTO `pigcms_weather` VALUES ('1052', '101161004', '宕昌');
INSERT INTO `pigcms_weather` VALUES ('1053', '101161005', '康县');
INSERT INTO `pigcms_weather` VALUES ('1054', '101161006', '西和');
INSERT INTO `pigcms_weather` VALUES ('1055', '101161007', '礼县');
INSERT INTO `pigcms_weather` VALUES ('1056', '101161008', '徽县');
INSERT INTO `pigcms_weather` VALUES ('1057', '101161009', '两当');
INSERT INTO `pigcms_weather` VALUES ('1058', '101161101', '临夏');
INSERT INTO `pigcms_weather` VALUES ('1059', '101161102', '康乐');
INSERT INTO `pigcms_weather` VALUES ('1060', '101161103', '永靖');
INSERT INTO `pigcms_weather` VALUES ('1061', '101161104', '广河');
INSERT INTO `pigcms_weather` VALUES ('1062', '101161105', '和政');
INSERT INTO `pigcms_weather` VALUES ('1063', '101161107', '积石山');
INSERT INTO `pigcms_weather` VALUES ('1064', '101161201', '合作');
INSERT INTO `pigcms_weather` VALUES ('1065', '101161202', '临潭');
INSERT INTO `pigcms_weather` VALUES ('1066', '101161203', '卓尼');
INSERT INTO `pigcms_weather` VALUES ('1067', '101161204', '舟曲');
INSERT INTO `pigcms_weather` VALUES ('1068', '101161205', '迭部');
INSERT INTO `pigcms_weather` VALUES ('1069', '101161206', '玛曲');
INSERT INTO `pigcms_weather` VALUES ('1070', '101161207', '碌曲');
INSERT INTO `pigcms_weather` VALUES ('1071', '101161208', '夏河');
INSERT INTO `pigcms_weather` VALUES ('1072', '101161301', '白银');
INSERT INTO `pigcms_weather` VALUES ('1073', '101161302', '靖远');
INSERT INTO `pigcms_weather` VALUES ('1074', '101161303', '会宁');
INSERT INTO `pigcms_weather` VALUES ('1075', '101161304', '平川');
INSERT INTO `pigcms_weather` VALUES ('1076', '101161305', '景泰');
INSERT INTO `pigcms_weather` VALUES ('1077', '101161401', '嘉峪关');
INSERT INTO `pigcms_weather` VALUES ('1078', '101170101', '银川');
INSERT INTO `pigcms_weather` VALUES ('1079', '101170102', '永宁');
INSERT INTO `pigcms_weather` VALUES ('1080', '101170103', '灵武');
INSERT INTO `pigcms_weather` VALUES ('1081', '101170104', '贺兰');
INSERT INTO `pigcms_weather` VALUES ('1082', '101170201', '石嘴山');
INSERT INTO `pigcms_weather` VALUES ('1083', '101170203', '平罗');
INSERT INTO `pigcms_weather` VALUES ('1084', '101170301', '吴忠');
INSERT INTO `pigcms_weather` VALUES ('1085', '101170302', '同心');
INSERT INTO `pigcms_weather` VALUES ('1086', '101170303', '盐池');
INSERT INTO `pigcms_weather` VALUES ('1087', '101170306', '青铜峡');
INSERT INTO `pigcms_weather` VALUES ('1088', '101170401', '固原');
INSERT INTO `pigcms_weather` VALUES ('1089', '101170402', '西吉');
INSERT INTO `pigcms_weather` VALUES ('1090', '101170403', '隆德');
INSERT INTO `pigcms_weather` VALUES ('1091', '101170404', '泾源');
INSERT INTO `pigcms_weather` VALUES ('1092', '101170406', '彭阳');
INSERT INTO `pigcms_weather` VALUES ('1093', '101170501', '中卫');
INSERT INTO `pigcms_weather` VALUES ('1094', '101170502', '中宁');
INSERT INTO `pigcms_weather` VALUES ('1095', '101170504', '海原');
INSERT INTO `pigcms_weather` VALUES ('1096', '101180101', '郑州');
INSERT INTO `pigcms_weather` VALUES ('1097', '101180102', '巩义');
INSERT INTO `pigcms_weather` VALUES ('1098', '101180103', '荥阳');
INSERT INTO `pigcms_weather` VALUES ('1099', '101180104', '登封');
INSERT INTO `pigcms_weather` VALUES ('1100', '101180105', '新密');
INSERT INTO `pigcms_weather` VALUES ('1101', '101180106', '新郑');
INSERT INTO `pigcms_weather` VALUES ('1102', '101180107', '中牟');
INSERT INTO `pigcms_weather` VALUES ('1103', '101180108', '上街');
INSERT INTO `pigcms_weather` VALUES ('1104', '101180201', '安阳');
INSERT INTO `pigcms_weather` VALUES ('1105', '101180202', '汤阴');
INSERT INTO `pigcms_weather` VALUES ('1106', '101180203', '滑县');
INSERT INTO `pigcms_weather` VALUES ('1107', '101180204', '内黄');
INSERT INTO `pigcms_weather` VALUES ('1108', '101180205', '林州');
INSERT INTO `pigcms_weather` VALUES ('1109', '101180301', '新乡');
INSERT INTO `pigcms_weather` VALUES ('1110', '101180302', '获嘉');
INSERT INTO `pigcms_weather` VALUES ('1111', '101180303', '原阳');
INSERT INTO `pigcms_weather` VALUES ('1112', '101180304', '辉县');
INSERT INTO `pigcms_weather` VALUES ('1113', '101180305', '卫辉');
INSERT INTO `pigcms_weather` VALUES ('1114', '101180306', '延津');
INSERT INTO `pigcms_weather` VALUES ('1115', '101180307', '封丘');
INSERT INTO `pigcms_weather` VALUES ('1116', '101180308', '长垣');
INSERT INTO `pigcms_weather` VALUES ('1117', '101180401', '许昌');
INSERT INTO `pigcms_weather` VALUES ('1118', '101180402', '鄢陵');
INSERT INTO `pigcms_weather` VALUES ('1119', '101180403', '襄城');
INSERT INTO `pigcms_weather` VALUES ('1120', '101180404', '长葛');
INSERT INTO `pigcms_weather` VALUES ('1121', '101180405', '禹州');
INSERT INTO `pigcms_weather` VALUES ('1122', '101180501', '平顶山');
INSERT INTO `pigcms_weather` VALUES ('1123', '101180502', '郏县');
INSERT INTO `pigcms_weather` VALUES ('1124', '101180503', '宝丰');
INSERT INTO `pigcms_weather` VALUES ('1125', '101180504', '汝州');
INSERT INTO `pigcms_weather` VALUES ('1126', '101180505', '叶县');
INSERT INTO `pigcms_weather` VALUES ('1127', '101180506', '舞钢');
INSERT INTO `pigcms_weather` VALUES ('1128', '101180507', '鲁山');
INSERT INTO `pigcms_weather` VALUES ('1129', '101180508', '石龙');
INSERT INTO `pigcms_weather` VALUES ('1130', '101180601', '信阳');
INSERT INTO `pigcms_weather` VALUES ('1131', '101180602', '息县');
INSERT INTO `pigcms_weather` VALUES ('1132', '101180603', '罗山');
INSERT INTO `pigcms_weather` VALUES ('1133', '101180604', '光山');
INSERT INTO `pigcms_weather` VALUES ('1134', '101180605', '新县');
INSERT INTO `pigcms_weather` VALUES ('1135', '101180606', '淮滨');
INSERT INTO `pigcms_weather` VALUES ('1136', '101180607', '潢川');
INSERT INTO `pigcms_weather` VALUES ('1137', '101180608', '固始');
INSERT INTO `pigcms_weather` VALUES ('1138', '101180609', '商城');
INSERT INTO `pigcms_weather` VALUES ('1139', '101180701', '南阳');
INSERT INTO `pigcms_weather` VALUES ('1140', '101180702', '南召');
INSERT INTO `pigcms_weather` VALUES ('1141', '101180703', '方城');
INSERT INTO `pigcms_weather` VALUES ('1142', '101180704', '社旗');
INSERT INTO `pigcms_weather` VALUES ('1143', '101180705', '西峡');
INSERT INTO `pigcms_weather` VALUES ('1144', '101180706', '内乡');
INSERT INTO `pigcms_weather` VALUES ('1145', '101180707', '镇平');
INSERT INTO `pigcms_weather` VALUES ('1146', '101180708', '淅川');
INSERT INTO `pigcms_weather` VALUES ('1147', '101180709', '新野');
INSERT INTO `pigcms_weather` VALUES ('1148', '101180710', '唐河');
INSERT INTO `pigcms_weather` VALUES ('1149', '101180711', '邓州');
INSERT INTO `pigcms_weather` VALUES ('1150', '101180712', '桐柏');
INSERT INTO `pigcms_weather` VALUES ('1151', '101180801', '开封');
INSERT INTO `pigcms_weather` VALUES ('1152', '101180802', '杞县');
INSERT INTO `pigcms_weather` VALUES ('1153', '101180803', '尉氏');
INSERT INTO `pigcms_weather` VALUES ('1154', '101180804', '通许');
INSERT INTO `pigcms_weather` VALUES ('1155', '101180805', '兰考');
INSERT INTO `pigcms_weather` VALUES ('1156', '101180901', '洛阳');
INSERT INTO `pigcms_weather` VALUES ('1157', '101180902', '新安');
INSERT INTO `pigcms_weather` VALUES ('1158', '101180903', '孟津');
INSERT INTO `pigcms_weather` VALUES ('1159', '101180904', '宜阳');
INSERT INTO `pigcms_weather` VALUES ('1160', '101180905', '洛宁');
INSERT INTO `pigcms_weather` VALUES ('1161', '101180906', '伊川');
INSERT INTO `pigcms_weather` VALUES ('1162', '101180907', '嵩县');
INSERT INTO `pigcms_weather` VALUES ('1163', '101180908', '偃师');
INSERT INTO `pigcms_weather` VALUES ('1164', '101180909', '栾川');
INSERT INTO `pigcms_weather` VALUES ('1165', '101180910', '汝阳');
INSERT INTO `pigcms_weather` VALUES ('1166', '101180911', '吉利');
INSERT INTO `pigcms_weather` VALUES ('1167', '101181001', '商丘');
INSERT INTO `pigcms_weather` VALUES ('1168', '101181003', '睢县');
INSERT INTO `pigcms_weather` VALUES ('1169', '101181004', '民权');
INSERT INTO `pigcms_weather` VALUES ('1170', '101181005', '虞城');
INSERT INTO `pigcms_weather` VALUES ('1171', '101181006', '柘城');
INSERT INTO `pigcms_weather` VALUES ('1172', '101181007', '宁陵');
INSERT INTO `pigcms_weather` VALUES ('1173', '101181008', '夏邑');
INSERT INTO `pigcms_weather` VALUES ('1174', '101181009', '永城');
INSERT INTO `pigcms_weather` VALUES ('1175', '101181101', '焦作');
INSERT INTO `pigcms_weather` VALUES ('1176', '101181102', '修武');
INSERT INTO `pigcms_weather` VALUES ('1177', '101181103', '武陟');
INSERT INTO `pigcms_weather` VALUES ('1178', '101181104', '沁阳');
INSERT INTO `pigcms_weather` VALUES ('1179', '101181106', '博爱');
INSERT INTO `pigcms_weather` VALUES ('1180', '101181107', '温县');
INSERT INTO `pigcms_weather` VALUES ('1181', '101181108', '孟州');
INSERT INTO `pigcms_weather` VALUES ('1182', '101181201', '鹤壁');
INSERT INTO `pigcms_weather` VALUES ('1183', '101181202', '浚县');
INSERT INTO `pigcms_weather` VALUES ('1184', '101181203', '淇县');
INSERT INTO `pigcms_weather` VALUES ('1185', '101181301', '濮阳');
INSERT INTO `pigcms_weather` VALUES ('1186', '101181302', '台前');
INSERT INTO `pigcms_weather` VALUES ('1187', '101181303', '南乐');
INSERT INTO `pigcms_weather` VALUES ('1188', '101181304', '清丰');
INSERT INTO `pigcms_weather` VALUES ('1189', '101181305', '范县');
INSERT INTO `pigcms_weather` VALUES ('1190', '101181401', '周口');
INSERT INTO `pigcms_weather` VALUES ('1191', '101181402', '扶沟');
INSERT INTO `pigcms_weather` VALUES ('1192', '101181403', '太康');
INSERT INTO `pigcms_weather` VALUES ('1193', '101181404', '淮阳');
INSERT INTO `pigcms_weather` VALUES ('1194', '101181405', '西华');
INSERT INTO `pigcms_weather` VALUES ('1195', '101181406', '商水');
INSERT INTO `pigcms_weather` VALUES ('1196', '101181407', '项城');
INSERT INTO `pigcms_weather` VALUES ('1197', '101181408', '郸城');
INSERT INTO `pigcms_weather` VALUES ('1198', '101181409', '鹿邑');
INSERT INTO `pigcms_weather` VALUES ('1199', '101181410', '沈丘');
INSERT INTO `pigcms_weather` VALUES ('1200', '101181501', '漯河');
INSERT INTO `pigcms_weather` VALUES ('1201', '101181502', '临颍');
INSERT INTO `pigcms_weather` VALUES ('1202', '101181503', '舞阳');
INSERT INTO `pigcms_weather` VALUES ('1203', '101181504', '临颖');
INSERT INTO `pigcms_weather` VALUES ('1204', '101181601', '驻马店');
INSERT INTO `pigcms_weather` VALUES ('1205', '101181602', '西平');
INSERT INTO `pigcms_weather` VALUES ('1206', '101181603', '遂平');
INSERT INTO `pigcms_weather` VALUES ('1207', '101181604', '上蔡');
INSERT INTO `pigcms_weather` VALUES ('1208', '101181605', '汝南');
INSERT INTO `pigcms_weather` VALUES ('1209', '101181606', '泌阳');
INSERT INTO `pigcms_weather` VALUES ('1210', '101181607', '平舆');
INSERT INTO `pigcms_weather` VALUES ('1211', '101181608', '新蔡');
INSERT INTO `pigcms_weather` VALUES ('1212', '101181609', '确山');
INSERT INTO `pigcms_weather` VALUES ('1213', '101181610', '正阳');
INSERT INTO `pigcms_weather` VALUES ('1214', '101181701', '三门峡');
INSERT INTO `pigcms_weather` VALUES ('1215', '101181702', '灵宝');
INSERT INTO `pigcms_weather` VALUES ('1216', '101181703', '渑池');
INSERT INTO `pigcms_weather` VALUES ('1217', '101181704', '卢氏');
INSERT INTO `pigcms_weather` VALUES ('1218', '101181705', '义马');
INSERT INTO `pigcms_weather` VALUES ('1219', '101181706', '陕县');
INSERT INTO `pigcms_weather` VALUES ('1220', '101181801', '济源');
INSERT INTO `pigcms_weather` VALUES ('1221', '101190101', '南京');
INSERT INTO `pigcms_weather` VALUES ('1222', '101190102', '溧水');
INSERT INTO `pigcms_weather` VALUES ('1223', '101190103', '高淳');
INSERT INTO `pigcms_weather` VALUES ('1224', '101190104', '江宁');
INSERT INTO `pigcms_weather` VALUES ('1225', '101190105', '六合');
INSERT INTO `pigcms_weather` VALUES ('1226', '101190107', '浦口');
INSERT INTO `pigcms_weather` VALUES ('1227', '101190201', '无锡');
INSERT INTO `pigcms_weather` VALUES ('1228', '101190202', '江阴');
INSERT INTO `pigcms_weather` VALUES ('1229', '101190203', '宜兴');
INSERT INTO `pigcms_weather` VALUES ('1230', '101190204', '锡山');
INSERT INTO `pigcms_weather` VALUES ('1231', '101190301', '镇江');
INSERT INTO `pigcms_weather` VALUES ('1232', '101190302', '丹阳');
INSERT INTO `pigcms_weather` VALUES ('1233', '101190303', '扬中');
INSERT INTO `pigcms_weather` VALUES ('1234', '101190304', '句容');
INSERT INTO `pigcms_weather` VALUES ('1235', '101190305', '丹徒');
INSERT INTO `pigcms_weather` VALUES ('1236', '101190401', '苏州');
INSERT INTO `pigcms_weather` VALUES ('1237', '101190402', '常熟');
INSERT INTO `pigcms_weather` VALUES ('1238', '101190403', '张家港');
INSERT INTO `pigcms_weather` VALUES ('1239', '101190404', '昆山');
INSERT INTO `pigcms_weather` VALUES ('1240', '101190405', '吴中');
INSERT INTO `pigcms_weather` VALUES ('1241', '101190407', '吴江');
INSERT INTO `pigcms_weather` VALUES ('1242', '101190408', '太仓');
INSERT INTO `pigcms_weather` VALUES ('1243', '101190501', '南通');
INSERT INTO `pigcms_weather` VALUES ('1244', '101190502', '海安');
INSERT INTO `pigcms_weather` VALUES ('1245', '101190503', '如皋');
INSERT INTO `pigcms_weather` VALUES ('1246', '101190504', '如东');
INSERT INTO `pigcms_weather` VALUES ('1247', '101190507', '启东');
INSERT INTO `pigcms_weather` VALUES ('1248', '101190508', '海门');
INSERT INTO `pigcms_weather` VALUES ('1249', '101190601', '扬州');
INSERT INTO `pigcms_weather` VALUES ('1250', '101190602', '宝应');
INSERT INTO `pigcms_weather` VALUES ('1251', '101190603', '仪征');
INSERT INTO `pigcms_weather` VALUES ('1252', '101190604', '高邮');
INSERT INTO `pigcms_weather` VALUES ('1253', '101190605', '江都');
INSERT INTO `pigcms_weather` VALUES ('1254', '101190606', '邗江');
INSERT INTO `pigcms_weather` VALUES ('1255', '101190701', '盐城');
INSERT INTO `pigcms_weather` VALUES ('1256', '101190702', '响水');
INSERT INTO `pigcms_weather` VALUES ('1257', '101190703', '滨海');
INSERT INTO `pigcms_weather` VALUES ('1258', '101190704', '阜宁');
INSERT INTO `pigcms_weather` VALUES ('1259', '101190705', '射阳');
INSERT INTO `pigcms_weather` VALUES ('1260', '101190706', '建湖');
INSERT INTO `pigcms_weather` VALUES ('1261', '101190707', '东台');
INSERT INTO `pigcms_weather` VALUES ('1262', '101190708', '大丰');
INSERT INTO `pigcms_weather` VALUES ('1263', '101190709', '盐都');
INSERT INTO `pigcms_weather` VALUES ('1264', '101190801', '徐州');
INSERT INTO `pigcms_weather` VALUES ('1265', '101190802', '铜山');
INSERT INTO `pigcms_weather` VALUES ('1266', '101190803', '丰县');
INSERT INTO `pigcms_weather` VALUES ('1267', '101190804', '沛县');
INSERT INTO `pigcms_weather` VALUES ('1268', '101190805', '邳州');
INSERT INTO `pigcms_weather` VALUES ('1269', '101190806', '睢宁');
INSERT INTO `pigcms_weather` VALUES ('1270', '101190807', '新沂');
INSERT INTO `pigcms_weather` VALUES ('1271', '101190901', '淮安');
INSERT INTO `pigcms_weather` VALUES ('1272', '101190902', '金湖');
INSERT INTO `pigcms_weather` VALUES ('1273', '101190903', '盱眙');
INSERT INTO `pigcms_weather` VALUES ('1274', '101190904', '洪泽');
INSERT INTO `pigcms_weather` VALUES ('1275', '101190905', '涟水');
INSERT INTO `pigcms_weather` VALUES ('1276', '101191001', '连云港');
INSERT INTO `pigcms_weather` VALUES ('1277', '101191002', '东海');
INSERT INTO `pigcms_weather` VALUES ('1278', '101191003', '赣榆');
INSERT INTO `pigcms_weather` VALUES ('1279', '101191004', '灌云');
INSERT INTO `pigcms_weather` VALUES ('1280', '101191005', '灌南');
INSERT INTO `pigcms_weather` VALUES ('1281', '101191101', '常州');
INSERT INTO `pigcms_weather` VALUES ('1282', '101191102', '溧阳');
INSERT INTO `pigcms_weather` VALUES ('1283', '101191103', '金坛');
INSERT INTO `pigcms_weather` VALUES ('1284', '101191104', '武进');
INSERT INTO `pigcms_weather` VALUES ('1285', '101191201', '泰州');
INSERT INTO `pigcms_weather` VALUES ('1286', '101191202', '兴化');
INSERT INTO `pigcms_weather` VALUES ('1287', '101191203', '泰兴');
INSERT INTO `pigcms_weather` VALUES ('1288', '101191204', '姜堰');
INSERT INTO `pigcms_weather` VALUES ('1289', '101191205', '靖江');
INSERT INTO `pigcms_weather` VALUES ('1290', '101191301', '宿迁');
INSERT INTO `pigcms_weather` VALUES ('1291', '101191302', '沭阳');
INSERT INTO `pigcms_weather` VALUES ('1292', '101191303', '泗阳');
INSERT INTO `pigcms_weather` VALUES ('1293', '101191304', '泗洪');
INSERT INTO `pigcms_weather` VALUES ('1294', '101191305', '宿豫');
INSERT INTO `pigcms_weather` VALUES ('1295', '101200101', '武汉');
INSERT INTO `pigcms_weather` VALUES ('1296', '101200102', '蔡甸');
INSERT INTO `pigcms_weather` VALUES ('1297', '101200103', '黄陂');
INSERT INTO `pigcms_weather` VALUES ('1298', '101200104', '新洲');
INSERT INTO `pigcms_weather` VALUES ('1299', '101200105', '江夏');
INSERT INTO `pigcms_weather` VALUES ('1300', '101200106', '东西湖');
INSERT INTO `pigcms_weather` VALUES ('1301', '101200201', '襄阳');
INSERT INTO `pigcms_weather` VALUES ('1302', '101200202', '襄州');
INSERT INTO `pigcms_weather` VALUES ('1303', '101200203', '保康');
INSERT INTO `pigcms_weather` VALUES ('1304', '101200204', '南漳');
INSERT INTO `pigcms_weather` VALUES ('1305', '101200205', '宜城');
INSERT INTO `pigcms_weather` VALUES ('1306', '101200206', '老河口');
INSERT INTO `pigcms_weather` VALUES ('1307', '101200207', '谷城');
INSERT INTO `pigcms_weather` VALUES ('1308', '101200208', '枣阳');
INSERT INTO `pigcms_weather` VALUES ('1309', '101200301', '鄂州');
INSERT INTO `pigcms_weather` VALUES ('1310', '101200302', '梁子湖');
INSERT INTO `pigcms_weather` VALUES ('1311', '101200401', '孝感');
INSERT INTO `pigcms_weather` VALUES ('1312', '101200402', '安陆');
INSERT INTO `pigcms_weather` VALUES ('1313', '101200403', '云梦');
INSERT INTO `pigcms_weather` VALUES ('1314', '101200404', '大悟');
INSERT INTO `pigcms_weather` VALUES ('1315', '101200405', '应城');
INSERT INTO `pigcms_weather` VALUES ('1316', '101200406', '汉川');
INSERT INTO `pigcms_weather` VALUES ('1317', '101200407', '孝昌');
INSERT INTO `pigcms_weather` VALUES ('1318', '101200501', '黄冈');
INSERT INTO `pigcms_weather` VALUES ('1319', '101200502', '红安');
INSERT INTO `pigcms_weather` VALUES ('1320', '101200503', '麻城');
INSERT INTO `pigcms_weather` VALUES ('1321', '101200504', '罗田');
INSERT INTO `pigcms_weather` VALUES ('1322', '101200505', '英山');
INSERT INTO `pigcms_weather` VALUES ('1323', '101200506', '浠水');
INSERT INTO `pigcms_weather` VALUES ('1324', '101200507', '蕲春');
INSERT INTO `pigcms_weather` VALUES ('1325', '101200508', '黄梅');
INSERT INTO `pigcms_weather` VALUES ('1326', '101200509', '武穴');
INSERT INTO `pigcms_weather` VALUES ('1327', '101200510', '团风');
INSERT INTO `pigcms_weather` VALUES ('1328', '101200601', '黄石');
INSERT INTO `pigcms_weather` VALUES ('1329', '101200602', '大冶');
INSERT INTO `pigcms_weather` VALUES ('1330', '101200603', '阳新');
INSERT INTO `pigcms_weather` VALUES ('1331', '101200604', '铁山');
INSERT INTO `pigcms_weather` VALUES ('1332', '101200605', '下陆');
INSERT INTO `pigcms_weather` VALUES ('1333', '101200606', '西塞山');
INSERT INTO `pigcms_weather` VALUES ('1334', '101200701', '咸宁');
INSERT INTO `pigcms_weather` VALUES ('1335', '101200702', '赤壁');
INSERT INTO `pigcms_weather` VALUES ('1336', '101200703', '嘉鱼');
INSERT INTO `pigcms_weather` VALUES ('1337', '101200704', '崇阳');
INSERT INTO `pigcms_weather` VALUES ('1338', '101200705', '通城');
INSERT INTO `pigcms_weather` VALUES ('1339', '101200706', '通山');
INSERT INTO `pigcms_weather` VALUES ('1340', '101200801', '荆州');
INSERT INTO `pigcms_weather` VALUES ('1341', '101200802', '江陵');
INSERT INTO `pigcms_weather` VALUES ('1342', '101200803', '公安');
INSERT INTO `pigcms_weather` VALUES ('1343', '101200804', '石首');
INSERT INTO `pigcms_weather` VALUES ('1344', '101200805', '监利');
INSERT INTO `pigcms_weather` VALUES ('1345', '101200806', '洪湖');
INSERT INTO `pigcms_weather` VALUES ('1346', '101200807', '松滋');
INSERT INTO `pigcms_weather` VALUES ('1347', '101200901', '宜昌');
INSERT INTO `pigcms_weather` VALUES ('1348', '101200902', '远安');
INSERT INTO `pigcms_weather` VALUES ('1349', '101200903', '秭归');
INSERT INTO `pigcms_weather` VALUES ('1350', '101200904', '兴山');
INSERT INTO `pigcms_weather` VALUES ('1351', '101200906', '五峰');
INSERT INTO `pigcms_weather` VALUES ('1352', '101200907', '当阳');
INSERT INTO `pigcms_weather` VALUES ('1353', '101200908', '长阳');
INSERT INTO `pigcms_weather` VALUES ('1354', '101200909', '宜都');
INSERT INTO `pigcms_weather` VALUES ('1355', '101200910', '枝江');
INSERT INTO `pigcms_weather` VALUES ('1356', '101201001', '恩施');
INSERT INTO `pigcms_weather` VALUES ('1357', '101201002', '利川');
INSERT INTO `pigcms_weather` VALUES ('1358', '101201003', '建始');
INSERT INTO `pigcms_weather` VALUES ('1359', '101201004', '咸丰');
INSERT INTO `pigcms_weather` VALUES ('1360', '101201005', '宣恩');
INSERT INTO `pigcms_weather` VALUES ('1361', '101201006', '鹤峰');
INSERT INTO `pigcms_weather` VALUES ('1362', '101201007', '来凤');
INSERT INTO `pigcms_weather` VALUES ('1363', '101201008', '巴东');
INSERT INTO `pigcms_weather` VALUES ('1364', '101201101', '十堰');
INSERT INTO `pigcms_weather` VALUES ('1365', '101201102', '竹溪');
INSERT INTO `pigcms_weather` VALUES ('1366', '101201103', '郧西');
INSERT INTO `pigcms_weather` VALUES ('1367', '101201104', '郧县');
INSERT INTO `pigcms_weather` VALUES ('1368', '101201105', '竹山');
INSERT INTO `pigcms_weather` VALUES ('1369', '101201106', '房县');
INSERT INTO `pigcms_weather` VALUES ('1370', '101201107', '丹江口');
INSERT INTO `pigcms_weather` VALUES ('1371', '101201108', '茅箭');
INSERT INTO `pigcms_weather` VALUES ('1372', '101201109', '张湾');
INSERT INTO `pigcms_weather` VALUES ('1373', '101201201', '神农架');
INSERT INTO `pigcms_weather` VALUES ('1374', '101201301', '随州');
INSERT INTO `pigcms_weather` VALUES ('1375', '101201302', '广水');
INSERT INTO `pigcms_weather` VALUES ('1376', '101201401', '荆门');
INSERT INTO `pigcms_weather` VALUES ('1377', '101201402', '钟祥');
INSERT INTO `pigcms_weather` VALUES ('1378', '101201403', '京山');
INSERT INTO `pigcms_weather` VALUES ('1379', '101201404', '掇刀');
INSERT INTO `pigcms_weather` VALUES ('1380', '101201405', '沙洋');
INSERT INTO `pigcms_weather` VALUES ('1381', '101201406', '沙市');
INSERT INTO `pigcms_weather` VALUES ('1382', '101201501', '天门');
INSERT INTO `pigcms_weather` VALUES ('1383', '101201601', '仙桃');
INSERT INTO `pigcms_weather` VALUES ('1384', '101201701', '潜江');
INSERT INTO `pigcms_weather` VALUES ('1385', '101210101', '杭州');
INSERT INTO `pigcms_weather` VALUES ('1386', '101210102', '萧山');
INSERT INTO `pigcms_weather` VALUES ('1387', '101210103', '桐庐');
INSERT INTO `pigcms_weather` VALUES ('1388', '101210104', '淳安');
INSERT INTO `pigcms_weather` VALUES ('1389', '101210105', '建德');
INSERT INTO `pigcms_weather` VALUES ('1390', '101210106', '余杭');
INSERT INTO `pigcms_weather` VALUES ('1391', '101210107', '临安');
INSERT INTO `pigcms_weather` VALUES ('1392', '101210108', '富阳');
INSERT INTO `pigcms_weather` VALUES ('1393', '101210201', '湖州');
INSERT INTO `pigcms_weather` VALUES ('1394', '101210202', '长兴');
INSERT INTO `pigcms_weather` VALUES ('1395', '101210203', '安吉');
INSERT INTO `pigcms_weather` VALUES ('1396', '101210204', '德清');
INSERT INTO `pigcms_weather` VALUES ('1397', '101210301', '嘉兴');
INSERT INTO `pigcms_weather` VALUES ('1398', '101210302', '嘉善');
INSERT INTO `pigcms_weather` VALUES ('1399', '101210303', '海宁');
INSERT INTO `pigcms_weather` VALUES ('1400', '101210304', '桐乡');
INSERT INTO `pigcms_weather` VALUES ('1401', '101210305', '平湖');
INSERT INTO `pigcms_weather` VALUES ('1402', '101210306', '海盐');
INSERT INTO `pigcms_weather` VALUES ('1403', '101210401', '宁波');
INSERT INTO `pigcms_weather` VALUES ('1404', '101210403', '慈溪');
INSERT INTO `pigcms_weather` VALUES ('1405', '101210404', '余姚');
INSERT INTO `pigcms_weather` VALUES ('1406', '101210405', '奉化');
INSERT INTO `pigcms_weather` VALUES ('1407', '101210406', '象山');
INSERT INTO `pigcms_weather` VALUES ('1408', '101210408', '宁海');
INSERT INTO `pigcms_weather` VALUES ('1409', '101210410', '北仑');
INSERT INTO `pigcms_weather` VALUES ('1410', '101210411', '鄞州');
INSERT INTO `pigcms_weather` VALUES ('1411', '101210501', '绍兴');
INSERT INTO `pigcms_weather` VALUES ('1412', '101210502', '诸暨');
INSERT INTO `pigcms_weather` VALUES ('1413', '101210503', '上虞');
INSERT INTO `pigcms_weather` VALUES ('1414', '101210504', '新昌');
INSERT INTO `pigcms_weather` VALUES ('1415', '101210505', '嵊州');
INSERT INTO `pigcms_weather` VALUES ('1416', '101210601', '台州');
INSERT INTO `pigcms_weather` VALUES ('1417', '101210603', '玉环');
INSERT INTO `pigcms_weather` VALUES ('1418', '101210604', '三门');
INSERT INTO `pigcms_weather` VALUES ('1419', '101210605', '天台');
INSERT INTO `pigcms_weather` VALUES ('1420', '101210606', '仙居');
INSERT INTO `pigcms_weather` VALUES ('1421', '101210607', '温岭');
INSERT INTO `pigcms_weather` VALUES ('1422', '101210610', '临海');
INSERT INTO `pigcms_weather` VALUES ('1423', '101210701', '温州');
INSERT INTO `pigcms_weather` VALUES ('1424', '101210702', '泰顺');
INSERT INTO `pigcms_weather` VALUES ('1425', '101210703', '文成');
INSERT INTO `pigcms_weather` VALUES ('1426', '101210704', '平阳');
INSERT INTO `pigcms_weather` VALUES ('1427', '101210705', '瑞安');
INSERT INTO `pigcms_weather` VALUES ('1428', '101210706', '洞头');
INSERT INTO `pigcms_weather` VALUES ('1429', '101210707', '乐清');
INSERT INTO `pigcms_weather` VALUES ('1430', '101210708', '永嘉');
INSERT INTO `pigcms_weather` VALUES ('1431', '101210709', '苍南');
INSERT INTO `pigcms_weather` VALUES ('1432', '101210801', '丽水');
INSERT INTO `pigcms_weather` VALUES ('1433', '101210802', '遂昌');
INSERT INTO `pigcms_weather` VALUES ('1434', '101210803', '龙泉');
INSERT INTO `pigcms_weather` VALUES ('1435', '101210804', '缙云');
INSERT INTO `pigcms_weather` VALUES ('1436', '101210805', '青田');
INSERT INTO `pigcms_weather` VALUES ('1437', '101210806', '云和');
INSERT INTO `pigcms_weather` VALUES ('1438', '101210807', '庆元');
INSERT INTO `pigcms_weather` VALUES ('1439', '101210808', '松阳');
INSERT INTO `pigcms_weather` VALUES ('1440', '101210809', '景宁');
INSERT INTO `pigcms_weather` VALUES ('1441', '101210901', '金华');
INSERT INTO `pigcms_weather` VALUES ('1442', '101210902', '浦江');
INSERT INTO `pigcms_weather` VALUES ('1443', '101210903', '兰溪');
INSERT INTO `pigcms_weather` VALUES ('1444', '101210904', '义乌');
INSERT INTO `pigcms_weather` VALUES ('1445', '101210905', '东阳');
INSERT INTO `pigcms_weather` VALUES ('1446', '101210906', '武义');
INSERT INTO `pigcms_weather` VALUES ('1447', '101210907', '永康');
INSERT INTO `pigcms_weather` VALUES ('1448', '101210908', '磐安');
INSERT INTO `pigcms_weather` VALUES ('1449', '101211001', '衢州');
INSERT INTO `pigcms_weather` VALUES ('1450', '101211002', '常山');
INSERT INTO `pigcms_weather` VALUES ('1451', '101211003', '开化');
INSERT INTO `pigcms_weather` VALUES ('1452', '101211004', '龙游');
INSERT INTO `pigcms_weather` VALUES ('1453', '101211005', '江山');
INSERT INTO `pigcms_weather` VALUES ('1454', '101211101', '舟山');
INSERT INTO `pigcms_weather` VALUES ('1455', '101211102', '嵊泗');
INSERT INTO `pigcms_weather` VALUES ('1456', '101211104', '岱山');
INSERT INTO `pigcms_weather` VALUES ('1457', '101220101', '合肥');
INSERT INTO `pigcms_weather` VALUES ('1458', '101220102', '长丰');
INSERT INTO `pigcms_weather` VALUES ('1459', '101220103', '肥东');
INSERT INTO `pigcms_weather` VALUES ('1460', '101220104', '肥西');
INSERT INTO `pigcms_weather` VALUES ('1461', '101220201', '蚌埠');
INSERT INTO `pigcms_weather` VALUES ('1462', '101220202', '怀远');
INSERT INTO `pigcms_weather` VALUES ('1463', '101220203', '固镇');
INSERT INTO `pigcms_weather` VALUES ('1464', '101220204', '五河');
INSERT INTO `pigcms_weather` VALUES ('1465', '101220301', '芜湖');
INSERT INTO `pigcms_weather` VALUES ('1466', '101220302', '繁昌');
INSERT INTO `pigcms_weather` VALUES ('1467', '101220304', '南陵');
INSERT INTO `pigcms_weather` VALUES ('1468', '101220401', '淮南');
INSERT INTO `pigcms_weather` VALUES ('1469', '101220402', '凤台');
INSERT INTO `pigcms_weather` VALUES ('1470', '101220403', '潘集');
INSERT INTO `pigcms_weather` VALUES ('1471', '101220501', '马鞍山');
INSERT INTO `pigcms_weather` VALUES ('1472', '101220502', '当涂');
INSERT INTO `pigcms_weather` VALUES ('1473', '101220601', '安庆');
INSERT INTO `pigcms_weather` VALUES ('1474', '101220602', '枞阳');
INSERT INTO `pigcms_weather` VALUES ('1475', '101220603', '太湖');
INSERT INTO `pigcms_weather` VALUES ('1476', '101220604', '潜山');
INSERT INTO `pigcms_weather` VALUES ('1477', '101220605', '怀宁');
INSERT INTO `pigcms_weather` VALUES ('1478', '101220606', '宿松');
INSERT INTO `pigcms_weather` VALUES ('1479', '101220607', '望江');
INSERT INTO `pigcms_weather` VALUES ('1480', '101220608', '岳西');
INSERT INTO `pigcms_weather` VALUES ('1481', '101220609', '桐城');
INSERT INTO `pigcms_weather` VALUES ('1482', '101220701', '宿州');
INSERT INTO `pigcms_weather` VALUES ('1483', '101220702', '砀山');
INSERT INTO `pigcms_weather` VALUES ('1484', '101220703', '灵璧');
INSERT INTO `pigcms_weather` VALUES ('1485', '101220704', '泗县');
INSERT INTO `pigcms_weather` VALUES ('1486', '101220705', '萧县');
INSERT INTO `pigcms_weather` VALUES ('1487', '101220801', '阜阳');
INSERT INTO `pigcms_weather` VALUES ('1488', '101220802', '阜南');
INSERT INTO `pigcms_weather` VALUES ('1489', '101220803', '颍上');
INSERT INTO `pigcms_weather` VALUES ('1490', '101220804', '临泉');
INSERT INTO `pigcms_weather` VALUES ('1491', '101220805', '界首');
INSERT INTO `pigcms_weather` VALUES ('1492', '101220806', '太和');
INSERT INTO `pigcms_weather` VALUES ('1493', '101220901', '亳州');
INSERT INTO `pigcms_weather` VALUES ('1494', '101220902', '涡阳');
INSERT INTO `pigcms_weather` VALUES ('1495', '101220903', '利辛');
INSERT INTO `pigcms_weather` VALUES ('1496', '101220904', '蒙城');
INSERT INTO `pigcms_weather` VALUES ('1497', '101221001', '黄山');
INSERT INTO `pigcms_weather` VALUES ('1498', '101221004', '祁门');
INSERT INTO `pigcms_weather` VALUES ('1499', '101221005', '黟县');
INSERT INTO `pigcms_weather` VALUES ('1500', '101221006', '歙县');
INSERT INTO `pigcms_weather` VALUES ('1501', '101221007', '休宁');
INSERT INTO `pigcms_weather` VALUES ('1502', '101221101', '滁州');
INSERT INTO `pigcms_weather` VALUES ('1503', '101221102', '凤阳');
INSERT INTO `pigcms_weather` VALUES ('1504', '101221103', '明光');
INSERT INTO `pigcms_weather` VALUES ('1505', '101221104', '定远');
INSERT INTO `pigcms_weather` VALUES ('1506', '101221105', '全椒');
INSERT INTO `pigcms_weather` VALUES ('1507', '101221106', '来安');
INSERT INTO `pigcms_weather` VALUES ('1508', '101221107', '天长');
INSERT INTO `pigcms_weather` VALUES ('1509', '101221201', '淮北');
INSERT INTO `pigcms_weather` VALUES ('1510', '101221202', '濉溪');
INSERT INTO `pigcms_weather` VALUES ('1511', '101221301', '铜陵');
INSERT INTO `pigcms_weather` VALUES ('1512', '101221401', '宣城');
INSERT INTO `pigcms_weather` VALUES ('1513', '101221402', '泾县');
INSERT INTO `pigcms_weather` VALUES ('1514', '101221403', '旌德');
INSERT INTO `pigcms_weather` VALUES ('1515', '101221404', '宁国');
INSERT INTO `pigcms_weather` VALUES ('1516', '101221405', '绩溪');
INSERT INTO `pigcms_weather` VALUES ('1517', '101221406', '广德');
INSERT INTO `pigcms_weather` VALUES ('1518', '101221407', '郎溪');
INSERT INTO `pigcms_weather` VALUES ('1519', '101221501', '六安');
INSERT INTO `pigcms_weather` VALUES ('1520', '101221502', '霍邱');
INSERT INTO `pigcms_weather` VALUES ('1521', '101221503', '寿县');
INSERT INTO `pigcms_weather` VALUES ('1522', '101221505', '金寨');
INSERT INTO `pigcms_weather` VALUES ('1523', '101221506', '霍山');
INSERT INTO `pigcms_weather` VALUES ('1524', '101221507', '舒城');
INSERT INTO `pigcms_weather` VALUES ('1525', '101221601', '巢湖');
INSERT INTO `pigcms_weather` VALUES ('1526', '101221602', '庐江');
INSERT INTO `pigcms_weather` VALUES ('1527', '101221603', '无为');
INSERT INTO `pigcms_weather` VALUES ('1528', '101221604', '含山');
INSERT INTO `pigcms_weather` VALUES ('1529', '101221605', '和县');
INSERT INTO `pigcms_weather` VALUES ('1530', '101221701', '池州');
INSERT INTO `pigcms_weather` VALUES ('1531', '101221702', '东至');
INSERT INTO `pigcms_weather` VALUES ('1532', '101221703', '青阳');
INSERT INTO `pigcms_weather` VALUES ('1533', '101221705', '石台');
INSERT INTO `pigcms_weather` VALUES ('1534', '101230101', '福州');
INSERT INTO `pigcms_weather` VALUES ('1535', '101230102', '闽清');
INSERT INTO `pigcms_weather` VALUES ('1536', '101230103', '闽侯');
INSERT INTO `pigcms_weather` VALUES ('1537', '101230104', '罗源');
INSERT INTO `pigcms_weather` VALUES ('1538', '101230105', '连江');
INSERT INTO `pigcms_weather` VALUES ('1539', '101230107', '永泰');
INSERT INTO `pigcms_weather` VALUES ('1540', '101230108', '平潭');
INSERT INTO `pigcms_weather` VALUES ('1541', '101230110', '长乐');
INSERT INTO `pigcms_weather` VALUES ('1542', '101230111', '福清');
INSERT INTO `pigcms_weather` VALUES ('1543', '101230201', '厦门');
INSERT INTO `pigcms_weather` VALUES ('1544', '101230301', '宁德');
INSERT INTO `pigcms_weather` VALUES ('1545', '101230302', '古田');
INSERT INTO `pigcms_weather` VALUES ('1546', '101230303', '霞浦');
INSERT INTO `pigcms_weather` VALUES ('1547', '101230304', '寿宁');
INSERT INTO `pigcms_weather` VALUES ('1548', '101230305', '周宁');
INSERT INTO `pigcms_weather` VALUES ('1549', '101230306', '福安');
INSERT INTO `pigcms_weather` VALUES ('1550', '101230307', '柘荣');
INSERT INTO `pigcms_weather` VALUES ('1551', '101230308', '福鼎');
INSERT INTO `pigcms_weather` VALUES ('1552', '101230309', '屏南');
INSERT INTO `pigcms_weather` VALUES ('1553', '101230401', '莆田');
INSERT INTO `pigcms_weather` VALUES ('1554', '101230402', '仙游');
INSERT INTO `pigcms_weather` VALUES ('1555', '101230404', '涵江');
INSERT INTO `pigcms_weather` VALUES ('1556', '101230405', '秀屿');
INSERT INTO `pigcms_weather` VALUES ('1557', '101230406', '荔城');
INSERT INTO `pigcms_weather` VALUES ('1558', '101230407', '城厢');
INSERT INTO `pigcms_weather` VALUES ('1559', '101230501', '泉州');
INSERT INTO `pigcms_weather` VALUES ('1560', '101230502', '安溪');
INSERT INTO `pigcms_weather` VALUES ('1561', '101230504', '永春');
INSERT INTO `pigcms_weather` VALUES ('1562', '101230505', '德化');
INSERT INTO `pigcms_weather` VALUES ('1563', '101230506', '南安');
INSERT INTO `pigcms_weather` VALUES ('1564', '101230508', '惠安');
INSERT INTO `pigcms_weather` VALUES ('1565', '101230509', '晋江');
INSERT INTO `pigcms_weather` VALUES ('1566', '101230510', '石狮');
INSERT INTO `pigcms_weather` VALUES ('1567', '101230601', '漳州');
INSERT INTO `pigcms_weather` VALUES ('1568', '101230602', '长泰');
INSERT INTO `pigcms_weather` VALUES ('1569', '101230603', '南靖');
INSERT INTO `pigcms_weather` VALUES ('1570', '101230604', '平和');
INSERT INTO `pigcms_weather` VALUES ('1571', '101230605', '龙海');
INSERT INTO `pigcms_weather` VALUES ('1572', '101230606', '漳浦');
INSERT INTO `pigcms_weather` VALUES ('1573', '101230607', '诏安');
INSERT INTO `pigcms_weather` VALUES ('1574', '101230609', '云霄');
INSERT INTO `pigcms_weather` VALUES ('1575', '101230610', '华安');
INSERT INTO `pigcms_weather` VALUES ('1576', '101230701', '龙岩');
INSERT INTO `pigcms_weather` VALUES ('1577', '101230702', '长汀');
INSERT INTO `pigcms_weather` VALUES ('1578', '101230703', '连城');
INSERT INTO `pigcms_weather` VALUES ('1579', '101230704', '武平');
INSERT INTO `pigcms_weather` VALUES ('1580', '101230705', '上杭');
INSERT INTO `pigcms_weather` VALUES ('1581', '101230706', '永定');
INSERT INTO `pigcms_weather` VALUES ('1582', '101230707', '漳平');
INSERT INTO `pigcms_weather` VALUES ('1583', '101230801', '三明');
INSERT INTO `pigcms_weather` VALUES ('1584', '101230802', '宁化');
INSERT INTO `pigcms_weather` VALUES ('1585', '101230803', '清流');
INSERT INTO `pigcms_weather` VALUES ('1586', '101230804', '泰宁');
INSERT INTO `pigcms_weather` VALUES ('1587', '101230805', '将乐');
INSERT INTO `pigcms_weather` VALUES ('1588', '101230806', '建宁');
INSERT INTO `pigcms_weather` VALUES ('1589', '101230807', '明溪');
INSERT INTO `pigcms_weather` VALUES ('1590', '101230808', '沙县');
INSERT INTO `pigcms_weather` VALUES ('1591', '101230809', '尤溪');
INSERT INTO `pigcms_weather` VALUES ('1592', '101230810', '永安');
INSERT INTO `pigcms_weather` VALUES ('1593', '101230811', '大田');
INSERT INTO `pigcms_weather` VALUES ('1594', '101230901', '南平');
INSERT INTO `pigcms_weather` VALUES ('1595', '101230902', '顺昌');
INSERT INTO `pigcms_weather` VALUES ('1596', '101230903', '光泽');
INSERT INTO `pigcms_weather` VALUES ('1597', '101230904', '邵武');
INSERT INTO `pigcms_weather` VALUES ('1598', '101230905', '武夷山');
INSERT INTO `pigcms_weather` VALUES ('1599', '101230906', '浦城');
INSERT INTO `pigcms_weather` VALUES ('1600', '101230907', '建阳');
INSERT INTO `pigcms_weather` VALUES ('1601', '101230908', '松溪');
INSERT INTO `pigcms_weather` VALUES ('1602', '101230909', '政和');
INSERT INTO `pigcms_weather` VALUES ('1603', '101230910', '建瓯');
INSERT INTO `pigcms_weather` VALUES ('1604', '101231001', '钓鱼岛');
INSERT INTO `pigcms_weather` VALUES ('1605', '101240101', '南昌');
INSERT INTO `pigcms_weather` VALUES ('1606', '101240102', '新建');
INSERT INTO `pigcms_weather` VALUES ('1607', '101240104', '安义');
INSERT INTO `pigcms_weather` VALUES ('1608', '101240105', '进贤');
INSERT INTO `pigcms_weather` VALUES ('1609', '101240201', '九江');
INSERT INTO `pigcms_weather` VALUES ('1610', '101240202', '瑞昌');
INSERT INTO `pigcms_weather` VALUES ('1611', '101240204', '武宁');
INSERT INTO `pigcms_weather` VALUES ('1612', '101240205', '德安');
INSERT INTO `pigcms_weather` VALUES ('1613', '101240206', '永修');
INSERT INTO `pigcms_weather` VALUES ('1614', '101240207', '湖口');
INSERT INTO `pigcms_weather` VALUES ('1615', '101240208', '彭泽');
INSERT INTO `pigcms_weather` VALUES ('1616', '101240209', '星子');
INSERT INTO `pigcms_weather` VALUES ('1617', '101240210', '都昌');
INSERT INTO `pigcms_weather` VALUES ('1618', '101240212', '修水');
INSERT INTO `pigcms_weather` VALUES ('1619', '101240301', '上饶');
INSERT INTO `pigcms_weather` VALUES ('1620', '101240302', '鄱阳');
INSERT INTO `pigcms_weather` VALUES ('1621', '101240303', '婺源');
INSERT INTO `pigcms_weather` VALUES ('1622', '101240305', '余干');
INSERT INTO `pigcms_weather` VALUES ('1623', '101240306', '万年');
INSERT INTO `pigcms_weather` VALUES ('1624', '101240307', '德兴');
INSERT INTO `pigcms_weather` VALUES ('1625', '101240309', '弋阳');
INSERT INTO `pigcms_weather` VALUES ('1626', '101240310', '横峰');
INSERT INTO `pigcms_weather` VALUES ('1627', '101240311', '铅山');
INSERT INTO `pigcms_weather` VALUES ('1628', '101240312', '玉山');
INSERT INTO `pigcms_weather` VALUES ('1629', '101240313', '广丰');
INSERT INTO `pigcms_weather` VALUES ('1630', '101240401', '抚州');
INSERT INTO `pigcms_weather` VALUES ('1631', '101240402', '广昌');
INSERT INTO `pigcms_weather` VALUES ('1632', '101240403', '乐安');
INSERT INTO `pigcms_weather` VALUES ('1633', '101240404', '崇仁');
INSERT INTO `pigcms_weather` VALUES ('1634', '101240405', '金溪');
INSERT INTO `pigcms_weather` VALUES ('1635', '101240406', '资溪');
INSERT INTO `pigcms_weather` VALUES ('1636', '101240407', '宜黄');
INSERT INTO `pigcms_weather` VALUES ('1637', '101240408', '南城');
INSERT INTO `pigcms_weather` VALUES ('1638', '101240409', '南丰');
INSERT INTO `pigcms_weather` VALUES ('1639', '101240410', '黎川');
INSERT INTO `pigcms_weather` VALUES ('1640', '101240411', '东乡');
INSERT INTO `pigcms_weather` VALUES ('1641', '101240501', '宜春');
INSERT INTO `pigcms_weather` VALUES ('1642', '101240502', '铜鼓');
INSERT INTO `pigcms_weather` VALUES ('1643', '101240503', '宜丰');
INSERT INTO `pigcms_weather` VALUES ('1644', '101240504', '万载');
INSERT INTO `pigcms_weather` VALUES ('1645', '101240505', '上高');
INSERT INTO `pigcms_weather` VALUES ('1646', '101240506', '靖安');
INSERT INTO `pigcms_weather` VALUES ('1647', '101240507', '奉新');
INSERT INTO `pigcms_weather` VALUES ('1648', '101240508', '高安');
INSERT INTO `pigcms_weather` VALUES ('1649', '101240509', '樟树');
INSERT INTO `pigcms_weather` VALUES ('1650', '101240510', '丰城');
INSERT INTO `pigcms_weather` VALUES ('1651', '101240601', '吉安');
INSERT INTO `pigcms_weather` VALUES ('1652', '101240603', '吉水');
INSERT INTO `pigcms_weather` VALUES ('1653', '101240604', '新干');
INSERT INTO `pigcms_weather` VALUES ('1654', '101240605', '峡江');
INSERT INTO `pigcms_weather` VALUES ('1655', '101240606', '永丰');
INSERT INTO `pigcms_weather` VALUES ('1656', '101240607', '永新');
INSERT INTO `pigcms_weather` VALUES ('1657', '101240608', '井冈山');
INSERT INTO `pigcms_weather` VALUES ('1658', '101240609', '万安');
INSERT INTO `pigcms_weather` VALUES ('1659', '101240610', '遂川');
INSERT INTO `pigcms_weather` VALUES ('1660', '101240611', '泰和');
INSERT INTO `pigcms_weather` VALUES ('1661', '101240612', '安福');
INSERT INTO `pigcms_weather` VALUES ('1662', '101240701', '赣州');
INSERT INTO `pigcms_weather` VALUES ('1663', '101240702', '崇义');
INSERT INTO `pigcms_weather` VALUES ('1664', '101240703', '上犹');
INSERT INTO `pigcms_weather` VALUES ('1665', '101240704', '南康');
INSERT INTO `pigcms_weather` VALUES ('1666', '101240705', '大余');
INSERT INTO `pigcms_weather` VALUES ('1667', '101240706', '信丰');
INSERT INTO `pigcms_weather` VALUES ('1668', '101240707', '宁都');
INSERT INTO `pigcms_weather` VALUES ('1669', '101240708', '石城');
INSERT INTO `pigcms_weather` VALUES ('1670', '101240709', '瑞金');
INSERT INTO `pigcms_weather` VALUES ('1671', '101240710', '于都');
INSERT INTO `pigcms_weather` VALUES ('1672', '101240711', '会昌');
INSERT INTO `pigcms_weather` VALUES ('1673', '101240712', '安远');
INSERT INTO `pigcms_weather` VALUES ('1674', '101240713', '全南');
INSERT INTO `pigcms_weather` VALUES ('1675', '101240714', '龙南');
INSERT INTO `pigcms_weather` VALUES ('1676', '101240715', '定南');
INSERT INTO `pigcms_weather` VALUES ('1677', '101240716', '寻乌');
INSERT INTO `pigcms_weather` VALUES ('1678', '101240717', '兴国');
INSERT INTO `pigcms_weather` VALUES ('1679', '101240718', '赣县');
INSERT INTO `pigcms_weather` VALUES ('1680', '101240801', '景德镇');
INSERT INTO `pigcms_weather` VALUES ('1681', '101240802', '乐平');
INSERT INTO `pigcms_weather` VALUES ('1682', '101240803', '浮梁');
INSERT INTO `pigcms_weather` VALUES ('1683', '101240901', '萍乡');
INSERT INTO `pigcms_weather` VALUES ('1684', '101240902', '莲花');
INSERT INTO `pigcms_weather` VALUES ('1685', '101240903', '上栗');
INSERT INTO `pigcms_weather` VALUES ('1686', '101240905', '芦溪');
INSERT INTO `pigcms_weather` VALUES ('1687', '101240906', '湘东');
INSERT INTO `pigcms_weather` VALUES ('1688', '101241001', '新余');
INSERT INTO `pigcms_weather` VALUES ('1689', '101241002', '分宜');
INSERT INTO `pigcms_weather` VALUES ('1690', '101241101', '鹰潭');
INSERT INTO `pigcms_weather` VALUES ('1691', '101241102', '余江');
INSERT INTO `pigcms_weather` VALUES ('1692', '101241103', '贵溪');
INSERT INTO `pigcms_weather` VALUES ('1693', '101250101', '长沙');
INSERT INTO `pigcms_weather` VALUES ('1694', '101250102', '宁乡');
INSERT INTO `pigcms_weather` VALUES ('1695', '101250103', '浏阳');
INSERT INTO `pigcms_weather` VALUES ('1696', '101250105', '望城');
INSERT INTO `pigcms_weather` VALUES ('1697', '101250201', '湘潭');
INSERT INTO `pigcms_weather` VALUES ('1698', '101250202', '韶山');
INSERT INTO `pigcms_weather` VALUES ('1699', '101250203', '湘乡');
INSERT INTO `pigcms_weather` VALUES ('1700', '101250301', '株洲');
INSERT INTO `pigcms_weather` VALUES ('1701', '101250302', '攸县');
INSERT INTO `pigcms_weather` VALUES ('1702', '101250303', '醴陵');
INSERT INTO `pigcms_weather` VALUES ('1703', '101250305', '茶陵');
INSERT INTO `pigcms_weather` VALUES ('1704', '101250306', '炎陵');
INSERT INTO `pigcms_weather` VALUES ('1705', '101250401', '衡阳');
INSERT INTO `pigcms_weather` VALUES ('1706', '101250402', '衡山');
INSERT INTO `pigcms_weather` VALUES ('1707', '101250403', '衡东');
INSERT INTO `pigcms_weather` VALUES ('1708', '101250404', '祁东');
INSERT INTO `pigcms_weather` VALUES ('1709', '101250406', '常宁');
INSERT INTO `pigcms_weather` VALUES ('1710', '101250407', '衡南');
INSERT INTO `pigcms_weather` VALUES ('1711', '101250408', '耒阳');
INSERT INTO `pigcms_weather` VALUES ('1712', '101250501', '郴州');
INSERT INTO `pigcms_weather` VALUES ('1713', '101250502', '桂阳');
INSERT INTO `pigcms_weather` VALUES ('1714', '101250503', '嘉禾');
INSERT INTO `pigcms_weather` VALUES ('1715', '101250504', '宜章');
INSERT INTO `pigcms_weather` VALUES ('1716', '101250505', '临武');
INSERT INTO `pigcms_weather` VALUES ('1717', '101250507', '资兴');
INSERT INTO `pigcms_weather` VALUES ('1718', '101250508', '汝城');
INSERT INTO `pigcms_weather` VALUES ('1719', '101250509', '安仁');
INSERT INTO `pigcms_weather` VALUES ('1720', '101250510', '永兴');
INSERT INTO `pigcms_weather` VALUES ('1721', '101250511', '桂东');
INSERT INTO `pigcms_weather` VALUES ('1722', '101250512', '苏仙');
INSERT INTO `pigcms_weather` VALUES ('1723', '101250601', '常德');
INSERT INTO `pigcms_weather` VALUES ('1724', '101250602', '安乡');
INSERT INTO `pigcms_weather` VALUES ('1725', '101250603', '桃源');
INSERT INTO `pigcms_weather` VALUES ('1726', '101250604', '汉寿');
INSERT INTO `pigcms_weather` VALUES ('1727', '101250605', '澧县');
INSERT INTO `pigcms_weather` VALUES ('1728', '101250606', '临澧');
INSERT INTO `pigcms_weather` VALUES ('1729', '101250607', '石门');
INSERT INTO `pigcms_weather` VALUES ('1730', '101250608', '津市');
INSERT INTO `pigcms_weather` VALUES ('1731', '101250700', '益阳');
INSERT INTO `pigcms_weather` VALUES ('1732', '101250702', '南县');
INSERT INTO `pigcms_weather` VALUES ('1733', '101250703', '桃江');
INSERT INTO `pigcms_weather` VALUES ('1734', '101250704', '安化');
INSERT INTO `pigcms_weather` VALUES ('1735', '101250705', '沅江');
INSERT INTO `pigcms_weather` VALUES ('1736', '101250801', '娄底');
INSERT INTO `pigcms_weather` VALUES ('1737', '101250802', '双峰');
INSERT INTO `pigcms_weather` VALUES ('1738', '101250803', '冷水江');
INSERT INTO `pigcms_weather` VALUES ('1739', '101250805', '新化');
INSERT INTO `pigcms_weather` VALUES ('1740', '101250806', '涟源');
INSERT INTO `pigcms_weather` VALUES ('1741', '101250901', '邵阳');
INSERT INTO `pigcms_weather` VALUES ('1742', '101250902', '隆回');
INSERT INTO `pigcms_weather` VALUES ('1743', '101250903', '洞口');
INSERT INTO `pigcms_weather` VALUES ('1744', '101250904', '新邵');
INSERT INTO `pigcms_weather` VALUES ('1745', '101250905', '邵东');
INSERT INTO `pigcms_weather` VALUES ('1746', '101250906', '绥宁');
INSERT INTO `pigcms_weather` VALUES ('1747', '101250907', '新宁');
INSERT INTO `pigcms_weather` VALUES ('1748', '101250908', '武冈');
INSERT INTO `pigcms_weather` VALUES ('1749', '101250909', '城步');
INSERT INTO `pigcms_weather` VALUES ('1750', '101251001', '岳阳');
INSERT INTO `pigcms_weather` VALUES ('1751', '101251002', '华容');
INSERT INTO `pigcms_weather` VALUES ('1752', '101251003', '湘阴');
INSERT INTO `pigcms_weather` VALUES ('1753', '101251004', '汨罗');
INSERT INTO `pigcms_weather` VALUES ('1754', '101251005', '平江');
INSERT INTO `pigcms_weather` VALUES ('1755', '101251006', '临湘');
INSERT INTO `pigcms_weather` VALUES ('1756', '101251101', '张家界');
INSERT INTO `pigcms_weather` VALUES ('1757', '101251102', '桑植');
INSERT INTO `pigcms_weather` VALUES ('1758', '101251103', '慈利');
INSERT INTO `pigcms_weather` VALUES ('1759', '101251104', '武陵源');
INSERT INTO `pigcms_weather` VALUES ('1760', '101251201', '怀化');
INSERT INTO `pigcms_weather` VALUES ('1761', '101251203', '沅陵');
INSERT INTO `pigcms_weather` VALUES ('1762', '101251204', '辰溪');
INSERT INTO `pigcms_weather` VALUES ('1763', '101251205', '靖州');
INSERT INTO `pigcms_weather` VALUES ('1764', '101251206', '会同');
INSERT INTO `pigcms_weather` VALUES ('1765', '101251207', '通道');
INSERT INTO `pigcms_weather` VALUES ('1766', '101251208', '麻阳');
INSERT INTO `pigcms_weather` VALUES ('1767', '101251209', '新晃');
INSERT INTO `pigcms_weather` VALUES ('1768', '101251210', '芷江');
INSERT INTO `pigcms_weather` VALUES ('1769', '101251211', '溆浦');
INSERT INTO `pigcms_weather` VALUES ('1770', '101251212', '中方');
INSERT INTO `pigcms_weather` VALUES ('1771', '101251213', '洪江');
INSERT INTO `pigcms_weather` VALUES ('1772', '101251401', '永州');
INSERT INTO `pigcms_weather` VALUES ('1773', '101251402', '祁阳');
INSERT INTO `pigcms_weather` VALUES ('1774', '101251403', '东安');
INSERT INTO `pigcms_weather` VALUES ('1775', '101251404', '双牌');
INSERT INTO `pigcms_weather` VALUES ('1776', '101251405', '道县');
INSERT INTO `pigcms_weather` VALUES ('1777', '101251406', '宁远');
INSERT INTO `pigcms_weather` VALUES ('1778', '101251407', '江永');
INSERT INTO `pigcms_weather` VALUES ('1779', '101251408', '蓝山');
INSERT INTO `pigcms_weather` VALUES ('1780', '101251409', '新田');
INSERT INTO `pigcms_weather` VALUES ('1781', '101251410', '江华');
INSERT INTO `pigcms_weather` VALUES ('1782', '101251501', '吉首');
INSERT INTO `pigcms_weather` VALUES ('1783', '101251502', '保靖');
INSERT INTO `pigcms_weather` VALUES ('1784', '101251503', '永顺');
INSERT INTO `pigcms_weather` VALUES ('1785', '101251504', '古丈');
INSERT INTO `pigcms_weather` VALUES ('1786', '101251505', '凤凰');
INSERT INTO `pigcms_weather` VALUES ('1787', '101251506', '泸溪');
INSERT INTO `pigcms_weather` VALUES ('1788', '101251507', '龙山');
INSERT INTO `pigcms_weather` VALUES ('1789', '101251508', '花垣');
INSERT INTO `pigcms_weather` VALUES ('1790', '101260101', '贵阳');
INSERT INTO `pigcms_weather` VALUES ('1791', '101260102', '白云');
INSERT INTO `pigcms_weather` VALUES ('1792', '101260103', '花溪');
INSERT INTO `pigcms_weather` VALUES ('1793', '101260104', '乌当');
INSERT INTO `pigcms_weather` VALUES ('1794', '101260105', '息烽');
INSERT INTO `pigcms_weather` VALUES ('1795', '101260106', '开阳');
INSERT INTO `pigcms_weather` VALUES ('1796', '101260107', '修文');
INSERT INTO `pigcms_weather` VALUES ('1797', '101260108', '清镇');
INSERT INTO `pigcms_weather` VALUES ('1798', '101260109', '小河');
INSERT INTO `pigcms_weather` VALUES ('1799', '101260110', '云岩');
INSERT INTO `pigcms_weather` VALUES ('1800', '101260111', '南明');
INSERT INTO `pigcms_weather` VALUES ('1801', '101260201', '遵义');
INSERT INTO `pigcms_weather` VALUES ('1802', '101260203', '仁怀');
INSERT INTO `pigcms_weather` VALUES ('1803', '101260204', '绥阳');
INSERT INTO `pigcms_weather` VALUES ('1804', '101260205', '湄潭');
INSERT INTO `pigcms_weather` VALUES ('1805', '101260206', '凤冈');
INSERT INTO `pigcms_weather` VALUES ('1806', '101260207', '桐梓');
INSERT INTO `pigcms_weather` VALUES ('1807', '101260208', '赤水');
INSERT INTO `pigcms_weather` VALUES ('1808', '101260209', '习水');
INSERT INTO `pigcms_weather` VALUES ('1809', '101260210', '道真');
INSERT INTO `pigcms_weather` VALUES ('1810', '101260211', '正安');
INSERT INTO `pigcms_weather` VALUES ('1811', '101260212', '务川');
INSERT INTO `pigcms_weather` VALUES ('1812', '101260213', '余庆');
INSERT INTO `pigcms_weather` VALUES ('1813', '101260214', '汇川');
INSERT INTO `pigcms_weather` VALUES ('1814', '101260215', '红花岗');
INSERT INTO `pigcms_weather` VALUES ('1815', '101260301', '安顺');
INSERT INTO `pigcms_weather` VALUES ('1816', '101260302', '普定');
INSERT INTO `pigcms_weather` VALUES ('1817', '101260303', '镇宁');
INSERT INTO `pigcms_weather` VALUES ('1818', '101260304', '平坝');
INSERT INTO `pigcms_weather` VALUES ('1819', '101260305', '紫云');
INSERT INTO `pigcms_weather` VALUES ('1820', '101260306', '关岭');
INSERT INTO `pigcms_weather` VALUES ('1821', '101260401', '都匀');
INSERT INTO `pigcms_weather` VALUES ('1822', '101260402', '贵定');
INSERT INTO `pigcms_weather` VALUES ('1823', '101260403', '瓮安');
INSERT INTO `pigcms_weather` VALUES ('1824', '101260404', '长顺');
INSERT INTO `pigcms_weather` VALUES ('1825', '101260405', '福泉');
INSERT INTO `pigcms_weather` VALUES ('1826', '101260406', '惠水');
INSERT INTO `pigcms_weather` VALUES ('1827', '101260407', '龙里');
INSERT INTO `pigcms_weather` VALUES ('1828', '101260408', '罗甸');
INSERT INTO `pigcms_weather` VALUES ('1829', '101260409', '平塘');
INSERT INTO `pigcms_weather` VALUES ('1830', '101260410', '独山');
INSERT INTO `pigcms_weather` VALUES ('1831', '101260411', '三都');
INSERT INTO `pigcms_weather` VALUES ('1832', '101260412', '荔波');
INSERT INTO `pigcms_weather` VALUES ('1833', '101260501', '凯里');
INSERT INTO `pigcms_weather` VALUES ('1834', '101260502', '岑巩');
INSERT INTO `pigcms_weather` VALUES ('1835', '101260503', '施秉');
INSERT INTO `pigcms_weather` VALUES ('1836', '101260504', '镇远');
INSERT INTO `pigcms_weather` VALUES ('1837', '101260505', '黄平');
INSERT INTO `pigcms_weather` VALUES ('1838', '101260507', '麻江');
INSERT INTO `pigcms_weather` VALUES ('1839', '101260508', '丹寨');
INSERT INTO `pigcms_weather` VALUES ('1840', '101260509', '三穗');
INSERT INTO `pigcms_weather` VALUES ('1841', '101260510', '台江');
INSERT INTO `pigcms_weather` VALUES ('1842', '101260511', '剑河');
INSERT INTO `pigcms_weather` VALUES ('1843', '101260512', '雷山');
INSERT INTO `pigcms_weather` VALUES ('1844', '101260513', '黎平');
INSERT INTO `pigcms_weather` VALUES ('1845', '101260514', '天柱');
INSERT INTO `pigcms_weather` VALUES ('1846', '101260515', '锦屏');
INSERT INTO `pigcms_weather` VALUES ('1847', '101260516', '榕江');
INSERT INTO `pigcms_weather` VALUES ('1848', '101260517', '从江');
INSERT INTO `pigcms_weather` VALUES ('1849', '101260601', '铜仁');
INSERT INTO `pigcms_weather` VALUES ('1850', '101260602', '江口');
INSERT INTO `pigcms_weather` VALUES ('1851', '101260603', '玉屏');
INSERT INTO `pigcms_weather` VALUES ('1852', '101260604', '万山特');
INSERT INTO `pigcms_weather` VALUES ('1853', '101260605', '思南');
INSERT INTO `pigcms_weather` VALUES ('1854', '101260607', '印江');
INSERT INTO `pigcms_weather` VALUES ('1855', '101260608', '石阡');
INSERT INTO `pigcms_weather` VALUES ('1856', '101260609', '沿河');
INSERT INTO `pigcms_weather` VALUES ('1857', '101260610', '德江');
INSERT INTO `pigcms_weather` VALUES ('1858', '101260611', '松桃');
INSERT INTO `pigcms_weather` VALUES ('1859', '101260701', '毕节');
INSERT INTO `pigcms_weather` VALUES ('1860', '101260702', '赫章');
INSERT INTO `pigcms_weather` VALUES ('1861', '101260703', '金沙');
INSERT INTO `pigcms_weather` VALUES ('1862', '101260704', '威宁');
INSERT INTO `pigcms_weather` VALUES ('1863', '101260705', '大方');
INSERT INTO `pigcms_weather` VALUES ('1864', '101260706', '纳雍');
INSERT INTO `pigcms_weather` VALUES ('1865', '101260707', '织金');
INSERT INTO `pigcms_weather` VALUES ('1866', '101260708', '黔西');
INSERT INTO `pigcms_weather` VALUES ('1867', '101260801', '水城');
INSERT INTO `pigcms_weather` VALUES ('1868', '101260802', '六枝特');
INSERT INTO `pigcms_weather` VALUES ('1869', '101260804', '盘县');
INSERT INTO `pigcms_weather` VALUES ('1870', '101260901', '兴义');
INSERT INTO `pigcms_weather` VALUES ('1871', '101260902', '晴隆');
INSERT INTO `pigcms_weather` VALUES ('1872', '101260903', '兴仁');
INSERT INTO `pigcms_weather` VALUES ('1873', '101260904', '贞丰');
INSERT INTO `pigcms_weather` VALUES ('1874', '101260905', '望谟');
INSERT INTO `pigcms_weather` VALUES ('1875', '101260907', '安龙');
INSERT INTO `pigcms_weather` VALUES ('1876', '101260908', '册亨');
INSERT INTO `pigcms_weather` VALUES ('1877', '101260909', '普安');
INSERT INTO `pigcms_weather` VALUES ('1878', '101270101', '成都');
INSERT INTO `pigcms_weather` VALUES ('1879', '101270103', '新都');
INSERT INTO `pigcms_weather` VALUES ('1880', '101270104', '温江');
INSERT INTO `pigcms_weather` VALUES ('1881', '101270105', '金堂');
INSERT INTO `pigcms_weather` VALUES ('1882', '101270106', '双流');
INSERT INTO `pigcms_weather` VALUES ('1883', '101270107', '郫县');
INSERT INTO `pigcms_weather` VALUES ('1884', '101270108', '大邑');
INSERT INTO `pigcms_weather` VALUES ('1885', '101270109', '蒲江');
INSERT INTO `pigcms_weather` VALUES ('1886', '101270110', '新津');
INSERT INTO `pigcms_weather` VALUES ('1887', '101270111', '都江堰');
INSERT INTO `pigcms_weather` VALUES ('1888', '101270112', '彭州');
INSERT INTO `pigcms_weather` VALUES ('1889', '101270113', '邛崃');
INSERT INTO `pigcms_weather` VALUES ('1890', '101270114', '崇州');
INSERT INTO `pigcms_weather` VALUES ('1891', '101270201', '攀枝花');
INSERT INTO `pigcms_weather` VALUES ('1892', '101270203', '米易');
INSERT INTO `pigcms_weather` VALUES ('1893', '101270204', '盐边');
INSERT INTO `pigcms_weather` VALUES ('1894', '101270301', '自贡');
INSERT INTO `pigcms_weather` VALUES ('1895', '101270302', '富顺');
INSERT INTO `pigcms_weather` VALUES ('1896', '101270303', '荣县');
INSERT INTO `pigcms_weather` VALUES ('1897', '101270401', '绵阳');
INSERT INTO `pigcms_weather` VALUES ('1898', '101270402', '三台');
INSERT INTO `pigcms_weather` VALUES ('1899', '101270403', '盐亭');
INSERT INTO `pigcms_weather` VALUES ('1900', '101270404', '安县');
INSERT INTO `pigcms_weather` VALUES ('1901', '101270405', '梓潼');
INSERT INTO `pigcms_weather` VALUES ('1902', '101270406', '北川');
INSERT INTO `pigcms_weather` VALUES ('1903', '101270407', '平武');
INSERT INTO `pigcms_weather` VALUES ('1904', '101270408', '江油');
INSERT INTO `pigcms_weather` VALUES ('1905', '101270501', '南充');
INSERT INTO `pigcms_weather` VALUES ('1906', '101270502', '南部');
INSERT INTO `pigcms_weather` VALUES ('1907', '101270503', '营山');
INSERT INTO `pigcms_weather` VALUES ('1908', '101270504', '蓬安');
INSERT INTO `pigcms_weather` VALUES ('1909', '101270505', '仪陇');
INSERT INTO `pigcms_weather` VALUES ('1910', '101270506', '西充');
INSERT INTO `pigcms_weather` VALUES ('1911', '101270507', '阆中');
INSERT INTO `pigcms_weather` VALUES ('1912', '101270601', '达州');
INSERT INTO `pigcms_weather` VALUES ('1913', '101270602', '宣汉');
INSERT INTO `pigcms_weather` VALUES ('1914', '101270603', '开江');
INSERT INTO `pigcms_weather` VALUES ('1915', '101270604', '大竹');
INSERT INTO `pigcms_weather` VALUES ('1916', '101270605', '渠县');
INSERT INTO `pigcms_weather` VALUES ('1917', '101270606', '万源');
INSERT INTO `pigcms_weather` VALUES ('1918', '101270608', '达县');
INSERT INTO `pigcms_weather` VALUES ('1919', '101270701', '遂宁');
INSERT INTO `pigcms_weather` VALUES ('1920', '101270702', '蓬溪');
INSERT INTO `pigcms_weather` VALUES ('1921', '101270703', '射洪');
INSERT INTO `pigcms_weather` VALUES ('1922', '101270801', '广安');
INSERT INTO `pigcms_weather` VALUES ('1923', '101270802', '岳池');
INSERT INTO `pigcms_weather` VALUES ('1924', '101270803', '武胜');
INSERT INTO `pigcms_weather` VALUES ('1925', '101270804', '邻水');
INSERT INTO `pigcms_weather` VALUES ('1926', '101270805', '华蓥');
INSERT INTO `pigcms_weather` VALUES ('1927', '101270901', '巴中');
INSERT INTO `pigcms_weather` VALUES ('1928', '101270902', '通江');
INSERT INTO `pigcms_weather` VALUES ('1929', '101270903', '南江');
INSERT INTO `pigcms_weather` VALUES ('1930', '101270904', '平昌');
INSERT INTO `pigcms_weather` VALUES ('1931', '101271001', '泸州');
INSERT INTO `pigcms_weather` VALUES ('1932', '101271003', '泸县');
INSERT INTO `pigcms_weather` VALUES ('1933', '101271004', '合江');
INSERT INTO `pigcms_weather` VALUES ('1934', '101271005', '叙永');
INSERT INTO `pigcms_weather` VALUES ('1935', '101271006', '古蔺');
INSERT INTO `pigcms_weather` VALUES ('1936', '101271101', '宜宾');
INSERT INTO `pigcms_weather` VALUES ('1937', '101271104', '南溪');
INSERT INTO `pigcms_weather` VALUES ('1938', '101271105', '江安');
INSERT INTO `pigcms_weather` VALUES ('1939', '101271106', '长宁');
INSERT INTO `pigcms_weather` VALUES ('1940', '101271107', '高县');
INSERT INTO `pigcms_weather` VALUES ('1941', '101271108', '珙县');
INSERT INTO `pigcms_weather` VALUES ('1942', '101271109', '筠连');
INSERT INTO `pigcms_weather` VALUES ('1943', '101271110', '兴文');
INSERT INTO `pigcms_weather` VALUES ('1944', '101271111', '屏山');
INSERT INTO `pigcms_weather` VALUES ('1945', '101271201', '内江');
INSERT INTO `pigcms_weather` VALUES ('1946', '101271203', '威远');
INSERT INTO `pigcms_weather` VALUES ('1947', '101271204', '资中');
INSERT INTO `pigcms_weather` VALUES ('1948', '101271205', '隆昌');
INSERT INTO `pigcms_weather` VALUES ('1949', '101271301', '资阳');
INSERT INTO `pigcms_weather` VALUES ('1950', '101271302', '安岳');
INSERT INTO `pigcms_weather` VALUES ('1951', '101271303', '乐至');
INSERT INTO `pigcms_weather` VALUES ('1952', '101271304', '简阳');
INSERT INTO `pigcms_weather` VALUES ('1953', '101271401', '乐山');
INSERT INTO `pigcms_weather` VALUES ('1954', '101271402', '犍为');
INSERT INTO `pigcms_weather` VALUES ('1955', '101271403', '井研');
INSERT INTO `pigcms_weather` VALUES ('1956', '101271404', '夹江');
INSERT INTO `pigcms_weather` VALUES ('1957', '101271405', '沐川');
INSERT INTO `pigcms_weather` VALUES ('1958', '101271406', '峨边');
INSERT INTO `pigcms_weather` VALUES ('1959', '101271407', '马边');
INSERT INTO `pigcms_weather` VALUES ('1960', '101271409', '峨眉山');
INSERT INTO `pigcms_weather` VALUES ('1961', '101271501', '眉山');
INSERT INTO `pigcms_weather` VALUES ('1962', '101271502', '仁寿');
INSERT INTO `pigcms_weather` VALUES ('1963', '101271503', '彭山');
INSERT INTO `pigcms_weather` VALUES ('1964', '101271504', '洪雅');
INSERT INTO `pigcms_weather` VALUES ('1965', '101271505', '丹棱');
INSERT INTO `pigcms_weather` VALUES ('1966', '101271506', '青神');
INSERT INTO `pigcms_weather` VALUES ('1967', '101271601', '凉山');
INSERT INTO `pigcms_weather` VALUES ('1968', '101271603', '木里');
INSERT INTO `pigcms_weather` VALUES ('1969', '101271604', '盐源');
INSERT INTO `pigcms_weather` VALUES ('1970', '101271605', '德昌');
INSERT INTO `pigcms_weather` VALUES ('1971', '101271606', '会理');
INSERT INTO `pigcms_weather` VALUES ('1972', '101271607', '会东');
INSERT INTO `pigcms_weather` VALUES ('1973', '101271608', '宁南');
INSERT INTO `pigcms_weather` VALUES ('1974', '101271609', '普格');
INSERT INTO `pigcms_weather` VALUES ('1975', '101271610', '西昌');
INSERT INTO `pigcms_weather` VALUES ('1976', '101271611', '金阳');
INSERT INTO `pigcms_weather` VALUES ('1977', '101271612', '昭觉');
INSERT INTO `pigcms_weather` VALUES ('1978', '101271613', '喜德');
INSERT INTO `pigcms_weather` VALUES ('1979', '101271614', '冕宁');
INSERT INTO `pigcms_weather` VALUES ('1980', '101271615', '越西');
INSERT INTO `pigcms_weather` VALUES ('1981', '101271616', '甘洛');
INSERT INTO `pigcms_weather` VALUES ('1982', '101271617', '雷波');
INSERT INTO `pigcms_weather` VALUES ('1983', '101271618', '美姑');
INSERT INTO `pigcms_weather` VALUES ('1984', '101271619', '布拖');
INSERT INTO `pigcms_weather` VALUES ('1985', '101271701', '雅安');
INSERT INTO `pigcms_weather` VALUES ('1986', '101271702', '名山');
INSERT INTO `pigcms_weather` VALUES ('1987', '101271703', '荥经');
INSERT INTO `pigcms_weather` VALUES ('1988', '101271704', '汉源');
INSERT INTO `pigcms_weather` VALUES ('1989', '101271705', '石棉');
INSERT INTO `pigcms_weather` VALUES ('1990', '101271706', '天全');
INSERT INTO `pigcms_weather` VALUES ('1991', '101271707', '芦山');
INSERT INTO `pigcms_weather` VALUES ('1992', '101271708', '宝兴');
INSERT INTO `pigcms_weather` VALUES ('1993', '101271801', '甘孜');
INSERT INTO `pigcms_weather` VALUES ('1994', '101271802', '康定');
INSERT INTO `pigcms_weather` VALUES ('1995', '101271803', '泸定');
INSERT INTO `pigcms_weather` VALUES ('1996', '101271804', '丹巴');
INSERT INTO `pigcms_weather` VALUES ('1997', '101271805', '九龙');
INSERT INTO `pigcms_weather` VALUES ('1998', '101271806', '雅江');
INSERT INTO `pigcms_weather` VALUES ('1999', '101271807', '道孚');
INSERT INTO `pigcms_weather` VALUES ('2000', '101271808', '炉霍');
INSERT INTO `pigcms_weather` VALUES ('2001', '101271809', '新龙');
INSERT INTO `pigcms_weather` VALUES ('2002', '101271810', '德格');
INSERT INTO `pigcms_weather` VALUES ('2003', '101271811', '白玉');
INSERT INTO `pigcms_weather` VALUES ('2004', '101271812', '石渠');
INSERT INTO `pigcms_weather` VALUES ('2005', '101271813', '色达');
INSERT INTO `pigcms_weather` VALUES ('2006', '101271814', '理塘');
INSERT INTO `pigcms_weather` VALUES ('2007', '101271815', '巴塘');
INSERT INTO `pigcms_weather` VALUES ('2008', '101271816', '乡城');
INSERT INTO `pigcms_weather` VALUES ('2009', '101271817', '稻城');
INSERT INTO `pigcms_weather` VALUES ('2010', '101271818', '得荣');
INSERT INTO `pigcms_weather` VALUES ('2011', '101271901', '阿坝');
INSERT INTO `pigcms_weather` VALUES ('2012', '101271902', '汶川');
INSERT INTO `pigcms_weather` VALUES ('2013', '101271903', '理县');
INSERT INTO `pigcms_weather` VALUES ('2014', '101271904', '茂县');
INSERT INTO `pigcms_weather` VALUES ('2015', '101271905', '松潘');
INSERT INTO `pigcms_weather` VALUES ('2016', '101271906', '九寨沟');
INSERT INTO `pigcms_weather` VALUES ('2017', '101271907', '金川');
INSERT INTO `pigcms_weather` VALUES ('2018', '101271908', '小金');
INSERT INTO `pigcms_weather` VALUES ('2019', '101271909', '黑水');
INSERT INTO `pigcms_weather` VALUES ('2020', '101271910', '马尔康');
INSERT INTO `pigcms_weather` VALUES ('2021', '101271911', '壤塘');
INSERT INTO `pigcms_weather` VALUES ('2022', '101271912', '若尔盖');
INSERT INTO `pigcms_weather` VALUES ('2023', '101271913', '红原');
INSERT INTO `pigcms_weather` VALUES ('2024', '101272001', '德阳');
INSERT INTO `pigcms_weather` VALUES ('2025', '101272002', '中江');
INSERT INTO `pigcms_weather` VALUES ('2026', '101272003', '广汉');
INSERT INTO `pigcms_weather` VALUES ('2027', '101272004', '什邡');
INSERT INTO `pigcms_weather` VALUES ('2028', '101272005', '绵竹');
INSERT INTO `pigcms_weather` VALUES ('2029', '101272006', '罗江');
INSERT INTO `pigcms_weather` VALUES ('2030', '101272101', '广元');
INSERT INTO `pigcms_weather` VALUES ('2031', '101272102', '旺苍');
INSERT INTO `pigcms_weather` VALUES ('2032', '101272103', '青川');
INSERT INTO `pigcms_weather` VALUES ('2033', '101272104', '剑阁');
INSERT INTO `pigcms_weather` VALUES ('2034', '101272105', '苍溪');
INSERT INTO `pigcms_weather` VALUES ('2035', '101280101', '广州');
INSERT INTO `pigcms_weather` VALUES ('2036', '101280102', '番禺');
INSERT INTO `pigcms_weather` VALUES ('2037', '101280103', '从化');
INSERT INTO `pigcms_weather` VALUES ('2038', '101280104', '增城');
INSERT INTO `pigcms_weather` VALUES ('2039', '101280105', '花都');
INSERT INTO `pigcms_weather` VALUES ('2040', '101280201', '韶关');
INSERT INTO `pigcms_weather` VALUES ('2041', '101280202', '乳源');
INSERT INTO `pigcms_weather` VALUES ('2042', '101280203', '始兴');
INSERT INTO `pigcms_weather` VALUES ('2043', '101280204', '翁源');
INSERT INTO `pigcms_weather` VALUES ('2044', '101280205', '乐昌');
INSERT INTO `pigcms_weather` VALUES ('2045', '101280206', '仁化');
INSERT INTO `pigcms_weather` VALUES ('2046', '101280207', '南雄');
INSERT INTO `pigcms_weather` VALUES ('2047', '101280208', '新丰');
INSERT INTO `pigcms_weather` VALUES ('2048', '101280209', '曲江');
INSERT INTO `pigcms_weather` VALUES ('2049', '101280210', '浈江');
INSERT INTO `pigcms_weather` VALUES ('2050', '101280211', '武江');
INSERT INTO `pigcms_weather` VALUES ('2051', '101280301', '惠州');
INSERT INTO `pigcms_weather` VALUES ('2052', '101280302', '博罗');
INSERT INTO `pigcms_weather` VALUES ('2053', '101280303', '惠阳');
INSERT INTO `pigcms_weather` VALUES ('2054', '101280304', '惠东');
INSERT INTO `pigcms_weather` VALUES ('2055', '101280305', '龙门');
INSERT INTO `pigcms_weather` VALUES ('2056', '101280401', '梅州');
INSERT INTO `pigcms_weather` VALUES ('2057', '101280402', '兴宁');
INSERT INTO `pigcms_weather` VALUES ('2058', '101280403', '蕉岭');
INSERT INTO `pigcms_weather` VALUES ('2059', '101280404', '大埔');
INSERT INTO `pigcms_weather` VALUES ('2060', '101280406', '丰顺');
INSERT INTO `pigcms_weather` VALUES ('2061', '101280407', '平远');
INSERT INTO `pigcms_weather` VALUES ('2062', '101280408', '五华');
INSERT INTO `pigcms_weather` VALUES ('2063', '101280409', '梅县');
INSERT INTO `pigcms_weather` VALUES ('2064', '101280501', '汕头');
INSERT INTO `pigcms_weather` VALUES ('2065', '101280502', '潮阳');
INSERT INTO `pigcms_weather` VALUES ('2066', '101280503', '澄海');
INSERT INTO `pigcms_weather` VALUES ('2067', '101280504', '南澳');
INSERT INTO `pigcms_weather` VALUES ('2068', '101280601', '深圳');
INSERT INTO `pigcms_weather` VALUES ('2069', '101280701', '珠海');
INSERT INTO `pigcms_weather` VALUES ('2070', '101280702', '斗门');
INSERT INTO `pigcms_weather` VALUES ('2071', '101280703', '金湾');
INSERT INTO `pigcms_weather` VALUES ('2072', '101280800', '佛山');
INSERT INTO `pigcms_weather` VALUES ('2073', '101280801', '顺德');
INSERT INTO `pigcms_weather` VALUES ('2074', '101280802', '三水');
INSERT INTO `pigcms_weather` VALUES ('2075', '101280803', '南海');
INSERT INTO `pigcms_weather` VALUES ('2076', '101280804', '高明');
INSERT INTO `pigcms_weather` VALUES ('2077', '101280901', '肇庆');
INSERT INTO `pigcms_weather` VALUES ('2078', '101280902', '广宁');
INSERT INTO `pigcms_weather` VALUES ('2079', '101280903', '四会');
INSERT INTO `pigcms_weather` VALUES ('2080', '101280905', '德庆');
INSERT INTO `pigcms_weather` VALUES ('2081', '101280906', '怀集');
INSERT INTO `pigcms_weather` VALUES ('2082', '101280907', '封开');
INSERT INTO `pigcms_weather` VALUES ('2083', '101280908', '高要');
INSERT INTO `pigcms_weather` VALUES ('2084', '101281001', '湛江');
INSERT INTO `pigcms_weather` VALUES ('2085', '101281002', '吴川');
INSERT INTO `pigcms_weather` VALUES ('2086', '101281003', '雷州');
INSERT INTO `pigcms_weather` VALUES ('2087', '101281004', '徐闻');
INSERT INTO `pigcms_weather` VALUES ('2088', '101281005', '廉江');
INSERT INTO `pigcms_weather` VALUES ('2089', '101281006', '赤坎');
INSERT INTO `pigcms_weather` VALUES ('2090', '101281007', '遂溪');
INSERT INTO `pigcms_weather` VALUES ('2091', '101281008', '坡头');
INSERT INTO `pigcms_weather` VALUES ('2092', '101281009', '霞山');
INSERT INTO `pigcms_weather` VALUES ('2093', '101281010', '麻章');
INSERT INTO `pigcms_weather` VALUES ('2094', '101281101', '江门');
INSERT INTO `pigcms_weather` VALUES ('2095', '101281103', '开平');
INSERT INTO `pigcms_weather` VALUES ('2096', '101281104', '新会');
INSERT INTO `pigcms_weather` VALUES ('2097', '101281105', '恩平');
INSERT INTO `pigcms_weather` VALUES ('2098', '101281106', '台山');
INSERT INTO `pigcms_weather` VALUES ('2099', '101281108', '鹤山');
INSERT INTO `pigcms_weather` VALUES ('2100', '101281109', '江海');
INSERT INTO `pigcms_weather` VALUES ('2101', '101281201', '河源');
INSERT INTO `pigcms_weather` VALUES ('2102', '101281202', '紫金');
INSERT INTO `pigcms_weather` VALUES ('2103', '101281203', '连平');
INSERT INTO `pigcms_weather` VALUES ('2104', '101281204', '和平');
INSERT INTO `pigcms_weather` VALUES ('2105', '101281205', '龙川');
INSERT INTO `pigcms_weather` VALUES ('2106', '101281206', '东源');
INSERT INTO `pigcms_weather` VALUES ('2107', '101281301', '清远');
INSERT INTO `pigcms_weather` VALUES ('2108', '101281302', '连南');
INSERT INTO `pigcms_weather` VALUES ('2109', '101281303', '连州');
INSERT INTO `pigcms_weather` VALUES ('2110', '101281304', '连山');
INSERT INTO `pigcms_weather` VALUES ('2111', '101281305', '阳山');
INSERT INTO `pigcms_weather` VALUES ('2112', '101281306', '佛冈');
INSERT INTO `pigcms_weather` VALUES ('2113', '101281307', '英德');
INSERT INTO `pigcms_weather` VALUES ('2114', '101281308', '清新');
INSERT INTO `pigcms_weather` VALUES ('2115', '101281401', '云浮');
INSERT INTO `pigcms_weather` VALUES ('2116', '101281402', '罗定');
INSERT INTO `pigcms_weather` VALUES ('2117', '101281403', '新兴');
INSERT INTO `pigcms_weather` VALUES ('2118', '101281404', '郁南');
INSERT INTO `pigcms_weather` VALUES ('2119', '101281406', '云安');
INSERT INTO `pigcms_weather` VALUES ('2120', '101281501', '潮州');
INSERT INTO `pigcms_weather` VALUES ('2121', '101281502', '饶平');
INSERT INTO `pigcms_weather` VALUES ('2122', '101281503', '潮安');
INSERT INTO `pigcms_weather` VALUES ('2123', '101281601', '东莞');
INSERT INTO `pigcms_weather` VALUES ('2124', '101281701', '中山');
INSERT INTO `pigcms_weather` VALUES ('2125', '101281801', '阳江');
INSERT INTO `pigcms_weather` VALUES ('2126', '101281802', '阳春');
INSERT INTO `pigcms_weather` VALUES ('2127', '101281803', '阳东');
INSERT INTO `pigcms_weather` VALUES ('2128', '101281804', '阳西');
INSERT INTO `pigcms_weather` VALUES ('2129', '101281901', '揭阳');
INSERT INTO `pigcms_weather` VALUES ('2130', '101281902', '揭西');
INSERT INTO `pigcms_weather` VALUES ('2131', '101281903', '普宁');
INSERT INTO `pigcms_weather` VALUES ('2132', '101281904', '惠来');
INSERT INTO `pigcms_weather` VALUES ('2133', '101281905', '揭东');
INSERT INTO `pigcms_weather` VALUES ('2134', '101282001', '茂名');
INSERT INTO `pigcms_weather` VALUES ('2135', '101282002', '高州');
INSERT INTO `pigcms_weather` VALUES ('2136', '101282003', '化州');
INSERT INTO `pigcms_weather` VALUES ('2137', '101282004', '电白');
INSERT INTO `pigcms_weather` VALUES ('2138', '101282005', '信宜');
INSERT INTO `pigcms_weather` VALUES ('2139', '101282006', '茂港');
INSERT INTO `pigcms_weather` VALUES ('2140', '101282101', '汕尾');
INSERT INTO `pigcms_weather` VALUES ('2141', '101282102', '海丰');
INSERT INTO `pigcms_weather` VALUES ('2142', '101282103', '陆丰');
INSERT INTO `pigcms_weather` VALUES ('2143', '101282104', '陆河');
INSERT INTO `pigcms_weather` VALUES ('2144', '101290101', '昆明');
INSERT INTO `pigcms_weather` VALUES ('2145', '101290103', '东川');
INSERT INTO `pigcms_weather` VALUES ('2146', '101290104', '寻甸');
INSERT INTO `pigcms_weather` VALUES ('2147', '101290105', '晋宁');
INSERT INTO `pigcms_weather` VALUES ('2148', '101290106', '宜良');
INSERT INTO `pigcms_weather` VALUES ('2149', '101290107', '石林');
INSERT INTO `pigcms_weather` VALUES ('2150', '101290108', '呈贡');
INSERT INTO `pigcms_weather` VALUES ('2151', '101290109', '富民');
INSERT INTO `pigcms_weather` VALUES ('2152', '101290110', '嵩明');
INSERT INTO `pigcms_weather` VALUES ('2153', '101290111', '禄劝');
INSERT INTO `pigcms_weather` VALUES ('2154', '101290112', '安宁');
INSERT INTO `pigcms_weather` VALUES ('2155', '101290201', '大理');
INSERT INTO `pigcms_weather` VALUES ('2156', '101290202', '云龙');
INSERT INTO `pigcms_weather` VALUES ('2157', '101290203', '漾濞');
INSERT INTO `pigcms_weather` VALUES ('2158', '101290204', '永平');
INSERT INTO `pigcms_weather` VALUES ('2159', '101290205', '宾川');
INSERT INTO `pigcms_weather` VALUES ('2160', '101290206', '弥渡');
INSERT INTO `pigcms_weather` VALUES ('2161', '101290207', '祥云');
INSERT INTO `pigcms_weather` VALUES ('2162', '101290208', '巍山');
INSERT INTO `pigcms_weather` VALUES ('2163', '101290209', '剑川');
INSERT INTO `pigcms_weather` VALUES ('2164', '101290210', '洱源');
INSERT INTO `pigcms_weather` VALUES ('2165', '101290211', '鹤庆');
INSERT INTO `pigcms_weather` VALUES ('2166', '101290212', '南涧');
INSERT INTO `pigcms_weather` VALUES ('2167', '101290301', '红河');
INSERT INTO `pigcms_weather` VALUES ('2168', '101290302', '石屏');
INSERT INTO `pigcms_weather` VALUES ('2169', '101290303', '建水');
INSERT INTO `pigcms_weather` VALUES ('2170', '101290304', '弥勒');
INSERT INTO `pigcms_weather` VALUES ('2171', '101290305', '元阳');
INSERT INTO `pigcms_weather` VALUES ('2172', '101290306', '绿春');
INSERT INTO `pigcms_weather` VALUES ('2173', '101290307', '开远');
INSERT INTO `pigcms_weather` VALUES ('2174', '101290308', '个旧');
INSERT INTO `pigcms_weather` VALUES ('2175', '101290309', '蒙自');
INSERT INTO `pigcms_weather` VALUES ('2176', '101290310', '屏边');
INSERT INTO `pigcms_weather` VALUES ('2177', '101290311', '泸西');
INSERT INTO `pigcms_weather` VALUES ('2178', '101290312', '金平');
INSERT INTO `pigcms_weather` VALUES ('2179', '101290313', '河口');
INSERT INTO `pigcms_weather` VALUES ('2180', '101290401', '曲靖');
INSERT INTO `pigcms_weather` VALUES ('2181', '101290402', '沾益');
INSERT INTO `pigcms_weather` VALUES ('2182', '101290403', '陆良');
INSERT INTO `pigcms_weather` VALUES ('2183', '101290404', '富源');
INSERT INTO `pigcms_weather` VALUES ('2184', '101290405', '马龙');
INSERT INTO `pigcms_weather` VALUES ('2185', '101290406', '师宗');
INSERT INTO `pigcms_weather` VALUES ('2186', '101290407', '罗平');
INSERT INTO `pigcms_weather` VALUES ('2187', '101290408', '会泽');
INSERT INTO `pigcms_weather` VALUES ('2188', '101290409', '宣威');
INSERT INTO `pigcms_weather` VALUES ('2189', '101290501', '保山');
INSERT INTO `pigcms_weather` VALUES ('2190', '101290503', '龙陵');
INSERT INTO `pigcms_weather` VALUES ('2191', '101290504', '施甸');
INSERT INTO `pigcms_weather` VALUES ('2192', '101290505', '昌宁');
INSERT INTO `pigcms_weather` VALUES ('2193', '101290506', '腾冲');
INSERT INTO `pigcms_weather` VALUES ('2194', '101290601', '文山');
INSERT INTO `pigcms_weather` VALUES ('2195', '101290602', '西畴');
INSERT INTO `pigcms_weather` VALUES ('2196', '101290603', '马关');
INSERT INTO `pigcms_weather` VALUES ('2197', '101290604', '麻栗坡');
INSERT INTO `pigcms_weather` VALUES ('2198', '101290605', '砚山');
INSERT INTO `pigcms_weather` VALUES ('2199', '101290606', '丘北');
INSERT INTO `pigcms_weather` VALUES ('2200', '101290607', '广南');
INSERT INTO `pigcms_weather` VALUES ('2201', '101290608', '富宁');
INSERT INTO `pigcms_weather` VALUES ('2202', '101290701', '玉溪');
INSERT INTO `pigcms_weather` VALUES ('2203', '101290702', '澄江');
INSERT INTO `pigcms_weather` VALUES ('2204', '101290703', '江川');
INSERT INTO `pigcms_weather` VALUES ('2205', '101290704', '通海');
INSERT INTO `pigcms_weather` VALUES ('2206', '101290705', '华宁');
INSERT INTO `pigcms_weather` VALUES ('2207', '101290706', '新平');
INSERT INTO `pigcms_weather` VALUES ('2208', '101290707', '易门');
INSERT INTO `pigcms_weather` VALUES ('2209', '101290708', '峨山');
INSERT INTO `pigcms_weather` VALUES ('2210', '101290709', '元江');
INSERT INTO `pigcms_weather` VALUES ('2211', '101290801', '楚雄');
INSERT INTO `pigcms_weather` VALUES ('2212', '101290802', '大姚');
INSERT INTO `pigcms_weather` VALUES ('2213', '101290803', '元谋');
INSERT INTO `pigcms_weather` VALUES ('2214', '101290804', '姚安');
INSERT INTO `pigcms_weather` VALUES ('2215', '101290805', '牟定');
INSERT INTO `pigcms_weather` VALUES ('2216', '101290806', '南华');
INSERT INTO `pigcms_weather` VALUES ('2217', '101290807', '武定');
INSERT INTO `pigcms_weather` VALUES ('2218', '101290808', '禄丰');
INSERT INTO `pigcms_weather` VALUES ('2219', '101290809', '双柏');
INSERT INTO `pigcms_weather` VALUES ('2220', '101290810', '永仁');
INSERT INTO `pigcms_weather` VALUES ('2221', '101290901', '普洱');
INSERT INTO `pigcms_weather` VALUES ('2222', '101290902', '景谷');
INSERT INTO `pigcms_weather` VALUES ('2223', '101290903', '景东');
INSERT INTO `pigcms_weather` VALUES ('2224', '101290904', '澜沧');
INSERT INTO `pigcms_weather` VALUES ('2225', '101290906', '墨江');
INSERT INTO `pigcms_weather` VALUES ('2226', '101290907', '江城');
INSERT INTO `pigcms_weather` VALUES ('2227', '101290908', '孟连');
INSERT INTO `pigcms_weather` VALUES ('2228', '101290909', '西盟');
INSERT INTO `pigcms_weather` VALUES ('2229', '101290911', '镇沅');
INSERT INTO `pigcms_weather` VALUES ('2230', '101290912', '宁洱');
INSERT INTO `pigcms_weather` VALUES ('2231', '101291001', '昭通');
INSERT INTO `pigcms_weather` VALUES ('2232', '101291002', '鲁甸');
INSERT INTO `pigcms_weather` VALUES ('2233', '101291003', '彝良');
INSERT INTO `pigcms_weather` VALUES ('2234', '101291004', '镇雄');
INSERT INTO `pigcms_weather` VALUES ('2235', '101291005', '威信');
INSERT INTO `pigcms_weather` VALUES ('2236', '101291006', '巧家');
INSERT INTO `pigcms_weather` VALUES ('2237', '101291007', '绥江');
INSERT INTO `pigcms_weather` VALUES ('2238', '101291008', '永善');
INSERT INTO `pigcms_weather` VALUES ('2239', '101291009', '盐津');
INSERT INTO `pigcms_weather` VALUES ('2240', '101291010', '大关');
INSERT INTO `pigcms_weather` VALUES ('2241', '101291011', '水富');
INSERT INTO `pigcms_weather` VALUES ('2242', '101291101', '临沧');
INSERT INTO `pigcms_weather` VALUES ('2243', '101291102', '沧源');
INSERT INTO `pigcms_weather` VALUES ('2244', '101291103', '耿马');
INSERT INTO `pigcms_weather` VALUES ('2245', '101291104', '双江');
INSERT INTO `pigcms_weather` VALUES ('2246', '101291105', '凤庆');
INSERT INTO `pigcms_weather` VALUES ('2247', '101291106', '永德');
INSERT INTO `pigcms_weather` VALUES ('2248', '101291107', '云县');
INSERT INTO `pigcms_weather` VALUES ('2249', '101291108', '镇康');
INSERT INTO `pigcms_weather` VALUES ('2250', '101291201', '怒江');
INSERT INTO `pigcms_weather` VALUES ('2251', '101291203', '福贡');
INSERT INTO `pigcms_weather` VALUES ('2252', '101291204', '兰坪');
INSERT INTO `pigcms_weather` VALUES ('2253', '101291205', '泸水');
INSERT INTO `pigcms_weather` VALUES ('2254', '101291207', '贡山');
INSERT INTO `pigcms_weather` VALUES ('2255', '101291301', '迪庆');
INSERT INTO `pigcms_weather` VALUES ('2256', '101291302', '德钦');
INSERT INTO `pigcms_weather` VALUES ('2257', '101291303', '维西');
INSERT INTO `pigcms_weather` VALUES ('2258', '101291401', '丽江');
INSERT INTO `pigcms_weather` VALUES ('2259', '101291402', '永胜');
INSERT INTO `pigcms_weather` VALUES ('2260', '101291403', '华坪');
INSERT INTO `pigcms_weather` VALUES ('2261', '101291404', '宁蒗');
INSERT INTO `pigcms_weather` VALUES ('2262', '101291501', '德宏');
INSERT INTO `pigcms_weather` VALUES ('2263', '101291503', '陇川');
INSERT INTO `pigcms_weather` VALUES ('2264', '101291504', '盈江');
INSERT INTO `pigcms_weather` VALUES ('2265', '101291506', '瑞丽');
INSERT INTO `pigcms_weather` VALUES ('2266', '101291507', '梁河');
INSERT INTO `pigcms_weather` VALUES ('2267', '101291508', '潞西');
INSERT INTO `pigcms_weather` VALUES ('2268', '101291601', '西双版纳');
INSERT INTO `pigcms_weather` VALUES ('2269', '101291603', '勐海');
INSERT INTO `pigcms_weather` VALUES ('2270', '101291605', '勐腊');
INSERT INTO `pigcms_weather` VALUES ('2271', '101300101', '南宁');
INSERT INTO `pigcms_weather` VALUES ('2272', '101300103', '邕宁');
INSERT INTO `pigcms_weather` VALUES ('2273', '101300104', '横县');
INSERT INTO `pigcms_weather` VALUES ('2274', '101300105', '隆安');
INSERT INTO `pigcms_weather` VALUES ('2275', '101300106', '马山');
INSERT INTO `pigcms_weather` VALUES ('2276', '101300107', '上林');
INSERT INTO `pigcms_weather` VALUES ('2277', '101300108', '武鸣');
INSERT INTO `pigcms_weather` VALUES ('2278', '101300109', '宾阳');
INSERT INTO `pigcms_weather` VALUES ('2279', '101300201', '崇左');
INSERT INTO `pigcms_weather` VALUES ('2280', '101300202', '天等');
INSERT INTO `pigcms_weather` VALUES ('2281', '101300203', '龙州');
INSERT INTO `pigcms_weather` VALUES ('2282', '101300204', '凭祥');
INSERT INTO `pigcms_weather` VALUES ('2283', '101300205', '大新');
INSERT INTO `pigcms_weather` VALUES ('2284', '101300206', '扶绥');
INSERT INTO `pigcms_weather` VALUES ('2285', '101300207', '宁明');
INSERT INTO `pigcms_weather` VALUES ('2286', '101300301', '柳州');
INSERT INTO `pigcms_weather` VALUES ('2287', '101300302', '柳城');
INSERT INTO `pigcms_weather` VALUES ('2288', '101300304', '鹿寨');
INSERT INTO `pigcms_weather` VALUES ('2289', '101300305', '柳江');
INSERT INTO `pigcms_weather` VALUES ('2290', '101300306', '融安');
INSERT INTO `pigcms_weather` VALUES ('2291', '101300307', '融水');
INSERT INTO `pigcms_weather` VALUES ('2292', '101300308', '三江');
INSERT INTO `pigcms_weather` VALUES ('2293', '101300401', '来宾');
INSERT INTO `pigcms_weather` VALUES ('2294', '101300402', '忻城');
INSERT INTO `pigcms_weather` VALUES ('2295', '101300403', '金秀');
INSERT INTO `pigcms_weather` VALUES ('2296', '101300404', '象州');
INSERT INTO `pigcms_weather` VALUES ('2297', '101300405', '武宣');
INSERT INTO `pigcms_weather` VALUES ('2298', '101300406', '合山');
INSERT INTO `pigcms_weather` VALUES ('2299', '101300501', '桂林');
INSERT INTO `pigcms_weather` VALUES ('2300', '101300503', '龙胜');
INSERT INTO `pigcms_weather` VALUES ('2301', '101300504', '永福');
INSERT INTO `pigcms_weather` VALUES ('2302', '101300505', '临桂');
INSERT INTO `pigcms_weather` VALUES ('2303', '101300506', '兴安');
INSERT INTO `pigcms_weather` VALUES ('2304', '101300507', '灵川');
INSERT INTO `pigcms_weather` VALUES ('2305', '101300508', '全州');
INSERT INTO `pigcms_weather` VALUES ('2306', '101300509', '灌阳');
INSERT INTO `pigcms_weather` VALUES ('2307', '101300510', '阳朔');
INSERT INTO `pigcms_weather` VALUES ('2308', '101300511', '恭城');
INSERT INTO `pigcms_weather` VALUES ('2309', '101300512', '平乐');
INSERT INTO `pigcms_weather` VALUES ('2310', '101300513', '荔浦');
INSERT INTO `pigcms_weather` VALUES ('2311', '101300514', '资源');
INSERT INTO `pigcms_weather` VALUES ('2312', '101300601', '梧州');
INSERT INTO `pigcms_weather` VALUES ('2313', '101300602', '藤县');
INSERT INTO `pigcms_weather` VALUES ('2314', '101300604', '苍梧');
INSERT INTO `pigcms_weather` VALUES ('2315', '101300605', '蒙山');
INSERT INTO `pigcms_weather` VALUES ('2316', '101300606', '岑溪');
INSERT INTO `pigcms_weather` VALUES ('2317', '101300701', '贺州');
INSERT INTO `pigcms_weather` VALUES ('2318', '101300702', '昭平');
INSERT INTO `pigcms_weather` VALUES ('2319', '101300703', '富川');
INSERT INTO `pigcms_weather` VALUES ('2320', '101300704', '钟山');
INSERT INTO `pigcms_weather` VALUES ('2321', '101300801', '贵港');
INSERT INTO `pigcms_weather` VALUES ('2322', '101300802', '桂平');
INSERT INTO `pigcms_weather` VALUES ('2323', '101300803', '平南');
INSERT INTO `pigcms_weather` VALUES ('2324', '101300901', '玉林');
INSERT INTO `pigcms_weather` VALUES ('2325', '101300902', '博白');
INSERT INTO `pigcms_weather` VALUES ('2326', '101300903', '北流');
INSERT INTO `pigcms_weather` VALUES ('2327', '101300904', '容县');
INSERT INTO `pigcms_weather` VALUES ('2328', '101300905', '陆川');
INSERT INTO `pigcms_weather` VALUES ('2329', '101300906', '兴业');
INSERT INTO `pigcms_weather` VALUES ('2330', '101301001', '百色');
INSERT INTO `pigcms_weather` VALUES ('2331', '101301002', '那坡');
INSERT INTO `pigcms_weather` VALUES ('2332', '101301003', '田阳');
INSERT INTO `pigcms_weather` VALUES ('2333', '101301004', '德保');
INSERT INTO `pigcms_weather` VALUES ('2334', '101301005', '靖西');
INSERT INTO `pigcms_weather` VALUES ('2335', '101301006', '田东');
INSERT INTO `pigcms_weather` VALUES ('2336', '101301007', '平果');
INSERT INTO `pigcms_weather` VALUES ('2337', '101301008', '隆林');
INSERT INTO `pigcms_weather` VALUES ('2338', '101301009', '西林');
INSERT INTO `pigcms_weather` VALUES ('2339', '101301010', '乐业');
INSERT INTO `pigcms_weather` VALUES ('2340', '101301011', '凌云');
INSERT INTO `pigcms_weather` VALUES ('2341', '101301012', '田林');
INSERT INTO `pigcms_weather` VALUES ('2342', '101301101', '钦州');
INSERT INTO `pigcms_weather` VALUES ('2343', '101301102', '浦北');
INSERT INTO `pigcms_weather` VALUES ('2344', '101301103', '灵山');
INSERT INTO `pigcms_weather` VALUES ('2345', '101301201', '河池');
INSERT INTO `pigcms_weather` VALUES ('2346', '101301202', '天峨');
INSERT INTO `pigcms_weather` VALUES ('2347', '101301203', '东兰');
INSERT INTO `pigcms_weather` VALUES ('2348', '101301204', '巴马');
INSERT INTO `pigcms_weather` VALUES ('2349', '101301205', '环江');
INSERT INTO `pigcms_weather` VALUES ('2350', '101301206', '罗城');
INSERT INTO `pigcms_weather` VALUES ('2351', '101301207', '宜州');
INSERT INTO `pigcms_weather` VALUES ('2352', '101301208', '凤山');
INSERT INTO `pigcms_weather` VALUES ('2353', '101301209', '南丹');
INSERT INTO `pigcms_weather` VALUES ('2354', '101301210', '都安');
INSERT INTO `pigcms_weather` VALUES ('2355', '101301211', '大化');
INSERT INTO `pigcms_weather` VALUES ('2356', '101301301', '北海');
INSERT INTO `pigcms_weather` VALUES ('2357', '101301302', '合浦');
INSERT INTO `pigcms_weather` VALUES ('2358', '101301303', '涠洲岛');
INSERT INTO `pigcms_weather` VALUES ('2359', '101301401', '防城港');
INSERT INTO `pigcms_weather` VALUES ('2360', '101301402', '上思');
INSERT INTO `pigcms_weather` VALUES ('2361', '101301403', '东兴');
INSERT INTO `pigcms_weather` VALUES ('2362', '101301405', '防城');
INSERT INTO `pigcms_weather` VALUES ('2363', '101310101', '海口');
INSERT INTO `pigcms_weather` VALUES ('2364', '101310201', '三亚');
INSERT INTO `pigcms_weather` VALUES ('2365', '101310202', '东方');
INSERT INTO `pigcms_weather` VALUES ('2366', '101310203', '临高');
INSERT INTO `pigcms_weather` VALUES ('2367', '101310204', '澄迈');
INSERT INTO `pigcms_weather` VALUES ('2368', '101310205', '儋州');
INSERT INTO `pigcms_weather` VALUES ('2369', '101310206', '昌江');
INSERT INTO `pigcms_weather` VALUES ('2370', '101310207', '白沙');
INSERT INTO `pigcms_weather` VALUES ('2371', '101310208', '琼中');
INSERT INTO `pigcms_weather` VALUES ('2372', '101310209', '定安');
INSERT INTO `pigcms_weather` VALUES ('2373', '101310210', '屯昌');
INSERT INTO `pigcms_weather` VALUES ('2374', '101310211', '琼海');
INSERT INTO `pigcms_weather` VALUES ('2375', '101310212', '文昌');
INSERT INTO `pigcms_weather` VALUES ('2376', '101310214', '保亭');
INSERT INTO `pigcms_weather` VALUES ('2377', '101310215', '万宁');
INSERT INTO `pigcms_weather` VALUES ('2378', '101310216', '陵水');
INSERT INTO `pigcms_weather` VALUES ('2379', '101310221', '乐东');
INSERT INTO `pigcms_weather` VALUES ('2380', '101310222', '五指山');
INSERT INTO `pigcms_weather` VALUES ('2381', '101320101', '香港');
INSERT INTO `pigcms_weather` VALUES ('2382', '101330101', '澳门');
INSERT INTO `pigcms_weather` VALUES ('2383', '101340101', '台北');
INSERT INTO `pigcms_weather` VALUES ('2384', '101340102', '桃园');
INSERT INTO `pigcms_weather` VALUES ('2385', '101340103', '新竹');
INSERT INTO `pigcms_weather` VALUES ('2386', '101340104', '宜兰');
INSERT INTO `pigcms_weather` VALUES ('2387', '101340201', '高雄');
INSERT INTO `pigcms_weather` VALUES ('2388', '101340202', '嘉义');
INSERT INTO `pigcms_weather` VALUES ('2389', '101340203', '台南');
INSERT INTO `pigcms_weather` VALUES ('2390', '101340204', '台东');
INSERT INTO `pigcms_weather` VALUES ('2391', '101340205', '屏东');
INSERT INTO `pigcms_weather` VALUES ('2392', '101340401', '台中');
INSERT INTO `pigcms_weather` VALUES ('2393', '101340402', '苗栗');
INSERT INTO `pigcms_weather` VALUES ('2394', '101340403', '彰化');
INSERT INTO `pigcms_weather` VALUES ('2395', '101340404', '南投');
INSERT INTO `pigcms_weather` VALUES ('2396', '101340405', '花莲');
INSERT INTO `pigcms_weather` VALUES ('2397', '101340406', '云林');
INSERT INTO `pigcms_weather` VALUES ('2398', '102010100', '首尔');
INSERT INTO `pigcms_weather` VALUES ('2399', '103010100', '东京');
INSERT INTO `pigcms_weather` VALUES ('2400', '103020100', '大阪');
INSERT INTO `pigcms_weather` VALUES ('2401', '103040100', '札幌');
INSERT INTO `pigcms_weather` VALUES ('2402', '103050100', '福冈');
INSERT INTO `pigcms_weather` VALUES ('2403', '103090100', '京都');
INSERT INTO `pigcms_weather` VALUES ('2404', '104010100', '新加坡');
INSERT INTO `pigcms_weather` VALUES ('2405', '105010100', '吉隆坡');
INSERT INTO `pigcms_weather` VALUES ('2406', '106010100', '曼谷');
INSERT INTO `pigcms_weather` VALUES ('2407', '107010100', '河内');
INSERT INTO `pigcms_weather` VALUES ('2408', '107020100', '胡志明市');
INSERT INTO `pigcms_weather` VALUES ('2409', '108010100', '仰光');
INSERT INTO `pigcms_weather` VALUES ('2410', '109010100', '万象');
INSERT INTO `pigcms_weather` VALUES ('2411', '111010100', '雅加达');
INSERT INTO `pigcms_weather` VALUES ('2412', '111080100', '登巴萨');
INSERT INTO `pigcms_weather` VALUES ('2413', '112010100', '德黑兰');
INSERT INTO `pigcms_weather` VALUES ('2414', '113010100', '新德里');
INSERT INTO `pigcms_weather` VALUES ('2415', '113030100', '孟买');
INSERT INTO `pigcms_weather` VALUES ('2416', '113090100', '斯利那加');
INSERT INTO `pigcms_weather` VALUES ('2417', '114010100', '伊斯兰堡');
INSERT INTO `pigcms_weather` VALUES ('2418', '114030100', '卡拉奇');
INSERT INTO `pigcms_weather` VALUES ('2419', '114040100', '白沙瓦');
INSERT INTO `pigcms_weather` VALUES ('2420', '115010100', '塔什干');
INSERT INTO `pigcms_weather` VALUES ('2421', '117010100', '科伦坡');
INSERT INTO `pigcms_weather` VALUES ('2422', '118010100', '喀布尔');
INSERT INTO `pigcms_weather` VALUES ('2423', '118030100', '坎大哈');
INSERT INTO `pigcms_weather` VALUES ('2424', '120010100', '斯里巴加湾');
INSERT INTO `pigcms_weather` VALUES ('2425', '121010100', '巴林');
INSERT INTO `pigcms_weather` VALUES ('2426', '124010100', '阿布扎比');
INSERT INTO `pigcms_weather` VALUES ('2427', '124020100', '迪拜');
INSERT INTO `pigcms_weather` VALUES ('2428', '127010100', '平壤');
INSERT INTO `pigcms_weather` VALUES ('2429', '130010100', '阿斯塔纳');
INSERT INTO `pigcms_weather` VALUES ('2430', '132010100', '乌兰巴托');
INSERT INTO `pigcms_weather` VALUES ('2431', '136010100', '马尼拉');
INSERT INTO `pigcms_weather` VALUES ('2432', '138010100', '利雅得');
INSERT INTO `pigcms_weather` VALUES ('2433', '139010100', '大马士革');
INSERT INTO `pigcms_weather` VALUES ('2434', '201010100', '伦敦');
INSERT INTO `pigcms_weather` VALUES ('2435', '201050100', '曼彻斯特');
INSERT INTO `pigcms_weather` VALUES ('2436', '202010100', '巴黎');
INSERT INTO `pigcms_weather` VALUES ('2437', '202100100', '马赛');
INSERT INTO `pigcms_weather` VALUES ('2438', '203010100', '柏林');
INSERT INTO `pigcms_weather` VALUES ('2439', '203020100', '法兰克福');
INSERT INTO `pigcms_weather` VALUES ('2440', '203050100', '汉堡');
INSERT INTO `pigcms_weather` VALUES ('2441', '204010100', '罗马');
INSERT INTO `pigcms_weather` VALUES ('2442', '204040100', '米兰');
INSERT INTO `pigcms_weather` VALUES ('2443', '205010100', '阿姆斯特丹');
INSERT INTO `pigcms_weather` VALUES ('2444', '206010100', '马德里');
INSERT INTO `pigcms_weather` VALUES ('2445', '206020100', '巴塞罗那');
INSERT INTO `pigcms_weather` VALUES ('2446', '207010100', '哥本哈根');
INSERT INTO `pigcms_weather` VALUES ('2447', '208010100', '莫斯科');
INSERT INTO `pigcms_weather` VALUES ('2448', '210020100', '日内瓦');
INSERT INTO `pigcms_weather` VALUES ('2449', '210030100', '苏黎世');
INSERT INTO `pigcms_weather` VALUES ('2450', '211010100', '斯德哥尔摩');
INSERT INTO `pigcms_weather` VALUES ('2451', '214010100', '里斯本');
INSERT INTO `pigcms_weather` VALUES ('2452', '215020100', '伊斯坦布尔');
INSERT INTO `pigcms_weather` VALUES ('2453', '216010100', '布鲁塞尔');
INSERT INTO `pigcms_weather` VALUES ('2454', '217010100', '维也纳');
INSERT INTO `pigcms_weather` VALUES ('2455', '218010100', '雅典');
INSERT INTO `pigcms_weather` VALUES ('2456', '222010100', '赫尔辛基');
INSERT INTO `pigcms_weather` VALUES ('2457', '301010100', '开罗');
INSERT INTO `pigcms_weather` VALUES ('2458', '302010100', '开普敦');
INSERT INTO `pigcms_weather` VALUES ('2459', '302020100', '约翰内斯堡');
INSERT INTO `pigcms_weather` VALUES ('2460', '303010100', '突尼斯');
INSERT INTO `pigcms_weather` VALUES ('2461', '304020100', '拉各斯');
INSERT INTO `pigcms_weather` VALUES ('2462', '305010100', '阿尔及尔');
INSERT INTO `pigcms_weather` VALUES ('2463', '311010100', '亚的斯亚贝巴');
INSERT INTO `pigcms_weather` VALUES ('2464', '317010100', '内罗毕');
INSERT INTO `pigcms_weather` VALUES ('2465', '321020100', '卡萨布兰卡');
INSERT INTO `pigcms_weather` VALUES ('2466', '327010100', '达喀尔');
INSERT INTO `pigcms_weather` VALUES ('2467', '332010100', '达累斯萨拉姆');
INSERT INTO `pigcms_weather` VALUES ('2468', '334010100', '卢萨卡');
INSERT INTO `pigcms_weather` VALUES ('2469', '401010100', '华盛顿');
INSERT INTO `pigcms_weather` VALUES ('2470', '401020101', '迈阿密');
INSERT INTO `pigcms_weather` VALUES ('2471', '401020104', '奥兰多');
INSERT INTO `pigcms_weather` VALUES ('2472', '401030101', '亚特兰大');
INSERT INTO `pigcms_weather` VALUES ('2473', '401040101', '洛杉矶');
INSERT INTO `pigcms_weather` VALUES ('2474', '401040102', '圣弗朗西斯科');
INSERT INTO `pigcms_weather` VALUES ('2475', '401060100', '波士顿');
INSERT INTO `pigcms_weather` VALUES ('2476', '401070101', '芝加哥');
INSERT INTO `pigcms_weather` VALUES ('2477', '401100101', '西雅图');
INSERT INTO `pigcms_weather` VALUES ('2478', '401110101', '纽约');
INSERT INTO `pigcms_weather` VALUES ('2479', '401120108', '休斯敦');
INSERT INTO `pigcms_weather` VALUES ('2480', '401370100', '拉斯维加斯');
INSERT INTO `pigcms_weather` VALUES ('2481', '401480100', '火奴鲁鲁');
INSERT INTO `pigcms_weather` VALUES ('2482', '404010100', '渥太华');
INSERT INTO `pigcms_weather` VALUES ('2483', '404030100', '温哥华');
INSERT INTO `pigcms_weather` VALUES ('2484', '404040100', '多伦多');
INSERT INTO `pigcms_weather` VALUES ('2485', '404130100', '埃德蒙顿');
INSERT INTO `pigcms_weather` VALUES ('2486', '404140100', '卡尔加里');
INSERT INTO `pigcms_weather` VALUES ('2487', '404220100', '温尼伯');
INSERT INTO `pigcms_weather` VALUES ('2488', '404230100', '魁北克');
INSERT INTO `pigcms_weather` VALUES ('2489', '404240100', '蒙特利尔');
INSERT INTO `pigcms_weather` VALUES ('2490', '406010100', '哈瓦那');
INSERT INTO `pigcms_weather` VALUES ('2491', '411010100', '墨西哥城');
INSERT INTO `pigcms_weather` VALUES ('2492', '416010100', '加拉加斯');
INSERT INTO `pigcms_weather` VALUES ('2493', '601020101', '悉尼');
INSERT INTO `pigcms_weather` VALUES ('2494', '601030101', '布里斯班');
INSERT INTO `pigcms_weather` VALUES ('2495', '601040101', '阿德来德');
INSERT INTO `pigcms_weather` VALUES ('2496', '601060101', '墨尔本');
INSERT INTO `pigcms_weather` VALUES ('2497', '601070101', '珀斯');
INSERT INTO `pigcms_weather` VALUES ('2498', '606010100', '惠灵顿');
INSERT INTO `pigcms_weather` VALUES ('2499', '606020100', '奥克兰');
INSERT INTO `pigcms_weather` VALUES ('2500', '606030100', '克莱斯特彻奇');
INSERT INTO `pigcms_weather` VALUES ('2501', '101030100', '天津');

-- ----------------------------
-- Table structure for `pigcms_wecha_user`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_wecha_user`;
CREATE TABLE `pigcms_wecha_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY (`token`,`wecha_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_wecha_user
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_wechat_group`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_wechat_group`;
CREATE TABLE `pigcms_wechat_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `wechatgroupid` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `fanscount` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `wechatgroupid` (`wechatgroupid`,`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_wechat_group
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_wechat_group_list`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_wechat_group_list`;
CREATE TABLE `pigcms_wechat_group_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `g_id` varchar(20) NOT NULL DEFAULT '',
  `nickname` varchar(60) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `province` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(30) NOT NULL,
  `headimgurl` varchar(200) NOT NULL,
  `subscribe_time` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_wechat_group_list
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_wecht_grout`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_wecht_grout`;
CREATE TABLE `pigcms_wecht_grout` (
  `id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `w_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信用户组表，非本站用户级表';

-- ----------------------------
-- Records of pigcms_wecht_grout
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_wedding`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_wedding`;
CREATE TABLE `pigcms_wedding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(150) NOT NULL,
  `picurl` varchar(150) NOT NULL,
  `openpic` varchar(200) NOT NULL,
  `coverurl` varchar(200) NOT NULL,
  `woman` varchar(30) NOT NULL,
  `man` varchar(30) NOT NULL,
  `who_first` tinyint(1) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `time` int(11) NOT NULL,
  `place` varchar(200) NOT NULL,
  `lng` varchar(16) NOT NULL,
  `lat` varchar(16) NOT NULL,
  `video` varchar(200) NOT NULL,
  `mp3url` varchar(200) NOT NULL,
  `passowrd` int(20) NOT NULL,
  `word` varchar(200) NOT NULL,
  `qr_code` varchar(200) NOT NULL,
  `copyrite` varchar(150) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_wedding
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_wedding_info`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_wedding_info`;
CREATE TABLE `pigcms_wedding_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `num` tinyint(2) NOT NULL,
  `info` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pigcms_wedding_info
-- ----------------------------

-- ----------------------------
-- Table structure for `pigcms_wehcat_member_enddate`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_wehcat_member_enddate`;
CREATE TABLE `pigcms_wehcat_member_enddate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(60) NOT NULL,
  `enddate` int(11) NOT NULL,
  `joinUpDate` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `token` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=317 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `pigcms_wxuser`
-- ----------------------------
DROP TABLE IF EXISTS `pigcms_wxuser`;
CREATE TABLE `pigcms_wxuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `routerid` varchar(50) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL,
  `wxname` varchar(60) NOT NULL COMMENT '公众号名称',
  `winxintype` smallint(2) NOT NULL DEFAULT '1',
  `appid` varchar(50) NOT NULL DEFAULT '',
  `appsecret` varchar(50) NOT NULL DEFAULT '',
  `wxid` varchar(20) NOT NULL COMMENT '公众号原始ID',
  `weixin` char(20) NOT NULL COMMENT '微信号',
  `headerpic` char(255) NOT NULL COMMENT '头像地址',
  `token` char(255) NOT NULL,
  `province` varchar(30) NOT NULL COMMENT '省',
  `city` varchar(60) NOT NULL COMMENT '市',
  `qq` char(25) NOT NULL COMMENT '公众号邮箱',
  `wxfans` int(11) NOT NULL COMMENT '微信粉丝',
  `typeid` int(11) NOT NULL COMMENT '分类ID',
  `typename` varchar(90) NOT NULL DEFAULT '0' COMMENT '分类名',
  `tongji` text NOT NULL,
  `allcardnum` int(11) NOT NULL,
  `cardisok` int(11) NOT NULL,
  `yetcardnum` int(11) NOT NULL,
  `totalcardnum` int(11) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `tpltypeid` varchar(10) NOT NULL DEFAULT '1',
  `updatetime` varchar(13) NOT NULL,
  `tpltypename` varchar(20) NOT NULL COMMENT '首页模版名',
  `tpllistid` varchar(2) NOT NULL COMMENT '列表模版ID',
  `tpllistname` varchar(20) NOT NULL COMMENT '列表模版名',
  `tplcontentid` varchar(2) NOT NULL COMMENT '内容模版ID',
  `tplcontentname` varchar(20) NOT NULL COMMENT '内容模版名',
  `transfer_customer_service` tinyint(1) NOT NULL DEFAULT '0',
  `color_id` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uid_2` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='微信公共帐号';


-- ----------------------------
-- Table structure for `tp_service_logs`
-- ----------------------------
DROP TABLE IF EXISTS `tp_service_logs`;
CREATE TABLE `tp_service_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `enddate` int(11) NOT NULL,
  `keyword` varchar(200) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tp_service_logs
-- ----------------------------

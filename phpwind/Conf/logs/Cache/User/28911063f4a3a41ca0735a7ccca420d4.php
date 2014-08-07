<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> <?php echo ($f_siteTitle); ?> <?php echo ($f_siteName); ?></title>
<meta name="keywords" content="<?php echo ($f_metaKeyword); ?>" />
<meta name="description" content="<?php echo ($f_metaDes); ?>" />
<meta http-equiv="MSThemeCompatible" content="Yes" />
<script>var SITEURL='';</script>
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/style_2_common.css?BPm" />
<script src="<?php echo RES;?>/js/common.js" type="text/javascript"></script>
</head>
<body id="nv_member" class="pg_CURMODULE">
<div class="topbg">
<div class="top">
<div class="toplink">
<style>
.topbg{BACKGROUND-IMAGE: url(<?php echo RES;?>/images/top.png);BACKGROUND-REPEAT: repeat-x; height:124px; box-shadow:0 0 10px #000;-moz-box-shadow:0 0 10px #000;-webkit-box-shadow:0 0 10px #000;}
.top {
	MARGIN: 0px auto; WIDTH: 988px; HEIGHT: 124px;
}
.top .toplink{ height:27px; line-height:27px; color:#999; font-size:12px;}
.top .toplink .welcome{ float:left;}
.top .toplink .memberinfo{ float:right;}
.top .toplink .memberinfo a{ color:#999;}
.top .toplink .memberinfo a:hover{ color:#F90}
.top .toplink .memberinfo a.green{ background:none; color:#0C0}

.top .logo {WIDTH: 990px;COLOR: #333; height:70px;  FONT-SIZE:16px; PADDING-TOP:25px}
.top h1{ font-size:25px; margin-top:20px; float:left; width:230px; margin:0; padding:0;}
.top .navr {WIDTH:750px; float:right; overflow:hidden; margin-top:10px;}
.top .navr ul{ width:850px;}
.navr LI {TEXT-ALIGN:center;FLOAT: left;HEIGHT:32px;FONT-SIZE:1em;width:103px; margin-right:5px;}
.navr LI A {width:103px;TEXT-ALIGN:center; LINE-HEIGHT:30px; FLOAT: left;HEIGHT:32px;COLOR: #333; FONT-SIZE: 1em;TEXT-DECORATION: none
}
.navr LI A:hover {BACKGROUND: url(<?php echo RES;?>/images/navhover.gif) center no-repeat;color:#009900;}
.navr LI.menuon {BACKGROUND: url(<?php echo RES;?>/images/navon.gif) center no-repeat; display:block;width:103px;HEIGHT:32px;}
.navr LI.menuon a{color:#FFF;}
.navr LI.menuon a:hover{BACKGROUND: url(img/navon.gif) center no-repeat;}
.banner{height:200px; text-align:center; border-bottom:2px solid #ddd;}
.hbanner{ background: url(img/h2003070126.jpg) center no-repeat #B4B4B4;}
.gbanner{ background: url(img/h2003070127.jpg) center no-repeat #264C79;}
.jbanner{ background: url(img/h2003070128.jpg) center no-repeat #E2EAD5;}
.dbanner{ background: url(img/h2003070129.jpg) center no-repeat #009ADA;}
.nbanner{ background: url(img/h2003070130.jpg) center no-repeat #ffca22;}
a.a_upload,a.a_choose{border:1px solid #3d810c;box-shadow:0 1px #CCCCCC;-moz-box-shadow:0 1px #CCCCCC;-webkit-box-shadow:0 1px #CCCCCC;cursor:pointer;display:inline-block;text-align:center;vertical-align:bottom;overflow:visible;border-radius:3px;-moz-border-radius:3px;-webkit-border-radius:3px;vertical-align:middle;background-color:#f1f1f1;background-image: -webkit-linear-gradient(bottom, #CCC 0%, #E5E5E5 3%, #FFF 97%, #FFF 100%); background-image: -moz-linear-gradient(bottom, #CCC 0%, #E5E5E5 3%, #FFF 97%, #FFF 100%); background-image: -ms-linear-gradient(bottom, #CCC 0%, #E5E5E5 3%, #FFF 97%, #FFF 100%); color:#000;border:1px solid #AAA;padding:2px 8px 2px 8px;text-shadow: 0 1px #FFFFFF;font-size: 14px;line-height: 1.5;
}
</style>
<div class="welcome">欢迎使用多用户微信营销服务平台!</div>
    <div class="memberinfo"  id="destoon_member">	
		<?php if($_SESSION[uid]==false): ?><a href="<?php echo U('Index/login');?>">登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="<?php echo U('Index/login');?>">注册</a>
			<?php else: ?>
			你好,<a href="/#" hidefocus="true"  ><span style="color:red"><?php echo (session('uname')); ?></span></a>（uid:<?php echo (session('uid')); ?>）
			<a href="/#" onclick="Javascript:window.open('<?php echo U('System/Admin/logout');?>','_blank')" >退出</a><?php endif; ?>	
	</div>
</div>
    <div class="logo">
        <div style="float:left"></div>
            <h1><a href="/" title="多用户微信营销服务平台"><img src="<?php echo ($f_logo); ?>" /></a></h1>
            <div class="navr">
        <ul id="topMenu">         
            <li <?php if((ACTION_NAME == 'index') and (GROUP_NAME == 'Home')): ?>class="menuon"<?php endif; ?> ><a href="/" >首页</a></li>
                <li <?php if((ACTION_NAME) == "fc"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/fc');?>">功能介绍</a></li>
                <li <?php if((ACTION_NAME) == "about"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/about');?>">关于我们</a></li>
                <li <?php if((ACTION_NAME) == "price"): ?>class="menuon"<?php endif; ?>><a href="/index.php?g=Home&m=Index&a=price">资费说明</a></li>
                <li <?php if((ACTION_NAME) == "common"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/common');?>">微信导航</a></li>
                <li <?php if((GROUP_NAME) == "User"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('User/Index/index');?>">管理中心</a></li>
                <li <?php if((ACTION_NAME) == "help"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/help');?>">帮助中心</a></li>
            
            </ul>
        </div>
        </div>
    </div>
</div>
<div id="aaa"></div>

<div id="wp" class="wp"><link href="<?php echo RES;?>/css/style.css?id=100" rel="stylesheet" type="text/css" />
  <!--中间内容-->
  <script src="<?php echo STATICS;?>/jquery-1.4.2.min.js" type="text/javascript"></script>
  
  <div class="contentmanage">
    <div class="developer">
       <div class="appTitle normalTitle2">
        <div class="vipuser">


<div class="logo">
<img src="<?php echo ($wecha["headerpic"]); ?>" width="100" height="100">
</div>

<div id="nickname">
<strong><?php echo ($wecha["wxname"]); ?></strong><a href="#" target="_blank" class="vipimg vip-icon<?php echo $userinfo['taxisid']-1; ?>" title=""></a></div>
<div id="weixinid">微信号:<?php echo ($wecha["weixin"]); ?></div>
</div>

        <div class="accountInfo">
<table class="vipInfo" width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
<td><strong>VIP有效期：</strong><?php echo (date("Y-m-d",$thisUser["viptime"])); ?></td>
<td><strong>图文自定义：</strong><?php echo ($thisUser["diynum"]); ?>/<?php echo ($userinfo["diynum"]); ?></td>
<td><strong>活动创建数：</strong><?php echo ($thisUser["activitynum"]); ?>/<?php echo ($userinfo["activitynum"]); ?></td>
<td><strong>请求数：</strong><?php echo ($thisUser["connectnum"]); ?>/<?php echo ($userinfo["connectnum"]); ?></td>
</tr>
<tr>
<td><strong>请求数剩余：</strong><?php echo ($userinfo['connectnum']-$_SESSION['connectnum']); ?></td>
<td><strong>已使用：</strong><?php echo $_SESSION['diynum']; ?></td>
<td><strong>当月赠送请求数：</strong><?php echo ($userinfo["connectnum"]); ?></td>
<td><strong>当月剩余请求数：</strong><?php echo $userinfo['connectnum']-$_SESSION['connectnum']; ?></td>
</tr>

</table>
    </div>
        <div class="clr"></div>
      </div>
      <!--左侧功能菜单-->

 
<style type="text/css">
#sideBar{
border-right: 0px solid #D3D3D3 !important;
float: left;
padding: 0 0 10px 0;
width: 170px;
}
.tableContent {
background: none repeat scroll 0 0 #f5f6f7;
padding: 0;
}
.tableContent .content {
border-left: 1px solid #D7DDE6 !important;
}
ul#menu, ul#menu ul {
  list-style-type:none;
  margin: 0;
  padding: 0;
}

ul#menu a {
  display: block;
  text-decoration: none;	
}

ul#menu li {
  margin: 1px;
}
ul#menu li ul li{
  margin: 1px 0;
}
ul#menu li a {
  background: #EBEEF1;
  color: #464D6A;	
  padding: 0.5em;
}
ul#menu li .nav-header{
font-size:14px;
border-bottom: 1px solid #D7DDE6;
}
ul#menu li .nav-header:hover {
  background: #DDE4EB;
}

ul#menu li ul li a {
  background: #FCFCFC;
  color: #8288A4;
  padding-left: 20px;
}
ul#menu li ul li:last-child {
    border-bottom: 1px solid #D7DDE6;
}
ul#menu li ul li a:hover {
  background: #fff;
  border-left: 5px #4A98E0 solid;
 
}
ul#menu li.selected a{
  background: #fff;
  border-left: 5px #4A98E0 solid;
  padding-left: 15px;
  color: #4A98E0;
}
.code { border: 1px solid #ccc; list-style-type: decimal-leading-zero; padding: 5px; margin: 0; }
.code code { display: block; padding: 3px; margin-bottom: 0; }
.code li { background: #ddd; border: 1px solid #ccc; margin: 0 0 2px 2.2em; }
.indent1 { padding-left: 1em; }
.indent2 { padding-left: 2em; }
.tableContent .content{min-height: 1328px;}

a.nav-header{background:url(/tpl/static/images/arrow_click.png) center right no-repeat;cursor:pointer}
a.nav-header-current{background:url(/tpl/static/images/arrow_unclick.png) center right no-repeat;}
</style>  
      <div class="tableContent">
        
        <!--左侧功能菜单-->
 <div  class="sideBar" id="sideBar">
<div class="catalogList">
<ul id="menu">
<?php
$menus=array( array( 'name'=>'基础设置', 'display'=>0, 'subs'=>array( array('name'=>'功能管理','link'=>U('Function/index',array('token'=>$token,'id'=>session('wxid'))),'new'=>0,'selectedCondition'=>array('m'=>'Function')), array('name'=>'关注时回复与帮助','link'=>U('Areply/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Areply')), array('name'=>'微信－文本回复','link'=>U('Text/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Text')), array('name'=>'微信－图文回复','link'=>U('Img/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Img')), array('name'=>'微信－语音回复','link'=>U('Voiceresponse/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Voiceresponse')), array('name'=>'自定义LBS回复','link'=>U('Company/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Company')), array('name'=>'回答不上来的配置','link'=>U('Other/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Other')), )), array( 'name'=>'3G网站设置', 'display'=>0, 'subs'=>array( array('name'=>'首页回复配置','link'=>U('Home/set',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Home','g'=>'User','a'=>'set')), array('name'=>'分类管理','link'=>U('Classify/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Classify')), array('name'=>'模板管理','link'=>U('Tmpls/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Tmpls')), array('name'=>'首页幻灯片','link'=>U('Flash/index',array('token'=>$token,'tip'=>1)),'new'=>0,'selectedCondition'=>array('m'=>'Flash','tip'=>1)), array('name'=>'轮播背景图','link'=>U('Flash/index',array('token'=>$token,'tip'=>2)),'new'=>1,'selectedCondition'=>array('m'=>'Flash','tip'=>2)), array('name'=>'底部导航菜单','link'=>U('Catemenu/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Catemenu')), array('name'=>'自定义菜单','link'=>U('Diymen/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Diymen')), array('name'=>'留言板','link'=>U('Reply/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Reply')), array('name'=>'微论坛','link'=>U('Forum/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Forum')), )), array( 'name'=>'行业应用', 'display'=>1, 'subs'=>array( array('name'=>'订餐（无线打印）','link'=>U('Repast/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Repast')), array('name'=>'360°全景','link'=>U('Panorama/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Panorama')), array('name'=>'婚庆喜帖','link'=>U('Wedding/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Wedding')), array('name'=>'3G微投票','link'=>U('Vote/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Vote')), array('name'=>'微汽车','link'=>U('Car/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Car')), array('name'=>'楼盘房产','link'=>U('Estate/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Estate')), array('name'=>'微教育','link'=>U('School/index',array('token'=>$token,'type'=>'semester')),'new'=>1,'selectedCondition'=>array('m'=>'School')), array('name'=>'微医疗','link'=>U('Medical/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Medical'),'test'=>0), array('name'=>'酒店宾馆','link'=>U('Hotels/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Hotels')), array('name'=>'万能表单,报名,留言,预约','link'=>U('Selfform/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Selfform')), array('name'=>'通用订单(酒吧KTV)','link'=>U('Host/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Host')), )), array( 'name'=>'电商系统', 'display'=>0, 'subs'=>array( array('name'=>'在线支付设置','link'=>U('Alipay_config/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Alipay_config')), array('name'=>'微信团购系统','link'=>U('Groupon/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Groupon')), array('name'=>'微信商城系统','link'=>U('Store/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Store')), array('name'=>'融合第三方','link'=>U('Api/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Api')), array('name'=>'DIY宣传页','link'=>U('Adma/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Adma')), array('name'=>'3G图集(相册)','link'=>U('Photo/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Photo')), )), array( 'name'=>'微用户管理CRM', 'display'=>1, 'subs'=>array( array('name'=>'粉丝管理','link'=>U('Wechat_group/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Wechat_group','a'=>'index')), array('name'=>'分组管理','link'=>U('Wechat_group/groups',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Wechat_group','a'=>'groups')), array('name'=>'粉丝行为分析','link'=>U('Wechat_behavior/statistics',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Wechat_behavior','a'=>'statistics')), array('name'=>'渠道二维码','link'=>U('Recognition/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Recognition')), array('name'=>'人工客服','link'=>U('ServiceUser/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'ServiceUser')), array('name'=>'群发消息','link'=>U('Message/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Message')), array('name'=>'分享管理','link'=>U('Share/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Share')), )), array( 'name'=>'推广活动', 'display'=>0, 'subs'=>array( array('name'=>'幸运大转盘','link'=>U('Lottery/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Lottery')), array('name'=>'优惠券','link'=>U('Coupon/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Coupon')), array('name'=>'刮刮卡','link'=>U('Guajiang/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Guajiang')), array('name'=>'幸运水果机','link'=>U('LuckyFruit/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'LuckyFruit')), array('name'=>'砸金蛋','link'=>U('GoldenEgg/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'GoldenEgg')), array('name'=>'祝福贺卡','link'=>U('Greeting_card/index',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Greeting_card')), array('name'=>'摇一摇','link'=>U('Shake/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Shake')), array('name'=>'微信墙','link'=>U('Wall/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Wall')), array('name'=>'微路由','link'=>U('Router/index',array('token'=>$token)),'new'=>1,'test'=>0,'selectedCondition'=>array('m'=>'Router')), )), array( 'name'=>'会员卡', 'display'=>0, 'subs'=>array( array('name'=>'会员卡','link'=>U('Member_card/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Member_card'),'exceptCondition'=>array('a'=>'replyInfoSet')), array('name'=>'回复设置','link'=>U('Member_card/replyInfoSet',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Member_card','a'=>'replyInfoSet')), )), array( 'name'=>'统计分析', 'display'=>0, 'subs'=>array( array('name'=>'请求数详情','link'=>U('Requerydata/index',array('token'=>$token)),'new'=>0,'selectedCondition'=>array('m'=>'Requerydata')), array('name'=>'粉丝行为分析','link'=>U('Wechat_behavior/statistics',array('token'=>$token)),'new'=>1,'selectedCondition'=>array('m'=>'Wechat_behavior','a'=>'statistics')), )), ); ?>
<?php
$i=0; $parms=$_SERVER['QUERY_STRING']; $parms1=explode('&',$parms); $parmsArr=array(); if ($parms1){ foreach ($parms1 as $p){ $parms2=explode('=',$p); $parmsArr[$parms2[0]]=$parms2[1]; } } $subMenus=array(); $t=0; $currentMenuID=0; $currentParentMenuID=0; foreach ($menus as $m){ $loopContinue=1; if ($m['subs']){ $st=0; foreach ($m['subs'] as $s){ $includeArr=1; if ($s['selectedCondition']){ foreach ($s['selectedCondition'] as $condition){ if (!in_array($condition,$parmsArr)){ $includeArr=0; break; } } } if ($includeArr){ if ($s['exceptCondition']){ foreach ($s['exceptCondition'] as $eptCondition){ if (in_array($eptCondition,$parmsArr)){ $includeArr=0; break; } } } } if ($includeArr){ $currentMenuID=$st; $currentParentMenuID=$t; $loopContinue=0; break; } $st++; } if ($loopContinue==0){ break; } } $t++; } foreach ($menus as $m){ $displayStr=''; if ($currentParentMenuID!=0||0!=$currentMenuID){ $m['display']=0; } if (!$m['display']){ $displayStr=' style="display:none"'; } if ($currentParentMenuID==$i){ $displayStr=''; } $aClassStr=''; if ($displayStr){ $aClassStr=' nav-header-current'; } echo '<a class="nav-header'.$aClassStr.'">'.$m['name'].'</a><ul class="ckit"'.$displayStr.'>'; if ($m['subs']){ $j=0; foreach ($m['subs'] as $s){ $selectedClassStr='subCatalogList'; if ($currentParentMenuID==$i&&$j==$currentMenuID){ $selectedClassStr='selected'; } $newStr=''; if ($s['test']){ $newStr.='<span class="test"></span>'; }else { if ($s['new']){ $newStr.='<span class="new"></span>'; } } echo '<li class="'.$selectedClassStr.'"> <a href="'.$s['link'].'">'.$s['name'].'</a>'.$newStr.'</li>'; if ($s['name']=='模板管理'&&is_dir($_SERVER['DOCUMENT_ROOT'].'/cms')&&!strpos($_SERVER['HTTP_HOST'],'pigcms')){ echo '<li class="subCatalogList"> <a href="/cms/manage/index.php">高级模板</a><span class="new"></span></li>'; } $j++; } } echo '</ul>'; $i++; } ?>


</ul>
</div>
</div>
<script type="text/javascript">
$(document).ready(function(){
	$(".nav-header").mouseover(function(){
		$(this).css('background-color','#126CA9');
	}).mouseout(function(){
		$(this).css('background-color','#2f8bc9');
	}).click(function(){
		$(this).toggleClass('nav-header-current');
		$(this).next('.ckit').slideToggle();
	})
});
</script>
<link rel="stylesheet" type="text/css" href="./tpl/User/default/common/css/cymain.css" />


<script src="/tpl/static/artDialog/jquery.artDialog.js?skin=default"></script>
<script src="/tpl/static/artDialog/plugins/iframeTools.js"></script>

<div class="content">
          <div class="cLineB"><h4>群发信息</h4></div>

<div class="msgWrap form">
<ul id="tags" style="width:100%">
<li>
				<a href="?g=User&m=Message&a=index">发送消息（通过群发接口）</a> 
			</li>
		<li class="selectTag">
				<a href="?g=User&m=Message&a=index2">发送消息（通过客服接口）</a> 
			</li>
			<li>
				<a href="?g=User&m=Message&a=sendHistory">发送记录</a> 
			</li>
			<li>
				<a href="?g=User&m=Message&a=help">帮助说明</a> 
			</li>
						<div class="clr" style="height:1px;background:#eee;margin-bottom:20px;"></div>
		</ul>
</div>

          <div class="ftip" style="margin:25px auto 5px auto;height:73px;">多媒体上传限制：图片最大128K，支持JPG格式；语音最大256K，播放长度不超过60s，支持AMR\MP3格式；视频（video）最大1MB，支持MP4格式；媒体文件在后台保存时间为3天，3天后将失效。 </div>
          <form method="post" action="<?php echo U('Message/index');?>">
          <div class="msgWrap form">
            <table class="userinfoArea" border="0" cellspacing="0" cellpadding="0" width="100%">
              <tbody>
  <tr>
              		<th>消息类型</th>
              		<td>
              		<select name="msgtype">
              		<option value="text">文字消息</option>
              		<option value="image">图片消息</option>
              		<option value="voice">语音消息</option>
              		<option value="video">视频消息</option>
              		<option value="music" style="display:none">音乐消息</option>
              		<option value="news">图文消息</option>
              		</select>
              		</td>
              		</tr>
              		<tr> 
        <th>标题</th> 
        <td><input type="text" id="title" name="title" value="<?php echo ($info["title"]); ?>" class="px require" style="width:200px;" /> 仅发送视频的时候填写</td> 
       </tr> 
              		<TR>
  <TH>媒体文件</TH>
  <TD><input type="input" class="px" id="media" name="mediasrc" style="width:250px"> <script src="/tpl/static/upyun.js"></script><a href="###" onclick="chooseFile('media','background')" class="a_upload">选择</a>&nbsp;&nbsp;&nbsp;<a href="###" onclick="upyunPicUpload('media',1500,1000,'<?php echo ($token); ?>')" class="a_upload">上传</a> 仅发送图片消息、语音消息或视频消息的时候填写</TD>
</TR>
<tr> 
        <th><span class="red"></span>文本消息/简介</th> 
        <td><textarea name="text" class="px" style="width:500px;height:120px;"></textarea><br />发送文本消息的时候作为文本内容，视频消息的时候作为视频简介</td> 
       </tr>
<TR>
  <TH valign="top"><label for="keyword">图文消息</label></TH>
  <TD>
  <script>
  function addImgMessage(){
	art.dialog.data('titledom', 'titledom');
	art.dialog.data('imgids', 'imgids');
	art.dialog.open('?g=User&m=Message&a=img',{lock:true,title:'选择图文消息',width:600,height:400,yesText:'关闭',background: '#000',opacity: 0.45});
}
 function clearMessage(){
 	document.getElementById('titledom').innerHTML='';
 	document.getElementById('imgids').value='';
}
  </script>
  
  <style>
  html, body {
	/*position:relative;
	height:100%;*/
	color:#222;
	font-family:Microsoft YaHei, Helvitica, Verdana, Tohoma, Arial, san-serif;
	background-color:#ffffff;
	margin:0;
	padding: 0;
	text-decoration: none;
}
body >.tips {
	position:fixed;
	display:none;
	top:50%;
	left:50%;
	z-index:100;
	text-align:center;
	padding:20px;
	width:200px;
}
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, th, td {
	margin:0;
	padding:0;
}
table {
	border-collapse:collapse;
	border-spacing:0;
}
.text img {
	max-width: 100%;
}
fieldset, img {
	border:0;
}
address, caption, cite, code, dfn, em, th, var {
	font-style:normal;
	font-weight:normal;
}
ol, ul {
	list-style: none outside none;
	margin:0;
	padding: 0;
}
caption, th {
	text-align:left;
}
h1, h2, h3, h4, h5, h6 {
	font-size:100%;
	font-weight:normal;
}
a {
	color:#000000;
	text-decoration: none;
}
.left {
	float:left
}
.right {
	float:right
}
#activity-detail {
	padding:15px 15px 0;
	background:#EFEFEF;
}
.clr {
	display:block;
	clear:both;
	height:1px;
	overflow:hidden;
}
/*文本*/
#iphone {
	background:url(../images/iPhone-render.png) no-repeat 0 0;
	height: 743px;
	position:relative;
	margin: 0 auto;
	overflow:hidden;
	width: 380px;
}
#iphone #activity-detail {
	height: 414px;
	left: 33px;
	overflow: auto;
	padding: 0;
	position: absolute;
	top: 197px;
	width: 319px;
	background:#EFEFEF;
}
#iphone .nickname {
	color: #CCCCCC;
	display: block;
	font-weight: bold;
	line-height: 45px;
	position: absolute;
	text-align: center;
	text-shadow: 0 1px 3px #000000;
	top: 152px;
	left: 33px;
	width: 320px;
}
#news-render {
}
#news-text { 
}
.keywordtext {
	background-color: #F3F1DA;
	height: 366px;
	overflow: auto;
	padding: 0;
	width: 319px;
	left: 33px;
	top: 197px;
	position: absolute;
}
.keywordtext .me {
	margin-top:30px
}
.you {
	float:left;
	width:100%; /*ie6 hack*/
	_background:none;
	_border:none;
}
.me {
	float:right;
	width:100%;
}
.chatItemContent {
	cursor:pointer;
}
.cloudPannel {
	position: relative;
	_position:static;
}
.chatItem {
	padding:4px 0px 10px 0px;
	_background:none;
	_border:none;
}
.chatItem .avatar {
	width:38px;
	height:38px;
	border:1px solid #ccc\9;
	border: 1px solid #CCCCCC;
	box-shadow: 0 1px 3px #D3D4D5;
	border-radius:5px;
	-moz-border-radius:5px;
	-webkit-border-radius:5px;
}
.chatItem .cloud {
	max-width:240px; /*border-radius:11px; border-width:1px; border-style:solid; */
	cursor:default;
	position: static;
}
.chatItem .cloud {/*for ie*/
	/*position: relative;*/
		padding: 0px;
	margin: 0px;
}
.me .avatar {
	float:right;
}
.me .cloud { /*position:relative;*/
	float:right;
	min-width:50px;
	max-width:200px;
	margin:0 15px 0 0;
}
.chatItem .cloudContent { /* position:relative;for ie*/
	text-align:left; /*padding:2px; line-height:1.2; */
	font-weight:normal;
	font-size:16px;
	min-height:20px;
	word-wrap:break-word;
}
.me .cloudText .cloudBody {
	-moz-border-top-colors:none;
	-moz-border-right-colors:none;
	-moz-border-bottom-colors:none;
	-moz-border-left-colors:none;
	border-color:transparent;
	border:1px solid #AFAFAF;
	border-radius:5px;
	-moz-border-radius:5px;
	-webkit-border-radius:5px;
	box-shadow: 0px 1px 3px #D5D5D5;
	border:1px solid #9f9f9f\9;
	background:#ECECEC\9;
	border-radius:6px\9;
	margin-left:8px;
}
.me .cloudContent {
	border:1px solid #eee\9;
	border-top:1px solid #FFF;
	border-bottom:1px solid #F2F2F2;
	padding:13px\9;
	border-radius:13px\9;
	border-radius:4px;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
	overflow:hidden;
	color:#000;
	text-shadow:none;
	background-color:#ECECEC;
	background:-webkit-gradient(linear,  left top, left bottom,  from(#F4F4F4), to(#E5E5E5),  color-stop(0.1, #F3F3F3), color-stop(0.3, #F1F1F1), color-stop(0.5, #ECECEC), color-stop(0.7, #E9E9E9), color-stop(0.9, #E6E6E6), color-stop(1.0, #E5E5E5));
	background-image:-moz-linear-gradient(top, #F3F3F3 10%, #F1F1F1 30%, #ECECEC 50%, #E9E9E9 70%, #E6E6E6 90%, #E5E5E5 100%);
}/*.cloudText*/
.me .cloudText .cloudArrow {
	position: absolute;
	right: -10px;
	top: 11px;
	width: 13px;
	height: 24px;
	background: url(../images/bubble_right.png) no-repeat;
}
.me .cloudText .cloudContent {
	background-color:#E5E5E5;
	vertical-align: top;
	padding:7px 10px;
	background-color:#ECECEC\9;
}
.you .avatar {
	float:left;
}
.you .cloud { /*position:relative;8.3*/
	float:left;
	min-width:50px;
	max-width:200px;
	margin:0 0 0 15px;
}
.you .cloudText .cloudBody {
	-moz-border-top-colors:none;
	-moz-border-right-colors:none;
	-moz-border-bottom-colors:none;
	-moz-border-left-colors:none;
	border-color:transparent;
	/*border-style:solid;
		border-width:1px;
		border-color:#7B9F45 #7B9F45 #7B9F45 #7B9F45;*/
		border: 1px solid #7AA23F;
	border-radius:5px;
	-moz-border-radius:5px;
	-webkit-border-radius:5px;
	box-shadow: 0px 1px 3px #8DA254;
	border:1px solid #73972a\9;
	border-radius:6px\9;
	/*background-color:#A1D251;
		
		background:-webkit-gradient(linear, left top,left bottom, from(#C2DE8E),to(#8EBF3A), 
			color-stop(0.1,#BFDC89),color-stop(0.2,#B7D978),color-stop(0.3,#B3D870),
			color-stop(0.4,#A8D45D),color-stop(0.5,#A2D254),color-stop(0.6,#9DCE4C),
			color-stop(0.7,#96C742),color-stop(0.8,#92C23E),color-stop(0.9,#8FBF3B),color-stop(1.0,#8EBF3A));
		background-image:-moz-linear-gradient(top, #C2DE8E 0%, #BFDC89 10%, #B7D978 20%, #B3D870 30%, #A8D45D 40%, #A2D254 50%, #9DCE4C 60%, #96C742 70%, #92C23E 80%, #8FBF3B 90%, #8EBF3A 100%);*/
		background-color: #AEDC43;
}
.you .cloudText .cloudContent {
	padding:5px 13px\9;
	border-radius:13px\9;
	border-radius:5px;
	-moz-border-radius:5px;
	-webkit-border-radius:5px;
	padding:7px 10px;
	text-shadow:none;
	color:#030303;
	/*border-top:1px solid #E3EFC9;
		border-bottom:1px solid #8EBF3A;
		border-right:1px solid #A4D257;
		background-color:#C0DC85\9;*/
		border-top: 1px solid #DCE6C8;
	border-bottom: 1px solid #B9CF8B;
	border-right: 1px solid #CCDEA3;
}
.you .cloudText .cloudArrow {
	position: absolute;
	left: -6px;
	top: 11px;
	width: 13px;
	height: 24px;
	background: url(../images/bubble_left.png) no-repeat;
}
/*单条多条图文*/
	.chatPanel .media a {
	display:block;
}
.chatPanel .media {
	border:1px solid #cdcdcd;
	box-shadow:0 3px 6px #999999;
	-webkit-border-radius:12px;
	-moz-border-radius:12px;
	border-radius:12px;
	width:285px;
	background-color:#FFFFFF;
	background:-webkit-gradient(linear,  left top, left bottom,  from(#FFFFFF), to(#FFFFFF));
	background-image:-moz-linear-gradient(top, #FFFFFF 0%, #FFFFFF 100%);
	margin:0px auto;
}
.chatPanel .media .mediaPanel {
	padding:0px;
	margin:0px;
}
.chatPanel .media .mediaImg {
	margin: 25px 15px 15px;
	width: 255px;
	position: relative;
}
.chatPanel .media .mediaImg .mediaImgPanel {
	position:relative;
	padding:0px;
	margin:0px;
	max-height:164px;
	overflow:hidden;
}
.chatPanel .media .mediaImg img {
	/* width:100%;
		height:164px;
		position:absolute;
		left:0px;*/
		width:255px;
}
.chatPanel .media .mediaImg .mediaImgFooter {
	position: absolute;
	bottom: 0;
	height:29px;
	background-color:#000;
	background-color:rgba(0, 0, 0, 0.4);
	text-shadow:none;
	color:#FFF;
	text-align:left;
	padding:0px 11px;
	line-height:29px;
	width:233px;
}
.chatPanel .media .mediaImg .mediaImgFooter a:hover p {
	color:#B8B3B3;
}
.chatPanel .media .mediaImg .mediaImgFooter .mesgTitleTitle {
	line-height:28px;
	color:#FFF;
	max-width:240px;
	height:26px;
	white-space:nowrap;
	text-overflow:ellipsis;
	-o-text-overflow:ellipsis;
	overflow:hidden;
	width: 240px;
}
.chatPanel .media .mesgIcon {
	display:inline-block;
	height:19px;
	width:13px;
	margin:8px 0px -2px 4px;
	background:url(../images/mesgIcon.png) no-repeat;
}
.chatPanel .media .mediaContent {
	margin:0px;
	padding:0px;
}
.chatPanel .media .mediaContent .mediaMesg {
	border-top:1px solid #D7D7D7;
	padding:10px;
}
.chatPanel .media .mediaContent .mediaMesg .mediaMesgDot {
	display: block;
	position:relative;
	top: -3px;
	left:20px;
	height:6px;
	width:6px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
}
.chatPanel .media .mediaContent .mediaMesg .mediaMesgTitle:hover p {
	color:#1A1717;
}
.chatPanel .media .mediaContent .mediaMesg .mediaMesgTitle a {
	color:#707577;
}
.chatPanel .media .mediaContent .mediaMesg .mediaMesgTitle a:hover p {
	color:#444440;
}
.chatPanel .media .mediaContent .mediaMesg .mediaMesgIcon {
}
.chatPanel .media .mediaContent .mediaMesg .mediaMesgTitle p {
	line-height:1.5em;
	max-height: 45px;
	max-width: 220px;
	min-width:176px;
	margin-top:2px;
	color:#5D6265;
	text-overflow:ellipsis;
	-o-text-overflow:ellipsis;
	overflow:hidden;
	text-align: left;
	text-overflow:ellipsis;
}
.chatPanel .media .mediaContent .mediaMesg .mediaMesgIcon img {
	height:45px;
	width:45px;
}
/*media mesg detail*/
	.chatPanel .media .mediaHead {
	/*height:48px;*/
		padding:0px 15px 4px;
	border-bottom:0px solid #D3D8DC;
	color:#000000;
	font-size:20px;
}
.chatPanel .media .mediaHead .title {
	line-height:1.2em;
	margin-top: 22px;
	display:block;
	max-width:312px;
	text-align: left;/*height:25px;
		white-space:nowrap;
		text-overflow:ellipsis;
		-o-text-overflow:ellipsis;
		overflow:hidden;*/
	}
.chatPanel .mediaFullText .mediaImg {
	width:255px;
	padding:0;
	margin:0 15px;
	overflow:hidden;
	max-height:164px;
}
.chatPanel .mediaFullText .mediaImg img {
/*margin-top:17px;
		position:absolute;*/
}
.chatPanel .mediaFullText .mediaContent {
	padding:0 0 15px;
	font-size:16px;
	line-height: 1.5em;
	text-align:left;
	color:#222222;
}
.chatPanel .mediaFullText .mediaContentP {
	margin:12px 15px 0px;
	border-bottom:1px solid #D3D8DC;
}
.chatPanel .media .mediaHead .time {
	margin:0px;
	margin-top: 21px;
	color:#8C8C8C;
	background:none;
	width:auto;
	font-size:12px;
}
.chatPanel .media .mediaFooter {
	-webkit-border-radius:0px 0px 12px 12px;
	-moz-border-radius:0px 0px 12px 12px;
	border-radius:0px 0px 12px 12px;
	padding: 0 15px;
}
.chatPanel .media .mediaFooter a {
	color:#222222;
	font-size:16px;
	padding:0;
}
.chatPanel .media .mediaFooter .mesgIcon {
	margin:15px 3px 0px 0px;
}
.chatPanel .media a:hover {
	cursor: pointer;
}
.chatPanel .media a:hover .mesgIcon {
}
.mediaContent a:hover {
	background-color: #F6F6F6;
}
.mediaContent .last:hover {
	-webkit-border-radius:0px 0px 12px 12px;
	-moz-border-radius:0px 0px 12px 12px;
	border-radius:0px 0px 12px 12px;
	background-color: #F6F6F6;
}
.mediaFullText:hover {
	background-color: #F6F6F6;
	background:-webkit-gradient(linear,  left top, left bottom,  from(#F6F6F6), to(#F6F6F6));
	background-image:-moz-linear-gradient(top, #F6F6F6 0%, #F6F6F6 100%);
}


  </style>
<div class="chatPanel" style="width:280px;">
  <div un="item_1741035" class="chatItem you"> 
  　<a target="ddd" href="###">
<div class="media mediaFullText" id="titledom">

<div class="mediaPanel">
<div class="mediaHead"><span class="title" id="zbt">图文消息标题</span><span class="time"><?php echo date('Y-m-d',time());?></span>
<div class="clr"></div>
</div>
<div class="mediaImg"><img id="suicaipic1" src="/tpl/static/message/oid.jpg"></div>
<div class="mediaContent mediaContentP">
<p id="zinfo">消息简介</p>
</div>
<div class="mediaFooter">
<span class="mesgIcon right"></span><span style="line-height:50px;" class="left">查看全文</span>
<div class="clr"></div>
</div>
</div>
</div>
</a>
</div>
</div>

<div style="clear:both"></div>

 <input type="hidden" class="px" id="imgids" value="" name="imgids" style="width:300px" >  <br>
 <a href="###" onclick="addImgMessage()" class="a_choose">选择图文消息</a>&nbsp;&nbsp;<a style="display:none" href="###" onclick="clearMessage()" class="a_clear">清空重选</a>
 

  </TD>
  <TD>&nbsp;</TD>
</TR>

<tr>
	<th></th>
	<td><button type="submit" name="button" class="btnGreen">发送</button>　<a href="javascript:history.go(-1);" class="btnGray vm">取消</a></td>
</tr>
 </tbody>
</table>
            
          </div>
          </form>
          
        </div>
</div>
</div>
</div>

<style>
.IndexFoot {
	BACKGROUND-COLOR: #333; WIDTH: 100%; HEIGHT: 39px
}
.foot{ width:988px; margin:0px auto; font-size:12px; line-height:39px;}
.foot .foot_page{ float:left; width:600px;color:white;}
.foot .foot_page a{ color:white; text-decoration:none;}
#copyright{ float:right; width:380px; text-align:right; font-size:12px; color:#FFF;}
</style>
<div class="IndexFoot" style="height:120px;clear:both">
<div class="foot" style="padding-top:20px;">
<div class="foot_page" >
<a href="<?php echo ($f_siteUrl); ?>"><?php echo ($f_siteName); ?>,微信公众平台营销</a><br/>
帮助您快速搭建属于自己的营销平台,构建自己的客户群体。
</div>
<div id="copyright" style="color:white;">
	<?php echo ($f_siteName); ?>(c)版权所有 <a href="http://www.miibeian.gov.cn" target="_blank" style="color:white"><?php echo C('ipc');?></a><br/>
	技术支持：<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($f_qq); ?>&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:<?php echo ($f_qq); ?>:51" alt="联系我吧" title="联系我吧"/></a>

</div>
    </div>
</div>

<div style="display:none">
<?php echo ($alert); ?>
<?php echo base64_decode(C('countsz'));?>
<script src="http://s15.cnzz.com/stat.php?id=5524076&web_id=5524076" language="JavaScript"></script>
</div>
</body>
</html>
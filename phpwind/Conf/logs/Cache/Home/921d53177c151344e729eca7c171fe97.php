<?php if (!defined('THINK_PATH')) exit();?> <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<title><?php echo ($f_siteTitle); ?>-<?php echo ($f_siteName); ?> </title>
<meta name="keywords" content="<?php echo ($f_metaKeyword); ?>"/>
<meta name="description" content="<?php echo ($f_metaDes); ?>"/>
<style>
.main{ width: 1170px; margin:10px auto 0; }
.main-top{ overflow:hidden; width:100%;}
.main-top a{ display:block; margin-top:10px; width:283px; height:154px; background:#fff; float:left; margin-right:10px; position:relative; border:1px solid #FFF;}
.main-top a:hover{ border:1px solid #39b02c;}
.main-top a div.pic{ width:78px; float:left; margin-top:15px; text-align:center;}
.main-top a div.text{ float:left; width:190px; margin-top:15px; }
.main-top a div.text p.text-title{ font-size:16px; color:#333;}
.main-top a div.text p.text-content{ font-size:12px; color:#666; line-height:20px; padding-top:5px;}
.main-top a div.text p.text-content span{ color:#2aa01d;}
.main-top a div.text p.text-link{ color:#2aa01d; float:right; margin-top:5px;}
.main-top a.main-top-app div.text p.text-content{ line-height:17px;}
.main-top a.main-top-app{ margin:0px; margin-top:10px;}

</style>
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/style.css"/>
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/index.css"/>
<!--[if lte IE 6]>
<link rel="stylesheet" type="text/css" href="<?php echo RES;?>/css/ie6.css"/>
<![endif]-->
<script type="text/javascript">window.onerror=function(){return true;}</script>
<script type="text/javascript" src="<?php echo RES;?>/js/lang.js"></script>
<script type="text/javascript" src="<?php echo RES;?>/js/config.js"></script>
<script type="text/javascript" src="<?php echo RES;?>/js/jquery.js"></script>
<script type="text/javascript" src="<?php echo RES;?>/js/common.js"></script>
<script type="text/javascript" src="<?php echo RES;?>/js/page.js"></script>
<script type="text/javascript" src="<?php echo RES;?>/js/jquery.lazyload.js"></script>
<script type="text/javascript">
GoMobile('');
var searchid = 5;
</script>
</head>
<body>
<div class="topbg">
<div class="top">
<div class="toplink">
<div class="welcome">欢迎使用<?php echo ($f_siteName); ?>多用户微信营销服务平台!</div>
    <div class="memberinfo"  id="destoon_member">	
		<?php if($_SESSION[uid]==false): ?>你好&nbsp;&nbsp;<span class="f_red">游客</span>&nbsp;&nbsp;
			<a href="<?php echo U('Index/login');?>">登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;
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
                <li <?php if((ACTION_NAME) == "price"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/price');?>">资费说明</a></li>
                <li <?php if((ACTION_NAME) == "common"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/common');?>">微信导航</a></li>
                <li <?php if((GROUP_NAME) == "User"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('User/Index/index');?>">管理中心</a></li>
                <li <?php if((ACTION_NAME) == "help"): ?>class="menuon"<?php endif; ?>><a href="<?php echo U('Home/Index/help');?>">帮助中心</a></li>
            
            </ul>
        </div>
        </div>
    </div>
</div>
    <div class="slib">
    <div class="sli">
        <div class="sliimg"></div>
            <div class="slic">
            <span style="font-size:1.2em; font-weight:normal"><?php echo ($f_siteName); ?>微信公众号管理服务平台</span><br /><br />
                <span style="font-size:1.8em">汇聚行业数十套解决方案，助力企业营销腾飞</span><br /><br />
                <span style="font-size:1.2em; font-weight:normal">突破微信公众平台限制,无限自定义图文回复.<br />微信公众账号轻松接入,众多智能服务瞬间开启</span>
            </div>
        <div class="slit">
            <ul>
                <li><a href="<?php echo U('Index/login');?>"><img src="<?php echo RES;?>/images/zc.png" /></a></li>
                    <li><a href="<?php echo U('Index/reg');?>"><img src="<?php echo RES;?>/images/dl.png" /></a></li>
                </ul>
            </div>
        </div>
    </div>
    
<div class="index_virtue">    
<ul>
  <li class="first">
   <div class="virtue_point_img"><img src="<?php echo RES;?>/images/s-weiwangzhan-01.png" /></div>
   <h1 class="virtue_point_title"><a href="#">微网站</a></h1>
   <p class="virtue_point_intro">将企业微网站植入微信公众平台<br />关注公众平台即可访问网站</p>
  </li>
  <li>
   <div class="virtue_point_img"><img src="<?php echo RES;?>/images/s-quanfa-01.png" /></div>
   <h1 class="virtue_point_title"><a href="#">微信互动营销</a></h1>
   <p class="virtue_point_intro">大转盘、刮刮卡，会员卡  <br /> 客户互动很轻松 </p>
  </li>
  <li>
   <div class="virtue_point_img"><img src="<?php echo RES;?>/images/s-yijian-01.png" /></div>
   <h1 class="virtue_point_title"><a href="#">一站式管理</a></h1>
   <p class="virtue_point_intro">一个帐号管理多个微信公众号<br />轻松方便，快捷！</p>
  </li>
 </ul>
</div>    
    
  
<div class="main" style=" width: 1170px; margin:10px auto 0;">
<div class="main-top">
            <a target="_blank" href="javascript:void(0)">
                    <div class="pic"><img src="<?php echo RES;?>/images/13850268737627.png"></div>
                    <div class="text">
                        <p class="text-title">微3G网站</p>
                        <p class="text-content">微赢销全国首创微3G网站，超出60个精美模板，还有自定义模板可为商家单独设计，服务号和订阅号都可以使用。</p>
                        <p class="text-link">详情&gt;&gt;</p>
                    </div>
                </a><a target="_blank" href="javascript:void(0)">
                    <div class="pic"><img src="<?php echo RES;?>/images/13850270219865.png"></div>
                    <div class="text">
                        <p class="text-title">微活动</p>
                        <p class="text-content">优惠券、幸运大转盘、刮刮乐等活动吸引用户参与、增强用户沉淀、带动周边朋友一起分享，从而形成口碑营销效果。</p>
                        <p class="text-link">详情&gt;&gt;</p>
                    </div>
                </a><a target="_blank" href="javascript:void(0)">
                    <div class="pic"><img src="<?php echo RES;?>/images/13850270941561.png"></div>
                    <div class="text">
                        <p class="text-title">自定义图文回复</p>
                        <p class="text-content">小黄鸡陪聊，可轻松查询天气、火车路线等信息，还可设置关键词自动回复，让你的用户在无聊时想起你。</p>
                        <p class="text-link">详情&gt;&gt;</p>
                    </div>
                </a><a target="_blank" href="javascript:void(0)" class="main-top-app">
                    <div class="pic"><img src="<?php echo RES;?>/images/13850283261163.png"></div>
                    <div class="text">
                        <p class="text-title">自定义菜单</p>
                        <p class="text-content">用户无需再通过输入关键词触发回复，直接点击菜单就可看相关内容，并能定制个性化功能，带给粉丝更好更直观的感受。</p>
                        <p class="text-link">详情&gt;&gt;</p>
                    </div>
                </a><a target="_blank" href="javascript:void(0)">
                    <div class="pic"><img src="<?php echo RES;?>/images/13850280782680.png"></div>
                    <div class="text">
                        <p class="text-title">微会员卡</p>
                        <p class="text-content">在微信内植入会员卡，用户携带方便，商家的微信会员管理平台也永存用户的消费记录，企业日后精准营销更简单。</p>
                        <p class="text-link">详情&gt;&gt;</p>
                    </div>
                </a><a target="_blank" href="javascript:void(0)">
                    <div class="pic"><img src="<?php echo RES;?>/images/13850279931858.png"></div>
                    <div class="text">
                        <p class="text-title">微预约</p>
                        <p class="text-content">微预约是支持在线预约的一种服务，尤其适用于汽车、房产、酒店、医疗、餐饮、KTV等行业，操作简单，反应快捷。</p>
                        <p class="text-link">详情&gt;&gt;</p>
                    </div>
                </a><a target="_blank" href="javascript:void(0)">
                    <div class="pic"><img src="<?php echo RES;?>/images/13853692493523.png"></div>
                    <div class="text">
                        <p class="text-title">微商城</p>
                        <p class="text-content">微商城可支持线上下单、线下消费，有独立的后台管理系统，能支持商家超过50个SKU的在线展示。</p>
                        <p class="text-link">详情&gt;&gt;</p>
                    </div>
                </a><a target="_blank" href="javascript:void(0)" class="main-top-app">
                    <div class="pic"><img src="<?php echo RES;?>/images/1385369271568.png"></div>
                    <div class="text">
                        <p class="text-title">微团购</p>
                        <p class="text-content">微团购实现了从：下订单-订单码生成-用户到店消费-商家验证-数据结算的整个流程，完全吸纳了线上预订、线下消费的体验形式。</p>
                        <p class="text-link">详情&gt;&gt;</p>
                    </div>
                </a>        </div>
</div>
  <div class="bor">
    <ul>
        <li>
            <div class="leftI"><img src="<?php echo RES;?>/images/l1.png" /></div>
                <div class="leftT">
                <div class="t">微信账号集中一站管理</div>
                    <div class="b">支持多个微信账号的添加与管理，节约运营成本。</div>
                </div>
            </li>
            
            <li>
            <div class="leftI"><img src="<?php echo RES;?>/images/l2.png" /></div>
                <div class="leftT">
                <div class="t">无限自定义图文回复</div>
                    <div class="b">突破微信公众平台内容限制，快速响应预设回复</div>
                </div>
            </li>
            
            <li>
            <div class="leftI"><img src="<?php echo RES;?>/images/l3.png" /></div>
                <div class="leftT">
                <div class="t">众多便捷工具免费享用</div>
                    <div class="b">拥有多款查询小工具,提高微信公众账号活跃度。</div>
                </div>
            </li>
            
            <li>
            <div class="leftI"><img src="<?php echo RES;?>/images/l4.png" /></div>
                <div class="leftT">
                <div class="t">淘宝店铺商品快速导入</div>
                    <div class="b">倡导手机淘宝，引领微支付前沿，一键快速添加。</div>
                </div>
            </li>
            
            <li>
            <div class="leftI"><img src="<?php echo RES;?>/images/l5.png" /></div>
                <div class="leftT">
                <div class="t">强大的商家运营管理</div>
                    <div class="b">实现本地商家与微信用户直接的消费营销互动。</div>
                </div>
            </li>
            
            <li>
            <div class="leftI"><img src="<?php echo RES;?>/images/l6.png" /></div>
                <div class="leftT">
                <div class="t">网站完美兼容其他接口</div>
                    <div class="b">整合第三方应用接口，实现网站与平台数据互通。</div>
                </div>
            </li>
        </ul>
    </div>
    <div class="c" >
    <div class="cT">最新功能<span></span></div>
    </div>
    <div class="center"  >
    <div class="centerc">
        <div class="centercc">
            <div class="centerccT">
                <div class="name">图文应用-<span class="tag">直观便捷</span></div>
                    <div class="contex">微信接口服务平台是国内首家以图文并茂形式开展趣味应用类的微信服务平台，微90奔着方便、快捷、直观的理念，趣味类应用一经问世便收到了众多微信主的一致好评，我们将不断拓展新思路，将为广大微信主提供更优质的应用</div>
                </div>
                <div class="img"><img src="<?php echo RES;?>/images/c1.png" /></div>
            </div>
        </div>
        <BR /><BR />
        <div class="centerc">
        <div class="centercc">
            <div class="centerccT">
                <div class="name">应用测试-<span class="tag">趣味十足</span></div>
                    <div class="contex">为了让您的粉丝互动性更强，粘性度更大，本站开创了独家测试应用功能，操作简单，趣味性高。让公众号摆脱了只是一个功能查询的软肋。游戏性测试功能我们会逐渐增加，让更多的使用者受益。</div>
                </div>
                <div class="img"><img src="<?php echo RES;?>/images/c2.png" /></div>
            </div>
        </div>
        
        <BR /><BR />
        <div class="centerc">
        <div class="centercc">
            <div class="centerccT">
                <div class="name">模板选择-<span class="tag">更多更全</span></div>
                    <div class="contex">我们将不断推出各种<span>首页模板</span>、<span>分类页模板</span>、<span>详情页模板</span>提供您使用，让您的WAP网站更加精彩！您只需到模板管理中心选择想要展示的模板，即可让您的用户看到您最新的内容。</div>
                </div>
                <div class="img"><img src="<?php echo RES;?>/images/c3.png" /></div>
            </div>
        </div>
        
    </div>
    <div style="width:960px;padding:20px;margin:0 auto">友情链接：<?php if(is_array($links)): $i = 0; $__LIST__ = $links;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$loo): $mod = ($i % 2 );++$i;?><a href="<?php echo ($loo["url"]); ?>" ><?php echo ($loo["name"]); ?></a>&nbsp;&nbsp;<?php endforeach; endif; else: echo "" ;endif; ?></div>
</div>
<div class="IndexFoot" style="height:120px;">
<div class="foot">
<div class="foot_page">
<a href="/"><?php echo ($f_siteName); ?>,微信公众平台营销源码</a><br/>
帮助您快速搭建属于自己的营销平台,构建自己的客户群体。<br/>
大转盘、刮刮卡，会员卡,优惠卷,订餐,订房等营销模块,客户易用,易懂,易营销。
</div>
<div id="copyright">
	<?php echo ($f_siteName); ?>(c) 版权所有<br/>
	<a href="http://www.miibeian.gov.cn" target="_blank" style="color:white"><?php echo C('ipc');?></a><br/>
	QQ咨询：<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($f_qq); ?>&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:<?php echo ($f_qq); ?>:51" alt="联系我吧" title="联系我吧"/></a>

</div>
    </div>
</div>
<div style="display:none">
<?php echo base64_decode(C('countsz'));?>
</div>
</body>
</html>
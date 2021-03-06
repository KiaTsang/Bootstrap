<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html lang="en-us">
	<head>
		<meta charset="utf-8">
		<!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->

		<title><s:text name="global.eipd"/></title>
		<meta name="description" content="">
		<meta name="author" content="">

		<!-- Use the correct meta names below for your web application
			 Ref: http://davidbcalhoun.com/2010/viewport-metatag

		<meta name="HandheldFriendly" content="True">
		<meta name="MobileOptimized" content="320">-->

		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<!-- Basic Styles -->
		<link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="css/font-awesome.min.css">

		<!-- SmartAdmin Styles : Please note (smartadmin-production.css) was created using LESS variables -->
		<link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-production.css">
		<link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-skins.css">

		<!-- SmartAdmin RTL Support is under construction
			<link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-rtl.css"> -->

		<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
		<link rel="stylesheet" type="text/css" media="screen" href="css/demo.css">

		<!-- FAVICONS -->
		<link rel="shortcut icon" href="img/favicon/favicon.ico" type="image/x-icon">
		<link rel="icon" href="img/favicon/favicon.ico" type="image/x-icon">

		<!-- GOOGLE FONT -->
		<!-- <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700"> -->

		<style type="text/css">

			body {
				background-image: none;
				min-height: 200px !important;
			}
			#wrapper {
				width: 100%;
			}
			#mainContent {
				position:absolute;
				width: 1080px;
				/*height: 340px;*/
				height: 456px;
				top: 50%;
				left: 50%;
				margin-top: -280px;
				margin-left: -540px;
			}
			#leftContent {
				float: left;
				width: 580px;
				height: 340px;
			}
			#rightContent {
				float: left;
				width: 500px;
				height: 340px;
				padding-left: 60px;
				margin-top: 40px;
			}
			#footContent {
				font-size: 100%;
				background-color: #eee;
				position: fixed;
				height: 88px;
				bottom: 0;
				left: 0;
				right: 0;
				width: auto;
				z-index: 250000;
				padding: 30px;
			}

			/* left */
			.leftTitle {
				font-size: 32px;
				/*margin-bottom: 10px;*/
			}
			.leftTitle div {
				float: left;
			}
			.leftTitle img {

			}
			.simpleTile {
				float: left;
				color: #FFFFFF;
				height: 150px;
				cursor: pointer;
			}
			.simpleTile div {
				position: relative;
				top: 50%;
				font-size: 21px;
			}
			.dtms {
				width: 50%;
				height: 165px;
				background-color: #438EB9;
				border-right: 2px solid #FFFFFF;
				border-bottom: 2px solid #FFFFFF;
			}
			.itms {
				width: 50%;
				height: 165px;
				background-color: #C79121;
				border-left: 2px solid #FFFFFF;
				border-bottom: 2px solid #FFFFFF;
			}
			.sys {
				width: 50%;
				height: 165px;
				background-color: #6E587A;
				border-left: 2px solid #FFFFFF;
				border-top: 2px solid #FFFFFF;
			}
			.unselectedTile {
				/*position: fixed;*/
				/*background-color: #C0C0C0;*/
				opacity: 1;
			}
			.selectedTile {
			    border: 3px solid #0091D9 !important;
			}
			.simpleTile .tileFlag {
				font-size: 21px;
			}
			.simpleTile .tileFlag:before {
			    color: #FFFFFF;
			    content: "";
			    display: block;
			    font-family: FontAwesome;
			    position: absolute;
			    right: 4px;
			    z-index: 2;
			}
			.simpleTile .tileFlag:after {
			    border-left: 55px solid rgba(0, 0, 0, 0);
			    /*border-top: 35px solid #0091D9;*/
			    border-top: 55px solid #0072C6;
			    content: " ";
			    display: block;
			    height: 0;
			    position: absolute;
			    right: 0;
			    top: 0;
			    width: 0;
			    z-index: 1;
			}
			.leftFooter {
				margin-top: 40px;
			}

			/* right */
			#rightTitle {
				float: left;
				width: 100%;
				height: 54px;
				font-size: 32px;
				margin-bottom: 20px;
				color: #0072C6;
			}
			#divForm {
				float: left;
				width: 100%;
			}
			#btnSubmit {
				width: 84px;
				padding: 5px 5px;
				margin: 10px 0;
				background-color: #0072C6;
				color: #FFFFFF;
			}
			.easyBlue {
				color: #0072C6;
			}

			/* 背景图片 */
			#backImg {
				position: fixed;
				width: 226px;
				height: 240px;
				/*top: 50%;*/
				/*left: 75%;*/
				/*right: 0px;*/
				background-image: url(img/login/watermark.png);
				background-repeat: no-repeat;
				top: 50%;
				left: 50%;
				margin-top: 50px;
				margin-left: 457px;
			}

			/* jquery validator */
		    em.invalid {
		        font-size: 10px;
		        color: red;
		        padding-top: -15px;
		    }
		    
		    .leftTitle sup {
		      margin-left: -12px;
		      background-color: rgb(53, 110, 53);
		    }
		</style>

	</head>
	<body class="animated fadeInDown">
        <input id="dtmsURL" type="hidden" value="${dtmsURL}">
        <input id="itmsURL" type="hidden" value="${itmsURL}">
        <input id="sysURL" type="hidden" value="${sysURL}">
        <input id="pmsURL" type="hidden" value="${pmsURL}">
        <input id="knowlegeURL" type="hidden" value="${knowlegeURL}">
		<div id="wrapper">

			<!-- MAIN CONTENT -->
			<div id="mainContent" class="">

				<div id="leftContent">
					<div class="leftTitle">
						<img src="img/login/companyLogo.png">
						<sup class="badge bounceIn animated"><s:text name="global.version"/></sup>
					</div>
					<div class="clearfix"></div>
					<div class="simpleTile dtms text-center selectedTile" data-key="dtms"><img src="img/login/systemName_01.png"></div>
					<div class="simpleTile itms text-center" data-key="itms"><img src="img/login/systemName_02.png"></div>
                    <div class="simpleTile sys text-center" data-key="sys"><img src="img/login/systemName_05.png"></div>
					<div class="clearfix"></div>
					<div class="leftFooter">
						<p>公司网站&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;友情链接&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;法律声明</p>
						<p>东信和平科技股份有限公司&nbsp;&nbsp;&nbsp;</p>
					</div>
				</div>
				<div id="rightContent">
					<div id="rightTitle"><img src="img/login/systemLogo_01.png"></div>
					<div id="divForm">
						<form action="login.jspa" id="loginForm" class="smart-form client-form" method="post">
							<section>
								<label class="label">系统账户 </label>
								<label class="input"> <i class="icon-append fa fa-user"></i>
									<input id="j_username" name="username" placeholder="用户名">
									<b class="tooltip tooltip-top-right"><i class="fa fa-user txt-color-teal"></i> 请输入用户名</b></label>
							</section>

							<section>
								<label class="input"> <i class="icon-append fa fa-lock"></i>
									<input type="password" id="j_password" name="password" placeholder="密码">
									<b class="tooltip tooltip-top-right"><i class="fa fa-lock txt-color-teal"></i> 请输入你的密码</b> </label>
							</section>

                            <section>
	                            <s:if test="errorMessage!=NULL">
	                                <em class="txt-color-red"><s:text name="%{getText(errorMessage)}" /></em> </br>
	                            </s:if>
                               <s:if test="hasBeenLogin">
                                <shiro:lacksRole name="dtms-user">
                                   <em class="txt-color-red"> 你没有相应权限，请联系管理员！</em>
                                </shiro:lacksRole>
                               </s:if>
                            </section>
                            
							<section>
								<button id="btnSubmit" type="submit" class="btn">
									登录
								</button>
							</section>
						</form>
					</div>
				</div>
			</div>
			<div id="backImg"></div>
		</div>

		<!--================================================== -->

		<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
		<script src="js/plugin/pace/pace.min.js"></script>

        <!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
        <script src="js/libs/jquery-2.0.2.min.js"></script>
        <script>
            if (!window.jQuery) {
                document.write('<script src="js/libs/jquery-2.0.2.min.js"><\/script>');
            }
        </script>

        <script src="js/libs/jquery-ui-1.10.3.min.js"></script>
        <script>
            if (!window.jQuery.ui) {
                document.write('<script src="js/libs/jquery-ui-1.10.3.min.js"><\/script>');
            }
        </script>

		<!-- JS TOUCH : include this plugin for mobile drag / drop touch events
		<script src="js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> -->

		<!-- BOOTSTRAP JS -->
		<script src="js/bootstrap/bootstrap.min.js"></script>

		<!-- CUSTOM NOTIFICATION -->
		<script src="js/notification/SmartNotification.min.js"></script>

		<!-- JARVIS WIDGETS -->
		<script src="js/smartwidgets/jarvis.widget.min.js"></script>

		<!-- EASY PIE CHARTS -->
		<script src="js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>

		<!-- SPARKLINES -->
		<script src="js/plugin/sparkline/jquery.sparkline.min.js"></script>

		<!-- JQUERY VALIDATE -->
		<script src="js/plugin/jquery-validate/jquery.validate.min.js"></script>

		<!-- JQUERY MASKED INPUT -->
		<script src="js/plugin/masked-input/jquery.maskedinput.min.js"></script>

		<!-- JQUERY SELECT2 INPUT -->
		<script src="js/plugin/select2/select2.min.js"></script>

		<!-- JQUERY UI + Bootstrap Slider -->
		<script src="js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

		<!-- browser msie issue fix -->
		<script src="js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

		<!-- FastClick: For mobile devices -->
		<script src="js/plugin/fastclick/fastclick.js"></script>

		<!--[if IE 7]>

			<h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>

		<![endif]-->

		<!-- MAIN APP JS FILE -->
		<script src="js/app.js"></script>
		<script type="text/javascript">
		 loadScript("js/login.js", initLogin);
		 function initLogin()
		 {
			 loginTools.login();
		 }
		</script>
	</body>
</html>

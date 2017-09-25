<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html lang="en-us">
<head>
    <meta charset="utf-8">
    <!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->

    <title><s:text name="global.dtms"/></title>

    <meta content="" name="description">
    <meta content="" name="author">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
    <!-- Basic Styles -->
    <link href="<s:url value="/css/bootstrap.min.css"/>" media="screen" rel="stylesheet" type="text/css">
    <link href="<s:url value="/css/font-awesome.min.css"/>" media="screen" rel="stylesheet" type="text/css">
    <!-- SmartAdmin Styles : Please note (smartadmin-production.css) was created using LESS variables -->
    <link href="<s:url value="/css/smartadmin-production.css"/>" media="screen" rel="stylesheet" type="text/css">
    <link href="<s:url value="/css/smartadmin-skins.css"/>" media="screen" rel="stylesheet" type="text/css">
    <%-- <link href="<s:url value="/css/dataTables.colVis.css"/>" media="screen" rel="stylesheet" type="text/css"> --%>
    <!-- Date Picker -->
    <link href="<s:url value="/css/datepicker3.css"/>" media="screen" rel="stylesheet" type="text/css">
    <link href="<s:url value="/css/dataTables.colVis.min.css"/>" media="screen" rel="stylesheet" type="text/css">
    <!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
    <link href="<s:url value="/css/demo.css"/>" media="screen" rel="stylesheet" type="text/css">
    <!-- FAVICONS -->
    <link href="<s:url value="/img/favicon/favicon.ico"/>" rel="shortcut icon" type="image/x-icon">
    <link href="<s:url value="/img/favicon/favicon.ico"/>" rel="icon" type="image/x-icon">
    <!-- GOOGLE FONT -->
    <!--<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700" rel="stylesheet">-->

    <!-- Specifying a Webpage Icon for Web Clip
         Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->
    <link href="<s:url value="/img/splash/sptouch-icon-iphone.png"/>" rel="apple-touch-icon">
    <link href="<s:url value="/img/splash/touch-icon-ipad.png"/>" rel="apple-touch-icon" sizes="76x76">
    <link href="<s:url value="/img/splash/touch-icon-iphone-retina.png"/>" rel="apple-touch-icon" sizes="120x120">
    <link href="<s:url value="/img/splash/touch-icon-ipad-retina.png"/>" rel="apple-touch-icon" sizes="152x152">
    <!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <!-- Startup image for web apps -->
    <link href="<s:url value="/img/splash/ipad-landscape.png"/>"
          media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)"
          rel="apple-touch-startup-image">
    <link href="<s:url value="/img/splash/ipad-portrait.png"/>"
          media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)"
          rel="apple-touch-startup-image">
    <link href="<s:url value="/img/splash/iphone.png"/>" media="screen and (max-device-width: 320px)" rel="apple-touch-startup-image">
    <link href="<s:url value="/css/common.css"/>" media="screen" rel="stylesheet" type="text/css">
    <style>
        .login-info a.btn {
            color:#FFFFFF;
            width:21px;
            margin: 3px 0 3px 3px;
        }
        
        .login-info a.btn :hover {
            color: #F3F3F3;
        }

        .minified  .login-info .shortbtn a.btn{
            height:10px;
            width:15px;
            margin: 1px;
        }

        .minified .login-info {
            height: 105px;
        }

        .minified .login-info a span, .minified .login-info a i {
            display: block;
        }

        /* 锁定header, 开始 */
        #header > :first-child {
            width: 100% !important;
        }
        #header {
            padding-right: 0 !important;
        }
        /* 锁定header, 结束 */

    </style>
</head>

<body class="fixed-header fixed-ribbon fixed-navigation desktop-detected pace-done">

    <!-- HEADER -->
    <!-- possible classes: minified, fixed-ribbon, fixed-header, fixed-width-->

    <header id="header">
        <div class="navbar navbar-default" id="navbar">
        <div class="navbar-container" id="navbar-container">

        <div class="navbar-header pull-left">
            <ul class="nav ace-nav" style="width:50px;float:left;">
                <li style="background-color: #438EB9;">
                    <a href="#" id="show-shortcut">
                        <i class="fa fa-align-justify "></i>
                    </a>
                </li>
            </ul>
            <a href="#" class="navbar-brand">
                <img alt="eIPD - 缺陷管理系统" width="250px" src="<s:url value="/img/logo1_white.png"/>" class="txt-color-white" style="margin-top:-5px;">
            </a><!-- /.brand -->

        </div>
        <!-- /.navbar-header -->

        <div class="navbar-header pull-right" role="navigation">
        <ul class="nav ace-nav">
	        <shiro:hasRole name="dtms-administrator">
               <li class="purple">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="javascript:void(0);" id="synchronizeSearchIndex">同步索引</a>
               </li>
            </shiro:hasRole>
	       
	        <li class="green">
	            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
	                <i class="fa fa-envelope fa-icon-animated-vertical"></i>
	                <span class="badge badge-success bg-color-teal unreadCount">0</span>
	            </a>
	
	            <ul id="notifyUL" class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
	                <li class="dropdown-header">
	                    <i class="fa fa-envelope-o"></i> <span class="unreadCount">0</span>条消息
	                </li>
	                <li>
	                    <a href="<s:url value="/notification/inbox.jspa"/>">
	                        <i class="fa fa-arrow-right "></i>
	                        	查看所有消息
	                    </a>
	                </li>
	            </ul>
	        </li>
	
	        <li class="light-blue">
	            <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                    <s:set var="loginUserName">
                        <shiro:principal property="loginName" />
                    </s:set>
	                <img class="nav-user-photo" id="topLogoPath" src="<s:url value="%{logoPath}"/>" alt="${loginUserName}"/>
	                    <span class="user-info">
	                         <small>欢迎光临</small>
	                         <input class="hidden" id="loginUser" value="<shiro:principal property="loginName" />">
	                         <span>${loginUserName}</span>
	                    </span>
	                <i class="fa fa-sort-down"></i>
	            </a>
	            <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
	                <li>
	                    <a href="<s:url value="/userProfile.jspa"/>">
	                        <i class="fa fa-user"></i>个人资料
	                    </a>
	                </li>
	
	                <li>
	                    <a href="#" data-toggle="modal" data-target="#modifyPasswordModal">
	                        <i class="fa fa-lg fa-plus"></i>更改密码
	                    </a>
	                </li>
	
	                <li class="divider"></li>
	
	                <li>
	                    <a id="logout" href="<s:url value="/logout.jspa"><s:param name="username"><shiro:principal property="loginName" /></s:param></s:url>">
	                        <i class="fa fa-power-off"></i>退出
	                    </a>
	                </li>
	            </ul>
	        </li>
        </ul>
        <!-- /.ace-nav -->
        </div>
        <!-- /.navbar-header -->
        </div>
        <!-- /.container -->
        </div>
    </header>

    <!-- SHORTCUT AREA : With large tiles (activated via clicking user name tag)
    Note: These tiles are completely responsive,
    you can add as many as you like
    -->
    <div id="shortcut">
        <input id="dtmsURL" type="hidden" value="${dtmsURL}">
        <input id="itmsURL" type="hidden" value="${itmsURL}">
        <input id="sysURL" type="hidden" value="${sysURL}">
        <input id="pmsURL" type="hidden" value="${pmsURL}">
        <input id="knowlegeURL" type="hidden" value="${knowlegeURL}">
        <form action="" target="_blank" id="loginAgainForm" class="smart-form client-form" method="post" style="display:none">
            <input  id="j_username" name="username" value="<shiro:principal property="loginName" />" placeholder="用户名">
            <input type="password" id="j_password" name="password" value="123456">
            <input type="password" id="j_sessionId" name="sessionId" value="${sessionId}">
        </form>
        <ul>
            <li>
                <a href="javascript:void(0)" id="itms_login" class="jarvismetro-tile big-cubes bg-color-orange">
                    <span class="iconbox">
                        <i class="fa fa-desktop  fa-4x"></i>
                        <span> 集成测试</span>
                    </span>
                </a>
            </li>
            <li>
                <a href="javascript:void(0)" id="sys_login" class="jarvismetro-tile big-cubes bg-color-purple">
                    <span class="iconbox">
                        <i class="fa fa-cogs fa-4x"></i>
                        <span> 系统管理</span>
                    </span>
                </a>
            </li>
        </ul>
    </div>
    <!-- END SHORTCUT AREA -->
    <!-- ADD MODIFIED PASSWORD DAILOG-->
    <div class="modal fade" id="modifyPasswordModal" tabindex="-1" role="dialog" data-backdrop="static" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel">修改密码</h4>
                </div>
                <div class="modal-body">
                    <form id="password-form" class=" vlidate-form client-form">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div>
                                        <label> 旧  密  码</label>
                                        <input id="password" name="password" type="password" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div>
                                        <label> 新  密  码</label>
                                        <input id="newPassword" name="newPassword" type="password" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div>
                                        <label> 确认密码</label>
                                        <input id="passwordConfirm" name="passwordConfirm" type="password" class="form-control"/>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" id="btn-cancel" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" id="btn-modifiedPassword" class="btn btn-primary">提交</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div><!-- /END OF DAILOG MODAL -->
</body>

<!--================================================== -->

<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
<script data-pace-options='{ "restartOnRequestAfter": true }' src="<s:url value="/js/plugin/pace/pace.min.js"/>"></script>

<!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
<script src="<s:url value="/js/libs/jquery-2.0.2.min.js"/>"></script>
<script>
    if (!window.jQuery) {
        document.write('<script src="<s:url value="/js/libs/jquery-2.0.2.min.js"/>"><\/script>');
    }
</script>

<script src="<s:url value="/js/libs/jquery-ui-1.10.3.min.js"/>"></script>
<script>
    if (!window.jQuery.ui) {
        document.write('<script src="<s:url value="/js/libs/jquery-ui-1.10.3.min.js"/>"><\/script>');
    }
</script>

<!-- JS TOUCH : include this plugin for mobile drag / drop touch events
<script src="js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> -->

<!-- BOOTSTRAP JS -->
<script src="<s:url value="/js/bootstrap/bootstrap.min.js"/>"></script>

<!-- JARVIS WIDGETS -->
<script src="<s:url value="/js/smartwidgets/jarvis.widget.min.js"/>"></script>

<!-- EASY PIE CHARTS -->
<script src="<s:url value="/js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"/>"></script>

<!-- SPARKLINES -->
<script src="<s:url value="/js/plugin/sparkline/jquery.sparkline.min.js"/>"></script>

<!-- JQUERY VALIDATE -->
<script src="<s:url value="/js/plugin/jquery-validate/jquery.validate.min.js"/>"></script>

<!-- JQUERY drag Tab -->
<script src="<s:url value="/js/plugin/jquery-dragTab/jquery.resizableColumns.js"/>"></script>

<!-- JQUERY MASKED INPUT -->
<script src="<s:url value="/js/plugin/masked-input/jquery.maskedinput.min.js"/>"></script>

<!-- JQUERY BLOCK UI -->
<script src="<s:url value="/js/plugin/jquery-blockui/jquery.blockUI.js"/>"></script>

<!-- JQUERY SELECT2 INPUT -->
<script src="<s:url value="/js/plugin/select2/select2.min.js"/>"></script>

<!-- JQUERY UI + Bootstrap Slider -->
<script src="<s:url value="/js/plugin/bootstrap-slider/bootstrap-slider.min.js"/>"></script>

<!-- browser msie issue fix -->
<script src="<s:url value="/js/plugin/msie-fix/jquery.mb.browser.min.js"/>"></script>

<!-- FastClick: For mobile devices -->
<script src="<s:url value="/js/plugin/fastclick/fastclick.js"/>"></script>

<!-- bootstrap-datepicker-master -->
<script src="<s:url value="/js/plugin/bootstrap-datepicker-master/bootstrap-datepicker.js"/>"></script>
<script src="<s:url value="/js/plugin/bootstrap-datepicker-master/locales/bootstrap-datepicker.zh-CN.js"/>"></script>

<!-- websocket support -->
<script src="<s:url value="/js/plugin/sockjs/sockjs.js"/>"></script>
<script src="<s:url value="/js/plugin/stomp/dist/stomp.js"/>"></script>
<!-- lange -->
<script src="<s:url value="/js/lang/zh_CN.js"/>"></script>
<script src="<s:url value="/js/lang/en_US.js"/>"></script>
<script src="<s:url value="/js/core/issues/i18n.js"/>"></script>

<!-- MAIN APP JS FILE -->
<script src="<s:url value="/js/app.js"/>"></script>
<!-- CUSTOM NOTIFICATION -->
<script src="<s:url value="/js/notification/SmartNotification.min.js"/>"></script>
<script src="<s:url value="/js/core/common.js"/>"></script>
<script src="<s:url value="/js/core/componentConfig.js" />"></script>

<script type="text/javascript">
    //pageSetUp();
    loadScript("<s:url value='/js/login.js'/>", initLogin);

    function initLogin()
    {
        loginTools.againLogin();
        initTopEvent();
        //初始化验证表单
        validateFrom();
    }

    loadScript("<s:url value='/js/lang/zh_CN.js'/>", initSelectLang);

    function initSelectLang(){
        common.initSelectLange("zh_CN");
        // loadScript("<s:url value='/js/lang/en_US.js'/>");
    }

    $(function(){
        mesageSocket();
    });

    function mesageSocket(){
        $stompClient.connect("guest", "guest", function () {
            $stompClient.subscribe('/topic/notify/messageItem', function (frame) {
                handleMessage(frame.body);
            });
            $stompClient.subscribe('/topic/notify/messageItem/'+$('#loginUser').val(), function (frame) {
                addNotification(frame.body);
            });
        }, function (error) {
            console.log(error.headers.message);
        });

        $("#btn_selfinfo").click(function(){
            $stompClient.send("/app/notify/sendMessage");
        });
    }

    function handleMessage(notification){
        notification = notification.replace(/(^\")|(\"$)/g,"");
        notification = notification.replace(/(\\r\\n)/g,"");

        console.log(notification);
    }

    function addNotification(notification){
        notification = notification.replace(/(^\")|(\"$)/g,"");
        notification = notification.replace(/(\\r\\n)/g,"");

        // 设置未读消息数量
        var unreadCount = $('#notifyUL').find('.unreadCount').text();
        $('.unreadCount').html(parseInt(unreadCount, 10) + 1);

        // 插在列表的第一个位置
        if($("#notifyUL li").size() >= 5) {
            $("#notifyUL").find('li:eq(-2)').remove();
        }
        $("#notifyUL li").eq(1).before(notification);

        // 绑定事件
        bindEventMessageInfo();
    }

    $(function(){
        $.ajax({
            url: $.url_root+"/notification/findTopMessages.jspa",
            type : 'post',
            traditional: true,
            data : {
                'pageSize' : 3
            },
            success : function(data) {
                checkResult(data, {
                    message : '',
                    showBox : false,
                    callback : function(){
                        // 刷新
                        $('.unreadCount').html(data.unreadCount);
                        $("#notifyUL li").eq(-1).before(data.messages);
                        bindEventMessageInfo();
                    }
                });
            },
            error: function(xhr, textStatus, errorThrown) {
                showOperationError(xhr, textStatus, errorThrown);
            }
        });
    });

    function bindEventMessageInfo() {
        $("#notifyUL").find('li').off('click').on('click', function(){
            var id = $(this).attr('data-biz-id');
            var url=$.url_root+"/notification/inbox.jspa";
            if(id!=null&&id!="undefine"){
            	url = $.url_root+"/notification/inbox.jspa?messageId="+id;
            }
            location.href = url;
        });
    }

    //初始化表单提交事件
    function initTopEvent()
    {
        //提交表单
        $("#btn-modifiedPassword").on('click', function(e){
            //清除界面上的弹出框
            clearSmallBox();
            // 锁定，防止重复提交
            if(!lockItms($('#btn-modifiedPassword').get(0))) {
                return;
            }
            if(!$("#password-form").valid()) {
                // 解锁
                unlockItms($('#btn-modifiedPassword').get(0));
                return;
            }
            $.ajax({
                url : $.url_root + '/user/changePassWord.jspa',
                type : 'post',
                dataType: "json",
                data : {
                    "userDTO.password" : $("#password").val(),
                    "userDTO.newPassword" : $("#newPassword").val()
                },
                success : function(data) {
                    checkResult(data, {
                        message : "密码更改成功",
                        showBox : true,
                        callback : function(){
                            //修改成功后重置表单及清除格式
                            resetOrClearForm();
                            $("#modifyPasswordModal").modal("hide");
                        }
                    });
                    // 解锁
                    unlockItms($('#btn-modifiedPassword').get(0));
                },
                error: function(xhr, textStatus, errorThrown) {
                    showOperationError(xhr, textStatus, errorThrown);
                }
            });
        });

        //取消提交表单,表单填充域清空
        $("#btn-cancel , .close").on('click',function(e){
            resetOrClearForm();
        });
        
        $('#synchronizeSearchIndex').on('click', function(e){
            //清除界面上的弹出框
            clearSmallBox();
            $.smallBox({
                title : "提示信息",
                content : "该操作将重新创建索引，如果频繁操作将会导致系统性能下降！<br />确认重新创建索引吗？" + " <p class='text-align-right'><a href='javascript:void(0);' onclick='doSynchronizeSearchIndex();' class='btn btn-danger btn-sm'>"+i18nRes.global.yes+"</a> <a href='javascript:void(0);'  class='btn btn-primary btn-sm'>"+i18nRes.global.no+"</a></p>",
                color : $boxColors.blue,
                //timeout: 1000,
                icon : "fa fa-bell swing animated"
            });
        });
    }
    
    function doSynchronizeSearchIndex()
    {
        // 锁定，防止重复提交
        if(!lockSmallBox()) {
            return;
        }
        $.ajax({
            url : $.url_root+'/search/synchronizeSearchIndex.jspa',
            type : 'post',
            data : {},
            success : function(data) {
                checkResult(data, {
                    message : "数据索引已经创建成功！",
                    showBox : true,
                    callback : function(){

                    }
                });
            },
            error: function(xhr, textStatus, errorThrown) {
                showOperationError(xhr, textStatus, errorThrown);
            }
        });
    }

    //重置或清空表单
    function resetOrClearForm(){
        $("#password-form")[0].reset();
        $("#password, #newPassword, #passwordConfirm").parent().removeClass("state-success state-error").next().remove();
    }

    //为表单提供验证规则
    function validateFrom(){
        //为validator添加自定义方法;
        $.validator.addMethod("rightFormate", function (value, element) {
            var tel = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,60}$/;
            return this.optional(element) || (tel.test(value));
        }, '正确的密码格式是由字母和数字组成!');

        //验证表单
        $("#password-form").validate({
            rules: {
                password:{
                    required: true,
                },
                newPassword: {
                    required: true,
                    rangelength: [8,60],
                    rightFormate : true
                },
                passwordConfirm: {
                    required: true,
                    equalTo: '#newPassword'
                }
            },
            messages: {
                password:{
                    required: '请输入密码!',
                },
                newPassword: {
                    required: '请输入密码!',
                    rangelength: "请输入 一个长度介于{0}至{1} 之间的字符串",
                    rightFormate : '正确的密码格式是由字母和数字组成!'

                },
                passwordConfirm: {
                    required: '请再次输入密码',
                    equalTo: '输入与上次不一致, 请确保确认密码和新密码一致!'
                }
            },
            errorPlacement: function(error, element) {
                error.insertAfter(element.parent());
            }
        });
    }
</script>
</html>

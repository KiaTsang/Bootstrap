<%--
  Created by IntelliJ IDEA.
  User: Julia
  Date: 2014/08/08
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html lang="en-us">
<head>
    <meta charset="utf-8">
    <!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->
    <title> 缺陷管理 </title>
    <meta content="" name="description">
    <meta content="" name="author">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
    <script>
        $(function() {
            if (localStorage.getItem("isMinified")) {
                $("body").addClass("minified");
            }
        });
    </script>

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
        .shortbtn {
            margin-top: 3px;
        }
        /* 锁定header, 结束 */
    </style>
</head>
    <body class="fixed-header fixed-ribbon fixed-navigation desktop-detected pace-done">

        <!-- HEADER -->
        <!-- possible classes: minified, fixed-ribbon, fixed-header, fixed-width-->

        <!-- Left panel : Navigation area -->
        <!-- Note: This width of the aside area can be adjusted through LESS variables -->
        <aside id="left-panel" style="height:auto;">
            <!-- NAVIGATION : This navigation is also responsive

           To make this navigation dynamic please make sure to link the node
           (the reference to the nav > ul) after page load. Or the navigation
           will not initialize.
           -->

            <div class="login-info hidden-sm">
                <div class="shortbtn">
                    <!--<div class="col-sm-12 col-md-12 col-lg-12">-->
                    <!--<div >-->
                    <!--<a class="btn btn-default" data-html="true" data-original-title="<i class='fa fa-check text-success'></i> Tooltip Right" data-placement="right" rel="tooltip" href="javascript:void(0);">-->
                    <a href="<s:url value="/dashboard_cardpro.jspa"/>" class="btn btn-success" rel="tooltip" data-original-title="卡产品首页" data-placement="bottom"><i class="fa fa-dashboard"></i></a>
                    <a href="<s:url value="/search/search_display.jspa"/>" class="btn btn-primary" rel="tooltip" data-original-title="搜索" data-placement="bottom"><i class="fa fa-search"></i></a>
                    <a href="<s:url value="/issue/issues_new_card.jspa"/>" class="btn btn-warning" rel="tooltip" data-original-title="创建卡产品缺陷" data-placement="bottom"><i class="fa fa-plus"></i></a>
                    <a href="<s:url value="/userProfile.jspa"/>" class="btn btn-danger" rel="tooltip" data-original-title="个人资料" data-placement="bottom"><i class="fa fa-cog"></i></a>
                    <!--</div>-->
                </div>
            </div>

            <nav>
                <!-- NOTE: Notice the gaps after each icon usage <i></i>..
                Please note that these links work a bit different than
                traditional hre="" links. See documentation for details.
                -->

                <ul>
                    <li class="active open" data-menu-index="1">
                        <a href="#"><i class="fa fa-lg fa-fw fa-home"></i>&nbsp;
                            <span class="menu-item-parent">首页</span>
                        </a>
                        <ul>
                            <li class="active">
                                <a href="<s:url value="/dashboard_cardpro.jspa"/>" data-menuitem-index="1">卡产品</a>
                            </li>
                            <li>
                                <a href="<s:url value="/dashboard_syspro.jspa"/>" data-menuitem-index="2">系统产品</a>
                            </li>
                            <li>
                                <a href="<s:url value="/dashboard_whitebox.jspa"/>" data-menuitem-index="3">白盒</a>
                            </li>
                        </ul>
                    </li>
                    <li data-menu-index="2">
                        <a href="#"><i class="fa fa-lg fa-fw fa-table"></i>&nbsp;
                            <span class="menu-item-parent">缺陷</span>
                        </a>
                        <ul>
                            <li>
                                <a href="<s:url value="/issue/issues_list_card.jspa"/>" data-menuitem-index="4">缺陷列表（卡产品）</a>
                            </li>
                            <li>
                                <a href="<s:url value="/issue/issues_list_syspro.jspa"/>" data-menuitem-index="5">缺陷列表（系统产品）</a>
                            </li>
                            <li>
                                <a href="<s:url value="/issue/issues_list_whitebox.jspa"/>" data-menuitem-index="6">缺陷列表（白盒）</a>
                            </li>
                            <li>
                                <a href="<s:url value="/issue/listIssueOutside.jspa"/>" data-menuitem-index="7">缺陷列表（外场测试）</a>
                            </li>
                            <shiro:hasAnyRoles name="dtms-administrator,dtms-developManager,dtms-supperManager">
	                            <li>
	                                <a class="labelSetting" href="<s:url value="/issue/issues_showIssueModel.jspa"/>" data-menuitem-index="8">字段设置</a>
	                            </li>
                            </shiro:hasAnyRoles>
                        </ul>
                    </li>
                    <li data-menu-index="3">
                        <a href="#"><i class="fa fa-lg fa-fw fa-book"></i>&nbsp;
                            <span class="menu-item-parent">投诉</span>
                        </a>
                        <ul>
                            <li>
                                <a href="<s:url value="/complaint/complaint_new.jspa"/>" data-menuitem-index="9">提交投诉</a>
                            </li>
                            <li>
                                <a href="<s:url value="/complaint/complaint.jspa"/>" data-menuitem-index="10">投诉记录</a>
                            </li>
                        </ul>
                    </li>
                    <shiro:hasAnyRoles name="dtms-administrator,dtms-supperManager">
                    <li data-menu-index="4">
                        <a href="#"><i class="fa fa-lg fa-fw fa-bar-chart-o"></i>&nbsp;
                            <span class="menu-item-parent">统计</span>
                        </a>
                        <ul>
                            <li>
                                <a href="<s:url value="/report/report_card.jspa"/>" data-menuitem-index="11">卡产品</a>
                            </li>
                            <li>
                                <a href="<s:url value="/report/report_syspro.jspa"/>" data-menuitem-index="12">系统产品</a>
                            </li>
                            <!-- <li>
                                <a href="#">终端产品</a>
                            </li> -->
                            <li>
                                <a href="<s:url value="/report/report_whitebox.jspa"/>" data-menuitem-index="13">白盒</a>
                            </li>
                        </ul>
                    </li>
                    </shiro:hasAnyRoles>
                    <li data-menu-index="3">
                        <a href="#"><i class="fa fa-lg fa-fw fa-book"></i>&nbsp;
                            <span class="menu-item-parent">项目</span>
                        </a>
                        <ul>
                            <li>
                                <a href="<s:url value='/project/viewPMSProjectList.jspa'/>" data-menuitem-index="14">系统项目</a>
                            </li>
                             <li>
                                <a href="<s:url value='/production/viewProductionTree.jspa'/>" data-menuitem-index="15">系统产品</a>
                            </li>
                        </ul>
                    </li>
                    <!--<li>-->
                    <!--<a href="#"><i class="fa fa-lg fa-fw  fa-cogs "></i> <span class="menu-item-parent">系统</span></a>-->
                    <!--<ul>-->
                    <!--<li>-->
                    <!--<a href="pages/sys_users.html">用户管理</a>-->
                    <!--</li>-->
                    <!--<li>-->
                    <!--<a href="pages/organization.html">组织机构</a>-->
                    <!--</li>-->
                    <!--<li>-->
                    <!--<a href="pages/role.html">角色</a>-->
                    <!--</li>-->
                    <!--<li>-->
                    <!--<a href="pages/resource.html">授权</a>-->
                    <!--</li>-->
                    <!--<li>-->
                    <!--<a href="pages/sysinfo.html">系统信息监控</a>-->
                    <!--</li>-->
                    <!--<li>-->
                    <!--<a href="pages/email.html"> Email 设定 </a>-->
                    <!--</li>-->
                    <!--<li>-->
                    <!--<a href="pages/log.html">系统日志 </a>-->
                    <!--</li>-->

                    <!--</ul>-->
                    <!--</li>-->

                </ul>
            </nav>
            <span class="minifyme"> <i class="fa fa-arrow-circle-left hit"></i> </span>

        </aside>
        <!-- END NAVIGATION -->

        <!-- SHORTCUT AREA : With large tiles (activated via clicking user name tag)
        Note: These tiles are completely responsive,
        you can add as many as you like
        -->
        <!-- END SHORTCUT AREA -->
    </body>
</html>

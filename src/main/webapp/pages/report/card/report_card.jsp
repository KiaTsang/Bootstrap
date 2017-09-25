<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en-us">
<head>
<style>
    .tile ul {
        border-bottom: 0px solid #423F3F;
        box-shadow: 0 0px 0px rgba(0, 0, 0, 0.3);
        list-style: none outside none;
        margin: 0;
        padding: 0px 0px 10px 0px;
    }

    .tile ul li {
        display: inline-block;
        width: auto;
    }

    .tile ul li .jarvismetro-tile {
        border: 0 none;
        border-radius: 0;
        margin: 0 3px 3px;
    }

    .tile ul li .jarvismetro-tile:hover {
        color: #FFFFFF;
        text-decoration: none;
    }

    .tile ul li .jarvismetro-tile:active, .tile ul li .jarvismetro-tile:focus {
        left: 0;
        top: 0;
        color: #FFFFFF;
        text-decoration: none;
    }
</style>
</head>
<body>
 <jsp:include page="/pages/top.jsp"></jsp:include>
    <!-- Left panel : Navigation area -->
    <!-- Note: This width of the aside area can be adjusted through LESS variables -->
    <jsp:include page="/pages/leftnav.jsp"></jsp:include>
    <!-- END NAVIGATION -->

    <div id="main" role="main">

        <!-- RIBBON -->
        <div id="ribbon">
            <!-- breadcrumb -->
            <ol class="breadcrumb">
                <li><a data-item-index="1" href="<s:url value="/dashboard_cardpro.jspa"/>"><s:text name="global.index"/></a></li>
                <li>卡产品</li>
            </ol>
        </div>
        <!-- END RIBBON -->
        <!-- row -->
        <div id="content">
            <div class="row">
                <article class="col-sm-12 col-md-12 col-lg-12 sortable-grid ui-sortable">
                    <!-- Widget ID (each widget will need unique ID)-->
                    <div class="jarviswidget well" id="wid-id-3" data-widget-colorbutton="false" data-widget-editbutton="false"
                         data-widget-togglebutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false"
                         data-widget-custombutton="false" data-widget-sortable="false">

                        <header>

                        </header>

                        <!-- widget div-->
                        <div>
                            <!-- widget edit box -->
                            <div class="jarviswidget-editbox">
                                <!-- This area used as dropdown edit box -->
                            </div>
                            <!-- end widget edit box -->

                            <!-- widget content -->
                            <div class="widget-body">

                                <div class="row">

                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 tile ">
                                        <table class="table table-striped table-forum">
                                            <thead>
                                            <tr>
                                                <th colspan="2">缺陷状态相关统计</th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            <!-- TR -->
                                            <tr>
                                                <td class="text-center" style="width: 40px;"><i class="fa fa-bar-chart-o fa-2x text-muted"></i></td>
                                                <td>
                                                    <h4><a href="<s:url value="/report/issueStatusReport.jspa"/>"> 缺陷状态统计 </a>
                                                        <small>在指定时期内，按照各个缺陷状态的数量进行统计汇总。</small>
                                                    </h4>
                                                </td>
                                            </tr>
                                            <!-- end TR -->
                                            </tbody>
                                        </table>

                                        <table class="table table-striped table-forum">
                                            <thead>
                                            <tr>
                                                <th colspan="2">人员相关统计</th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            <!-- TR -->
                                            <tr>
                                                <td class="text-center" style="width: 40px;"><i class="fa fa-bar-chart-o fa-2x text-muted"></i></td>
                                                <td>
                                                    <h4><a href="<s:url value="/report/loadCardIssueMembers.jspa"/>"> 人员缺陷统计 </a>
                                                        <small>在指定时期内，按照各个人员的不同缺陷状态的数量进行统计汇总。</small>
                                                    </h4>
                                                </td>
                                            </tr>
                                            <!-- end TR -->
                                            </tbody>
                                        </table>

                                        <table class="table table-striped table-forum">
                                            <thead>
                                            <tr>
                                                <th colspan="2">部门相关统计</th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            <!-- TR -->
                                            <tr>
                                                <td class="text-center" style="width: 40px;"><i class="fa fa-bar-chart-o fa-2x text-muted"></i></td>
                                                <td>
                                                    <h4><a href="<s:url value="/report/departmentIssueReoprt.jspa"/>"> 部门缺陷统计 </a>
                                                        <small>在指定时期内，按照各个部门的缺陷数量进行统计汇总。</small>
                                                    </h4>
                                                </td>
                                            </tr>
                                            <!-- end TR -->

                                            <!-- TR -->
                                            <tr>
                                                <td class="text-center" style="width: 40px;"><i class="fa fa-bar-chart-o fa-2x text-muted"></i></td>
                                                <td>
                                                    <h4><a href="<s:url value="/report/cardDepartmentTrendReport.jspa"/>"> 部门历年趋势</a>
                                                        <small>在指定时期内，统计各个部门的缺陷数量的趋势。</small>
                                                    </h4>
                                                </td>
                                            </tr>
                                            <!-- end TR -->
                                            </tbody>
                                        </table>

                                        <table class="table table-striped table-forum">
                                            <thead>
                                            <tr>
                                                <th colspan="2">缺陷类型相关统计</th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            <!-- TR -->
                                            <tr>
                                                <td class="text-center" style="width: 40px;"><i class="fa fa-bar-chart-o fa-2x text-muted"></i></td>
                                                <td>
                                                    <h4><a href="<s:url value="/report/report_card_issuetype.jspa"/>"> 缺陷类型统计 </a>
                                                        <small>在指定时期内，按照各个缺陷类型的数量进行统计汇总。</small>
                                                    </h4>
                                                </td>
                                            </tr>
                                            <!-- end TR -->

                                            <!-- TR -->
                                            <tr>
                                                <td class="text-center" style="width: 40px;"><i class="fa fa-bar-chart-o fa-2x text-muted"></i></td>
                                                <td>
                                                    <h4><a href="<s:url value="/report/cardIssueTypeTrendReport.jspa"/>"> 缺陷类型历年趋势</a>
                                                        <small>在指定时期内，统计各个缺陷类型的数量的趋势。</small>
                                                    </h4>
                                                </td>
                                            </tr>
                                            <!-- end TR -->
                                            </tbody>
                                        </table>

                                        <table class="table table-striped table-forum">
                                            <thead>
                                            <tr>
                                                <th colspan="2">产品分类相关统计</th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            <!-- TR -->
                                            <tr>
                                                <td class="text-center" style="width: 40px;"><i class="fa fa-bar-chart-o fa-2x text-muted"></i></td>
                                                <td>
                                                    <h4><a href="<s:url value="/report/loadCardProductType.jspa"/>"> 产品分类统计 </a>
                                                        <small>在指定时期内，按照各个产品分类的缺陷数量进行统计汇总。</small>
                                                    </h4>
                                                </td>
                                            </tr>
                                            <!-- end TR -->

                                            <!-- TR -->
                                            <tr>
                                                <td class="text-center" style="width: 40px;"><i class="fa fa-bar-chart-o fa-2x text-muted"></i></td>
                                                <td>
                                                    <h4><a href="<s:url value="/report/cardProductTypeTrendReport.jspa"/>"> 产品分类历年趋势</a>
                                                        <small>在指定时期内，统计各个产品分类的缺陷数量的趋势。</small>
                                                    </h4>
                                                </td>
                                            </tr>
                                            <!-- end TR -->
                                            </tbody>
                                        </table>

                                        <table class="table table-striped table-forum">
                                            <thead>
                                            <tr>
                                                <th colspan="2">技术分类相关统计</th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            <!-- TR -->
                                            <tr>
                                                <td class="text-center" style="width: 40px;"><i class="fa fa-bar-chart-o fa-2x text-muted"></i></td>
                                                <td>
                                                    <h4><a href="<s:url value="/report/cardTechnicalTypeReport.jspa"/>"> 技术分类统计 </a>
                                                        <small>在指定时期内，按照各个技术分类的缺陷数量进行统计汇总。</small>
                                                    </h4>
                                                </td>
                                            </tr>
                                            <!-- end TR -->

                                            <!-- TR -->
                                            <tr>
                                                <td class="text-center" style="width: 40px;"><i class="fa fa-bar-chart-o fa-2x text-muted"></i></td>
                                                <td>
                                                    <h4><a href="<s:url value="/report/cardTechnicalTypeTrendReport.jspa"/>"> 技术分类历年趋势</a>
                                                        <small>在指定时期内，统计各个技术分类的缺陷数量的趋势。</small>
                                                    </h4>
                                                </td>
                                            </tr>
                                            <!-- end TR -->
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- end widget content -->
                        </div>
                        <!-- end widget div -->
                    </div>
                    <!-- end widget -->
                </article>
            </div>
        </div>
        <!-- end row -->
    </div>

<jsp:include page="/pages/footer.jsp" />
<script src="<s:url value="/js/resetheight.js"/>"></script>
</body>
<script type="text/javascript">


</script>
</html>

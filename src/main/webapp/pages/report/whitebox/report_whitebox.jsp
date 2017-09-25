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
                <li><a data-item-index="3" href="<s:url value="/dashboard_whitebox.jspa"/>"><s:text name="global.index"/></a></li>
                <li>白盒</li>
            </ol>
        </div>
        <!-- END RIBBON -->
        <!-- row -->
        <div id="content">
            <!-- row -->
            <div class="row">
                <article class="col-sm-12 col-md-12 col-lg-12 sortable-grid ui-sortable">
                    <!-- Widget ID (each widget will need unique ID)-->
                    <div class="jarviswidget well" id="wid-id-3" data-widget-colorbutton="false" data-widget-editbutton="false"
                         data-widget-togglebutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false"
                         data-widget-custombutton="false" data-widget-sortable="false">

                    <header>
                        <!--<span class="widget-icon"> <i class="fa fa-comments"></i> </span>-->
                        <!--<h2>Default Tabs with border </h2>-->

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
                                    <th colspan="2">白盒统计</th>
                                </tr>
                                </thead>
                                <tbody>

                                <!-- TR -->
                                <tr>
                                    <td class="text-center" style="width: 40px;"><i class="fa fa-bar-chart-o fa-2x text-muted"></i></td>
                                    <td>
                                        <h4><a href="<s:url value="/report/loadWhiteBoxType.jspa"/>"> 按类别统计  </a>
                                            <small>关于白盒测试中具体类型的缺陷统计报表。</small>
                                        </h4>
                                    </td>
                                </tr>
                                <!-- end TR -->

                                <!-- TR -->
                                <tr>
                                    <td class="text-center" style="width: 40px;"><i class="fa fa-bar-chart-o fa-2x text-muted"></i></td>
                                    <td>
                                        <h4><a href="<s:url value="/report/loadWhiteBoxMember.jspa"/>"> 按人员统计  </a>
                                            <small>按照相关人员近年的缺陷分布进行统计。</small>
                                        </h4>
                                    </td>
                                </tr>
                                <!-- end TR -->

                                <!-- TR -->
                                <tr>
                                    <td class="text-center" style="width: 40px;"><i class="fa fa-bar-chart-o fa-2x text-muted"></i></td>
                                    <td>
                                        <h4><a href="<s:url value="/report/whiteBoxIssueTrendReport.jspa"/>"> 白盒缺陷近年比较  </a>
                                            <small>按照各个类型近年的缺陷数量进行统计。</small>
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
            <!-- end row -->
        </div>
        <!-- end row -->
    </div>

<jsp:include page="/pages/footer.jsp" />
<script src="<s:url value="/js/resetheight.js"/>"></script>
</body>
<script type="text/javascript">


</script>
</html>

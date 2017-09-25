<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en-us">
<head>
<link href="<s:url value="/css/invoice.css"/>" rel="stylesheet">
<style type="text/css">
    input.readonlyDate {
        cursor: pointer !important; 
        background-color: white !important;
    }
</style>
</head>
<body>
<!-- widget grid -->
<section id="widget-grid" class="">

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
                <li><a data-item-index="11" href="<s:url value="/report/report_card.jspa"/>"><s:text name="report.cardPro"/></a></li>
                <li>按缺陷状态统计</li>
            </ol>
        </div>
        <!-- END RIBBON -->
        <!-- row -->
        <div id="content">
        	<!-- row -->
            <div class="row">

                <!-- NEW WIDGET START -->
                <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

                    <!-- Widget ID (each widget will need unique ID)-->
                    <div class="jarviswidget well jarviswidget-color-darken" id="wid-id-0" data-widget-sortable="false" data-widget-deletebutton="false" data-widget-editbutton="false" data-widget-colorbutton="false">

                        <header>

                        </header>

                        <!-- widget div-->
                        <div>

                            <!-- widget edit box -->
                            <div class="jarviswidget-editbox">

                            </div>
                            <!-- end widget edit box -->

                            <!-- widget content -->
                            <div class="widget-body no-padding">

                                <div class="widget-body-toolbar">
                                    <div class="row">
                                        <div class="col-sm-2">
                                            <div class="btn-group">
                                                <a href="javascript:void(0);" class="btn btn-default" id="btnYear">年</a>
                                                <a href="javascript:void(0);" class="btn btn-default" id="btnMonth">月</a>
                                                <a href="javascript:void(0);" class="btn btn-default">周</a>
                                            </div>
                                        </div>
                                        <div class="col-sm-10">
                                            <form class="form-inline" role="form">
                                                <div class="form-group">
                                                    <div class="input-group custom-input-group">
                                                        <input type="text" name="startDate" class="form-control input-sm readonlyDate" readonly="readonly" placeholder="开始日期">
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                    </div>
                                                </div>
                                                &nbsp;-&nbsp;
                                                <div class="form-group">
                                                    <div class="input-group custom-input-group">
                                                        <input type="text" name="endDate" class="form-control input-sm readonlyDate" readonly="readonly" placeholder="结束日期">
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                    </div>
                                                </div>
                                                <button class="btn btn-default btn-sm" type="button" id="btnStat">
                                                    <i class="fa fa-search"></i> 统计
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                                <div class="padding-10">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="pull-left">
                                                <img width="150" height="32" alt="invoice icon" src="<s:url value="/img/logo-blacknwhite.png"/>">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="pull-right">
                                                <h1 class="font-400">按缺陷状态统计</h1>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                    
                                    <input type="hidden" id="EpStartDate" value="">
						    		<input type="hidden" id="EpEndDate" value="">
						    
                                    <div class="row">
                                        <div class="col-sm-8">

                                        </div>

                                        <div class="col-sm-4">

                                            <div>
                                                <div class="font-md">
                                                    <strong>时间区间 :</strong>
                                                    <span class="pull-right"> <i class="fa fa-calendar"></i> <span id="pStartDate"></span>&nbsp;/&nbsp;<span id="pEndDate"></span>  </span>
                                                </div>

                                            </div>
                                            <br>
                                            <div class="well well-sm  bg-color-blue txt-color-white no-border">
                                                <div class="fa-lg">
                                                    缺陷总数 :
                                                    <span class="pull-right"> <span class="totalStats"></span> 个 </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div  class="col-sm-12">
                                            <div class="widget-body-toolbar bg-color-white " id="rev-toggles">
                                                <div class="btn-group hidden-phone pull-right">
                                                    <a href="javascript:void(0);" class="btn dropdown-toggle btn-xs btn-default exportExcel"><i class="fa fa-cog"></i> <s:text name="report.export"/></a>
                                                </div>
                                            </div>
                                            <div class="padding-10">
                                                <div id="placeholder" style="height: 400px;"></div>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="row">
                                        <div  class="col-sm-12">
                                            <div class="widget-body-toolbar bg-color-white">
                                            </div>

                                            <table class="table table-hover">
                                                <thead>
                                                    <tr>
                                                        <th class="text-center" style="width:40px">
                                                            No.
                                                        </th>
                                                        <th class="text-left">
                                                            缺陷状态
                                                        </th>
                                                        <th class="text-left">
                                                            数量
                                                        </th>
                                                        <th class="text-left">
                                                            百分比
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tableStat">
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                    <div class="invoice-footer">
                                        <div class="row">
                                            <div class="col-sm-7">

                                            </div>
                                            <div class="col-sm-5">
                                                <div class="invoice-sum-total pull-right">
                                                    <h3><strong>总数: <span class="text-success"><span class="totalStats"></span> 个</span></strong></h3>
                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- end widget content -->
                        </div>
                        <!-- end widget div -->
                    </div>
                    <!-- end widget -->
                </article>
                <!-- WIDGET END -->
            </div>
            <!-- end row -->
        </div>
    	<!-- end row -->
    </div>

</section>
<!-- end widget grid -->
<jsp:include page="/pages/footer.jsp" />
<script src="<s:url value="/js/resetheight.js"/>"></script>
</body>
<script type="text/javascript">
	// DO NOT REMOVE : GLOBAL FUNCTIONS!
	pageSetUp();

    loadScript("<s:url value='/js/plugin/flot/jquery.flot.cust.js'/>", loadFlotResize);
    
    function loadFlotResize() {
        loadScript("<s:url value='/js/plugin/flot/jquery.flot.resize.js'/>", loadFlotFillbetween);
    }

    function loadFlotFillbetween() {
        loadScript("<s:url value='/js/plugin/flot/jquery.flot.fillbetween.js'/>", loadFlotOrderBar);
    }

    function loadFlotOrderBar() {
        loadScript("<s:url value='/js/plugin/flot/jquery.flot.orderBar.js'/>", loadFlotPie);
    }

    function loadFlotPie() {
        loadScript("<s:url value='/js/plugin/flot/jquery.flot.pie.js'/>", loadFlotValuelabels);
    }
    
    function loadFlotValuelabels() {
        loadScript("<s:url value='/js/plugin/flot/jquery.flot.valuelabels.js'/>", loadFlotToolTip);
    }
    
    function loadFlotToolTip() {
        loadScript("<s:url value='/js/plugin/flot/jquery.flot.tooltip.js'/>", loadReportUserIssue);
    }

    function loadReportUserIssue() {
        loadScript("<s:url value='/js/core/report/card/reportCardIssueStatus.js'/>", init);
    }
    function init() {
    	IssueStatus.initEvent();
    	IssueStatus.stat();
    }
    
</script>
</html>
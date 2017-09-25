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
                <li><a data-item-index="2" href="<s:url value="/dashboard_syspro.jspa"/>"><s:text name="global.index"/></a></li>
                <li><a data-item-index="12" href="<s:url value="/report/report_syspro.jspa"/>"><s:text name="report.sysPro"/></a></li>
                <li><s:text name="report.systemSeverityStatistics"/></li>
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
                                <!-- This area used as dropdown edit box -->

                            </div>
                            <!-- end widget edit box -->

                            <!-- widget content -->
                            <div class="widget-body no-padding">

                                <div class="widget-body-toolbar">
                                    <div class="row">
                                        <div class="col-sm-2">
                                            <div class="btn-group">
                                                <a href="javascript:void(0);" class="btn btn-default" id="nowYear"><s:text name="report.thisYear"/></a>
                                                <a href="javascript:void(0);" class="btn btn-default" id="lastYear"><s:text name="report.lastYear"/></a>
                                                <a href="javascript:void(0);" class="btn btn-default" id="beforeYear"><s:text name="report.beforeYear"/></a>
                                            </div>
                                        </div>
                                        <div class="col-sm-10">
                                            <form class="form-inline" role="form" id="checkDate">
                                                <div class="form-group">
                                                    <div class="input-group custom-input-group">
                                                        <input type="text" name="startDate" class="form-control input-sm readonlyDate" readonly="readonly" placeholder="<s:text name="global.startDate"/>">
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                    </div>
                                                </div>
                                                    &nbsp;&nbsp;-&nbsp;&nbsp;
                                                <div class="form-group">
                                                     <div class="input-group custom-input-group">
                                                        <input type="text" name="endDate" class="form-control input-sm readonlyDate" readonly="readonly" placeholder="<s:text name="global.endDate"/>">
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                    </div>
                                                </div>
                                                <button id="btnStat" class="btn btn-default btn-sm" type="button">
                                                    <i class="fa fa-search"></i> <s:text name="report.count"/>
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
                                                <h1 class="font-400"><s:text name="report.issueSeverity.note"/></h1>
                                            </div>
                                        </div>
                                    </div>

                                    <br>
                                    <br>
                                    <div class="row">
                                        <div class="col-sm-8">

                                        </div>
                                        <div class="col-sm-4">

                                            <div>
                                                <div class="font-md">
                                                    <strong><s:text name="report.time.interval"/> :</strong>
                                                    <span class="pull-right"> <i class="fa fa-calendar"></i> <span id="pStartDate"></span>&nbsp;/&nbsp;<span id="pEndDate"></span> </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div  class="col-sm-12">
                                            <div class="widget-body-toolbar bg-color-white " id="rev-toggles">
                                               <div class="btn-group hidden-phone pull-right">
                                                    <a href="<s:url value="/report/exportSeverityData.jspa" />" class="btn btn-default btn-xs"><i class="fa fa-cog"></i> 导出</a>
                                                </div>
                                            </div>
                                            <div class="flotItmesContainer padding-10" id="flotItmesContainer"></div>
                                            <div class="padding-10">
                                                <div id="flotcontainer" class="chart-large has-legend-unique"></div>
                                                <div id="pie_chart" class="chart-large" style="display: none;"></div>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="row">
                                        <div  class="col-sm-12">
                                            <div class="widget-body-toolbar bg-color-white">
                                                <div class="btn-group hidden-phone pull-right">
                                                </div>
                                            </div>

                                            <table class="table table-hover">
                                                <thead>
                                                    <tr>
                                                        <th class="text-center" style="width:40px">No.</th>
                                                        <th class="text-left"><s:text name="report.month"/></th>
                                                        <th class="text-left"><s:text name="report.seriousIssue"/></th>
                                                        <th class="text-left"><s:text name="report.commonIssue"/></th>
                                                        <th class="text-left"><s:text name="report.slightIssue"/></th>
                                                        <th class="text-left"><s:text name="report.deadlyIssue"/></th>
                                                    </tr>
                                                </thead>
                                                <tbody id="severityTable">
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                    <div class="invoice-footer">
                                        <div class="row">
                                            <div class="col-sm-7">
                                            </div>
                                            <div class="col-sm-5">
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
        loadScript("<s:url value='/js/core/report/system/reportSystemSeverity.js'/>", init);
    }
    function init() {
    	SystemSeverity.initEvent();
    	SystemSeverity.stat(); //初始化
    	SystemSeverity.initValidation();
    }

</script>
</html>

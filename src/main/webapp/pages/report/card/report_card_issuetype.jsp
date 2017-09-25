<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en-us">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<s:url value="/css/invoice.css"/>" rel="stylesheet">
<title><s:text name="report.cardProIssueType"/></title>
<style type="text/css">
.date-wrapper .form-group:first-child {
	margin: 0 4px 0 0;
}

.date-wrapper .form-group:nth-child(2):before {
	content: '-';
	margin: 0 4px 0 0;
}

.date-wrapper .form-group:nth-child(2):after {
	content: '';
	float: right;
	margin: 0 15px 0 0;
}
</style>
</head>
<body>
    <section id="widget-grid">
        <jsp:include page="/pages/top.jsp" />
        <jsp:include page="/pages/leftnav.jsp" />
        <div id="main" role="main">
            <!-- ribbon start -->
            <div id="ribbon">
                <ol class="breadcrumb">
	                <li><a data-item-index="1" href="<s:url value="/dashboard_cardpro.jspa"/>"><s:text name="global.index"/></a></li>
	                <li><a data-item-index="11" href="<s:url value="/report/report_card.jspa"/>"><s:text name="report.cardPro"/></a></li>
	                <li><s:text name="report.IssueType"/></li>
                </ol>
            </div>
            <!-- ribbon end -->

            <!-- content start -->
            <div id="content">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <!-- article change to div -->
                        <div class="jarviswidget well jarviswidget-color-darken" id="wid-id-0" data-widget-sortable="false" data-widget-deletebutton="false" data-widget-editbutton="false"
                            data-widget-colorbutton="false">
                            <div class="widget-body" style="padding-bottom: 0;">
                                <div class="widget-body-toolbar" style="margin-bottom: 0;">
                                    <div class="row">
                                        <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                                            <div class="btn-group" id="date-unit-sel">
                                                <a href="javascript:;" class="btn btn-default year" id="btnYear" data-unit="year" data-dateFormat="yyyy" data-viewIndex="2"><s:text name="global.year"/></a> 
                                                <a href="javascript:;" class="btn btn-default month" id="btnMonth" data-unit="month" data-dateFormat="yyyy-mm" data-viewIndex="1"><s:text name="global.month"/></a> 
                                            </div>
                                        </div>
                                        <div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                            <form class="form-inline date-wrapper" role="form">
                                                <div class="form-group">
                                                    <div class="input-group custom-input-group">
                                                        <input type="text" class="form-control input-sm readonlyDate" readonly="readonly" placeholder="<s:text name="global.startDate"/>" data-type="start" id="startDate"> 
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="input-group custom-input-group">
                                                        <input type="text" class="form-control input-sm readonlyDate" readonly="readonly" placeholder="<s:text name="global.endDate"/>" data-type="end" id="endDate"> 
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                    </div>
                                                </div>
                                                <button class="btn btn-default" type="button" id="totalClick">
                                                    <i class="fa fa-search"></i> <s:text name="report.count"/>
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="padding-10">
                                    <div class="row margin-bottom-30">
                                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6" style="line-height: 50px;">
                                            <div class="pull-left">
                                                <img width="150" height="32" alt="invoice icon" src="<s:url value="/img/logo-blacknwhite.png"/>">
                                            </div>
                                        </div>
                                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                            <div class="pull-right">
                                                <h1 class="font-400"><s:text name="report.IssueType"/></h1>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row margin-bottom-35">
                                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 col-xs-offset-8 col-sm-offset-8 col-md-offset-8 col-lg-offset-8">
                                            <div class="font-md margin-bottom-15">
                                                <strong><s:text name="report.time.interval"/> :</strong>
                                                <span class="pull-right"> <i class="fa fa-calendar"></i> <span class="startDate"><s:text name="report.loading"/></span> / <span class="endDate"><s:text name="report.loading"/></span>
                                            </div>
                                            <div class="well well-sm  bg-color-blue txt-color-white no-border">
                                                <div class="fa-lg"><s:text name="report.issue.totality"/> :
                                                    <span class="pull-right"><span class="vcount"><s:text name="report.loading"/></span>&nbsp;<s:text name="report.util"/>&nbsp;</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr >
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <div id="rev-toggles_B" class="widget-body-toolbar bg-color-white">
                                                <div class="btn-group hidden-phone pull-right">
                                                    <a data-toggle="dropdown" class="btn dropdown-toggle btn-xs btn-default exportStatisticsData"><i class="fa fa-cog"></i> <s:text name="report.export"/>  </span> </a>
                                                </div>
                                            </div>
                                            <div class="padding-10">
                                                <div id="flotcontainer" class="chart chart-large has-legend-unique" style="width: 100%; height: 350px;"></div>
                                            </div>
                                            <table class="table table-hover">
                                                <thead>
                                                    <tr>
                                                        <th style="width:40px" class="text-center">No.</th>
                                                        <th><s:text name="report.projectAndProduct"/></th>
                                                        <th><s:text name="report.opened"/></th>
                                                        <th><s:text name="report.closed"/></th>
                                                        <th style="width:100px"><s:text name="report.totalIssues"/></th>
                                                    </tr>
                                                </thead>
                                                <tbody id="issue-stat-infos"></tbody>
                                                <tfoot>
                                                    <tr>
                                                        <td colspan="2"><s:text name="report.totalIssueQuantity"/></td>
                                                        <td class="opened"></td>
                                                        <td class="closed"></td>
                                                        <td><span class="strong" id="total-Issues"></span></td>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="invoice-footer">
                                        <div class="row">
                                            <div class="col-sm-7">
                                            </div>
                                            <div class="col-sm-5">
                                                <div class="invoice-sum-total pull-right">
                                                    <h3><strong><s:text name="report.totalNumber"/> <span class="text-success vcount"><s:text name="report.loading"/></span> <s:text name="report.util"/></strong></h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content end -->
        </div>
    </section>
    <jsp:include page="/pages/footer.jsp" />
    <script src="<s:url value="/js/resetheight.js"/>"></script>
</body>
<script>
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
        loadScript("<s:url value='/js/plugin/flot/jquery.flot.tooltip.js'/>", loadMainScript);
    }
    
    function loadMainScript() {
        loadScript("<s:url value='/js/core/report/card/cardIssueReporter.js'/>");
    }
</script>
</html>

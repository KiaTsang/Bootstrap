<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en-us">
<head>
    <link href="<s:url value="/css/invoice.css"/>" rel="stylesheet">
</head>
    <style>
        input.readonlyDate {
            cursor: pointer !important;
            background-color: white !important;
        }
    </style>
<body>
 <!-- HEADER -->
    <!-- possible classes: minified, fixed-ribbon, fixed-header, fixed-width-->
    <jsp:include page="/pages/top.jsp" />
    <!-- Left panel : Navigation area -->
    <!-- Note: This width of the aside area can be adjusted through LESS variables -->
    <jsp:include page="/pages/leftnav.jsp" />

    <div id="main" role="main">
        <!-- RIBBON -->
        <div id="ribbon">
            <!-- breadcrumb -->
            <ol class="breadcrumb">
                <li><a data-item-index="1" href="<s:url value="/dashboard_cardpro.jspa"/>"><s:text name="global.index"/></a></li>
                <li><a data-item-index="11" href="<s:url value="/report/report_card.jspa"/>"><s:text name="report.cardPro"/></a></li>
                <li><s:text name="report.byDepartment"/></li>
            </ol>
            <!-- end breadcrumb -->
        </div>
        <!-- END RIBBON -->

        <!-- MAIN CONTENT -->
        <div id="content">
            <!-- widget grid -->
            <section id="widget-grid" class="">
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
                                                <div class="btn-group" id="date-unit-sel">
                                                    <a href="javascript:void(0);" class="btn btn-default year" id="btnYear" data-unit="year" data-dateFormat="yyyy" data-viewIndex="2"><s:text name="global.year"/></a>
                                                    <a href="javascript:void(0);" class="btn btn-default month" id="btnMonth" data-unit="month" data-dateFormat="yyyy-mm" data-viewIndex="1"><s:text name="global.month"/></a>
                                                    <!-- <a href="javascript:void(0);" class="btn btn-default week">周</a> -->
                                                </div>
                                            </div>
                                            <div class="col-sm-10">
                                                <form class="form-inline" role="form">
                                                    <div class="form-group">
                                                        <div class="input-group custom-input-group">
                                                            <input type="text" name="startDate" id="startDate" data-type="start" class="form-control input-sm readonlyDate" readonly="readonly" placeholder="<s:text name="global.startDate"/>">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                        </div>
                                                    </div>
                                                    &nbsp;-&nbsp;
                                                    <div class="form-group">
                                                        <div class="input-group custom-input-group">
                                                            <input type="text" name="endDate" id="endDate" data-type="end" class="form-control input-sm readonlyDate" readonly="readonly" placeholder="<s:text name="global.endDate"/>">
                                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                        </div>
                                                    </div>
                                                    <button id="btn_dosearch" class="btn btn-default btn-statistics" type="button"><i class="fa fa-search"></i> <s:text name="report.count"/></button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="report_content_C" class="padding-10" style="">
                                        <div class="row">
                                            <div class="col-sm-6" style="line-height:50px;">
                                                <div class="pull-left">
                                                    <img width="150" height="32" alt="invoice icon" src="<s:url value="/img/logo-blacknwhite.png"/>">
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="pull-right">
                                                    <h1 class="font-400"><s:text name="report.byDepartment"/></h1>
                                                </div>
                                            </div>
                                        </div>

                                        <br>
                                        <br>

                                        <div class="row">
                                            <div class="col-sm-8"></div>
                                            <div class="col-sm-4">
                                                <div>
                                                    <div class="font-md">
                                                        <strong><s:text name="report.time.interval"/> :</strong>
                                                        <span class="pull-right"> <i class="fa fa-calendar"></i> <span class="fromDate"></span> / <span class="toDate"></span></span>
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="well well-sm  bg-color-blue txt-color-white no-border">
                                                    <div class="fa-lg"><s:text name="report.issue.totality"/> :<span class="pull-right totalQuantity"></span></div>
                                                </div>
                                            </div>
                                        </div>
                                        <hr>

                                        <div class="row">
                                            <div  class="col-sm-12">
                                                <div class="widget-body-toolbar bg-color-white " id="rev-toggles_C">
                                                    <div class="btn-group hidden-phone pull-right">
                                                        <a class="btn dropdown-toggle btn-xs btn-default exportToExcelGraphs"><i class="fa fa-cog"></i> <s:text name="report.export"/> </a>
                                                    </div>
                                                </div>
                                                <div class="flotItmesContainer padding-10" id="flotItmesContainer"></div>
                                                <div class="padding-10">
                                                    <div id="flotcontainer_A" class="chart-large" style="width: 100%;height: 350px;"></div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div  class="col-sm-12">
                                                <div class="widget-body-toolbar bg-color-white smart-form">
                                                </div>

                                                <table class="table table-hover">
                                                    <thead>
                                                    <tr>
                                                        <th class="text-center" style="width:40px">No.</th>
                                                        <th><s:text name="report.projectAndProduct"/></th>
                                                        <th><s:text name="report.opened"/></th>
                                                        <th><s:text name="report.closed"/></th>
                                                        <th style="width:100px"><s:text name="report.totalIssues"/></th>
                                                    </tr>
                                                    </thead>
                                                    <tbody id="statisticsTable"></tbody>
                                                    <tfoot>
                                                         <tr>
                                                            <td colspan="2"><s:text name="report.totalIssueQuantity"/></td>
                                                            <td class="totalOpened"></td>
                                                            <td class="totalClosed"></td>
                                                            <td class="totalNumber"></td>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>

                                        <div class="invoice-footer">
                                            <div class="row">
                                                <div class="col-sm-7"></div>
                                                <div class="col-sm-5">
                                                    <div class="invoice-sum-total pull-right">
                                                        <h3><strong><s:text name="report.totalNumber"/> <span class="text-success totalQuantity"></span></strong></h3>
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
            </section>
            <!-- end widget grid -->
        </div>
    </div>
    <!-- end row -->
    <jsp:include page="/pages/footer.jsp" />
</body>
<script src="<s:url value="/js/resetheight.js"/>"></script>
<script type="text/javascript">
    // DO NOT REMOVE : GLOBAL FUNCTIONS!
    pageSetUp();

    // Load FLOAT dependencies (related to page)
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
        loadScript("<s:url value='/js/plugin/flot/jquery.flot.pie.js'/>", loadFlotToolTip);
    }

    function loadFlotToolTip() {
        loadScript("<s:url value='/js/plugin/flot/jquery.flot.tooltip.js'/>", loadCardProductTypeJS);
    }
    
    function loadCardProductTypeJS(){
        loadScript("<s:url value='/js/core/report/card/reportCardDepartment.js'/>", init);
    }
    
    function init() {
    	CardDepartment.initializeComponent();
    }
</script>
</html>

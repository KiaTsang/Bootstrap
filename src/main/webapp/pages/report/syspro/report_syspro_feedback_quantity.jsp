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
                <li><a data-item-index="2" href="<s:url value="/dashboard_syspro.jspa"/>"><s:text name="global.index"/></a></li>
                <li><a data-item-index="12" href="<s:url value="/report/report_syspro.jspa"/>"><s:text name="report.sysPro"/></a></li>
                <li><s:text name="report.feedbackQuantityStatistics"/></li>
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

                                </div>
                                <!-- end widget edit box -->

                                <!-- widget content -->
                                <div class="widget-body no-padding">

                                    <div class="widget-body-toolbar">
                                        <div class="row">
                                            <div class="col-sm-2">
                                                <div class="btn-group">
                                                    <a href="javascript:void(0);" class="btn btn-default nowYear"><s:text name="report.thisYear"/></a>
                                                    <a href="javascript:void(0);" class="btn btn-default lastYear"><s:text name="report.lastYear"/></a>
                                                    <a href="javascript:void(0);" class="btn btn-default beforeYear"><s:text name="report.beforeYear"/></a>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <form class="form-inline" role="form">
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
                                                    <button class="btn btn-default btn-sm btn-statistics" type="button"><i class="fa fa-search"></i> <s:text name="report.count"/></button>
                                                </form>
                                            </div>
                                            <div class="col-sm-4">

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
                                                    <h1 class="font-400"><s:text name="report.statisticsByMonth"/></h1>
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
                                                        <span class="pull-right"> <i class="fa fa-calendar"></i> <span class="fa-md fromDate"></span> / <span class="fa-md toDate"></span></span>
                                                    </div>

                                                </div>
                                                <br>
                                                <div class="well well-sm  bg-color-blue txt-color-white no-border">
                                                    <div class="fa-lg"><s:text name="report.feedbackQuantity"/> :
                                                        <span class="pull-right feedbackQuantity"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="row">
                                            <div  class="col-sm-12">
                                                <div class="widget-body-toolbar bg-color-white " id="rev-toggles">
                                                    <div class="btn-group hidden-phone pull-right">
                                                         <a href="javascript:void(0);" class="btn btn-default btn-xs exportToExcelGraphs"><i class="fa fa-cog"></i> 导出</a>
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
                                                    <div class="btn-group hidden-phone pull-right">
                                                    </div>
                                                </div>

                                                <table class="table table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th class="text-center" style="width:40px">No.</th>
                                                            <th class="text-left"><s:text name="report.month"/></th>
                                                            <th class="text-left"><s:text name="report.feedbackQuantity"/></th>
                                                            <th class="text-left"><s:text name="report.percent"/></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="statisticsTable"></tbody>
                                                    <tfoot>
                                                         <tr>
                                                            <td class="text-center"></td>
                                                            <td class="text-left"><s:text name="report.summary"/>：</td>
                                                            <td class="text-left total"></td>
                                                            <td class="text-left">-</td>
                                                        </tr>
                                                    </tfoot>
                                                </table>
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
        loadScript("<s:url value='/js/plugin/flot/jquery.flot.tooltip.js'/>", reportSysproFeedbackQuantity);
    }

    function reportSysproFeedbackQuantity() {
        loadScript("<s:url value='/js/core/report/system/reportSysproFeedbackQuantity.js'/>", init);
    }

    function init() {
    	feedbackQuantity.initializeComponent();
    }
</script>
</html>

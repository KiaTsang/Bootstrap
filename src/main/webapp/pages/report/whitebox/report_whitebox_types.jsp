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
        
        .flotItmesContainer table {
            float: right;
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
                <li><a data-item-index="3" href="<s:url value="/dashboard_whitebox.jspa"/>"><s:text name="global.index"/></a></li>
                <li><a data-item-index="13" href="<s:url value="/report/report_whitebox.jspa"/>"><s:text name="issue.whitebox"/></a></li>
                <li><s:text name="report.byType"/></li>
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
                                                <div class="btn-group" id="date-unit-sel">
                                                    <a href="javascript:void(0);" class="btn btn-default year" id="btnYear" data-unit="year" data-dateFormat="yyyy" data-viewIndex="2"><s:text name="global.year"/></a>
                                                    <a href="javascript:void(0);" class="btn btn-default month" id="btnMonth" data-unit="month" data-dateFormat="yyyy-mm" data-viewIndex="1"><s:text name="global.month"/></a>
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
                                                    &nbsp;&nbsp;&nbsp;
                                                    <button id="btn_dosearch" class="btn btn-default btn-sm btn-statistics" type="button"><i class="fa fa-search"></i> <s:text name="report.count"/></button>
                                                </form>
                                            </div>
                                            <br /><br />
                                        </div>
                                    </div>
                                    <!-- <div id="report_content_empty" class="padding-10" >请选择统计条件进行统计。</div> -->

                                    <!-- <div id="pie_report_content_all" class="padding-10" style="display: none;"> -->
                                    <div id="pie_report_content_all" class="padding-10">
                                        <div class="row">
                                            <!-- 可以通过单击饼状图的模块，来获得子类别的统计数据 -->
                                            <div class="col-sm-6" >
                                                <div id="highligher" style="margin-top: 0px;"><s:text name="report.guids"/></div>
                                                <div id="flotcontainer_pie" class="chart-large has-legend-unique " style="min-width: 300px; height: 310px; max-width: 500px; margin: 0 auto"></div>
                                            </div>
                                            <div class="col-sm-6" >
                                                <div class="row">
                                                    <div class="col-sm-12" >
                                                        <div class="pull-right">
                                                            <h1 class="font-400"><s:text name="report.whitebox"/></h1>
                                                        </div>
                                                    </div>
                                                 </div>
                                                <br>
                                                <br>
                                                <div class="row">
                                                    <div class="col-sm-8 pull-right" >
                                                        <div>
                                                            <div class="font-md">
                                                                <strong><s:text name="report.time.interval"/> :</strong>
                                                                <span class="pull-right"><i class="fa fa-calendar"></i>&nbsp;<span class="fa-md fromDate"></span>&nbsp;/&nbsp;<span class="fa-md toDate"></span></span>
                                                            </div>

                                                        </div>
                                                        <br>
                                                        <div class="well well-sm  bg-color-blue txt-color-white no-border">
                                                            <div class="fa-lg"><s:text name="report.issue.totality"/> :
                                                                <span class="pull-right totalIssues"></span>
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <div id="total_bar" class="well well-sm  bg-color-orange txt-color-white no-border hidden">
                                                            <div class="fa-lg">
                                                                <span id="total_title"></span> - <s:text name="report.issue.totality"/> :
                                                                <span class="pull-right totalNumber"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="report_content_A" class="padding-10 hidden" >
                                        <hr>
                                        <div class="row">
                                            <div  class="col-sm-12">
                                                <div class="widget-body-toolbar bg-color-white " id="rev-toggles_A">
                                                    <div class="btn-group hidden-phone pull-right">
                                                        <a class="btn dropdown-toggle btn-xs btn-default exportToExcelTables"><i class="fa fa-cog"></i> <s:text name="report.export"/> </a>
                                                    </div>
                                                </div>
                                                <div class="flotItmesContainer padding-10" id="flotItmesContainer"></div>
                                                <div class="padding-10">
                                                    <div id="flotcontainer_A" class="chart-large has-legend-unique"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="row">
                                            <div  class="col-sm-12">
                                                <div class="widget-body-toolbar bg-color-white smart-form">
                                                </div>
                                                <table class="table table-hover">
                                                    <thead>
	                                                    <tr>
	                                                        <th class="text-center" style="width:40px">No.</th>
	                                                        <th><s:text name="report.types"/></th>
	                                                        <th style="width:100px"><s:text name="report.totalIssues"/></th>
	                                                    </tr>
                                                    </thead>
                                                    <tbody id="statisticsTable"></tbody>
                                                    <tfoot>
                                                        <td colspan="2"><s:text name="report.totalIssueQuantity"/></td>
                                                        <td class="totalNumber"><strong></strong></td>
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

    loadScript("<s:url value='/js/plugin/ion-slider/ion.rangeSlider.min.js'/>", ion_slider);

    function ion_slider(){
        loadScript("<s:url value='/js/plugin/flot/jquery.flot.cust.js'/>", loadFlotResize);
    }

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
        loadScript("<s:url value='/js/plugin/highcharts/highcharts.js'/>", loadFlotToolTip);
    }

    function loadFlotToolTip() {
        loadScript("<s:url value='/js/plugin/flot/jquery.flot.tooltip.js'/>", generateGraphs);
    }

    function generateGraphs(){
        loadScript("<s:url value='/js/core/report/whitebox/reportWhiteBoxTypes.js'/>", init);
    }

    function init(){
    	WhiteBoxType.initializeComponent();
    }
</script>
</html>

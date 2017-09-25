<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en-us">
<style>
    div.dataTables_filter {
        left: 0px;
        position: absolute;
        top: -52px;
    }

    div.dataTables_length {
        position: absolute;
        right: 0px;
        top: -52px;
    }

    .dtable.dropdown-menu {
        top: auto;
        overflow-x: hidden;
        overflow-y: auto;
    }
    .radio-inline + .radio-inline, .checkbox-inline + .checkbox-inline {
        margin-left: 0px;
    }

    .btnToggleCells {
        padding: 0 8px;
        cursor: pointer;
    }

    /* Color Admin Template*/
    .widget {
        border-radius: 3px;
        margin-bottom: 20px;
        color: #fff;
        padding: 15px;
        overflow: hidden;
    }
    .bg-purple {
        background: #727cb6!important;
    }
    .bg-blue {
        background: #348fe2!important;
    }
    .bg-green {
        background: #00acac!important;
    }
    .bg-red {
        background: #ff5b57!important;
    }
    .widget-state .state-icon {
        float: right;
        font-size: 42px;
        height: 56px;
        width: 56px;
        text-align: center;
        line-height: 56px;
        margin-left: 15px;
        color: #fff;
    }
    .widget-state .state-info h4 {
        font-size: 12px;
        margin: 5px 0;
        color: #fff;
    }
    .widget-state .state-info p {
        font-size: 24px;
        font-weight: 300;
        margin-bottom: 0;
    }
    .widget-state .state-link a {
        display: block;
        margin: 15px -15px -15px;
        padding: 7px 15px;
        background: #333;
        background: rgba(0,0,0,.4);
        text-align: right;
        color: #ddd;
        font-weight: 300;
        text-decoration: none;
    }
    .widget-state .state-link a:focus,.widget-state .state-link a:hover {
        background:#000;
        background:rgba(0,0,0,.6);
        color:#fff
    }
    /* end Color Admin Template*/
   
   /*jquery.resizableColumns.js*/
    table{border-collapse:collapse;border-spacing:0;}
   .listext th,.listext td{border:solid 1px #ddd;}
   .rc-handle-container{position:relative;}
   .rc-handle{position:absolute;width:7px;cursor:ew-resize;*cursor:pointer;margin-left:-3px;}
</style>
<body>
    <input id="query-Type" type="hidden" value="whitebox">
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
                <li>白盒</li>
            </ol>
            <!-- end breadcrumb -->

            <!-- You can also add more buttons to the
            ribbon for further usability

            Example below:

            <span class="ribbon-button-alignment pull-right">
            <span id="search" class="btn btn-ribbon hidden-xs" data-title="search"><i class="fa-grid"></i> Change Grid</span>
            <span id="add" class="btn btn-ribbon hidden-xs" data-title="add"><i class="fa-plus"></i> Add</span>
            <span id="search" class="btn btn-ribbon" data-title="search"><i class="fa-search"></i> <span class="hidden-mobile">Search</span></span>
            </span> -->
        </div>
        <!-- END RIBBON -->

        <!-- MAIN CONTENT -->
        <div id="content">
<!--row-->
        <div class="row">
            <div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
                <h1 class="page-title txt-color-blueDark"><i class="fa-fw fa fa-home"></i> 缺陷综合信息 - 白盒</h1>
            </div>
            <!-- <div class="col-xs-12 col-sm-5 col-md-5 col-lg-8">
                <ul id="sparks" class="">
                    <li class="sparks-info">
                        <h5> 我提交的缺陷 <span class="txt-color-blue">47,17</span></h5>

                        <div class="sparkline txt-color-blue hidden-mobile hidden-md hidden-sm">
                            130, 187, 250, 257, 200, 210, 300, 270, 363, 241, 270, 363, 247
                        </div>
                    </li>
                    <li class="sparks-info">
                        <h5> 已解决的缺陷 <span class="txt-color-purple"><i class="fa  fa-flash"></i>&nbsp;45%</span></h5>

                        <div class="sparkline txt-color-greenDark hidden-mobile hidden-md hidden-sm">
                            110,150,300,130,400,240,220,310,220,300, 270, 210
                        </div>
                    </li>
                    <li class="sparks-info">
                        <h5> 高优先级缺陷 <span class="txt-color-greenDark"><i class="fa fa-fire"></i>&nbsp;2447</span></h5>

                        <div class="sparkline txt-color-purple hidden-mobile hidden-md hidden-sm">
                            110,150,300,130,400,240,220,310,220,300, 270, 210
                        </div>
                    </li>
                </ul>
            </div> -->
        </div>
        <!--end row-->

        <!--row-->
        <div class="row">
            <div class="col-md-3 col-sm-6 ui-sortable">
                <div class="widget widget-state bg-purple">
                    <div class="state-icon">
                        <i class="fa fa-desktop"></i>
                    </div>
                    <div class="state-info">
                        <h4>新缺陷</h4>
                        <p id="newIssuesTotal">0</p>
                    </div>
                    <div class="state-link">
                        <a href="<s:url value="/issue/issues_list_whitebox.jspa?searchKey=status&searchValue=NEW"/>" data-item-index="6">查看信息 <i class="fa fa-arrow-circle-o-right"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 ui-sortable">
                <div class="widget widget-state bg-red">
                    <div class="state-icon"><i class="fa fa-chain-broken"></i></div>
                    <div class="state-info">
                        <h4>紧急缺陷</h4>
                        <p id="criticalIssuesTotal">0</p>
                    </div>
                    <div class="state-link">
                        <a href="<s:url value="/issue/issues_list_whitebox.jspa?searchKey=priority&searchValue=CRITICAL"/>" data-item-index="6">查看信息 <i class="fa fa-arrow-circle-o-right"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 ui-sortable">
                <div class="widget widget-state bg-blue">
                    <div class="state-icon"><i class="fa fa-user"></i></div>
                    <div class="state-info">
                        <h4>处理中的缺陷</h4>
                        <p id="disposeIssuesTotal">0</p>
                    </div>
                    <div class="state-link">
                        <a href="<s:url value="/issue/issues_list_whitebox.jspa?searchKey=status&searchValue=OPEN,REOPEN"/>" data-item-index="6">查看信息 <i class="fa fa-arrow-circle-o-right"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 ui-sortable">
                <div class="widget widget-state bg-green">
                    <div class="state-icon"><i class="fa fa-check"></i></div>
                    <div class="state-info">
                        <h4>已解决的缺陷</h4>
                        <p id="validatedPassIssuesTotal">0</p>
                    </div>
                    <div class="state-link">
                        <a href="<s:url value="/issue/issues_list_whitebox.jspa?searchKey=status&searchValue=VALIDATED,CLOSED"/>" data-item-index="6">查看信息 <i class="fa fa-arrow-circle-o-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <!--end row-->

        <!-- widget grid -->
        <section id="widget-grid">
            <!-- row -->
            <div class="row">

                <article class="col-sm-12">

                    <!-- new widget -->
                    <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false" data-widget-colorbutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false">

                        <header>
                            <span class="widget-icon"> <i class="glyphicon glyphicon-stats txt-color-darken"></i> </span>

                            <h2 id="issues_num">缺陷数量统计 </h2>
                        </header>

                        <!-- widget div-->
                        <div class="no-padding">
                            <!-- widget edit box -->
                            <div class="jarviswidget-editbox">

                            </div>
                            <!-- end widget edit box -->

                            <div class="widget-body">
                                <!-- content -->
                                <div id="myTabContent" class="tab-content">
                                    <div class="tab-pane fade active in padding-10 no-padding-bottom" id="s1">
                                        <p class="graph-title"></p>
                                        <div id="chart1" class="chart-large has-legend-unique"></div>
                                    </div>
                                    <!-- end s1 tab panel -->
                                </div>
                                <!-- end content -->
                            </div>

                        </div>
                        <!-- end widget div -->
                    </div>
                    <!-- end widget -->
                </article>
            </div>
            <!-- end row -->

            <!-- row -->
            <div class="row">

                <article id="taskArticle1" class="col-sm-6 col-md-6 col-lg-6">
                    <div class="jarviswidget jarviswidget-color-blue" id="wid-id-1" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-map-marker"></i> </span>
                            <h2>我关注的缺陷</h2>
                        </header>

                        <!-- widget div-->
                        <div>
                            <!-- widget edit box -->
                            <div class="jarviswidget-editbox">

                            </div>
                            <!-- end widget edit box -->

                            <div class="widget-body no-padding">
                              <table id="dt_attentionIssues" width="100%;" style="width: 100%;" class="table table-striped table-hover compact fixedTable dt-responsive no-wrap table-bordered">
                                <thead>
                                    <tr>
                                        <th><s:text name="issue.code"/></th>
                                        <th class="hidden-xs hidden-sm"><s:text name="project.name"/></th>
                                        <th class="hidden-xs hidden-sm"><s:text name="issue.summary"/></th>
                                        <th><s:text name="issue.direct.reviewer"/></th>
                                        <th><s:text name="issue.fixedUser"/></th>
                                        <th><s:text name="issue.identifier"/></th>
                                        <th class="hidden-xs hidden-sm"><s:text name="issue.committer"/></th>
                                        <th><s:text name="issue.priority"/></th>
                                        <th><s:text name="issue.level"/></th>
                                        <th><s:text name="issue.securityLevel"/></th>
                                        <th><s:text name="issue.status"/></th>
                                        <th class="hidden-xs hidden-sm"><s:text name="issue.commit.time"/></th>
                                        <th><s:text name="issue.operation"/></th>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                            </div>
                        </div>
                    </div>
                </article>

                <article id="taskArticle2" class="col-sm-6 col-md-6 col-lg-6">
                    <div class="jarviswidget jarviswidget-color-blue" id="wid-id-3" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-map-marker"></i> </span>
                            <h2>我提交的缺陷</h2>
                        </header>

                        <!-- widget div-->
                        <div>
                            <!-- widget edit box -->
                            <div class="jarviswidget-editbox">

                            </div>
                            <!-- end widget edit box -->

                            <div class="widget-body no-padding">
                                <table id="dt_submitIssues" width="100%;" style="width: 100%;" class="table table-striped table-hover compact fixedTable dt-responsive no-wrap table-bordered">
                                    <thead>
                                        <tr>
                                            <th><s:text name="issue.code"/></th>
                                            <th class="hidden-xs hidden-sm"><s:text name="project.name"/></th>
                                            <th class="hidden-xs hidden-sm"><s:text name="issue.summary"/></th>
                                            <th><s:text name="issue.direct.reviewer"/></th>
                                            <th><s:text name="issue.fixedUser"/></th>
                                            <th><s:text name="issue.identifier"/></th>
                                            <th class="hidden-xs hidden-sm"><s:text name="issue.committer"/></th>
                                            <th><s:text name="issue.priority"/></th>
                                            <th><s:text name="issue.level"/></th>
                                            <th><s:text name="issue.securityLevel"/></th>
                                            <th><s:text name="issue.status"/></th>
                                            <th class="hidden-xs hidden-sm"><s:text name="issue.commit.time"/></th>
                                            <th><s:text name="issue.operation"/></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </article>
            </div>
            <!-- end row -->

            <!-- row -->
            <div class="row">

                <article id="taskArticle3" class="col-sm-6 col-md-6 col-lg-6">
                    <div class="jarviswidget jarviswidget-color-blue" id="wid-id-2" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-deletebutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-map-marker"></i> </span>
                            <h2>待我处理的缺陷</h2>
                        </header>

                        <!-- widget div-->
                        <div>
                            <!-- widget edit box -->
                            <div class="jarviswidget-editbox">

                            </div>
                            <!-- end widget edit box -->

                            <div class="widget-body no-padding">
                                <table id="dt_pendingDisposeIssues"width="100%;" style="width: 100%;" class="table table-striped table-hover compact fixedTable dt-responsive no-wrap table-bordered">
                                    <thead>
                                        <tr>
                                            <th><s:text name="issue.code"/></th>
                                            <th class="hidden-xs hidden-sm"><s:text name="project.name"/></th>
                                            <th class="hidden-xs hidden-sm"><s:text name="issue.summary"/></th>
                                            <th><s:text name="issue.direct.reviewer"/></th>
                                            <th><s:text name="issue.fixedUser"/></th>
                                            <th><s:text name="issue.identifier"/></th>
                                            <th class="hidden-xs hidden-sm"><s:text name="issue.committer"/></th>
                                            <th><s:text name="issue.priority"/></th>
                                            <th><s:text name="issue.level"/></th>
                                            <th><s:text name="issue.securityLevel"/></th>
                                            <th><s:text name="issue.status"/></th>
                                            <th class="hidden-xs hidden-sm"><s:text name="issue.commit.time"/></th>
                                            <th><s:text name="issue.operation"/></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </article>
            </div>
            <!-- end row -->

        </section>
        </div>
        </div>
<!-- end widget grid -->
<jsp:include page="/pages/footer.jsp" />
</body>
<script src="<s:url value="/js/resetheight.js"/>"></script>
<script>
    // DO NOT REMOVE : GLOBAL FUNCTIONS!
    pageSetUp();

    // 给widget添加自定义横向展开按钮
    (function(){

        var obj = $('<a class="button-icon btnToggleCells" data-placement="bottom" title="" rel="tooltip" data-original-title="所有字段">'
                    +   '<i class="fa fa-expand-horizontal"></i>'
                    + '</a>');
        obj.insertAfter($('#wid-id-1 header div.jarviswidget-ctrls a:first-of-type'));
        obj.clone().insertAfter($('#wid-id-2 header div.jarviswidget-ctrls a:first-of-type'));
        obj.clone().insertAfter($('#wid-id-3 header div.jarviswidget-ctrls a:first-of-type'));
        obj.clone().insertAfter($('#wid-id-4 header div.jarviswidget-ctrls a:first-of-type'));
        obj.clone().insertAfter($('#wid-id-5 header div.jarviswidget-ctrls a:first-of-type'));

        // 修改中文提示
        $('a.jarviswidget-toggle-btn').attr('data-original-title', '展开/折叠');
        $('a.jarviswidget-fullscreen-btn').attr('data-original-title', '全屏显示');
        $("#issues_num").html("缺陷数量统计");
    })();


    loadDataTableScripts();

    function loadDataTableScripts() {

        loadScript("js/plugin/datatables10/jquery.dataTables.js", dt_2);

        function dt_2() {
            loadScript("js/plugin/datatables10/dataTables.colReorder.js", dt_3);
        }

        function dt_3() {
            loadScript("js/plugin/datatables10/dataTables.fixedColumns.js", dt_4);
        }

        function dt_4() {
            loadScript("js/plugin/datatables10/dataTables.colVis.js", dt_5);
        }

        function dt_5() {
            loadScript("js/plugin/datatables/ZeroClipboard.js", dt_6);
        }

        function dt_6() {
            loadScript("js/plugin/datatables/media/js/TableTools.min.js", dt_7);
        }

        function dt_7() {
            loadScript("js/plugin/datatables10/DT_bootstrap.js", showBox);
        }

        function showBox() {
            loadScript("<s:url value='/js/core/issues/messageBox.js'/>", i18n);
        }

        function i18n() {
            loadScript("<s:url value='/js/core/issues/i18n.js'/>", common);
        }

        function common() {
             loadScript("<s:url value='/js/core/issues/issueCommon.js'/>", dashboard);
        }

        function dashboard() {
               loadScript("<s:url value='/js/core/dashboard/dashboard.js'/>", tagsinput);
        }

        function tagsinput() {
            loadScript("js/plugin/bootstrap-tags/bootstrap-tagsinput.min.js", loadData);
        }
    }

    function loadData() {
        issueCommon.initialize();
        dashboard.initDashboard();
        setTimeout(function(){
            $("table").resizableColumns({});
       },800);
    }

    /*
     * RUN PAGE GRAPHS
     */

    // Load FLOAT dependencies (related to page)
    loadScript("js/plugin/flot/jquery.flot.cust.js", loadFlotResize);


    function loadFlotResize() {
        loadScript("js/plugin/flot/jquery.flot.resize.js", loadFlotFillbetween);
    }

    function loadFlotFillbetween() {
        loadScript("js/plugin/flot/jquery.flot.fillbetween.js", loadFlotOrderBar);
    }

    function loadFlotOrderBar() {
        loadScript("js/plugin/flot/jquery.flot.orderBar.js", loadFlotPie);
    }

    function loadFlotPie() {
        loadScript("js/plugin/flot/jquery.flot.pie.js", loadFlotValuelabels);
    }

    function loadFlotValuelabels() {
        loadScript("js/plugin/flot/jquery.flot.valuelabels.js", loadFlotToolTip);
    }

    function loadFlotToolTip() {
        loadScript("js/plugin/flot/jquery.flot.tooltip.js", generatePageGraphs);
    }

    /* TAB 1: UPDATING CHART */
    // For the demo we use generated data, but normally it would be coming from the server

    function generatePageGraphs() {
        loadScript('<s:url value="/js/core/report/whitebox/reportMainPageWhiteboxStatistics.js" />', function() {
            whiteboxStatistics.initialize();
        });

    }
    /*
     * TODO: add a way to add more todo's to list
     */

    // initialize sortable
    $(function () {
        $("#sortable1, #sortable2").sortable({
            handle: '.handle',
            connectWith: ".todo",
            update: countTasks
        }).disableSelection();
    });

    // check and uncheck
    $('.todo .checkbox > input[type="checkbox"]').click(function () {
        var $this = $(this).parent().parent().parent();

        if ($(this).prop('checked')) {
            $this.addClass("complete");

            // remove this if you want to undo a check list once checked
            //$(this).attr("disabled", true);
            $(this).parent().hide();

            // once clicked - add class, copy to memory then remove and add to sortable3
            $this.slideUp(500, function () {
                $this.clone().prependTo("#sortable3").effect("highlight", {}, 800);
                $this.remove();
                countTasks();
            });
        } else {
            // insert undo code here...
        }

    });
    // count tasks
    function countTasks() {

        $('.todo-group-title').each(function () {
            var $this = $(this);
            $this.find(".num-of-tasks").text($this.next().find("li").size());
        });

    }
    //end TODO
    //});
</script>
</html>

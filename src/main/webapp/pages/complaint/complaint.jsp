<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en-us">
<head>
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

    /* 针对所有引擎 */
    .form-control, .select2-choice {
        height: 33px!important;
    }
    
    /* 针对于Webkit */
    @media screen and (-webkit-min-device-pixel-ratio:0) {
        .fixed-btn-height {
            height: 33px!important;
        }
        
        .form-control {
            height: 33px!important;
        }
    }
    
    #tableBtns .ColVis {
        position: relative;
        top: 0;
        right: 0;
    }
    
    #tableBtns button {
        height: 31px!important;
        border-radius: 0!important;
    }
    
     /*jquery.resizableColumns.js*/
     table{border-collapse:collapse;border-spacing:0;}
    .listext th,.listext td{border:solid 1px #ddd;}
    .rc-handle-container{position:relative;}
    .rc-handle{position:absolute;width:7px;cursor:ew-resize;*cursor:pointer;margin-left:-3px;}

</style>
</head>

</body>
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
                <li>投诉</li>
                <li><s:text name="complaint.record"/></li>
            </ol>
        </div>
        <!-- END RIBBON -->
<!-- row -->
<div id="content">
<!-- row -->
<div class="row">

    <!-- widget grid -->
    <section id="widget-grid" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="well">
            <div class="widget-body-toolbar">
                <strong><s:text name="global.query"/></strong>
            </div>

            <!--simple search-->
            <div id="simple-search" >
                <div class="input-group">
                    <div class="input-group-btn">
                        <button type="button" class="btn btn-default dropdown-toggle fixed-btn-height" data-toggle="dropdown">
                            <span id="current-selected-condition"><span><s:text name="global.all"/></span> <span class="caret"></span></span>
                        </button>
                        <ul class="dropdown-menu" id="complaint_condition_selector">
                            <li class="active">
                                <a href="javascript:void(0)" data-last-value="allMatchers"><i class="fa fa-check" ></i> <s:text name="global.all"/></a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="javascript:void(0)" data-last-value="complaintCode"><s:text name="complaint.complaintCode"/></a>
                            </li>
                            <li>
                                <a href="javascript:void(0)" data-last-value="projectName"><s:text name="project.name"/></a>
                            </li>
                            <li>
                                <a href="javascript:void(0)" data-last-value="infoProvider"><s:text name="complaint.infoProvider"/></a>
                            </li>
                             <li>
                                <a href="javascript:void(0)" data-last-value="isSolved"><s:text name="complaint.isSolved"/></a>
                            </li>
                        </ul>
                    </div>
                    <input class="form-control" type="text" placeholder="<s:text name="global.input.search"/>" id="search-input" name="condition.allMatchers">

                    <input id="isSovledHtml" class="hidden" name="isSolved"  data-placeholder="全部" data-src="local" data-name="condition.isSolved">

                    <div class="input-group-btn">
                        <button id="btn-simple-search" type="button" class="btn btn-primary">
                            <i class="fa fa-fw fa-search "></i> <s:text name="global.search"/>
                        </button>
                    </div>

                    <div id="btn-show-more-search" class="input-group-btn">
                        <button type="button" class="btn btn-default">
                             <s:text name="global.advance"/>
                        </button>
                    </div>
                </div>
            </div>
            <!--end simple search -->

            <!--more search-->
            <div id="more-search" style="display: none;">
                <form>
                    <div class="row">
                        <div class="col-sm-10 col-md-10 col-lg-10">
                           <div class="row">
                                <div class="col-sm-6 col-md-3 col-lg-3">
                                    <div class="form-group">
                                        <input style="width:100%" class="form-control" type="text" placeholder="<s:text name="complaint.complaintCode"/>" id="search-more-complaintCode"/>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-3 col-lg-3">
                                    <div class="form-group">
                                        <input style="width:100%" class="form-control" type="text" placeholder="<s:text name="project.name"/>" id="search-more-projectName"/>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-3 col-lg-3">
                                    <div class="form-group">
                                        <input style="width:100%" class="form-control" type="text" placeholder="<s:text name="complaint.infoProvider"/>" id="search-more-infoProvider"/>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-3 col-lg-3">
                                    <div class="form-group">
                                         <select  style="width:100%" class="select2" placeholder="<s:text name="complaint.isSolved"/>" id="search-more-isSolved">
                                            <option value="">全部</option>
                                            <option value="true"><s:text name="complaint.true"/></option>
                                            <option value="false"><s:text name="complaint.false"/></option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-2 col-md-2 col-lg-2 ">

                            <button id="btn-show-simple-search" type="button" class="btn btn-default pull-right">
                               <s:text name="global.base"/>
                            </button>
                            <button id="btn-more-search" type="button" class="btn btn-primary pull-right"><i class="fa fa-search"></i> <s:text name="global.search"/></button>
                        </div>

                    </div>

                </form>
            </div>
            <!--end more search-->
        </div>
    </section>
</div>
<!-- end row -->
    <!-- row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="well">
                    <div class="widget-body-toolbar" style="padding:1px 10px 10px 0;">
                        <div class="pull-right">
                            <a data-item-index="9" href='<s:url value="/complaint/complaint_new.jspa" />' class="btn btn-success btn-sm pull-right">
                                <i class="fa fa-lg fa-plus"></i>
                                <span class="hidden-mobile hidden-tablet"><s:text name="complaint.commit"/></span>
                            </a>
                        </div>
                        <div id="tableBtns" class="pull-right"></div>
                    </div>
                    <table id="dt_complain" width="100%;" style="width: 100%;"  class="table table-striped table-hover compact fixedTable dt-responsive no-wrap table-bordered">
                        <thead>
                            <tr>
                                <th><s:text name="complaint.complaintCode"/></th>
                                <th><s:text name="project.name"/></th>
                                <th><s:text name="complaint.infoProvider"/></th>
                                <th><s:text name="complaint.faultSummary"/></th>
                                <th><s:text name="global.createTime"/></th>
                                <th><s:text name="complaint.isSolved"/></th>
                                <th><s:text name="global.operation"/></th>
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>
                </div>
            <!-- end well -->
            </div>
        </div>

</div>
</div>
</div>

<jsp:include page="/pages/footer.jsp" />
<script src="<s:url value="/js/resetheight.js"/>"></script>

</body>
<script type="text/javascript">
    pageSetUp();
    loadDataTableScripts();

    function loadDataTableScripts() {

        loadScript("<s:url value='/js/plugin/x-editable/x-editable.min.js'/>", loadDataTableScripts);

        function loadDataTableScripts() {
            loadScript("<s:url value='/js/plugin/datatables10/jquery.dataTables.js'/>", dt_1);

            function dt_1() {
                loadScript("<s:url value='/js/core/common.js'/>", dt_2);
            }

            function dt_2() {
                loadScript("<s:url value='/js/plugin/datatables10/dataTables.colReorder.js'/>", dt_3);
            }

            function dt_3() {
                loadScript("<s:url value='/js/plugin/datatables10/dataTables.fixedColumns.js'/>", dt_4);
            }

            function dt_4() {
                loadScript("<s:url value='/js/plugin/datatables10/dataTables.colVis.js'/>", dt_5);
            }

            function dt_5() {
                loadScript("<s:url value='/js/plugin/datatables/ZeroClipboard.js'/>", dt_6);
            }

            function dt_6() {
                loadScript("<s:url value='/js/plugin/datatables/media/js/TableTools.min.js'/>", dt_7);
            }

            function dt_7() {
                loadScript("<s:url value='/js/plugin/datatables10/DT_bootstrap.js'/>", tagsinput);
            }

            function tagsinput() {
                loadScript("<s:url value='/js/plugin/bootstrap-tags/bootstrap-tagsinput.min.js'/>", initPage);
            }
            function initPage() {
                loadScript("<s:url value='/js/core/complaint/complaint.js'/>", init);
            }
        }
     }

    function init() {
        complaint.runDataTables();
        complaint.initEvent();
        complaint.initBasicSearchEvent();
        complaint.initMoreSearchEvent();
        complaint.initSelector_isSolved();
    }
</script>
</html>

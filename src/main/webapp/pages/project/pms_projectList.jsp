<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
        left: initial!important;
    }

    .form-control{
        height: 33px;
    }

    #search-input {
        height: 33px!important;
    }

    @-moz-document url-prefix() {
       .form-control{
           height: 33px;
       }
    }
    
      /*jquery.resizableColumns.js*/
     table{border-collapse:collapse;border-spacing:0;}
    .listext th,.listext td{border:solid 1px #ddd;}
    .rc-handle-container{position:relative;}
    .rc-handle{position:absolute;width:7px;cursor:ew-resize;*cursor:pointer;margin-left:-3px;}

</style>
</head>
<body>
    <jsp:include page="/pages/top.jsp"></jsp:include>
    <!-- Left panel : Navigation area -->
    <!-- Note: This width of the aside area can be adjusted through LESS variables -->
    <jsp:include page="/pages/leftnav.jsp"></jsp:include>
    <!-- END NAVIGATION -->

    <div id="main" role="main">
        <div id="ribbon">
            <!-- breadcrumb -->
            <ol class="breadcrumb">
                <li>项目</li>
                <li>系统项目</li>
            </ol>

        </div>
        <!-- END RIBBON -->

        <!-- row -->
        <div id="content">
            <div class="row">
                <!-- widget grid -->
                <section class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="well">
                    <div class="widget-body-toolbar">
                        <strong>查询</strong>
                    </div>

                    <!--simple search-->
                    <div id="simple-search">
                        <div class="input-group">
                            <div class="input-group-btn">
                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                    <span id="switchItem"> 所有 </span> <span class="caret"></span>
                                </button>
                                <ul id="project-condition-selector" class="dropdown-menu">
                                    <li class="active">
                                        <a href="javascript:;" data-last-value="allMatchers"><i class="fa fa-check"></i> 所有 </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="javascript:;" data-last-value="name"> 项目名称</a>
                                    </li>
                                    <li>
                                        <a href="javascript:;" data-last-value="code"> 项目编号</a>
                                    </li>
                                    <!-- <li>
                                        <a href="javascript:;" data-last-value="projectManager"> 负责人</a>
                                    </li> -->
                                    <li>
                                        <a href="javascript:;" data-last-value="status"> 状态</a>
                                    </li>
                                </ul>
                            </div>

                            <!-- <input class="form-control" type="text" placeholder="输入搜索条件" id="search-input" name="projectQueryCondition.allMatchers" data-keyup="true"> -->

                            <div id="simple-search-fields">
           	                    <input class="form-control simpleEnter" type="text" placeholder="项目名称、项目编号、状态" name="allMatchers" />
           	                    <input class="form-control simpleEnter hide" type="text" placeholder="项目名称" name="name" />
           	                    <input class="form-control simpleEnter hide" type="text" placeholder="项目编号" name="code" />
           	                    <select style="width: 100%;height: 100%;" class="select2 hide searchRemoved" placeholder="状态" name="status">
           							<option value="" selected>全部</option>
           							<option value="OPEN">启用</option>
           							<option value="CLOSE">已关闭</option>
                                </select>
           				    </div>

                            <div class="input-group-btn">
                                <button id="btn-simple-search" type="button" class="btn btn-primary">
                                    <i class="fa fa-fw fa-search "></i> 搜索
                                </button>
                            </div>

                            <div id="btn-show-more-search" class="input-group-btn">
                                <button type="button" class="btn btn-default">高级</button>
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
                                                <input class="form-control moreEnter" type="text" placeholder="项目名称" id="search-more-projectName" />
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-3 col-lg-3">
                                            <div class="form-group">
                                                <input class="form-control moreEnter" type="text" placeholder="项目编号" id="search-more-projectCode" />
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-3 col-lg-3">
                                            <div class="form-group">
                                            	 <input type="hidden" id="search-more-projectManager" value=""/>
                                                 <input type="hidden" style="width: 100%;" data-placeholder="负责人" id="selectProjectManager" value=""/>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-md-3 col-lg-3">
                                            <div class="form-group">
                                                <select style="width: 100%;height: 100%;" class="select2 searchRemoved" placeholder="状态" id="search-more-projectStatus">
                                                	<option value="" selected>全部</option>
                                                    <option value="OPEN">启用</option>
           											<option value="CLOSE">已关闭</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-2 col-md-2 col-lg-2 ">

                                    <button id="btn-show-simple-search" type="button"
                                        class="btn btn-default pull-right">基本</button>
                                    <button id="btn-more-search" type="button" class="btn btn-primary pull-right">
                                        <i class="fa fa-search"></i> 搜索
                                    </button>
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
                        <div class="widget-body-toolbar" style="padding: 1px 10px 10px 0;">
                            <a data-item-index="14" href="<s:url value="/project/showCreatePMSProject.jspa"/>"
                                class="btn btn-success btn-sm pull-right"><i
                                class="fa fa-lg fa-plus"></i> <span
                                class="hidden-mobile hidden-tablet">创建项目</span></a>
                        </div>

                        <table id="dt_projects" width="100%;" style="width: 100%;" class="table table-striped table-hover compact fixedTable dt-responsive no-wrap table-bordered">
                            <thead>
                                <tr>
                                    <th width="50">#</th>
                                    <th>项目</th>
                                    <th>编号</th>
                                    <th>负责人</th>
                                    <th class="hidden-xs hidden-sm">备注</th>
                                    <th>状态</th>
                                    <th>提交时间</th>
                                    <th >操作</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>

                    </div>
                    <!-- end well -->
                </div>
            </div>
            <!-- end row -->
        </div>
    </div>
    <jsp:include page="/pages/footer.jsp" />
    <script src="<s:url value="/js/resetheight.js"/>"></script>
</body>
<script type="text/javascript">
    // DO NOT REMOVE : GLOBAL FUNCTIONS!

    pageSetUp();

    /* remove previous elems */

//    if ($('.DTTT_dropdown.dropdown-menu').length) {
//        $('.DTTT_dropdown.dropdown-menu').remove();
//    }

    loadDataTableScripts();
    function loadDataTableScripts() {

        loadScript("<s:url value='/js/lang/zh_CN.js' />");

        loadScript("<s:url value='/js/plugin/datatables10/jquery.dataTables.js' />", dt_2);

        function dt_2() {
            loadScript("<s:url value='/js/plugin/datatables10/dataTables.colReorder.js' />", dt_3);
        }

        function dt_3() {
            loadScript("<s:url value='/js/plugin/datatables10/dataTables.fixedColumns.js' />", dt_4);
        }

        function dt_4() {
            loadScript("<s:url value='/js/plugin/datatables10/dataTables.colVis.js' />", dt_5);
        }

        function dt_5() {
            loadScript("<s:url value='/js/plugin/datatables/ZeroClipboard.js' />", dt_6);
        }

        function dt_6() {
            loadScript("<s:url value='/js/plugin/datatables/media/js/TableTools.min.js' />", dt_7);
        }

        function dt_7() {
            loadScript("<s:url value='/js/plugin/datatables10/DT_bootstrap.js' />", tagsinput);
        }

        function tagsinput() {
            loadScript("<s:url value='/js/plugin/bootstrap-tags/bootstrap-tagsinput.min.js' />", initPage);
        }

        function initPage() {
            loadScript("<s:url value='/js/core/project/pmsProjectList.js'/>", init);
        }
    }

    function init() {
        // 初始化一些必须重置的状态
        pmsProjectList.initEvent();
        pmsProjectList.initBasicSearchEvent();
        pmsProjectList.initMoreSearchEvent();
        pmsProjectList.runDataTables();
        pmsProjectList.removeSelectSearchInput();
    }
</script>
</html>

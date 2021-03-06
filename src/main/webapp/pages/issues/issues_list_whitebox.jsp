<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en-us">
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
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

    .nowrap-inline {
        text-overflow: ellipsis;
        white-space: nowrap;
        overflow: hidden;
        float:left;
    }
    .nowrap-inline .checkbox-inline span{
        /*white-space: nowrap;*/
        text-overflow: ellipsis;
        white-space: nowrap;
        /*overflow: hidden;*/
    }
    .outline {
        float:left;
        width:100%;
    }

    .select2-input {
      height: 29px!important;
    }

    select.select2 { width: 100%; }


    @-moz-document url-prefix() {
        .form-control{
            height: 33px!important;
        }
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
                <li><a href="<s:url value="/dashboard_whitebox.jspa" />" data-item-index="3">白盒首页</a></li>
                <li>缺陷列表</li>
            </ol>
        </div>
    <div id="content">
        <!-- row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="well">
                <div class="widget-body-toolbar">
                    <strong><s:text name="global.query"/></strong>
                    <span class="hidden-mobile hidden-tablet"><i> </i></span>
                </div>

                <div class="widget-body no-padding" style="margin-top: 10px;">
                        <!--</h2>-->
                        <div class="row">
                            <div class="col-sm-12 col-md-12 col-lg-12">
                                <div class="align-padding" id="simple-search">
                                    <form id="simple-search-form">
                                        <div class="input-group">
                                            <div class="input-group-btn">
                                                <button type="button" class="btn btn-default dropdown-toggle fixed-btn-height" data-toggle="dropdown">
                                                   <span id="current-selected-condition"><s:text name="global.all"/></span> <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu" id="issue-condition-selector">
                                                    <li class="active">
                                                        <a id="all" href="javascript:;" data-last-value="allMatchers"><i class="fa fa-check"></i> <s:text name="global.all"/></a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li>
                                                        <a id="project" href="javascript:;" data-last-value="projectName"><s:text name="project.name"/></a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;" data-last-value="summary"><s:text name="issue.summary"/></a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;" data-last-value="priority" data-multi="true"><s:text name="issue.priority"/></a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;" data-last-value="status" data-multi="true"><s:text name="issue.status"/></a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;" data-last-value="severity" data-multi="true"> <s:text name="issue.level"/></a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <input class="form-control" type="text" placeholder="<s:text name="issue.search.tips"/>" name="allMatchers" data-keyup="true">

                                            <input class="form-control hidden" type="text" placeholder="<s:text name="project.name"/>"  name="projectName" data-keyup="true">

                                            <input class="form-control hidden" name="summary" type="text" placeholder="<s:text name="issue.summary"/>" data-keyup="true">

                                            <%-- <input class="form-control hidden" type="text" placeholder="<s:text name="issue.reciever"/>"  name="receiver" data-keyup="true"> --%>

                                            <!--请保留name="status"和data-src="local", data-src属性指示数据来源于本地-->
                                            <input class="hidden" name="status" type="hidden" placeholder="<s:text name="issue.status"/>" data-src="local">

                                            <!--请保留name="severity"和data-src="local", data-src属性指示数据来源于本地-->
                                            <input class="hidden" name="priority" type="hidden" placeholder="<s:text name="issue.priority"/>" data-src="local">

                                            <input class="hidden" name="severity" type="hidden" placeholder="<s:text name="issue.level"/>" data-src="local">

                                            <div class="input-group-btn">
                                                <button id="btn-simple-search" type="button" class="btn btn-primary">
                                                    <i class="fa fa-fw fa-search "></i> <s:text name="global.search"/>
                                                </button>
                                            </div>

                                            <div id="btn-show-more-search" class="input-group-btn" data-search-mode="combination">
                                                <button type="button" class="btn btn-default">
                                                    <s:text name="global.advance"/>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>

                                <!--more search-->
                                <div id="more-search" style="display: none;">
                                  <form id="combinational-search-form" >
                                        <div class="row">
                                            <div class="col-sm-10 col-md-10 col-lg-10">
                                                <div class="row" style="margin: 0;">
                                                    <div class="col-sm-6 col-md-4 col-lg-4">
                                                        <div class="form-group">
                                                            <input class="form-control" style="padding-left: 5px;" name="projectName" type="text" placeholder="<s:text name="project.name"/>" data-moda="combination">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6 col-md-4 col-lg-4">
                                                        <div class="form-group">
                                                            <input name="receivers" type="hidden" class="modal-receiver ignored" data-placeholder="<s:text name="issue.reciever"/>" data-moda="combination">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6 col-md-4 col-lg-4">
                                                        <div class="form-group">
                                                            <!--请保留name="status"和data-src="local", data-src属性指示数据来源于本地-->
                                                            <input name="status" type="hidden" placeholder="<s:text name="issue.status"/>" data-moda="combination" data-src="local">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin: 0;">
                                                    <div class="col-sm-6 col-md-4 col-lg-4">
                                                        <div class="form-group">
                                                            <!--请保留name="severity"和data-src="local", data-src属性指示数据来源于本地-->
                                                            <input name="priority" type="hidden" placeholder="<s:text name="issue.priority"/>" data-moda="combination" data-src="local">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6 col-md-4 col-lg-4">
                                                        <div class="form-group">
                                                            <input name="severity" type="hidden" placeholder="<s:text name="issue.level"/>" data-moda="combination" data-src="local">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6 col-md-4 col-lg-4">
                                                        <div class="form-group">
                                                            <input class="form-control" style="padding-left: 5px;" name="summary" type="text" placeholder="<s:text name="issue.summary"/>" data-moda="combination">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin: 0;">
                                                    <div class="col-sm-6 col-md-4 col-lg-4">
                                                        <div class="form-group">
                                                            <input name="securityLevel" type="hidden" placeholder="<s:text name="issue.securityLevel"/>" data-moda="combination" data-src="local">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6 col-md-4 col-lg-4">
                                                        <div class="form-group">
                                                            <input name="allPerson" type="hidden" placeholder="<s:text name="issue.owner"/>" data-moda="combination" data-allUsers="true">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin: 0;">
                                                    <div class="col-sm-6 col-md-4 col-lg-4">
                                                        <div class="form-group">
                                                            <input type="text" id="startDate" placeholder="开始日期" class="form-control input-sm" name="startDate" data-type="start" data-moda="combination">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6 col-md-4 col-lg-4">
                                                        <div class="form-group">
                                                            <input type="text" id="endDate" placeholder="结束日期" class="form-control input-sm" name="endDate" data-type="end" data-moda="combination">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-2 col-md-2 col-lg-2 responsive-alignment">
                                                <div class="pull-right">
                                                    <button id="btn-show-simple-search" type="button" class="btn btn-default pull-right" data-search-mode="simple">
                                                        <s:text name="global.base"/>
                                                    </button>
                                                    <button id="btn-combination-search" type="button" class="btn btn-primary pull-right"><i class="fa fa-search"></i> <s:text name="global.search"/></button>
                                                </div>
                                            </div>

                                        </div>

                                    </form>
                                </div>
                                <!--end more search-->

                                <div class="row" style="margin-top: 10px;">
                                    <div class="col-sm-12 col-md-12 col-lg-12">
                                        <div class="align-padding">
                                           <div class="pull-left" style="max-width: 70%;">
                                                <strong>已选中的缺陷便签：</strong>
                                                <div class="margin-top-10" id="selected-label-placeholder"></div>
                                           </div>
                                           <a href="javascript:;" id="show_moreConditions" class="pull-right"><s:text name="global.more.search"/><b class="caret"></b></a>
                                        </div>
                                    </div>
                                </div>

                                <div id="moreConditions" class="close" style="display: none; margin-top:5px;">
                                       <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                              <table id="tagTable" class="table table-hover table-noborder">
                                             </table>
                                             <hr>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                            <span class="onoffswitch-title">
                                                <i class="fa fa-magnet"></i> <s:text name="global.exact.match"/>
                                            </span>
                                            <span class="onoffswitch">
                                                <input id="myonoffswitch" class="onoffswitch-checkbox" type="checkbox" name="onoffswitch">
                                                <label class="onoffswitch-label" for="myonoffswitch">
                                                    <span class="onoffswitch-inner" data-swchoff-text="NO" data-swchon-text="YES"></span>
                                                    <span class="onoffswitch-switch"></span>
                                                </label>
                                            </span>
                                        </div>
                                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                  <!--           <button class="btn btn-default pull-right" id="btnToggleFields">显示全部/部分</button> -->
                                            <button class="btn btn-default pull-right" id="btnCancelFields">取消全部</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
         </div>
     <!-- end row -->
        <!-- row -->
        <div class="row">

        </div>
        <!-- end row -->


       <!-- row -->
           <div class="row">
            <div class="col-sm-12">
                <div class="well">
                    <div class="widget-body-toolbar" style="padding:1px 13px 10px 0;">            
                        <a href="issues_new_whitebox.jspa" class="btn btn-success btn-sm pull-right" ><i
                                class="fa fa-lg fa-plus"></i>
                            <span class="hidden-mobile hidden-tablet"><s:text name="issue.create"/></span></a>
                              <%-- 导出按钮 --%>                                                  
                           <div class="btn-group hidden-phone pull-right">
                                <a class="btn dropdown-toggle btn-sm  btn-primary exportToExcelTables"><i class="fa fa-cog"></i> <s:text name="report.export"/> </a>
                           </div>
                           <%-- 导出按钮 --%>
                           <div id="tableBtns" class="pull-right"></div>
                    </div>
                    <table id="dt_issues" width="100%;" style="width: 100%;" class="table table-striped table-hover compact fixedTable dt-responsive no-wrap table-bordered">
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
            <!-- end well -->
            </div>
        </div>
    </div>
</div>
<!-- end row -->

<!--<script src="../js/plugin/bootstrap-tags/bootstrap-tagsinput.min.js"></script>-->

<input id="query-Type" type="hidden" value="whitebox">
<input id="query-mode" type="hidden" value="simple">
<input class="searchKey" type="hidden" value="${searchKey}"> <!--if the value of element is not empty, that indicate this page is from main page-->
<input class="searchValue" type="hidden" value="${searchValue}"> <!--if the value of element is not empty, that indicate this page is from main page-->

<jsp:include page="/pages/footer.jsp" />
</body>
<script src="<s:url value="/js/resetheight.js"/>"></script>
<script type="text/javascript">

    $(function() {

        $("#startDate, #endDate").datepicker({
            format: "yyyy-mm-dd",
            minViewMode: "days",
            todayHighlight : 1,
            autoclose: true
        }).on("changeDate", function(e) {
            if ($(e.target).data("type") === "start") {
                $("#endDate").datepicker("setStartDate", e.date);
            } else {
                $("#startDate").datepicker("setEndDate", e.date);
            }
        });
    });

    // DO NOT REMOVE : GLOBAL FUNCTIONS!
    pageSetUp();


    loadScript("<s:url value='/js/plugin/x-editable/x-editable.min.js'/>", loadDataTableScripts);

    function loadDataTableScripts() {
        loadScript("<s:url value='/js/plugin/datatables10/jquery.dataTables.js'/>", dt_2);

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
            loadScript("<s:url value='/js/plugin/bootstrap-tags/bootstrap-tagsinput.min.js'/>", showBox);
        }

        function showBox() {
            loadScript("<s:url value='/js/core/issues/messageBox.js'/>", i18n);
        }

        function i18n() {
          loadScript("<s:url value='/js/core/issues/i18n.js'/>", common);
        }

        function common() {
          loadScript("<s:url value='/js/core/issues/issueCommon.js'/>", inittable);
        }

        function inittable() {
            loadScript("<s:url value='/js/core/issues/issuesWhitebox.js'/>", init);
        }
    }

    //初始化
    function init()
    {
        issuesWhitebox.initialize();
        issueCommon.initialize();
        initTableEvent();
    }


    loadScript('<s:url value="/js/core/issues/issueLabel.js" />', function() {
        initMoreSearchEvent();
      });

      function initMoreSearchEvent()
      {
          var labelUrl ="/issue/findDefaultLabelsForWhitebox.jspa";
          $('#show_moreConditions').click(function(e){
              $('#moreConditions').slideToggle(100,function(){
                  if($(this).hasClass("close"))
                  {
                      $(this).removeClass('close');
                      $(this).addClass('open');
                      issueLabel.initListPage(labelUrl);
                      return;
                  }

                   if($(this).hasClass("open"))
                  {
                     $(this).removeClass('open');
                     $(this).addClass('close');
                  }
              });
          });

          issueLabel.initBindComponentClickEvent();

          $('#moreConditions').resize(function() {
            var div = $('#moreConditions .table div.nin');
            var sp = $('#moreConditions .table div.nin > span.nout');

            div.each(function(index,ele) {
                div.width($('#main').width() - 210);
                var btn_plus =  $(this).parent().find('a.plus');
                var btn_minus =  $(this).parent().find('a.minus');

                if($(this).width() > $(this).children('span.nout').width()){
                    btn_plus.hide();
                } else {
                    if(div.hasClass('nowrap-inline')) {
                        btn_plus.show();
                        btn_minus.hide();
                    } else {
                        btn_plus.hide();
                        btn_minus.show();
                    }
                }
            });
          });

          $('#moreConditions .table td a.plus').click(function(e){
//            var div = $('#moreConditions .table div.nowrap-inline');
            var div = $(this).parent('td').find('div.nin');
            if(div.hasClass('nowrap-inline')){
                div.removeClass('nowrap-inline');
                div.addClass('outline');
            }else{
                div.addClass('nowrap-inline');
                div.removeClass('outline');
            }
            $(this).toggle();
            $(this).next('a.minus').toggle();
          });

          $('#moreConditions .table td a.minus').click(function(e){
            var div = $(this).parent('td').find('div.nin');
            div.removeClass('outline');
            div.addClass('nowrap-inline');
            $(this).toggle();
            $(this).prev('a.plus').toggle();
          });

          $('#moreConditions table tr:gt(5)').addClass('hidden');

          $('#btnToggleFields').click(function(event) {
              $('#moreConditions table tr:gt(5)').toggleClass('hidden');
          });
      }

    function initTableEvent()
    {
         /* event for delete button */
        $('#dt_issues tbody > tr').find('td:last> a:last').click(function () {
            issuesWhitebox.deleteIssue({name: 'IDTS'});
        });
        <%-- ----------------------------------------------------------------- --%> 
        //导出excel数据为空时给提醒
          $(".exportToExcelTables").click(function(e){
          	//清空现有弹出框
          	clearSmallBox();
          	window.location = $.url_root+'/issue/export_data_whitebox.jspa';
          });

      
      <%-- ----------------------------------------------------------------- --%> 
    }
    
</script>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en-us">
<head>
    <meta charset="utf-8">
    <!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->
    <meta content="" name="description">
    <meta content="" name="author">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">


    <style>
        .radio-inline + .radio-inline, .checkbox-inline + .checkbox-inline {
            margin-left: 0px;
        }

        .search-results > *:first-child a {
            text-decoration: none;
        }
       

        .tab-content .dropdown-menu {
            /*background-clip: padding-box;*/
            /*background-color: #FFFFFF;*/
            /*border: 1px solid rgba(0, 0, 0, 0.15);*/
            /*border-radius: 2px;*/
            /*box-shadow: 0 6px 12px rgba(0, 0, 0, 0.176);*/
            /*display: none;*/
            /*float: left;*/
            /*font-size: 13px;*/
            /*left: 20px;*/
            /*list-style: none outside none;*/
            /*margin: 2px 0 0;*/
            /*min-width: 160px;*/
            /*padding: 5px 0;*/
            /*position: absolute;*/
            top: auto;
            /*z-index: 2000;*/
        }

        .nowrap-inline {
            /*white-space: nowrap;*/
            text-overflow: ellipsis;
            white-space: nowrap;
            overflow: hidden;
            float: left;
        }

        .nowrap-inline .checkbox-inline span {
            /*white-space: nowrap;*/
            text-overflow: ellipsis;
            white-space: nowrap;
            /*overflow: hidden;*/
        }

        .outline {
            float: left;
            width: 100%;
        }

        .tab-pane .table > tbody > tr:first-child > td {
            border-top: 0px solid #DDDDDD;
        }

    </style>
</head>
    <body class="fixed-header fixed-ribbon fixed-navigation">

    <!-- HEADER -->
    <!-- possible classes: minified, fixed-ribbon, fixed-header, fixed-width-->
    <jsp:include page="/pages/top.jsp"></jsp:include>

    <div>
<!-- Left panel : Navigation area -->
<!-- Note: This width of the aside area can be adjusted through LESS variables -->
    <jsp:include page="/pages/leftnav.jsp"></jsp:include>
<!-- END NAVIGATION -->

        <div id="main" role="main">

            <!-- RIBBON -->
            <div id="ribbon">
                <!-- breadcrumb -->
                <ol class="breadcrumb">
                    <li>搜索缺陷</li>
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

            <!-- row -->
                <div class="row">
                    <div class="col-sm-12">

                    <ul id="myTab1" class="nav nav-tabs bordered">
                        <li class="active">
                            <a href="#s1" data-toggle="tab">搜索缺陷</a>
                        </li>
                        <!--<li>-->
                        <!--<a href="#s3" data-toggle="tab">Search History</a>-->
                        <!--</li>-->
                        <li class="pull-right hidden-mobile">
                            <a href="javascript:void(0);"> <span class="note">找到 <span id="top_totalCount">0</span> 条结果 (<span id="top_usedSeconds">0</span> 秒) </span> </a>
                        </li>
                    </ul>

                    <div id="myTabContent1" class="tab-content bg-color-white padding-10">
                    <div class="tab-pane fade in active" id="s1">
                    <h1> 搜索 <span class="semi-bold">缺陷内容</span></h1>
                    <br>
 					<!--simple search-->
				     <div id="simple-search" >
                        <form id="global-search-form">
                            <div class="input-group input-group-lg hidden-mobile">
                                <div class="input-group-btn">
                                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                        <span id="current-selected-condition"><s:text name="global.all"/></span> <span class="caret"></span>
                                    </button>
                                    <ul id="issue-condition-selector" class="dropdown-menu">
                                      <li class="active">
                                          <a href="javascript:void(0)" data-last-value="allMatchers"><i class="fa fa-check"></i> <s:text name="global.all"/></a>
                                      </li>
                                      <li class="divider"></li>
                                      <li>
                                          <a href="javascript:void(0)" data-last-value="projectName"><s:text name="project.name"/></a>
                                      </li>
                                      <li>
                                         <a href="javascript:void(0)" data-last-value="summary"><s:text name="issue.summary"/></a>
                                      </li>
                                     <%--  <li>
                                          <a href="javascript:void(0)" data-last-value="receiver"><s:text name="issue.reciever"/></a>
                                      </li> --%>
                                      <li>
                                          <a href="javascript:void(0)" data-last-value="priority" data-multi="true"> <s:text name="issue.priority"/></a>
                                      </li>
                                      <li>
                                          <a href="javascript:void(0)" data-last-value="status" data-multi="true"> <s:text name="issue.status"/></a>
                                      </li>
                                       <li>
                                           <a href="javascript:;" data-last-value="severity" data-multi="true"> <s:text name="issue.level"/></a>
                                       </li>
                                    </ul>
                                </div>
                                <input class="form-control" type="text" placeholder="<s:text name="issue.global.search.tips"/>" name="allMatchers" data-keyup="true">

                                <input class="form-control hidden" type="text" placeholder="<s:text name="project.name"/>"  name="projectName" data-keyup="true">
                                
                                <input class="form-control hidden" type="text" placeholder="<s:text name="issue.summary"/>"  name="summary" data-keyup="true">

<%--                                 <input class="form-control hidden" type="text" placeholder="<s:text name="issue.reciever"/>"  name="receiver" data-keyup="true">
 --%>
                                <!--请保留name="status"和data-src="local", data-src属性指示数据来源于本地-->
                                <input class="hidden" name="status" type="hidden" placeholder="<s:text name="issue.status"/>" data-src="local">

                                <!--请保留name="priority"和data-src="local", data-src属性指示数据来源于本地-->
                                <input class="hidden" name="priority" type="hidden" placeholder="<s:text name="issue.priority"/>" data-src="local">
                                
                                 <!--请保留name="severity"和data-src="local", data-src属性指示数据来源于本地-->
                                <input class="hidden" name="severity" type="hidden" placeholder="<s:text name="issue.level"/>" data-src="local">

                                <div class="input-group-btn">
                                  <button id="btn-global-search" type="button" class="btn btn-primary">
                                      <i class="fa fa-fw fa-search "></i><s:text name="global.search"/>
                                  </button>
                                </div>
                            </div>
                        </form>
                    </div>
                   <!--end simple search-->

                    <div id="moreConditions" class="well close" style="display: none;margin-top:5px;">
	                    <div class="row">
		                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			                    <!--<h4>更多标签</h4>-->
			                    <ul class="nav nav-tabs  tabs-pull-right" id="label-tabs-ul">
			                        <!--<li class="pull-left">-->
			                        <!--<a href="javascript:void(0);"> 更多标签 </a>-->
			                        <!--</li>-->
			
			                        <li class="active">
			                            <a href="#card-tab-r1" data-toggle="tab"><span class="badge bg-color-blue txt-color-white">卡产品 </span> </a>
			                        </li>
			                        <li>
			                            <a href="#sys-tab-r2" data-toggle="tab"><span class="badge bg-color-blueDark txt-color-white">系统产品</span> </a>
			                        </li>
			                        <li>
			                            <a href="#white-tab-r3" data-toggle="tab"><span class="badge bg-color-greenLight txt-color-white">白盒</span> </a>
			                        </li>
			                    </ul>
			                    <div class="tab-content ">
				                    <div class="tab-pane active" id="card-tab-r1">
				                          <div class="row">
				                              <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				                                    <table id="card-tagTable" class="table table-hover table-noborder">
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
				                                      <input id="myonoffswitch1" class="onoffswitch-checkbox" type="checkbox" name="onoffswitch">
				                                      <label class="onoffswitch-label" for="myonoffswitch1">
				                                          <span class="onoffswitch-inner" data-swchoff-text="NO" data-swchon-text="YES"></span>
				                                          <span class="onoffswitch-switch"></span>
				                                      </label>
				                                  </span>
				                              </div>
				                              <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
				                             <!--  	<button class="btn btn-default pull-right" id="btnToggleFields">显示全部/部分</button> -->
				                              	<button class="btn btn-default pull-right" id="btnCancelFields1">取消全部</button>
				                              </div>
				                          </div>
				                    </div>
				                    <div class="tab-pane padding-10" id="sys-tab-r2">
				                     	 <div class="row">
				                              <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				                                    <table id="sys-tagTable" class="table table-hover table-noborder">
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
				                                      <input id="myonoffswitch2" class="onoffswitch-checkbox" type="checkbox" name="onoffswitch">
				                                      <label class="onoffswitch-label" for="myonoffswitch2">
				                                          <span class="onoffswitch-inner" data-swchoff-text="NO" data-swchon-text="YES"></span>
				                                          <span class="onoffswitch-switch"></span>
				                                      </label>
				                                  </span>
				                              </div>
				                              <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
				                              <!-- 	<button class="btn btn-default pull-right" id="btnToggleFields">显示全部/部分</button> -->
				                              	<button class="btn btn-default pull-right" id="btnCancelFields2">取消全部</button>
				                              </div>
				                          </div>
				                    </div>
				                    <div class="tab-pane padding-10" id="white-tab-r3">
				                    	 <div class="row">
				                             <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				                                   <table id="white-tagTable" class="table table-hover table-noborder">
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
				                                     <input id="myonoffswitch3" class="onoffswitch-checkbox" type="checkbox" name="onoffswitch">
				                                     <label class="onoffswitch-label" for="myonoffswitch3">
				                                         <span class="onoffswitch-inner" data-swchoff-text="NO" data-swchon-text="YES"></span>
				                                         <span class="onoffswitch-switch"></span>
				                                     </label>
				                                 </span>
				                             </div>
				                             <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
				                             	<!-- <button class="btn btn-default pull-right" id="btnToggleFields">显示全部/部分</button> -->
				                             	<button class="btn btn-default pull-right" id="btnCancelFields3">取消全部</button>
				                             </div>
				                         </div>
				                    </div>
			                    </div>
		                    </div>
	                    </div>
                    </div>

                    <table id="dt_issues" class="compact fixedTable">
            		    <thead>
            		        <tr>
            		            <th>
            		               <h1 class="font-md"> 搜索结果
			                        <small id="bottom_totalCount" class="text-danger"> &nbsp;&nbsp;(<s:property value="totalCount"/> 条结果)</small>
			                        <div class="pull-right">
			                            <!--<a href="javascript:void(0);">更多搜索条件</a><i class="fa fa-caret-down fa-lg"></i>-->
			                            <a href="#" id="show_moreConditions" class="dropdown-toggle" data-toggle="dropdown">更多搜索条件<b class="caret"></b></a>
			                        </div>
			                       </h1>
			                    </th>
            		        </tr>
            		    </thead>
            		    <tbody></tbody>
            		</table>

<!--                     <div id="resultDiv">
                    </div> 

                    <div class="text-center">
                        <hr>
                        <ul class="pagination no-margin">
                            <li class="prev disabled">
                                <a href="javascript:void(0);">前一页</a>
                            </li>
                            <li class="active">
                                <a href="javascript:void(0);">1</a>
                            </li>
                            <li class="next">
                                <a href="javascript:void(0);">下一页</a>
                            </li>
                        </ul>
                        <br>
                        <br>
                        <br>
                    </div>
-->
                    </div>
                    </div>

                    </div>
                </div>

            <!-- end row -->
            </div>
        </div>

    </div>

    <jsp:include page="/pages/footer.jsp"></jsp:include>
    <!-- SHORTCUT AREA : With large tiles (activated via clicking user name tag)
    Note: These tiles are completely responsive,
    you can add as many as you like
    -->
<input id="query-mode" type="hidden" value="simple"> <!-- the query mode, simple query or combinational query -->
</body>
<script src="<s:url value="/js/resetheight.js"/>"></script>
<script type="text/javascript">
    // DO NOT REMOVE : GLOBAL FUNCTIONS!
    pageSetUp();

    // load bootstrap-progress bar script
    loadScript("<s:url value='/js/plugin/bootstrap-progressbar/bootstrap-progressbar.js'/>", progressBarAnimate);


    /*$("#btn_doSearch").click(function(){
        console.log("in button.");

        $.ajax({
            method: "POST",
            url: "doSearch.jspa",
            datatype: "json",
            data: {
                "condition":$('#search-textfield').val()
            },
            success: function (result) {
                $('#resultDiv').html(result.result);
                $('#top_totalCount,#bottom_totalCount').html(result.totalCount);
                console.log("result.totalCount:" + result.totalCount);
                $('#top_usedSeconds').html(result.usedSeconds);
            }
        });
    });*/
    
    /*$("#btn_doSearch").click(function(){
        console.log("in button.");

        $.ajax({
            method: "POST",
            url: "doSearchByCondition.jspa",
            datatype: "json",
            data: {
                "issueQueryCondition.summary":$('#search-textfield').val()
            },
            success: function (result) {
                $('#resultDiv').html(result.result);
                $('#top_totalCount,#bottom_totalCount').html(result.totalCount);
                console.log("result.totalCount:" + result.totalCount);
                $('#top_usedSeconds').html(result.usedSeconds);
            }
        });
    });*/


    // Fill all progress bars with animation
    function progressBarAnimate() {
        $('.progress-bar').progressbar({
            display_text: 'fill'
        });
    }

    
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
            loadScript("<s:url value='/js/core/issues/issuesCard.js'/>", issueLabel);
        }
        
        function issueLabel() {
            loadScript("<s:url value='/js/core/issues/issueLabel.js'/>", search);
        }
        function search() {
            loadScript("<s:url value='/js/core/search/search.js'/>", initMoreSearchEvent);
        }
    }

    function initMoreSearchEvent()
    {
    	issueCommon.initSelect2Component();
    	search.initFindLabels();

    	issueCommon.bindingSearchEvent();
    	search.initSearch();
        $('#show_moreConditions').click(function(e){
            $('#moreConditions').slideToggle(100,function(){
            	if($(this).hasClass("close"))
            	{
            		$(this).removeClass('close');
            		$(this).addClass('open');
        	    	var labelUrl ="/issue/findDefaultLabelsForCard.jspa";
        	        issueLabel.initListPage(labelUrl,"card-tagTable");
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
//          var div = $('#moreConditions .table div.nowrap-inline');
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

    $('.checkbox-inline > :checkbox').click(function (e) {
        $('.search-results:first').fadeToggle(250);
    });

</script>
 <style>
.select2-container-multi .select2-choices .select2-search-field input {
    background: none repeat scroll 0 0 transparent !important;
    border: 0 none;
    box-shadow: none;
    color: #666;
    font-family: inherit;
    font-size:17px;
    height: 42px !important;
    margin: 1px 0;
    outline: 0 none;
    padding: 5px;
}

.select2-container-multi .select2-choices .select2-search-choice {
    -moz-user-select: none;
    background-clip: padding-box;
    background-color: #3276b1;
    border: 1px solid #2a6395;
    color: #fff;
    cursor: default;
    font-size:17px;
    line-height: 22px;
    margin: 10px 0 3px 5px;
    padding: 1px 28px 1px 8px;
    position: relative;
}

.select2-container-multi .select2-search-choice-close {
    display: block;
    padding: 5px 4px 3px 6px;
    font-size:17px;
    right: 0;
    top: 0;
}
</style> 
</html>
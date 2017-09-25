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

    /* 针对所有引擎 */
    .form-control{
        height: 32px;
    }
    /* 针对 Gecko 引擎 */
    @-moz-document url-prefix() {
       .form-control{
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

    input.readonlyDate {
        cursor: pointer !important;
        background-color: white !important;
    }
    
    /*jquery.resizableColumns.js*/
     table{border-collapse:collapse;border-spacing:0;}
    .listext th,.listext td{border:solid 1px #ddd;}
    .rc-handle-container{position:relative;}
    .rc-handle{position:absolute;width:7px;cursor:ew-resize;*cursor:pointer;margin-left:-3px;}
</style>
<body>
<!-- Include top and left page -->
<jsp:include page="/pages/top.jsp"></jsp:include>
<jsp:include page="/pages/leftnav.jsp"></jsp:include>

<div id="main" role="main">
	<!-- RIBBON -->
	<div id="ribbon">
	    <!-- breadcrumb -->
	    <ol class="breadcrumb">
	        <li><s:text name="outside.outsideTest"/></li>
	    </ol>
	    <!-- end breadcrumb -->
	</div>
	<!-- END RIBBON -->
	<!-- row -->
	<div id="content">
		<div class="row">
		    <section id="widget-grid" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		        <div class="well">
		        	<div class="widget-body-toolbar">
		        		<strong><s:text name="global.query"/></strong>
		        	</div>

		        	<!--simple search-->
		        	<div id="simple-search" >
		    	        <div class="input-group">
		    	            <div class="input-group-btn">
		    	                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
		    	                	<span id="current-selected-condition"><span><s:text name="global.all"/></span> <span class="caret"></span></span>
		    	                </button>
		    	                <ul class="dropdown-menu" id="outside-condition-selector">
		    	                    <li class="active">
		    	                        <a href="javascript:void(0)" data-last-value="allMatchers"><i class="fa fa-check"></i><s:text name="global.all"/></a>
		    	                    </li>
		    	                    <li class="divider"></li>
		    	                    <li>
		    	                        <a href="javascript:void(0)" data-last-value="projectName"><s:text name="outside.projectName"/></a>
		    	                    </li>
		    	                    <li>
		    	                        <a href="javascript:void(0)" data-last-value="productModel"><s:text name="outside.productModel"/></a>
		    	                    </li>
		    	                    <li>
		    	                        <a href="javascript:void(0)" data-last-value="fixedUser"><s:text name="outside.fixedUser"/></a>
		    	                    </li>
		    	                    <li>
		    	                        <a href="javascript:void(0)" data-last-value="validator"><s:text name="outside.validator"/></a>
		    	                    </li>
		    	                </ul>
		    	            </div>
		    	            <input class="form-control" type="text" placeholder="<s:text name="outside.projectName"/> , <s:text name="outside.productModel"/> , <s:text name="outside.fixedUser"/> , <s:text name="outside.validator"/>" id="search-input" name="outsiteTestIssueQueryCondition.allMatchers">

		    	            <div class="input-group-btn">
		    	                <button id="btn-simple-search" type="button" class="btn btn-primary"><i class="fa fa-fw fa-search "></i> <s:text name="global.search"/></button>
		    	            </div>

		    	            <div id="btn-show-more-search" class="input-group-btn">
		    	                <button type="button" class="btn btn-default"><s:text name="global.advance"/></button>
		    	            </div>
		    	        </div>
		        	</div>
		        	<!--end simple search -->

		        	<!--more search-->
		        	<div id="more-search" style="display: none;">
		        	    <form>
		        	        <div class="row">
			        	        <div class="col-sm-10 col-md-10 col-lg-10">
			        	        	<div class="col-sm-6 col-md-3 col-lg-3" style="padding-left: 0;">
			        	        	    <div class="form-group">
			        	        	        <input style="width:100%" class="form-control" type="text" placeholder="<s:text name="outside.projectName"/>" id="search-more-projectName"/>
			        	        	    </div>
			        	        	</div>
			        	        	<div class="col-sm-6 col-md-3 col-lg-3">
			        	        	    <div class="form-group">
			        	        	        <input style="width:100%" class="form-control" type="text" placeholder="<s:text name="outside.productModel"/>" id="search-more-productModel"/>
			        	        	    </div>
			        	        	</div>
			         	        	<div class="col-sm-6 col-md-3 col-lg-3">
			        	        	    <div class="form-group">
			        	        	        <input style="width:100%" class="form-control" type="text" placeholder="<s:text name="outside.fixedUser"/>" id="search-more-fixedUser"/>
			        	        	    </div>
			        	        	</div>
			         	        	<div class="col-sm-6 col-md-3 col-lg-3">
			        	        	    <div class="form-group">
			        	        	        <input style="width:100%" class="form-control" type="text" placeholder="<s:text name="outside.validator"/>" id="search-more-validator"/>
			        	        	    </div>
			        	        	</div>
			        	        </div>
		        	        	<div class="col-sm-2 col-md-2 col-lg-2 ">
									<button id="btn-show-simple-search" type="button" class="btn btn-default pull-right"><s:text name="global.base"/></button>
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
		<%-- 导出按钮 --%>                                                  
                           <%-- 导出按钮 --%>
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<div class="well">
				   <div class="widget-body-toolbar" style="padding:1px 13px 10px 0;">
						 <div class="btn-group hidden-phone pull-right">
                           <a class="btn dropdown-toggle btn-sm  btn-primary exportToExcelTables"><i class="fa fa-cog"></i> <s:text name="report.export"/> </a>
                         </div>
                         <div id="tableBtns" class="pull-right"></div>
            		</div>
					<table id="dt_outside" width="100%;" style="width: 100%;" class="table table-striped table-hover compact fixedTable dt-responsive no-wrap table-bordered">
						<thead>
							<tr>
								<th><s:text name="outside.code"/></th>
								<th><s:text name="outside.projectName"/></th>
								<th><s:text name="outside.description"/></th>
								<th><s:text name="outside.productModel"/></th>
								<th><s:text name="outside.appVersion"/></th>
								<th><s:text name="outside.fixedUser"/></th>
								<th><s:text name="outside.validator"/></th>
								<th><s:text name="outside.validatedResult"/></th>
								<th><s:text name="outside.createTime"/></th>
								<th><s:text name="global.operation"/></th>
							</tr>
						</thead>
						<tbody></tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<input type="hidden" id="Type" value="outsiteTest">
</body>
<jsp:include page="/pages/footer.jsp" />
<script src="<s:url value="/js/resetheight.js"/>"></script>
<script type="text/javascript">
    pageSetUp();
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
	        loadScript("<s:url value='/js/core/issues/issuesOutside.js'/>", init);
	    }
    }

	function init() {
		outside.runDataTables();
		outside.initEvent();
		outside.initBasicSearchEvent();
		outside.initMoreSearchEvent();
		<%-- ----------------------------------------------------------------- --%> 
        //导出excel数据为空时给提醒
          $(".exportToExcelTables").click(function(e){
          	//清空现有弹出框
          	clearSmallBox();
          	window.location = $.url_root+'/issue/export_data_outside.jspa';
          });

      
      <%-- ----------------------------------------------------------------- --%> 
	}
</script>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="zh">
<jsp:include page="/pages/top.jsp"></jsp:include>
<head>
<link href="<s:url value="/css/summernote.css" />" rel="stylesheet" type="text/css" >
<link href="<s:url value="/css/summernote-bs3.css" />" rel="stylesheet" type="text/css" >
<style type="text/css">
    /* 结点添加背景色，开始 */
    .tree ul li.parent_li > span {
        background-color: #739E73;
        color: #fff;
        padding: 3px;
    }
    .leafClicked {
        background-color: #FDDFB3 !important;
    }
    .parentClicked {
        background-color: #DF8505 !important;
    }
    /* 父结点添加背景色，结束 */

    /* 树结点的间距，开始 */
    .tree ul {
        padding-top: 0;
    }
    .tree ul ul {
        padding-top: 0;
    }
    .tree li {
        padding: 5;
    }
    .tree li:before {
        top: 0px;
    }
    .tree li:last-child:before {
        height: 18px;
    }
    .tree li span {
        padding: 0 3px;
        cursor: pointer;
    }
    /* 树结点的间距，结束 */

   /*  #dt_script .dtable.dropdown-menu {
        top: auto;
        overflow-x: hidden;
        overflow-y: auto;
    } */
    
    /* jquery validator */
    em.invalid {
        font-size: 10px;
        color: red;
        padding-top: -15px;
    }
    
	.timeline-seperator:after {
	    border-bottom: 1px dashed rgba(0, 0, 0, 0.1);
	    content: " ";
	    display: block;
	    margin: -8px 15px 10px 0;
	}
	.timeline-seperator {
	    color: #000000;
	    font-size: inherit
	display: block;
	    margin: 20px 20px 0 0;
	    text-align: left;
	    /*font-weight: bold;*/
	}
	.timeline-seperator > *:first-child {
	    background: none repeat scroll 0 0 #FFFFFF;
	    border: 0px dashed rgba(0, 0, 0, 0.1);
	    border-radius: 4px;
	    font-size: 13px;
	    padding: 4px 5px;
	}
    
	span.details-label{
        min-width:100px;
        float: left;
        min-height: 1px;
        padding-left: 13px;
        padding-right: 13px;
        position: relative;
        color: #999999;
        margin: 0 0 9px;
    }
    
    .note-color .dropdown-menu {
        width: 337px!important;
    }
    
</style>
</head>
<body>
    <!-- Left panel : Navigation area -->
    <!-- Note: This width of the aside area can be adjusted through LESS variables -->
    <jsp:include page="/pages/leftnav.jsp"></jsp:include>
    <!-- END NAVIGATION -->

    <div id="main" role="main">
        <div id="ribbon">
            <!-- breadcrumb -->
            <ol class="breadcrumb">
                <!-- <li>项目</li> -->
                <li>系统产品</li>
            </ol>

        </div>
        <!-- END RIBBON -->

        <!-- row -->
        <div id="content">
            <!-- row -->
            <div class="row">

                <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                
                    <!-- Widget ID (each widget will need unique ID)-->
                    <div class="jarviswidget well" data-widget-colorbutton="false" data-widget-editbutton="false"
                         data-widget-togglebutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false"
                         data-widget-custombutton="false" data-widget-sortable="false">
                        
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
                            <div class="widget-body">
                            
                                <div class="row">
                                
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <p class="font-md text-primary"><i class=""></i> 系统产品</p>
                                        <hr class="simple"/>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3" style="border-right: 1px solid #DDDDDD;">
                                        <div style="min-height: 550px;">
                                            
                                            <div class="row">
                                                
                                                <div class="col-xs-12">
                                                    <div class="pull-left">
                                                        <div class="btn-group">
                                                            <a id="save_production" class="btn btn-default">新增 </a>
                                                            <a id="del_production" class="btn  btn-default">删除</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            
                                            <div style="height: 450px; overflow-x: auto;overflow-y: scroll; margin-top: 10px;padding: 10px; border: 1px solid #DDDDDD;">
												<input type="hidden" id="selectPid" value="${selectPid}"/>
                                                <div class="tree smart-form">
                                                    <ul>
                                                         ${template}
                                                    </ul>
                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9" id="base_messgae">
	                                    <div class="info-right">
											<div class="basic-info">
												<input type="hidden" id="productionId" value=""/>
												<input type="hidden" id="nowProductionName" value=""/>
												<div id="updateh_html"></div>
												<!-- 保留id js画出来 -->
											</div>
										</div>
										<!--  update production start 新建产品-->
											<div id="update_production_form" class="hidden">
												<div class="row">
                                                    <div class="col-xs-12 col-sm-12 col-md-7 col-lg-7">
                                                        <span class="timeline-seperator">
                                                          <span>基本信息</span>
                                                           <div class="btn-group pull-right">
                                                               <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:;">
                                                                   <span class="caret single"></span>
                                                               </a>
                                                           </div>
                                                           </span>
										                <ul class="list-unstyled">
							                                <li>
							                                    <p class="text-muted">
							                                        <span class="details-label">父产品名称：</span>
							                                        <input type="hidden" id="nowParentId" value=""/>
							                                        <a href="javascript:void(0);" id="parentProduction" class="specialSelect2" data-type="select2" data-name="productionDTO.parentId" data-pk="" data-value="" data-original-title="父产品" >
							                                        </a>
							                                    </p>
							                                </li>
							                                <li>
						                                        <p class="text-muted">
						                                            <span class="details-label"> 产品编号：</span>
						                                            <span id="productionCode" class="edit-default"></span>
						                                        </p>
							                                </li>
							                                <li>
						                                        <p class="text-muted">
						                                            <span class="details-label"> 产品名称：</span>
						                                            <a href="javascript:void(0);" class="gt0 break-all" id="productionName" data-type="text" data-name="productionDTO.productionName" data-pk="" data-value="" data-original-title="项目" data-max-length="200" data-required="true">
						                                            </a>
						                                        </p>
							                                </li>
							                                <li>
						                                        <p class="text-muted">
						                                            <span class="details-label"> 产品经理：</span>
						                                            <a href="javascript:void(0);" class="specialSelect2" id="productionManager" data-type="select2" data-name="productionDTO.productionManager" data-pk="" data-value="" data-original-title="项目">
						                                            </a>
						                                        </p>
							                                </li>
							                                <li>
							                                   <span class="timeline-seperator">
		                                                       <span>产品描述</span>
		                                                        <div class="btn-group pull-right">
		                                                            <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:;">
		                                                                <span class="caret single"></span>
		                                                            </a>
		                                                        </div>
		                                                        </span>
									                            <div class="pull-right" style="margin: 10px -20px;">
								                                    <a class="btn btn-default btn-sm btn-edit-production-desc" href="javascript:;"><i class="fa fa-edit"></i> 编辑</a>
								                                </div>
								
                                                                <!-- class="chat-body profile-message" -->
								                                <div id="project-description" style="padding: 10px 0; margin: 61px 22px 0 0;">
								                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								                                        <ul class="list-unstyled">
								                                            <li>
								                                                <div id="productionDesc" class="summernote break-all"></div>
								                                            </li>
								                                        </ul>
								                                    </div>
								                                </div>
								
								                                <div class="btn-desc" style="margin-right: 35px; display: none;">
								                                    <div class="pull-right" style="margin-top: 9px;">
								                                        <a id="btnSaveJournal" class="btn btn-primary">
								                                            <i class="fa fa-save"></i> 保存
								                                        </a>
								                                        <a id="btnCancelJournal" class="btn btn-default">取消</a>
								                                    </div>
								                                </div>
							                                </li>
							                            </ul>
									                </div>
									                
									                <div class="col-xs-12 col-sm-12 col-md-5 col-lg-5">
    									                <span class="timeline-seperator">
                                                           <span><s:text name="issue.date"/></span>
    
                                                            <div class="btn-group pull-right">
                                                                <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:;">
                                                                    <span class="caret single"></span>
                                                                </a>
                                                            </div>
                                                        </span>
                                                        <div class="row">
                                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    											                 <ul class="list-unstyled">
    											                    <li>
    																	<p class="text-muted">
    								                                           <span class="details-label"> <s:text name="issue.create.date" /><s:text name="punctuation.colon" /></span>
    								                                           <span id="productionCreateTime" class="edit-default"></span>
    								                                    </p>
    							                                    </li>
    							                                    <li>
                                                                        <p class="text-muted">
                                                                            <span class="details-label"> <s:text name="issue.update.date"/><s:text name="punctuation.colon"/></span>
                                                                            <span id="productionUpdateTime" class="edit-default"></span>
                                                                        </p>
                                                                    </li>
    							                                    </ul>
    						                                    </div>
    					                                   </div>
					                                    <span class="timeline-seperator">
                                                           <span>人员</span>
                                                            <div class="btn-group pull-right">
                                                                <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:;">
                                                                    <span class="caret single"></span>
                                                                </a>
                                                            </div>
                                                        </span>
                                                        <div class="row">
                                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                                 <ul class="list-unstyled">
                                                                    <li>
                                                                        <p class="text-muted">
                                                                               <span class="details-label"> <s:text name="issue.committer"/><s:text name="punctuation.colon" /></span>
                                                                               <span id="productionCreator" class="edit-default">2015-05-06</span>
                                                                        </p>
                                                                    </li>
                                                                    <li>
                                                                        <p class="text-muted">
                                                                            <span class="details-label"> <s:text name="issue.updater"/><s:text name="punctuation.colon"/></span>
                                                                            <span id="productionUpdater" class="edit-default">2015-05-06</span>
                                                                        </p>
                                                                    </li>
                                                                    </ul>
                                                                </div>
                                                           </div>
					                                   <span class="timeline-seperator">
                                                       <span><s:text name="global.attachment"/></span>
                                                        <div class="btn-group pull-right">
                                                            <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:;">
                                                                <span class="caret single"></span>
                                                            </a>
                                                        </div>
                                                        </span>
                                                         <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="margin-top:15px;">
	                                                        <div class="smart-form" style="width: 100%;">
	                                                           <label class="input input-file" for="file">
	                                                               <div class="button">
	                                                                   <input id="file-upload" type="file" name="upload">
	                                                                   <s:text name="global.upload" />
	                                                               </div> 
	                                                               <input type="text" id="fileName" readonly="" placeholder="选择文件...">
	                                                           </label>
	                                                           <div class="note">最大上传文件大小为 10.00 MB</div>
	                                                       </div>
	                                                        <table id="fileAttachements" class="table table-hover table-noborder">
	                                                       <tbody>
	                                                       </tbody>
	                                                        </table>
                                                        </div>
									                </div>
                                                </div>
											</div>
											<!--  update production end-->
											
											<!--  save production start 新建产品-->
											<div id="save_production_collapse" class="hidden row">
												<form id="save_production_form">
                                                    <div class="col-xs-12 col-sm-12 col-md-7 col-lg-7">
										                <ul class="list-unstyled">
							                                <li>
								                                <div class="form-group">
								                                    <label class=" control-label">父产品名称</label>
								                                   <%--  <span id="save_parentProduction"></span> --%>
								                                    <input type="hidden" id="save_parentProductionId" value=""/>
																	<input type="hidden" style="width: 100%;" data-placeholder="父产品" id="selectParentProduction"/>
																</div>
							                                </li>
							                                <li>
								                                <div class="form-group">
								                                	<label class=" control-label">产品编号</label> 
                                                                    <span>
																	   <input id="save_productionCode" name="productionCode" class="form-control required-validation" type="text" />
																    </span>
                                                                </div>
							                                </li>
							                                <li>
								                                 <div class="form-group">
								                                	<label class=" control-label">产品名称&nbsp;<span style="color: red;">*</span></label>
                                                                    <span>
																	    <input id="save_productionName" name="productionName" class="form-control required-validation" type="text" />
																    </span>
                                                                </div>
							                                </li>
							                                <li>
							                                 	<div class="form-group">
								                                	<label class=" control-label">产品经理</label> 
								                                	<input type="hidden" id="save_productionManager" value=""/>
																	<input type="hidden" style="width: 100%;" data-placeholder="产品经理" id="selectProductionManager" name="productionManager"/>
																</div>
							                                </li>
							                                <li>
								                                <div class="form-group" id="save_productionDesc">
																	<label class=" control-label">产品描述 </label>
																	<div class="save_summernote break-all"></div>
																</div>
							                                </li>
							                            </ul>
									                </div>
                                                </form>
								                <div class="col-xs-12 col-sm-12 col-md-5 col-lg-5">
									                <div class="smart-form" style="width: 100%">
                                                       <label class="input input-file" for="file">
                                                           <div class="button">
                                                               <input id="save_file_upload" type="file" name="upload">
                                                               <s:text name="global.upload" />
                                                           </div> 
                                                           <input type="text" id="save_fileName" readonly="" placeholder="选择文件...">
                                                       </label>
                                                       <div class="note">最大上传文件大小为 10.00 MB</div>
                                                   </div>
									                <table id="save_fileAttachements" class="table table-hover table-noborder">
				                                       <tbody>
				                                       </tbody>
				                                    </table>
								                </div>
								                
								                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
													<hr>
													<div class="pull-right">
														<a href="javascript:void(0);" id="btnSaveProduction" class="btn btn-primary">
															<i class="glyphicon glyphicon-floppy-saved"></i>&nbsp;<s:text name="global.create" />
														</a>&nbsp;&nbsp; 
														<a href="javascript:void(0);"id="delSaveProduction"  class="btn btn-default">
															<i class="fa fa-ban"></i> <s:text name="global.cancel"/>
														</a>
													</div>
												</div>
											</div>
											<!--  save production end-->
                                    </div>
                                </div>
                            </div>
                            <!-- end widget content -->
                        </div>
                        <!-- end widget div -->
                    </div>
                </article>
            </div>
            <!-- end row -->
        </div>
    </div>
    <jsp:include page="/pages/footer.jsp" />
    <script src="<s:url value="/js/resetheight.js"/>"></script>
</body>
<script type="text/javascript">
    // DO NOT REMOVE : GLOBAL FUNCTIONS!
    //pageSetUp();
	
	loadScript('<s:url value="/js/core/issues/i18n.js" />', function() {
	    loadScript('<s:url value="/js/core/issues/messageBox.js" />', function() {
	    });
	});
	
    loadDataTableScripts();
    function loadDataTableScripts() {

         loadScript('<s:url value="/js/plugin/bootstrap-progressbar/bootstrap-progressbar.js" />', fileUpload);

         function fileUpload() {
         	loadScript('<s:url value="/js/plugin/jquery-file/jquery.fileupload.js" />', ed_1);
         }
         function ed_1() {
        	 loadScript('<s:url value="/js/plugin/jquery-file/jquery.iframe-transport.js" />', up_10);
         }
         
         function up_10() {
             loadScript('<s:url value="/js/plugin/jquery-file/jquery.xdr-transport.js" />', up_20);
         }

         function up_20() {
             loadScript('<s:url value="/js/plugin/jquery-file/jquery.fileupload-process.js" />', up_30);
         }

         function up_30() {
             loadScript('<s:url value="/js/plugin/jquery-file/jquery.fileupload-validate.js" />', editable);
         }
         
         function editable() {
         	 loadScript("<s:url value='/js/plugin/x-editable/x-editable.js' />", productions);
         }
         
         function productions() {
             loadScript('<s:url value="/js/core/project/productions.js" />', init);
         }
    }
    
    function init(){
    	productions.init();
    }
    
    /*
     * SUMMERNOTE EDITOR
     */
    loadScript('<s:url value="/js/plugin/summernote/summernote.js" />', summernoteStart);
    function summernoteStart() {
        loadScript('<s:url value="/js/lang/summernote-zh-CN.js" />', function() {
            $('.save_summernote').summernote(Eipd.namespace("config").summernote);
        });
    	
        var sourceText = "";
        $(".btn-edit-production-desc").on("click", function(e) {
            $(this).addClass("disabled");
            initSummernote($(".summernote"));
            sourceText = $(".summernote").code();
            $(".btn-desc").show();
        });

        $("#btnCancelJournal").on("click", function(e) {
            $(".summernote").code(sourceText);
            $(".summernote").destroy();
            $(".btn-desc").hide();
            $(".btn-edit-production-desc").removeClass("disabled");
        });

        $("#btnSaveJournal").on("click", function(e) {
            var htmlContent = $(".summernote").code();
            saveSummerNote(htmlContent);
            $(".summernote").destroy();
            $(".btn-desc").hide();
            $(".btn-edit-production-desc").removeClass("disabled");
        });

        function initSummernote(container) {
            container.summernote(Eipd.namespace("config").summernote);
        }

        function saveSummerNote(content) {
            $.ajax({
                url: $.url_root+'/production/updateProduction.jspa',
                type: "POST",
                dataType: "json",
                data: {
                    "productionDTO.description": content,
                    "productionDTO.productionId": $("#productionId").val()
                },
                success: function(result) {
                    checkResult(result, {
                        showBox: false
                    });
                }
            });
        }
    }
</script>
</html>

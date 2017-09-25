<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<link href="<s:url value="/css/summernote.css" />" rel="stylesheet" type="text/css" >
<link href="<s:url value="/css/summernote-bs3.css" />" rel="stylesheet" type="text/css" >
<style>
    .well .form-actions {
        margin-bottom: -13px;
        margin-left: -19px;
        margin-right: -19px;
    }
    .radio-inline + .radio-inline, .checkbox-inline + .checkbox-inline {
        margin-left: 0px;
    }

    .jarviswidget.well .smart-form header {
        display: block;
    }

    .smart-form .popover{
        /*padding: 1px; !important*/
        top:0;
    }
    .smart-form .popover-title {
        background-color: #F7F7F7;
        border-bottom: 1px solid #EBEBEB;
        border-radius: 5px 5px 0 0;
        font-size: 13px;
        font-weight: normal;
        line-height: 18px;
        margin: 0;
        padding: 8px 14px;
    }


    .smart-form .popover-content {
        padding: 9px 14px;
    }

    .btn {
        padding: 5.7px 12px;
    }
</style>
<style>
    .tile ul {
        border-bottom: 0px solid #423F3F;
        box-shadow: 0 0px 0px rgba(0, 0, 0, 0.3);
        list-style: none outside none;
        margin: 0;
        padding: 0px 0px 10px 0px;
    }

    .tile ul li {
        display: inline-block;
        width: auto;
    }

    .tile ul li .jarvismetro-tile {
        border: 0 none;
        border-radius: 0;
        margin: 0 3px 3px;
    }

    .tile ul li .jarvismetro-tile:hover {
        color: #FFFFFF;
        text-decoration: none;
    }

    .tile ul li .jarvismetro-tile:active, .tile ul li .jarvismetro-tile:focus {
        left: 0;
        top: 0;
        color: #FFFFFF;
        text-decoration: none;
    }
    .tile ul .fa-2x {
        font-size: 1.5em;
    }


    .alert .tile ul {
        border-bottom: 0 solid #423F3F;
        box-shadow: 0 0 0 rgba(0, 0, 0, 0.3);
        list-style: none outside none;
        margin: 0;
        padding: 0px;
    }

    .alert .jarvismetro-tile {
        box-shadow: 0 0 1px #FFFFCC inset;
        height: 60px;
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
        margin: 20px 0 0 8px;
        text-align: left;
        cursor: pointer;
        /*font-weight: bold;*/
    }
    .timeline-seperator > *:first-child {
        background: none repeat scroll 0 0 #FFFFFF;
        border: 0px dashed rgba(0, 0, 0, 0.1);
        border-radius: 4px;
        font-size: 13px;
        padding: 4px 5px;
    }

    .easyHr {
        margin: 5px 0;
    }
    .ui-menu {
        z-index: 4;
    }
    
    /* jquery validator */
    em.invalid {
        font-size: 10px;
        color: red;
        padding-top: -15px;
    }
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
				<li>创建项目</li>
			</ol>
			<!-- end breadcrumb -->
		</div>
		<!-- END RIBBON -->

		<!-- row -->
		<div id="content">
			<!-- row -->
			<div class="row issueBody issueBodySystemPro">
				<article class="col-sm-12 col-md-12 col-lg-12 sortable-grid ui-sortable">
				<!-- Widget ID (each widget will need unique ID)-->
				<div class="jarviswidget well"
					data-widget-colorbutton="false" data-widget-editbutton="false"
					data-widget-togglebutton="false" data-widget-deletebutton="false"
					data-widget-fullscreenbutton="false"
					data-widget-custombutton="false" data-widget-sortable="false">

					<!-- widget div-->
					<div>
						<!-- widget edit box -->
						<div class="jarviswidget-editbox">
							<!-- This area used as dropdown edit box -->
						</div>
						<!-- end widget edit box -->

						<!-- widget content -->
						<div class="widget-body widget-hide-overflow">
							<div class="row">
								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
									<span class="font-md text-primary"><s:text name="project.creation.title" /></span>
								</div>
							</div>

							<hr class="simple">
								<!--row-->
								<div class="row">
									<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 tile">
										<fieldset>
                                            <form id="checkout-form">
    											<div class="row">
                                                    <!-- <form id="checkout-form"> -->
        												<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        													<div class="form-group">
        														<label class="control-label"> <s:text name="project.code" /></label>
                                                                <div>
        														    <input id="projectCode" name="projectCode" class="form-control required-validation" type="text" placeholder="<s:text name="project.code" />" />
        													    </div>
                                                            </div>
        												</div>
        												<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        													<div class="form-group">
        														<label class="control-label"> <s:text name="project.name" />&nbsp;<span style="color: red;">*</span></label>
                                                                <div>
        														    <input id="projectName" name="projectName" class="form-control required-validation" type="text" placeholder="<s:text name="project.name" />"/>
        													    </div>
                                                            </div>
        												</div>
                                                    <!-- </form> -->
    												<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    													<div class="form-group">
    														<label class=" control-label"> <s:text name="project.manager" /></label> 
    														<input type="hidden" id="projectManager" value=""/>
    														<input type="hidden" style="width: 100%;" data-placeholder="<s:text name="project.manager" />" id="selectProjectManager" name="projectManager"/>
    													</div>
    												</div>
    
    												<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    													<div class="form-group">
    														<label class=" control-label"> <s:text name="project.team.member" /></label> 
    														<input type="hidden" id="projectMember" value=""/>
    														<input type="hidden" style="width: 100%;" data-placeholder="<s:text name="project.team.member" />" id="selectProjectMember"/>
    													</div>
    												</div>
    
    												<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    													<div class="form-group" id="projectDesc">
    														<label class="control-label"> <s:text name="project.description" /> </label>
                                                            <div>
                                                                <textarea class="summernote required-validation"></textarea>
                                                            </div>
    													</div>
    												</div>
    											</div>
                                            </form>
										</fieldset>
									</div>
                            
							<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
								<div>
									<h3>附件</h3>
									<hr>
								</div>

								<fieldset>
									<div class="row">
										<div class="smart-form col-xs-12 col-sm-12 col-md-12 col-lg-12">
										<div class="hidden" id="imageError"><label style="font-size:10px; color:#DE1F00;"></label></div>
											<!--<input type="file" class="btn btn-default"/>-->
											<label class="input input-file" for="file">
												<div class="button">
													<input id="file-upload" type="file" name="upload">
													<s:text name="global.upload" />
												</div> <input type="text" readonly="" placeholder="选择文件..." id="fileName">
											</label>

											<div class="note">最大上传文件大小为 10.00 MB</div>
										</div>
									</div>
								</fieldset>
								<br>
								<div class="chat-body no-padding profile-message">
                                    <table id="fileAttachements" class="table table-hover table-noborder">
                                        <tbody>
                                        </tbody>
                                    </table>
                                    <div id="fileAttachements_tmp" style="display: none">
                                    </div>
                        		</div>
							</div>

							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<hr>
								<div class="pull-right">
									<a href="javascript:void(0);" id="btnSaveProject" class="btn btn-primary">
										<i class="glyphicon glyphicon-floppy-saved"></i>&nbsp;<s:text name="global.create" />
									</a>&nbsp;&nbsp; 
									<a href="javascript:history.go(-1);" class="btn btn-default">
										<i class="fa fa-ban"></i> <s:text name="global.cancel"/>
									</a>
								</div>
							</div>
						</div>
						<!--end row-->
					</div>
					<!-- end widget content -->
				</div>
				<!-- end widget div -->
			</div>
			<!-- end widget -->
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
	pageSetUp();
	
	/* 
     * SUMMERNOTE EDITOR
     */
    loadScript("<s:url value='/js/plugin/summernote/summernote.js' />", summernoteStart);
    function summernoteStart() {
        loadScript('<s:url value="/js/lang/summernote-zh-CN.js" />', function() {
            $('.summernote').summernote(Eipd.namespace("config").summernote);
        });
    }

	loadScript('<s:url value="/js/plugin/jquery-file/jquery.fileupload.js" />', loadDataTableScripts);

	function loadDataTableScripts() {
		loadScript('<s:url value="/js/plugin/jquery-file/jquery.iframe-transport.js" />', up_1);
	}
	function up_1() {
	    loadScript('<s:url value="/js/plugin/jquery-file/jquery.xdr-transport.js" />', up_2);
	}

	function up_2() {
	    loadScript('<s:url value="/js/plugin/jquery-file/jquery.fileupload-process.js" />', up_3);
	}

	function up_3() {
	    loadScript('<s:url value="/js/plugin/jquery-file/jquery.fileupload-validate.js" />', initFileUpload);
	}
	function initFileUpload() {
		loadScript("<s:url value='/js/core/project/createPmsProject.js' />", init);
	}

	function init(){
		createPmsProject.init();
	}
</script>
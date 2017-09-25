<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en-us">
<!-- Include top page -->
<jsp:include page="/pages/top.jsp"></jsp:include>
<head>
<link href="<s:url value="/css/summernote.css" />" rel="stylesheet" type="text/css" >
<link href="<s:url value="/css/summernote-bs3.css" />" rel="stylesheet" type="text/css" >
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

.table thead tr, .fc-border-separate thead tr {
    background-color: #FFFFFF;
    background-image: -moz-linear-gradient(center top , #FFFFFF 0px, #FFFFFF 100%);
    font-size: 12px;
}

.bs-example {
    background-color: #FAFAFA;
    border-color: #E5E5E5 #EEEEEE #EEEEEE;
    border-style: solid;
    border-width: 1px;
    margin: 0 0 15px;
    padding: 15px;
    position: relative;
}
.bs-example:after {
    color: #BBBBBB;
    content: "";
    font-size: 12px;
    font-weight: bold;
    left: 15px;
    letter-spacing: 1px;
    position: absolute;
    text-transform: uppercase;
    top: 15px;
}
.bs-example + .highlight {
    border-radius: 0;
    border-width: 0 0 1px;
    margin: -15px 0 15px;
}
@media (min-width: 768px) {
    .bs-example {
        background-color: #FFFFFF;
        border-color: #DDDDDD;
        border-radius: 4px 4px 0 0;
        border-width: 1px;
        box-shadow: none;
        margin-left: 0;
        margin-right: 0;
    }
    .bs-example + .highlight {
        border-bottom-left-radius: 4px;
        border-bottom-right-radius: 4px;
        border-width: 1px;
        margin-left: 0;
        margin-right: 0;
        margin-top: -16px;
    }
}

.module {
    -moz-box-sizing: border-box;
    margin-top: 0px;
}
.module:before, .module:after {
    content: " ";
    display: table;
}
.module:after {
    clear: both;
}
.module:first-child {
    margin-top: 0;
}
.module > .mod-header:before, .module > .mod-header:after {
    content: " ";
    display: table;
}
.module > .mod-header:after {
    clear: both;
}
.module > .mod-header > h1, .module > .mod-header > h2, .module > .mod-header > h3, .module > .mod-header > h4, .module > .mod-header > h5, .module > .mod-header > h6 {
    margin-top: 0;
}
.module > .mod-header + .mod-content {
    margin-top: 10px;
}
.module > .mod-content:before, .module > .mod-content:after {
    content: " ";
    display: table;
}
.module > .mod-content:after {
    clear: both;
}
.module > .mod-content iframe {
    border: 0 none;
    margin: 0;
    padding: 0;
    width: 100%;
}
.module + .module {
    border-top: 1px solid #CCCCCC;
    margin-top: 25px;
    padding-top: 25px;
}
.property-list {
    display: block;
    list-style: none outside none;
    margin: 0;
    padding: 0;
}
.property-list > li {
    margin: 1px 0 0;
    padding: 0;
    position: relative;
}
.property-list img {
    vertical-align: text-bottom;
}
.property-list .item {
    margin: 1px 0 0;
}
.property-list .item .name {
    -moz-box-sizing: border-box;
    color: #707070;
    display: inline-block;
    font-weight: normal;
    padding: 2px 5px 2px 0;
    /*text-align: right;*/
    width: 150px;
    word-wrap: break-word;
}
.property-list .item .value {
    display: inline-block;
    max-width: 100%;
    padding-bottom: 2px;
    padding-left: 5px;
    padding-top: 2px;
    position: relative;
    vertical-align: top;
    word-wrap: break-word;
}
.property-list .item .value .value {
    padding: 0;
}
.property-list .wrap {
    padding: 0 10px 0 150px;
}
.property-list .wrap:before, .property-list .wrap:after {
    content: " ";
    display: table;
}
.property-list .wrap:after {
    clear: both;
}
.property-list .wrap .name {
    float: left;
    margin-left: -150px;
}
.property-list.two-cols:before, .property-list.two-cols:after {
    content: " ";
    display: table;
}
.property-list.two-cols:after {
    clear: both;
}
.property-list.two-cols > .item {
    -moz-box-sizing: border-box;
    clear: left;
    float: left;
    width: 50%;
}
.property-list.two-cols > .item-right {
    clear: right;
    float: right;
}
.property-list.two-cols > .item.full-width {
    clear: both;
    width: 100%;
}
.msie .property-list .wrap .value {
    display: block;
}
.module > .mod-content .issues {
    display: block;
    list-style: none outside none;
    margin: 0;
    padding: 0;
}
.module > .mod-content .issues > li {
    margin: 0;
    padding: 0 0 0 26px;
    position: relative;
}
.module > .mod-content .issues > li + li {
    margin-top: 5px;
}
.module > .mod-content .issues > li .aui-icon, .module > .mod-content .issues > li img {
    left: 0;
    margin-top: 2px;
    position: absolute;
}
.module > .mod-content .issues > li .issue:after {
    content: ".";
}
.issue-list .issue-list-key {
    width: 15%;
}
.issue-list .issue-list-date {
    width: 35%;
}
.issue-container {
    outline: medium none;
}
.issue-body-content {
    padding: 0 20px 20px;
}
.issue-body-content .module > .mod-header {
    /*background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAADCAYAAABS3WWCAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NEQ5RDgxQzc2RjQ5MTFFMjhEMUNENzFGRUMwRjhBRTciIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NEQ5RDgxQzg2RjQ5MTFFMjhEMUNENzFGRUMwRjhBRTciPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo0RDlEODFDNTZGNDkxMUUyOEQxQ0Q3MUZFQzBGOEFFNyIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo0RDlEODFDNjZGNDkxMUUyOEQxQ0Q3MUZFQzBGOEFFNyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PvXFWFAAAAAYSURBVHjaYvj//z8D0/Pnz/8zgFgAAQYAS5UJscReGMIAAAAASUVORK5CYII=") repeat-x scroll 0 10px rgba(0, 0, 0, 0);*/
}
.issue-body-content .module > .mod-header > h1, .issue-body-content .module > .mod-header > h2, .issue-body-content .module > .mod-header > h3, .issue-body-content .module > .mod-header > h4, .issue-body-content .module > .mod-header > h5, .issue-body-content .module > .mod-header > h6 {
    background-color: #FFFFFF;
    font-size: inherit;
    font-weight: bold;
    padding-right: 5px;
}
.issue-body-content .module > .mod-header .ops {
    background-color: #FFFFFF;
    margin-top: 2px;
}
.issue-body-content .module > .mod-content {
    padding-left: 10px;
}
.issue-body-content .module + .module {
    border-top: medium none;
}
.issue-body-content .property-list .item .name, .issue-body-content .item-details dl > dt {
    text-align: left;
}

.timeline-seperator:after {
    border-bottom: 1px dashed rgba(0, 0, 0, 0.1);
    content: " ";
    display: block;
    margin: -8px 15px 10px 0;
}
.timeline-seperator {
    color: #000000;
    font-size: inherit;
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
.table-noborder, .table-noborder >tbody > tr, .table-noborder >tbody > tr > td {
    border-top: 0px solid #ddd;
}
span.details-label {
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
	<!-- Include left page -->
	<jsp:include page="/pages/leftnav.jsp"></jsp:include>

	<div id="main" role="main">
		<!-- RIBBON -->
		<div id="ribbon">
			<!-- breadcrumb -->
			<ol class="breadcrumb">
				<li><a href="<s:url value="/issue/listIssueOutside.jspa"/>"><s:text name="outside.outsideTest"/></a></li>
				<li><s:text name="outside.detail"/></li>
			</ol>
			<!-- end breadcrumb -->
		</div>
		<!-- END RIBBON -->
		<!-- row -->
		<div id="content">
			<!-- row -->
			<div class="row">
				<article class="col-sm-12 col-md-12 col-lg-12 sortable-grid ui-sortable">
					<!-- Widget ID (each widget will need unique ID)-->
					<div class="jarviswidget well" id="wid-id-3" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-togglebutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false" data-widget-custombutton="false" data-widget-sortable="false">
				  
						<header></header>

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
										<span class="font-md text-primary break-all">${outsiteTestIssueDTO.code}</span></br>
									</div>
								</div>

								<hr class="simple">

								<!--row -->
								<div class="row">

									<!--left zone-->
									<div class="col-xs-12 col-sm-12 col-md-7 col-lg-7 ">

										<!--row-->
										<div class="row">
											<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
												<span class="timeline-seperator">
													<span><s:text name="outside.projectBasicInfo"/></span>
													<div class="btn-group pull-right">
														<a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">
															<span class="caret single"></span>
														</a>
													</div>
												</span>
												<br>
												<div class="row">
													<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
														<ul class="list-unstyled">
															<li >
																<p class="text-muted">
																	<span class="details-label"> <s:text name="outside.projectTaskCode"/><s:text name="punctuation.colon" /></span>
																	<span class="break-all">
																		<s:property value="%{outsiteTestIssueDTO.outsiteTestProjectDTO.code == null ? '---' : outsiteTestIssueDTO.outsiteTestProjectDTO.code}" />
																	</span>
																</p>
															</li>
															<li >
																<p class="text-muted">
																	<span class="details-label"> <s:text name="outside.industryType"/><s:text name="punctuation.colon" /></span>
																	<span class="break-all">
																		<s:text name="outside.industryType.%{outsiteTestIssueDTO.outsiteTestProjectDTO.industryType == null ? 'NO_CONTENT' : outsiteTestIssueDTO.outsiteTestProjectDTO.industryType}" />
																	</span>
																</p>
															</li>
															<li >
																<p class="text-muted">
																	<span class="details-label"> <s:text name="outside.projectName"/><s:text name="punctuation.colon" /></span>
																	<span class="break-all">
																		<s:property value="%{outsiteTestIssueDTO.outsiteTestProjectDTO.requirementName == null ? '---' : outsiteTestIssueDTO.outsiteTestProjectDTO.requirementName}"/>
																	</span>
																</p>
															</li>
															<li >
																<p class="text-muted">
																	<span class="details-label"> <s:text name="outside.icModel"/><s:text name="punctuation.colon" /></span>
																	<span class="break-all">
																		<s:property value="%{outsiteTestIssueDTO.outsiteTestProjectDTO.icModel == null ? '---' : outsiteTestIssueDTO.outsiteTestProjectDTO.icModel}"/>
																	</span>
																</p>
															</li>
															<li >
																<p class="text-muted">
																	<span class="details-label"> <s:text name="outside.requirementCode"/><s:text name="punctuation.colon" /></span>
																	<span class="break-all">
																		<s:property value="%{outsiteTestIssueDTO.outsiteTestProjectDTO.requirementCode == null ? '---' : outsiteTestIssueDTO.outsiteTestProjectDTO.requirementCode}"/>
																	</span>
																</p>
															</li>
														</ul>
													</div>
													<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
														<ul class="list-unstyled">
															<li >
																<p class="text-muted">
																	<span class="details-label"> <s:text name="outside.projectType"/><s:text name="punctuation.colon" /></span>
																	<span class="break-all"><s:text name="outside.projectType.%{outsiteTestIssueDTO.outsiteTestProjectDTO.projectType == null ? 'NO_CONTENT' : outsiteTestIssueDTO.outsiteTestProjectDTO.projectType}" /></span>
																</p>
															</li>
															<li >
																<p class="text-muted">
																	<span class="details-label"> <s:text name="outside.productionCode"/><s:text name="punctuation.colon" /></span>
																	<span class="break-all">
																		<s:property value="%{outsiteTestIssueDTO.outsiteTestProjectDTO.productionCode == null ? '---' : outsiteTestIssueDTO.outsiteTestProjectDTO.productionCode}"/>
																	</span>
																</p>
															</li>
															<li >
																<p class="text-muted">
																	<span class="details-label"> <s:text name="outside.requirementManager"/><s:text name="punctuation.colon" /></span>
																	<span class="break-all">
																		<s:property value="%{outsiteTestIssueDTO.outsiteTestProjectDTO.requirementManager == null ? '---' : outsiteTestIssueDTO.outsiteTestProjectDTO.requirementManager}"/>
																	</span>
																</p>
															</li>
															<li >
																<p class="text-muted">
																	<span class="details-label"> <s:text name="outside.appDeveloper"/><s:text name="punctuation.colon" /></span>
																	<span class="break-all">
																		<s:property value="%{outsiteTestIssueDTO.outsiteTestProjectDTO.appDeveloper == null ? '---' : outsiteTestIssueDTO.outsiteTestProjectDTO.appDeveloper}"/>
																	</span>
																</p>
															</li>
															<li >
																<p class="text-muted">
																	<span class="details-label"> <s:text name="outside.cosDeveloper"/><s:text name="punctuation.colon" /></span>
																	<span class="break-all">
																		<s:property value="%{outsiteTestIssueDTO.outsiteTestProjectDTO.cosDeveloper == null ? '---' : outsiteTestIssueDTO.outsiteTestProjectDTO.cosDeveloper}"/>
																	</span>
																</p>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<!--end row-->
										
										<!--row-->
										<div class="row">
											<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
												<span class="timeline-seperator">
													<span><s:text name="outside.issueBasicInfo"/></span>

													<div class="btn-group pull-right">
														<a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">
															<span class="caret single"></span>
														</a>
													</div>
												</span>
												<br>
												<div class="row">
													<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
														<ul class="list-unstyled">
															<li >
																<p class="text-muted">
																	<span class="details-label"> <s:text name="outside.productModel"/><s:text name="punctuation.colon" /></span>
																	<a class="break-all" href="javascript:void(0);" id="code" data-name="productModel" data-type="text" data-pk="${outsiteTestIssueDTO.issueId}" data-select-search="true" data-value="${outsiteTestIssueDTO.productModel}" data-max-length="200">
																		${outsiteTestIssueDTO.productModel}
																	</a>
																</p>
															</li>
															<li >
																<p class="text-muted">
																	<span class="details-label"> <s:text name="outside.appVersion"/><s:text name="punctuation.colon" /></span>
																	<a href="javascript:void(0);" id="appVersion" data-name="appVersion" data-type="text" data-pk="${outsiteTestIssueDTO.issueId}" data-select-search="true" data-value="${outsiteTestIssueDTO.appVersion}" data-max-length="30">
																		${outsiteTestIssueDTO.appVersion}
																	</a>
																</p>
															</li>
														</ul>
													</div>
													<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
														<ul class="list-unstyled">
															<li >
																<p class="text-muted">
																	<span class="details-label"> <s:text name="outside.validatedResult"/><s:text name="punctuation.colon" /></span>
																	<a href="javascript:void(0);" id="validatedResult" data-name="validatedResult" data-type="select2" data-pk="${outsiteTestIssueDTO.issueId}" data-select-search="true" data-value="${outsiteTestIssueDTO.validatedResult}">
																		${outsiteTestIssueDTO.validatedResult}
																	</a>
																</p>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<!--end row-->
										
										<!-- row -->
										<div class="row">
	                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
	                                        
	                                            <span class="timeline-seperator">
	                                                <span><s:text name="outside.description"/></span>
	                                                <div class="btn-group pull-right">
	                                                    <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">
	                                                        <span class="caret single"></span>
	                                                    </a>
	                                                </div>
	                                            </span>
	                                            
	                                            <div class="pull-right" style="margin: 10px -20px;">
	                                                <a class="btn btn-default btn-sm btn-edit-issue-desc" href="javascript:void(0);"><i class="fa fa-edit"></i> <s:text name="global.edit"/></a>
	                                            </div>
	
	                                            <div id="issue-description" style="padding: 10px 0; margin: 61px 22px 0 0;">
	                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	                                                    <ul class="list-unstyled">
	                                                        <li >
	                                                            <div class="summernote_desc break-all">${outsiteTestIssueDTO.description}</div>
	                                                        </li>
	                                                    </ul>
	                                                </div>
	                                            </div>
	
	                                            <div class="btn-desc" style="margin-right: 35px; display: none;">
	                                                <div class="pull-right">
	                                                    <a id="btnSaveDesc" class="btn btn-primary"><i class="fa fa-save"></i> 保存</a>
	                                                    <a id="btnCancelDesc" class="btn btn-default"><s:text name="global.cancel"/></a>
	                                                </div>
	                                            </div>
	                                            
	                                        </div>
                                        </div>
										<!-- end row -->
										<!-- row -->
										<div class="row">
	                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
	                                        
	                                            <span class="timeline-seperator">
	                                                <span><s:text name="outside.causeAnalysis"/></span>
	                                                <div class="btn-group pull-right">
	                                                    <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">
	                                                        <span class="caret single"></span>
	                                                    </a>
	                                                </div>
	                                            </span>
	                                            
	                                            <div class="pull-right" style="margin: 10px -20px;">
	                                                <a class="btn btn-default btn-sm btn-edit-issue-analysis" href="javascript:void(0);"><i class="fa fa-edit"></i> <s:text name="global.edit"/></a>
	                                            </div>
	
	                                            <div id="issue-description" style="padding: 10px 0; margin: 61px 22px 0 0;">
	                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	                                                    <ul class="list-unstyled">
	                                                        <li >
	                                                            <div class="summernote_analysis break-all">${outsiteTestIssueDTO.causeAnalysis}</div>
	                                                        </li>
	                                                    </ul>
	                                                </div>
	                                            </div>
	
	                                            <div class="btn-desc-analysis" style="margin-right: 35px; display: none;">
	                                                <div class="pull-right">
	                                                    <a id="btnSaveAnalysis" class="btn btn-primary"><i class="fa fa-save"></i> 保存</a>
	                                                    <a id="btnCancelAnalysis" class="btn btn-default"><s:text name="global.cancel"/></a>
	                                                </div>
	                                            </div>
	                                            
	                                        </div>
                                        </div>
										<!-- end row -->
										<!-- row -->
										<div class="row">
	                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
	                                        
	                                            <span class="timeline-seperator">
	                                                <span><s:text name="outside.solvedScheme"/></span>
	                                                <div class="btn-group pull-right">
	                                                    <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">
	                                                        <span class="caret single"></span>
	                                                    </a>
	                                                </div>
	                                            </span>
	                                            
	                                            <div class="pull-right" style="margin: 10px -20px;">
	                                                <a class="btn btn-default btn-sm btn-edit-issue-solution" href="javascript:void(0);"><i class="fa fa-edit"></i> <s:text name="global.edit"/></a>
	                                            </div>
	
	                                            <div id="issue-description" style="padding: 10px 0; margin: 61px 22px 0 0;">
	                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	                                                    <ul class="list-unstyled">
	                                                        <li >
	                                                            <div class="summernote_solution break-all">${outsiteTestIssueDTO.solvedScheme}</div>
	                                                        </li>
	                                                    </ul>
	                                                </div>
	                                            </div>
	
	                                            <div class="btn-desc-solution" style="margin-right: 35px; display: none;">
	                                                <div class="pull-right">
	                                                    <a id="btnSaveSolution" class="btn btn-primary"><i class="fa fa-save"></i> 保存</a>
	                                                    <a id="btnCancelSolution" class="btn btn-default"><s:text name="global.cancel"/></a>
	                                                </div>
	                                            </div>
	                                            
	                                        </div>
                                        </div>
										<!-- end row -->
										<!-- row -->
										<div class="row">
	                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
	                                        
	                                            <span class="timeline-seperator">
	                                                <span><s:text name="outside.validatedScheme"/></span>
	                                                <div class="btn-group pull-right">
	                                                    <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">
	                                                        <span class="caret single"></span>
	                                                    </a>
	                                                </div>
	                                            </span>
	                                            
	                                            <div class="pull-right" style="margin: 10px -20px;">
	                                                <a class="btn btn-default btn-sm btn-edit-issue-verification" href="javascript:void(0);"><i class="fa fa-edit"></i> <s:text name="global.edit"/></a>
	                                            </div>
	
	                                            <div id="issue-description" style="padding: 10px 0; margin: 61px 22px 0 0;">
	                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
	                                                    <ul class="list-unstyled">
	                                                        <li >
	                                                            <div class="summernote_verification break-all">${outsiteTestIssueDTO.validatedScheme}</div>
	                                                        </li>
	                                                    </ul>
	                                                </div>
	                                            </div>
	
	                                            <div class="btn-desc-verification" style="margin-right: 35px; display: none;">
	                                                <div class="pull-right">
	                                                    <a id="btnSaveVerification" class="btn btn-primary"><i class="fa fa-save"></i> 保存</a>
	                                                    <a id="btnCancelVerification" class="btn btn-default"><s:text name="global.cancel"/></a>
	                                                </div>
	                                            </div>
	                                            
	                                        </div>
                                        </div>
										<!-- end row -->
										<hr>
									</div>
									<!--end left zone-->

									<!--right zone-->
									<div class="col-xs-12 col-sm-12 col-md-5 col-lg-5 ">
                                            <!--row-->
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                                                
                                                    <span class="timeline-seperator">
                                                        <span><s:text name="outside.member"/></span>

                                                        <div class="btn-group pull-right">
                                                            <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">
                                                                <span class="caret single"></span>
                                                            </a>
                                                        </div>
                                                    </span>
													<br>
                                                    <div class="row">
                                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                            <ul class="list-unstyled">
                                                                <li >
                                                                    <p class="text-muted">
                                                                        <span class="details-label"> <s:text name="outside.member.creator"/><s:text name="punctuation.colon" /></span>
                                                                        ${outsiteTestIssueDTO.creator}
                                                                    </p>
                                                                </li>
                                                                <li >
                                                                    <p class="text-muted">
                                                                        <span class="details-label"> <s:text name="outside.member.fixedUser"/><s:text name="punctuation.colon" /></span>
                                                                        <a class="break-all" href="javascript:void(0);" id="fixedUser" data-name="fixedUser" data-type="text" data-pk="${outsiteTestIssueDTO.issueId}" data-select-search="true" data-value="${outsiteTestIssueDTO.fixedUser}" data-max-length="200">
                                                                            ${outsiteTestIssueDTO.fixedUser}
                                                                        </a>
                                                                    </p>
                                                                </li>
                                                                <li >
                                                                    <p class="text-muted">
                                                                        <span class="details-label"> <s:text name="outside.member.validator"/><s:text name="punctuation.colon" /></span>
                                                                        <a class="break-all" href="javascript:void(0);" id="validator" data-name="validator" data-type="text" data-pk="${outsiteTestIssueDTO.issueId}" data-select-search="true" data-value="${outsiteTestIssueDTO.validator}" data-max-length="200">
                                                                            ${outsiteTestIssueDTO.validator}
                                                                        </a>
                                                                    </p>
                                                                </li>
                                                            </ul>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <!--end row-->

                                            <!--row-->
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                                                    <span class="timeline-seperator">
                                                        <span><s:text name="outside.date"/></span>

                                                        <div class="btn-group pull-right">
                                                            <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">
                                                                <span class="caret single"></span>
                                                            </a>
                                                        </div>
                                                    </span>
													<br>

                                                    <div class="row">
                                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                            <ul class="list-unstyled">
                                                                <li >
                                                                    <p class="text-muted">
                                                                        <span class="details-label"> <s:text name="outside.date.createTime"/><s:text name="punctuation.colon" /></span>
                                                                       	<s:date name="outsiteTestIssueDTO.createTime" format="%{getText('struts.date.format')}"/>
                                                                    </p>
                                                                </li>
                                                                <li >
                                                                    <p class="text-muted">
                                                                        <span class="details-label"> <s:text name="outside.date.fixedDate"/><s:text name="punctuation.colon" /></span>
                                                                        <a href="javascript:void(0);" id="fixedDate" data-name="fixedDate" data-type="combodate" data-viewformat="<s:text name="combodate.date.MMDDYYYYformat"/>" data-format="<s:text name="combodate.date.MMDDYYYYformatU"/>" data-template="<s:text name="combodate.date.MMDDYYYYformat"/>" data-value="${outsiteTestIssueDTO.fixedDate}" data-pk="${outsiteTestIssueDTO.issueId}">
                                                                            <s:date name="outsiteTestIssueDTO.fixedDate" format="%{getText('struts.date.format')}"/>
                                                                        </a>
                                                                    </p>
                                                                </li>
                                                                <li >
                                                                    <p class="text-muted">
                                                                        <span class="details-label"> <s:text name="outside.date.validateDate"/><s:text name="punctuation.colon" /></span>
                                                                        <a href="javascript:void(0);" id="validatedDate" data-name="validatedDate" data-type="combodate" data-viewformat="<s:text name="combodate.date.MMDDYYYYformat"/>" data-format="<s:text name="combodate.date.MMDDYYYYformatU"/>" data-template="<s:text name="combodate.date.MMDDYYYYformat"/>" data-value="${outsiteTestIssueDTO.validatedDate}" data-pk="${outsiteTestIssueDTO.issueId}">
                                                                            <s:date name="outsiteTestIssueDTO.validatedDate" format="%{getText('struts.date.format')}"/>
                                                                        </a>
                                                                    </p>
                                                                </li>
                                                                  <li >
                                                                    <p class="text-muted">
                                                                        <span class="details-label"> <s:text name="issue.update.date"/><s:text name="punctuation.colon" /></span>
                                                                        <s:date name="outsiteTestIssueDTO.lastUpdateTime" format="%{getText('struts.date.format')}"/>
                                                                    </p>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--end row-->
                                            <!--row-->
											<div class="row">
												<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
													<span class="timeline-seperator">
														<span><s:text name="global.attachment"/></span>
											
														<div class="btn-group pull-right">
															<a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">
																<span class="caret single"></span>
															</a>
														</div>
														
													</span>
													<br>
													<div class="chat-body no-padding profile-message">
                                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                            <table id="fileAttachements" class="table table-hover table-noborder">
                                                                <tbody>
                                                                    <s:iterator value="OutsiteTestIssueDTO.attachementsDTO">
                                                                        <tr>
                                                                            <td><a href="fileAttachementDownload.jspa?filePath=${top.filePath }&fileName=${top.fileName }">${top.fileName }</a></td>
                                                                            <td width="100">${top.fileSize } B</td>
                                                                            <td width="160"><s:date name="top.createTime"  format="yyyy年M月d日 hh:mm"/></td>
                                                                            <td width="20"><a href="javascript:void(0);" class='deletefile' data-filepath='${top.filePath }' data-fileattachementid="${top.fileAttachementId }" data-attachmentname="${top.fileName}"><i class="fa fa-trash-o"></i></a></td>
                                                                        </tr>
                                                                    </s:iterator>
                                                                </tbody>
                                                            </table>
                                                             <div class="smart-form col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                                       <div class="hidden" id="imageError"><label style="font-size:10px; color:#DE1F00;"></label></div>
                                                                       <label class="input input-file" for="file">
                                                                           <div class="button">
                                                                               <input id="file-upload" type="file" name="upload">
                                                                               <s:text name="global.upload" />
                                                                           </div> 
                                                                               <input type="text" id="fileName" readonly="" placeholder="<s:text name="issue.chose.attachment"/>">
                                                                       </label>
                                                                       <div class="note"><s:text name="issue.attachment.note"/></div>
                                                             </div>
                                                        </div>
                                                    </div>
													
												</div>
											</div>
											<input id="issueId" type="hidden" value="${outsiteTestIssueDTO.issueId}">
                                            <!--end row-->

                                        </div>
									<!--end right zone-->
								</div>
								<!--end row -->
							</div>
							<!-- end widget content -->
						</div>
						<!-- end widget div -->
					</div>
					<!-- end widget -->
				</article>
			</div>
		</div>
	</div>
	<jsp:include page="/pages/footer.jsp" />
</body>
<script src="<s:url value="/js/resetheight.js"/>"></script>
<script type="text/javascript">
	pageSetUp();
    /*
     * SUMMERNOTE EDITOR
     */
	progressbar();
	function progressbar() {
	    loadScript('<s:url value="/js/plugin/bootstrap-progressbar/bootstrap-progressbar.js"/>', editable);
	}
	function editable() {
	    loadScript('<s:url value="/js/plugin/x-editable/x-editable.min.js"/>', ed_1);
     	function ed_1() {
            loadScript('<s:url value="/js/plugin/x-editable/moment.min.js" />', startUser);
        }
	}
	function startUser() {
		loadScript("<s:url value='/js/core/issues/issueEditOutsideSpecific.js'/>", summernote);
	}
	function summernote(){
	 	loadScript('<s:url value="/js/plugin/summernote/summernote.js"/>', function() {
	 	   loadScript('<s:url value="/js/lang/summernote-zh-CN.js" />', init);
	 	});
	}
	function init(){
		initTable();
		initSelect2Component();
		specificEdit._summernoteStart();
	}
	
	//SELECT2的控件，如果数据需要远程加载的话，保留一个空对象即可
  	var dataSource = {
		validatedResult: {
			通过: "通过",
			未通过: "未通过",
			无验证环境:"无验证环境"
        }
	}; 
	
	function initTable(){
		(function (e) {
	    	"use strict";
			var t = function (e) {
			    this.init("address", e, t.defaults);
			};
			e.fn.editableutils.inherit(t, e.fn.editabletypes.abstractinput);
			e.extend(t.prototype, {
			    render: function () {
			        this.$input = this.$tpl.find("input");
			    },
			    value2html: function (t, n) {
			        if (!t) {
			            e(n).empty();
			            return
			        }
			        var r = e("<div>").text(t.city).html() + ", " + e("<div>").text(t.street).html() +
			                " st., bld. " + e("<div>").text(t.building).html();
			        e(n).html(r);
			    },
			    html2value: function (e) {
			        return null;
			    },
			    value2str: function (e) {
			        var t = "";
			        if (e)
			            for (var n in e)
			                t = t + n + ":" + e[n] + ";";
			        return t;
			    },
			    str2value: function (e) {
			        return e;
			    },
			    value2input: function (e) {
			        if (!e)
			            return;
			        this.$input.filter('[name="city"]').val(e.city);
			        this.$input.filter('[name="street"]').val(e.street);
			        this.$input.filter('[name="building"]').val(e.building);
			    },
			    input2value: function () {
			        return {
			            city: this.$input.filter('[name="city"]').val(),
			            street: this.$input.filter('[name="street"]').val(),
			            building: this.$input.filter('[name="building"]').val()
			        };
			    },
			    activate: function () {
			        this.$input.filter('[name="city"]').focus();
			    },
			    autosubmit: function () {
			        this.$input.keydown(function (t) {
			            t.which === 13 && e(this).closest("form").submit();
			        });
			    }
			});
			t.defaults = e.extend({}, e.fn.editabletypes.abstractinput.defaults, {
			    tpl: '<div class="editable-address"><label><span>City: </span><input type="text" name="city" class="input-small"></label></div><div class="editable-address"><label><span>Street: </span><input type="text" name="street" class="input-small"></label></div><div class="editable-address"><label><span>Building: </span><input type="text" name="building" class="input-mini"></label></div>',
			    inputclass: ""
			});
			e.fn.editabletypes.address = t;
		})(window.jQuery);
			
		//Defaults setup
		$.fn.editable.defaults.url = $.url_root + "/issue/updateOutsideIssue.jspa";
		$.fn.editable.defaults.mode = 'inline';
		$.fn.editableContainer.defaults.onblur = "submit";   //点击编辑区域外则触发提交.
		$.fn.editable.defaults.emptytext = "---";            //如果取值为空则用横线替代.
		$.fn.editable.defaults.emptyclass = "edit-default";  //default: text-muted.
		$.fn.editable.defaults.unsavedclass = "text-danger";
	}
	
	function initEditable($container, data) {
		var select2Setting = {
		    source: data,
		    select2: { width: 200 },
		    params: function(params) {
		        var prefix = "outsiteTestIssueDTO.", customParams = {};
		        customParams[prefix + "issueId"] = params.pk;
		        customParams[prefix + params.name] = params.value;
		        return customParams;
		    }
		};
		$container.editable(select2Setting);
	};
		
	//初始化xeditable插件
	function initSelect2Component() {
		$("a[data-type='select2'], a[data-type='text'], a[data-type='textarea']:not([single]), a[data-type='combodate']").each(function(i, $obj) {  //如果不想被这个方法处理为ediatble元素，可以为<a> 添加一个single属性
	        var tempStorage = [];
	        if(dataSource[$(this).data("name")] === undefined) {
				$(this).editable({
					 disabled: false,
				     params: function(params) {
						var prefix = "outsiteTestIssueDTO.", customParams = {};
						customParams[prefix + "issueId"] = params.pk;
						customParams[prefix + params.name] = params.value;
						return customParams;
					},
					
					validate: function(value) {
                        var maxLength = $(this).data("maxLength");
                        if ($.trim(value).length > maxLength) {
                            return "字段最大允许" + maxLength + "个字符";
                        }
                    }
				});
	        } else {
				$.each(dataSource[$(this).data("name")], function(k, v) {
					tempStorage.push({id: k, text: v});
				});
				initEditable($(this), tempStorage);
	        }
	    }); 
	}
	
	//上传,下载,删除附件
	loadScript('<s:url value="/js/core/issues/i18n.js" />', function() {
        loadScript('<s:url value="/js/core/issues/messageBox.js" />', function() {
        });
    });
	
 	loadScript('<s:url value="/js/plugin/jquery-file/jquery.fileupload.js" />', loadDataTableScripts);

    function loadDataTableScripts() {
        loadScript('<s:url value="/js/plugin/jquery-file/jquery.iframe-transport.js" />', up_1);
        function up_1() {
            loadScript('<s:url value="/js/plugin/jquery-file/jquery.xdr-transport.js" />', up_2);
        }
        function up_2() {
            loadScript('<s:url value="/js/plugin/jquery-file/jquery.fileupload-process.js" />', up_3);
        }
        function up_3() {
            loadScript('<s:url value="/js/plugin/jquery-file/jquery.fileupload-validate.js" />', up_4);
        }
        function up_4() {
            loadScript('<s:url value="/js/core/issues/issueEditFile.js"/>', initFileOperation);
        }
    }
	function initFileOperation(){
		issueEditFile.initFileUploadAndDelete();
	}
</script>
</html>

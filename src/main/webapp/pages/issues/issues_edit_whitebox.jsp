<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html lang="zh">
<jsp:include page="/pages/top.jsp"></jsp:include>
<head>
<link href="<s:url value="/css/summernote.css" />" rel="stylesheet" type="text/css" >
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
.table-noborder, .table-noborder >tbody > tr, .table-noborder >tbody > tr > td {
    border-top: 0px solid #ddd;
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

.jarviswidget.well .smart-form header {
    display: block;
}

.smart-form .popover {
    /*padding: 1px; !important*/
    top: 0;
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

.label-block {
        -moz-user-select: none;
        background-clip: padding-box;
        background-color: #3276b1;
        border: 1px solid #2a6395;
        color: #fff;
        cursor: default;
        line-height: 18px;
        margin: 4px 0 3px 5px;
        padding: 1px 0 1px 8px;
        position: relative;
        float: left;
        list-style: none outside none;
        }

    .label-block .label-choice-before:before {
        color: #fff;
        content: "\f057"
    }

    .label-block > a {
        right: 22px!important;
    }

    .label-block > i.fa-edit:hover {
        cursor: pointer;
    }

    .label-block .label-choice-close:hover {
        background: rgba(0, 0, 0, .3);
    }

    .label-block > .radio-inline {
        margin-top: 0px!important;
    }

    .profile-message {
        overflow-y: visible!important;
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
      <div id="main" role="main">
       <!-- RIBBON -->
        <div id="ribbon">
            <!-- breadcrumb -->
            <ol class="breadcrumb">
                <li><a href="<s:url value="/dashboard_whitebox.jspa"/>" data-item-index="3">白盒首页</a></li>
                <li><a href="<s:url value="/issue/issues_list_whitebox.jspa"/>" data-item-index="6">缺陷列表</a></li>
                <li>详情</li>
            </ol>
            <!-- end breadcrumb -->
        </div>
                <!-- row -->
                <div id="content">
                <div class="row">
                    <article class="col-sm-12 col-md-12 col-lg-12 sortable-grid ui-sortable">
                        <!-- Widget ID (each widget will need unique ID)-->
                        <div class="jarviswidget well" id="wid-id-3" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-togglebutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false" data-widget-custombutton="false" data-widget-sortable="false">
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
                                            <span class="fontsize-24">缺陷编号：</span><h1 class="text-primary issueCode inline">${issueDTO.code}</h1>
                                            <div>
                                                <div class="inline pull-left">
                                                    <span class="font-lg">项目名称：</span>
                                                </div>
                                                <div class="inline pull-left w-600">
                                                    <a href="javascript:;" data-name="projectDTO.name" data-type="text" data-pk="${issueId}" data-value="${issueDTO.projectDTO.name}" class="title-link pjTitle break-all font-lg" data-max-length="200" data-required="true"></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <hr class="simple">

                                    <!-- row -->
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 toolbar">
                                            <!-- <a class="btn btn-default">编辑</a>&nbsp;&nbsp;
                                            <a class="btn btn-default">评论</a>&nbsp;&nbsp; -->
                                            <div class="btn-group">
                                                <!-- <a class="btn  btn-default">分配</a> -->
                                                <a class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                                  <s:text name="issue.more"/>
                                                    <i class="fa fa-caret-down"></i>
                                                </a>
                                                <ul class="dtable dropdown-menu pull-right">
                                                    <li>
                                                        <a id="btn-add-attachment" href="javascript:void(0);"><s:text name="issue.attachment.add"/></a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <!-- <li>
                                                        <a id="btn-del-issue" href="javascript:void(0);"><s:text name="global.delete"/></a>
                                                    </li> -->
                                                    <li>
                                                        <a class="btn-clone" href="javascript:;"><s:text name="global.issue.clone"/></a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="btn-group" id="btn-operation-group">
                                                <s:iterator value="issueDTO.resourceCodes">
                                                    <a class="btn btn-default issue-operation-click" data-resource-code="${top}"><s:text name="%{top}" /></a>
                                                </s:iterator>
                                            </div>
                                        </div>
                                    </div>
                                    <!--end row-->

                                    <!--row -->
                                    <div class="row">

                                        <!--left zone-->
                                        <div class="col-xs-12 col-sm-12 col-md-7 col-lg-7 ">
                                            <!--<div class="bs-example" style="margin-top: 20px;">-->

                                             <div class="row">
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                                                    <span class="timeline-seperator">
                                                        <span><s:text name="issue.project.base"/></span>

                                                        <div class="btn-group pull-right">
                                                            <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">
                                                                <span class="caret single"></span>
                                                            </a>
                                                        </div>
                                                    </span>
                                                    <div class="row">
                                                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                                            <ul class="list-unstyled">
                                                                 <li >
                                                                     <p class="text-muted">
                                                                        <span class="details-label"><s:text name="project.manager"/><s:text name="punctuation.colon"/></span>
                                                                        <a href="javascript:void(0);" id="projectManager" data-name="projectDTO.projectManager" data-type="select2" data-pk="${issueId}" data-value="${issueDTO.projectDTO.projectManager}">
                                                                        ${issueDTO.projectDTO.projectManagerDTO.realName}<s:if test="issueDTO.projectDTO.projectManager!=NULL"> [ ${issueDTO.projectDTO.projectManager} ] </s:if>
                                                                        </a>
                                                                    </p>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                                            <ul class="list-unstyled">
                                                                  <li>
                                                                    <p class="text-muted">
                                                                         <span class="details-label"><s:text name="project.type"/><s:text name="punctuation.colon"/></span>
                                                                        <a href="javascript:void(0);" id="wbProjectType" data-name="projectDTO.projectType" data-type="select2" data-pk="${issueId}" data-select-search="true" data-value="${issueDTO.projectDTO.projectType }" data-original-title="选择优先级"><s:text name="issue.projectType.%{issueDTO.projectDTO.projectType}" /></a>
                                                                    </p>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!--row-->
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                                                    <span class="timeline-seperator">
                                                        <span><s:text name="issue.base.message"/></span>

                                                        <div class="btn-group pull-right">
                                                            <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">
                                                                <span class="caret single"></span>
                                                            </a>
                                                        </div>
                                                    </span>
                                                    <s:set name="issueSeverity" value="issueDTO.severity.toString()" />
                                                <s:set name="issueSeverityFontColor" value="#issueSeverity == 'DEADLY' ? 'txt-color-red' : #issueSeverity == 'SERIOUS' ? 'txt-color-yellow' : #issueSeverity == 'COMMON' ? '' : ''" />
                                                   <!--row-->
                                                    <div class="row">
                                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                                                            <ul class="list-unstyled">
                                                                <li>
                                                                    <p class="text-muted">
                                                                        <span class="details-label"><s:text name="issue.summary"/><s:text name="punctuation.colon"/></span>
                                                                        <a class="break-all" href="javascript:void(0);" id="summary" data-type="textarea" data-pk="${issueId}" data-rows="5" data-max-length="200"> ${issueDTO.summary}</a>
                                                                    </p>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <!--end row-->
                                                    <div class="row">
                                                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                                            <ul class="list-unstyled">
                                                                <li>
                                                                    <p class="text-muted">
                                                                        <span class="details-label"><s:text name="issue.level"/><s:text name="punctuation.colon"/></span>
                                                                        <a href="javascript:void(0);" id="severity" data-pk="${issueId}" data-name="severity" data-type="select2" data-select-search="true" data-value="${issueDTO.severity }" data-original-title="<s:text name="issue.level"/>">
                                                                          <span class="${issueSeverityFontColor }"><s:text name="issue.level.%{issueDTO.severity}" /></span>
                                                                        </a>
                                                                  </p>
                                                                </li>
                                                                <li>
                                                                    <p class="text-muted">
                                                                        <span class="details-label"><s:text name="issue.priority"/><s:text name="punctuation.colon"/></span>
                                                                        <a href="javascript:void(0);" id="priority" data-name="priority" data-type="select2" data-pk="${issueId}" data-select-search="true" data-value="${issueDTO.priority }" data-original-title="<s:text name="issue.priority"/>"><s:text name="issue.priority.%{issueDTO.priority}" /></a>
                                                                    </p>
                                                                </li>
                                                                <li>
                                                                    <p class="text-muted">
                                                                        <span class="details-label"> <s:text name="issue.affectedVersion"/><s:text name="punctuation.colon"/></span>
                                                                        <s:set var="affectsVersion" value="issueDTO.affectedVersion"/>
                                                                        <a class="break-all" href="javascript:void(0);" id="affectsVersion" data-name="affectedVersion" data-type="text" data-pk="${issueId}" data-value="${affectsVersion }" data-max-length="30">
                                                                            <s:property value="#affectsVersion" default="---" />
                                                                        </a>
                                                                    </p>
                                                                </li>
                                                                <li>
                                                                    <s:set var="isManager" value="false" />
                                                                    <s:set var="basicPoint" value="issueDTO.basicPoint" />
                                                                    <p class="text-muted">
                                                                        <span class="details-label">基点：</span>
                                                                        <shiro:hasAnyRoles name="dtms-developManager, dtms-testManager">
                                                                            <s:set var="isManager" value="true" />
                                                                        </shiro:hasAnyRoles>
                                                                        <s:if test="#isManager">
                                                                            <a class="bp" href="javascript:;" data-type="text" data-name="basicPoint" data-value="${basicPoint}" data-pk="${issueId}" data-max-length="30">
                                                                                 <s:property value="#basicPoint" default="---"/>
                                                                            </a>
                                                                        </s:if>
                                                                        <s:else>
                                                                            <s:if test="issueDTO.basicPoint == null">
                                                                                <span class="bp">---</span>
                                                                            </s:if>
                                                                            <s:else>
                                                                                <span class="bp">${issueDTO.basicPoint}</span>
                                                                            </s:else>
                                                                        </s:else>
                                                                    </p>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <input id="status" type="hidden" value="${issueDTO.status.toString()}">
                                                        <s:set name="issueStatus" value="issueDTO.status.toString()" />
                                                        <s:set name="issueStatusBackground" value="#issueStatus == 'NEW' ? '' : #issueStatus == 'OPEN' ? 'bg-color-pink' : #issueStatus == 'FIXED' ? 'bg-color-blue' : (#issueStatus == 'VALIDATED' || #issueStatus == 'CLOSED') ? 'label-success' : (#issueStatus == 'DISPUTABLE' || #issueStatus == 'REJECT' || #issueStatus == 'SUSPEND') ? 'label-warning' : (#issueStatus == 'REOPEN') ? 'label-danger' : (#issueStatus == 'DRAFT') ? 'label-primary' :'label-success'" />
                                                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                                            <ul class="list-unstyled">
                                                                <li >
                                                                    <p class="text-muted">
                                                                      <span class="details-label"> <s:text name="issue.status"/><s:text name="punctuation.colon"/></span>
                                                                      <s:if test="#issueStatusBackground == ''">
                                                                          <s:text name="issue.status.%{#issueStatus}" />
                                                                      </s:if>
                                                                      <s:else>
                                                                          <span class="label ${issueStatusBackground} font-sm"><s:text name="issue.status.%{#issueStatus}" /></span>
                                                                      </s:else>
                                                                    </p>
                                                                </li>
                                                                <li >
                                                                    <p class="text-muted">
                                                                        <span class="details-label"> <s:text name="issue.securityLevel"/><s:text name="punctuation.colon"/></span>
                                                                        <a href="javascript:void(0);" id="securityLevel" data-security="true" data-name="securityLevel" data-type="select2" data-pk="${issueId}" data-select-search="true" data-value="${issueDTO.securityLevel }" >
                                                                            <s:if test="issueDTO.securityLevel != null">
                                                                                <s:text name="issue.security.%{issueDTO.securityLevel}" />
                                                                            </s:if>
                                                                            <s:else>
                                                                                ---
                                                                            </s:else>
                                                                        </a>
                                                                    </p>
                                                                </li>
                                                                <li >
                                                                    <p class="text-muted">
                                                                        <span class="details-label"> <s:text name="issue.fixedVersion"/><s:text name="punctuation.colon"/></span>
                                                                        <s:set var="fixVersion" value="issueDTO.fixedVersion" />
                                                                        <a href="javascript:void(0);" id="fixVersion" data-name="fixedVersion" data-type="text" data-pk="${issueId}" data-value="${fixVersion }" data-max-length="30">
                                                                            <s:property value="#fixVersion" default="---"/>
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
                                                    <ul class="list-unstyled">
                                                        <li>
                                                            <p class="text-muted">
                                                                <span class="details-label"><s:text name="issue.test.environment"/><s:text name="punctuation.colon"/></span>
                                                                <a class="break-all" href="javascript:void(0);" id="environment" data-type="textarea" data-pk="${issueId}" data-rows="4" data-max-length="2048"> ${issueDTO.environment}</a>
                                                            </p>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <!--end row-->

                                            <!--row-->
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                                                    <ul class="list-unstyled">
                                                        <li>
                                                            <p class="text-muted">
                                                                <span class="details-label"><s:text name="issue.position"/><s:text name="punctuation.colon"/></span>
                                                                <a class="break-all" href="javascript:void(0);" id="position" data-type="textarea" data-pk="${issueId}" data-rows="4" data-max-length="2048"> ${issueDTO.position}</a>
                                                            </p>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <!--end row-->

                                            <!--row-->
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                    <div style="padding: 0px 20px 0px 8px;">
                                                        <span class="timeline-seperator">
                                                            <span>修复意见</span>
                                                        </span>
                                                        <!-- <div class="custom-scroll table-responsive" style="height: 200px; overflow-y: auto; margin-top: 15px; padding-right: 34px;"> -->
                                                            <table class="table table-bordered opinion-table">
                                                                <thead>
                                                                    <tr>
                                                                        <td class="col-xs-4 col-sm-4 col-md-4 col-lg-4">修复意见</td>
                                                                        <td class="col-xs-4 col-sm-4 col-md-4 col-lg-4">修复人</td>
                                                                        <td class="col-xs-4 col-sm-4 col-md-4 col-lg-4">提交日期</td>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <s:iterator value="issueDTO.fixedOpinion" var="opinionInfo">
                                                                        <tr>
                                                                            <td>${opinionInfo["opinion"]}</td>
                                                                            <td>${opinionInfo["repairer"]}</td>
                                                                            <td>${opinionInfo["date"]}</td>
                                                                        </tr>
                                                                    </s:iterator>
                                                                </tbody>
                                                            </table>
                                                        <!-- </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!--end row-->

                                            <!--row-->
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                                                    <span class="timeline-seperator">
                                                        <span><s:text name="issue.description.message"/></span>

                                                        <div class="btn-group pull-right">
                                                            <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">
                                                                <span class="caret single"></span>
                                                            </a>
                                                        </div>
                                                    </span>

                                                    <div class="pull-right" style="margin: 10px -20px;">
                                                        <a class="btn btn-default btn-sm btn-edit-issue-desc" href="javascript:void(0);"><i class="fa fa-edit"></i> 编辑</a>
                                                    </div>
                                                    <!-- class="chat-body profile-message" -->
                                                    <!-- <div class="chat-body no-padding profile-message"> -->
                                                    <div id="issue-description" style="padding: 10px 0; margin: 61px 22px 0 0;">
                                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                            <ul class="list-unstyled">
                                                                <li>
                                                                    <form id="descriptionForm">
                                                                        <div>
                                                                            <input id="description" class="required-validation" type="hidden" name="description">
                                                                            <div class="summernote break-all">${issueDTO.description }</div>
                                                                        </div>
                                                                    </form>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <div class="btn-desc" style="margin-right: 35px; display: none;">
                                                        <div class="pull-right">
                                                            <a id="btnSaveJournal" class="btn btn-primary">
                                                                <i class="fa fa-save"></i> 保存
                                                            </a>
                                                            <a id="btnCancelJournal" class="btn btn-default">取消</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--end row-->

                                            <!--row-->
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                                                    <span class="timeline-seperator">
                                                        <span><s:text name="issue.attachment"/></span>

                                                        <div class="btn-group pull-right">
                                                            <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">
                                                                <span class="caret single"></span>
                                                            </a>
                                                        </div>
                                                    </span>

                                                    <div class="chat-body no-padding profile-message">
                                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                            <table id="fileAttachements" class="table table-hover table-noborder">
                                                                <tbody>
                                                                    <s:iterator value="issueDTO.attachementsDTO">
                                                                        <tr>
                                                                            <td><a href="../issue/fileAttachementDownload.jspa?fileAttachementId=${top.fileAttachementId }">${top.fileName }</a></td>
                                                                            <td width="100">${top.fileSize } B</td>
                                                                            <td width="160"><s:date name="top.createTime"  /></td>
                                                                            <td width="20"><a href="javascript:void(0);" class='deletefile' data-filepath='${top.filePath }' data-fileattachementid ="${top.fileAttachementId }"  data-attachmentname="${top.fileName}"><i class="fa fa-trash-o"></i></a></td>
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
                                                                    </div> <input type="text" id="fileName" readonly="" placeholder="<s:text name="issue.chose.attachment"/>">
                                                                </label>
                                                                <div class="note"><s:text name="issue.attachment.note"/></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--end row-->

                                            <hr>
                                            <!--row-->
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                                                    <div class="padding-10">

                                                        <ul class="nav nav-tabs tabs-pull-right" id="issueTab">
                                                            <li>
                                                                <a href="#a2" data-toggle="tab">操作历史</a>
                                                            </li>
                                                            <li>
                                                                <a href="#a1" data-toggle="tab"><s:text name="issue.approved.record"/></a>
                                                            </li>
                                                            <li  class="active">
                                                                <a href="#a3" data-toggle="tab"><s:text name="global.comment"/></a>
                                                            </li>
                                                            <li class="pull-left">
                                                                <span class="margin-top-10 display-inline"><i class="fa fa-rss text-success"></i><s:text name="issue.information"/></span>
                                                            </li>
                                                        </ul>

                                                        <div class="tab-content padding-top-10">
                                                            <div class="tab-pane fade" id="a1">
                                                                  <div class="chat-body no-padding profile-message">
                                                                     <div class="issueRemarkRecord">

                                                                     </div>
                                                                 </div>
                                                            </div>
                                                            <!--end tab-->

                                                            <div class="tab-pane fade" id="a2">
                                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                                    <div class="no-history-info"></div>
                                                                    <div class="smart-timeline">
                                                                        <ul class="smart-timeline-list" id="historyWrapper">
                                                                            <li class="text-center btn-load-more-history">
                                                                                <a class="btn btn-sm btn-default btn-prev-page" href="javascript:void(0)">
                                                                                    <i class="fa fa-arrow-up text-muted"></i>
                                                                                    <span class="prev-page-banner">上一页</span>
                                                                                </a>
                                                                                <a class="btn btn-sm btn-default btn-next-page" href="javascript:void(0)">
                                                                                    <i class="fa fa-arrow-down text-muted"></i>
                                                                                    <span class="next-page-banner">下一页</span>
                                                                                </a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <!-- end tab -->

                                                            <div class="tab-pane fade in active" id="a3">

                                                                <div class="chat-body no-padding profile-message">
                                                                    <div class="message-container">
                                                                      <s:iterator value="issueDTO.comments.{? #this.parentCommentId == null}" status="st" var="comment">
                                                                          <ul>
                                                                            <li class="message">
                                                                                <img src="${comment.userLogoPath }" style="width: 50px; height: 50px;">
                                                                                    <small class="text-muted pull-right ultra-light"> <s:date name="#comment.createTime" nice="true" /> </small>
                                                                                <span class="message-text break-all">
                                                                                    <a href="javascript:void(0);" class="username">${comment.creator }
                                                                                    </a>${comment.commentBody }
                                                                                </span>
                                                                                <ul class="list-inline font-xs" style="margin-top: 5px;">
                                                                                    <li>
                                                                                        <a href="javascript:void(0);" class="text-danger action-delete" data-comment="${comment.issueCommentId }"><s:text name="global.delete"/></a>
                                                                                    </li>
                                                                                </ul>
                                                                            </li>
                                                                            <div class="sub-message-replay">
                                                                              <s:iterator value="#comment.subCommentsDTO" var="subComment">
                                                                                <li class="message message-reply">
                                                                                    <img src="${subComment.userLogoPath }" style="width: 50px; height: 50px;">
                                                                                    <span class="message-text break-all"> <a href="javascript:void(0);" class="username">${subComment.creator }</a> ${subComment.commentBody } </span>
                                                                                </li>
                                                                             </s:iterator>
                                                                         </div>
                                                                            <li>
                                                                                <div class="input-group wall-comment-reply">
                                                                                    <input type="text" class="form-control issueReplyContent" placeholder="<s:text name="issue.comment.note"/>">
                                                                                    <span class="input-group-btn">
                                                                                        <input type="hidden" data-author="1" data-parent="${comment.issueCommentId }">
                                                                                        <button class="btn btn-primary btn_chat">
                                                                                            <i class="fa fa-reply"></i> <s:text name="global.replay"/>
                                                                                        </button>
                                                                                    </span>
                                                                                </div>
                                                                            </li>
                                                                        </ul>
                                                                      </s:iterator>
                                                                    </div>
                                                                </div>

                                                                <button id="btnAddComment" class="btn btn-default"><i class="fa fa-comment-o"></i> <s:text name="issue.add.comment"/></button>
                                                                <hr>
                                                                <form id="commentForm" method="post" class="padding-bottom-10 hide" onsubmit="return false;">
                                                                    <p class="text-muted"><s:text name="global.comment"/></p>
                                                                    <textarea rows="4" class="form-control" placeholder="<s:text name="issue.comment.tips"/>"></textarea>
                                                                    <div class="margin-top-10">
                                                                        <button id="btnCancelComment" type="button" class="btn btn-sm btn-default pull-right" style="margin-left: 5px;">
                                                                            <s:text name="global.cancel"/>
                                                                        </button>
                                                                        <input type="hidden" data-author="1">
                                                                        <button id="btn-submitComment" type="button" class="btn btn-sm btn-primary pull-right disabled"><s:text name="global.create"/></button>
                                                                    </div>
                                                                </form>

                                                            </div><!-- end tab -->
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <!--end row-->
                                        </div>
                                        <!--left zone-->

                                        <!--right zone-->
                                        <div class="col-xs-12 col-sm-12 col-md-5 col-lg-5 ">
                                            <!--row-->
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                                                    <span class="timeline-seperator">
                                                        <span><s:text name="issue.personnel"/></span>

                                                        <div class="btn-group pull-right">
                                                            <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">
                                                                <span class="caret single"></span>
                                                            </a>
                                                        </div>
                                                    </span>


                                                    <div class="row">
                                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                            <ul class="list-unstyled">
                                                                <li>
                                                                    <p>
                                                                        <span class="text-muted details-label"><s:text name="issue.fixedUser"/><s:text name="punctuation.colon"/></span>
                                                                        <s:if test="#issueStatus == 'DRAFT'">
                                                                            <s:if test="issueDTO.fixedUser != null">
                                                                                ${issueDTO.fixedUserDTO.realName } [ ${issueDTO.fixedUser } ]
                                                                            </s:if>
                                                                            <s:else>
                                                                                <span name="dependField">---</span>
                                                                            </s:else>
                                                                        </s:if>
                                                                        <s:else>
                                                                            <a href="javascript:;" id="assigner" data-processInstanceId='${issueDTO.processInstanceId }' data-name="receiverId" data-type="select2" data-pk="${issueId}" data-value="${issueDTO.fixedUser }">
                                                                                <s:if test="issueDTO.fixedUser != null">
                                                                                     ${issueDTO.fixedUserDTO.realName } [ ${issueDTO.fixedUser } ]
                                                                                </s:if>
                                                                                <s:else>
                                                                                   <span name="dependField">---</span>
                                                                                </s:else>
                                                                            </a>
                                                                        </s:else>
                                                                    </p>
                                                                </li>
                                                                <li >
                                                                    <p>
                                                                        <span class="text-muted details-label"><s:text name="issue.globalApprover"/><s:text name="punctuation.colon"/></span>
                                                                        <s:if test="issueDTO.globalApprover != null">
                                                                           ${issueDTO.globalApproverDTO.realName } [ ${issueDTO.globalApprover} ]
                                                                        </s:if>
                                                                        <s:else>
                                                                            ---
                                                                        </s:else>
                                                                    </p>
                                                                </li>
                                                                <li >
                                                                    <p>
                                                                        <span class="text-muted details-label"> <s:text name="issue.direct.reviewer"/><s:text name="punctuation.colon"/></span>
                                                                        <a href="javascript:void(0);">
                                                                        <s:if test="issueDTO.directApprover != null">
                                                                            ${issueDTO.directApproverDTO.realName } [ ${issueDTO.directApprover} ]
                                                                        </s:if>
                                                                        <s:else>
                                                                            ---
                                                                        </s:else>
                                                                        </a>
                                                                    </p>
                                                                </li>
                                                                <li >
                                                                    <p>
                                                                        <span class="text-muted details-label"> <s:text name="issue.identifier"/><s:text name="punctuation.colon"/></span>
                                                                        <s:if test="issueDTO.validator != null">
                                                                            ${issueDTO.validatorDTO.realName } [ ${issueDTO.validator} ]
                                                                        </s:if>
                                                                        <s:else>
                                                                            ---
                                                                        </s:else>
                                                                    </p>
                                                                </li>
                                                                <li >
                                                                    <p>
                                                                        <span class="text-muted details-label"> <s:text name="issue.closer"/><s:text name="punctuation.colon"/></span>
                                                                        <s:if test="issueDTO.closedUser != null">
                                                                            ${issueDTO.closedUserDTO.realName } [ ${issueDTO.closedUser} ]
                                                                        </s:if>
                                                                        <s:else>
                                                                            ---
                                                                        </s:else>
                                                                    </p>
                                                                </li>
                                                                <li >
                                                                    <p>
                                                                        <span class="text-muted details-label"> <s:text name="issue.committer"/><s:text name="punctuation.colon"/></span>
                                                                        <s:if test="issueDTO.creator != null">
                                                                            ${issueDTO.creatorDTO.realName } [ ${issueDTO.creator} ]
                                                                        </s:if>
                                                                        <s:else>
                                                                            ---
                                                                        </s:else>
                                                                    </p>
                                                                </li>
                                                                <li>
                                                                    <p>
                                                                        <span class="text-muted details-label"><s:text name="issue.updater"/><s:text name="punctuation.colon"/></span>
                                                                        <s:if test="issueDTO.lastUpdater != null">
                                                                            ${issueDTO.lastUpdaterDTO.realName } [ ${issueDTO.lastUpdater } ]
                                                                        </s:if>
                                                                        <s:else>
                                                                            ---
                                                                        </s:else>
                                                                    </p>
                                                                </li>
                                                                <li>
                                                                    <p>
                                                                        <span class="text-muted details-label"> <s:text name="issue.totalWatchers"/><s:text name="punctuation.colon"/></span>
                                                                        <span class="totalWatchers"><s:property value="issueDTO.totalWatchers" default="0" /></span> &nbsp;&nbsp;
                                                                        <span>
                                                                            <s:set value="issueDTO.isWatcher" var="isWatcher" />
                                                                            <i class="fa fa-star star-icon btn-unfocus" style="display: <s:property value="%{#isWatcher?'':'none'}" />"></i>
                                                                            <i class="fa fa-star-o star-icon btn-focus" style="display: <s:property value="%{#isWatcher?'none':''}" />"></i>
                                                                            [<span class="watchBanner" style="color: #000;"><s:property value="%{#isWatcher?getText('issue.unfocus'):getText('issue.focus')}" /></span>]
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
                                                        <span><s:text name="issue.date"/></span>

                                                        <div class="btn-group pull-right">
                                                            <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">
                                                                <span class="caret single"></span>
                                                            </a>
                                                        </div>
                                                    </span>


                                                    <div class="row">
                                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                            <ul class="list-unstyled">
                                                                <li >
                                                                    <p class="text-muted">
                                                                        <span class="details-label"> <s:text name="issue.deadline"/><s:text name="punctuation.colon"/></span>
                                                                        <s:if test="issueDTO.dueDate == null">
                                                                          <a href="javascript:void(0);" id="dueDate" data-name="dueDate" data-type="combodate" data-viewformat="<s:text name="combodate.date.MMDDYYYYformat"/>" data-format="<s:text name="combodate.date.MMDDYYYYformatU"/>" data-template="<s:text name="combodate.date.MMDDYYYYformat"/>" data-value="" data-pk="${issueId}">&nbsp;</a>
                                                                        </s:if>
                                                                        <s:else>
                                                                          <a href="javascript:void(0);" id="dueDate" data-name="dueDate" data-type="combodate" data-viewformat="<s:text name="combodate.date.MMDDYYYYformat"/>" data-format="<s:text name="combodate.date.MMDDYYYYformatU"/>" data-template="<s:text name="combodate.date.MMDDYYYYformat"/>" data-value="${issueDTO.dueDate}" data-pk="${issueId}" data-original-title="<s:text name="issue.chose.deadline"/>">
                                                                            <!-- 2014年 5月10日 10:00 -->
                                                                            <s:date name="issueDTO.dueDate" format="%{getText('struts.date.format')}"/>
                                                                            </a>
                                                                        </s:else>
                                                                    </p>
                                                                </li>
                                                                <li >
                                                                    <p>
                                                                        <span class="text-muted details-label"> <s:text name="issue.create.date"/><s:text name="punctuation.colon"/></span>
                                                                        <s:date name="issueDTO.createTime" format="%{getText('struts.datetime.format')}"/>
                                                                    </p>
                                                                </li>
                                                                <li >
                                                                    <p>
                                                                        <span class="text-muted details-label"> <s:text name="issue.update.date"/><s:text name="punctuation.colon"/></span>
                                                                        <s:date name="issueDTO.lastUpdateTime" format="%{getText('struts.datetime.format')}"/>
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
                                                        <span><s:text name="issue.date"/></span>
                                                        <div class="btn-group pull-right">
                                                            <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">
                                                                <span class="caret single"></span>
                                                            </a>
                                                        </div>
                                                    </span>


                                                    <div class="row">
                                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                            <ul class="list-unstyled">
                                                                <li>
                                                                    <p class="text-muted">
                                                                        <span class="details-label"><s:text name="issue.timeOriginalEstimate"/><s:text name="punctuation.colon"/></span>
                                                                    </p>
                                                                    <!-- <div class="col-md-9" style="padding-left: 0"> -->
                                                                        <s:property value="issueDTO.timeOriginalEstimate" default="---"/>
                                                                    <!-- </div> -->
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                     <div class="row">
                                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                            <ul class="list-unstyled">
                                                                <li >
                                                                    <p class="text-muted">
                                                                        <span class="details-label"> <s:text name="issue.timeEstimate"/><s:text name="punctuation.colon"/></span>
                                                                    </p>
                                                                    <!-- <div class="col-md-9" style="padding-left: 0"> -->
                                                                    <s:property value="issueDTO.timeEstimate" default="---"/>
                                                                    <!-- </div> -->
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!--标签-->
                                            <div class="row widget-hide-overflow">
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                    <div>
                                                      <h3><s:text name="issue.labelgroup.description" /></h3>
                                                    </div>
                                                    <div class="chat-body no-padding profile-message">
                                                      <table class="table table-hover">
                                                        <tbody class="labelGroupsHolder"></tbody>
                                                      </table>
                                                    </div>
                                                     <s:if test="#issueStatus != 'CLOSED' && #issueStatus != 'VALIDATED'">
                                                        <div id="ad-container-whiteboxPro" class="ad-container hidden-xs border-bottom-fixed">
                                                            <span id="chat-list-open-close-whiteboxPro" class="chat-list-open-close">
                                                              <i class="fa fa-tag txt-color-blue"></i>
                                                            </span>
                                                            <div id="chat-list-body-whiteboxPro"
                                                              class="chat-list-body custom-scroll">
                                                              <div class=" no-padding profile-message">
                                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                                  <br>
                                                                  <h4>为缺陷设定标签</h4>
                                                                  <br>
                                                                  <table id="tagTable" class="table table-hover">
                                                                  </table>
                                                                </div>
                                                              </div>
                                                            </div>
                                                        </div>
                                                    </s:if>
                                                </div>
                                            </div>
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
                <!-- end row -->
    <input id="issueId" type="hidden" value="${issueId}">
    <input id="processInstanceId" type="hidden" value="${issueDTO.processInstanceId}">
    <input id="fixedUserTemp" type="hidden" value="${issueDTO.fixedUser}">
    <input id="creatorTemp" type="hidden" value="${issueDTO.creator}">
    <input id="security" type="hidden" value="${issueDTO.securityLevel}">
    <input id="viewUrl" type="hidden" value="<s:url value="/issue/viewIssueOfWhitebox.jspa"/>">
    <input id="labelUrl" type="hidden" value="<s:url value="/issue/findDefaultLabelsForWhitebox.jspa"/>">
    <input id="listUrl" type="hidden" value="<s:url value="/issue/issues_list_whitebox.jspa"/>">
    <input id="cloneableProjectType" type="hidden" value="whitebox">
    </div>
    </div>
    <div class="cloneDialogContainer"></div>
    <jsp:include page="/pages/footer.jsp" />
  </body>
  <script src="<s:url value="/js/core/common.js"/>"></script>
  <script src="<s:url value="/js/resetheight.js"/>"></script>
  <script type="text/javascript">

            /* chart colors default */
            var $chrt_border_color = "#efefef";
            var $chrt_grid_color = "#DDD"
            var $chrt_main = "#E24913";
            /* red       */
            var $chrt_second = "#6595b4";
            /* blue      */
            var $chrt_third = "#FF9F01";
            /* orange    */
            var $chrt_fourth = "#7e9d3a";
            /* green     */
            var $chrt_fifth = "#BD362F";
            /* dark red  */
            var $chrt_mono = "#000";
        // DO NOT REMOVE : GLOBAL FUNCTIONS!
            pageSetUp();

            progressbar();
            function progressbar() {
                loadScript('<s:url value="/js/plugin/bootstrap-progressbar/bootstrap-progressbar.js" />', editable);
            }
            function editable() {
                loadScript('<s:url value="/js/plugin/x-editable/x-editable.min.js" />', ed_1);

                function ed_1() {
                   loadScript('<s:url value="/js/plugin/x-editable/moment.min.js" />', loadFlotScripts);
                }
            }

            function loadFlotScripts() {
                loadScript('<s:url value="/js/plugin/flot/jquery.flot.cust.js" />', ft_2);

                function ft_2() {
                    loadScript('<s:url value="/js/plugin/flot/jquery.flot.resize.js" />', ft_3);
                }

                function ft_3() {
                    loadScript('<s:url value="/js/plugin/flot/jquery.flot.fillbetween.min.js" />', ft_4);
                }

                function ft_4() {
                    loadScript('<s:url value="/js/plugin/flot/jquery.flot.orderBar.js" />', ft_5);
                }

                function ft_5() {
                    loadScript('<s:url value="/js/plugin/flot/jquery.flot.pie.js" />', ft_6);
                }

                function ft_6() {
                    loadScript('<s:url value="/js/plugin/flot/jquery.flot.tooltip.js" />', startUser);
                }
            }

            /*
             * SUMMERNOTE EDITOR
             */
             loadScript('<s:url value="/js/plugin/summernote/summernote.js" />', summernoteStart);
            
             /* var form = $("#descriptionForm").validate({
                 errorElement: "strong",
                 ignore: ":not('.required-validation')",
                 errorClass: "note_error text-danger",
                 focusCleanup: true,
                 focusInvalid: false,
                 rules: {
                     "description": {
                         maxlength: 10000
                     }
                 },
                 messages: {
                     "description": {
                         maxlength: "字段最大允许10000个字符"
                     }
                 },
                 highlight: function(element, errorClass) {
                     $(element).parent().addClass("has-error");
                 },

                 unhighlight: function(element, errorClass) {
                     $(element).parent().removeClass("has-error");
                 },
                 
                 errorPlacement: function(error, element) {
                     error.appendTo(element.parent());
                 }
             }); */

            function summernoteStart() {
                loadScript('<s:url value="/js/lang/summernote-zh-CN.js" />');
                var sourceText = "";
                $(".btn-edit-issue-desc").on("click", function(e) {
                    $(this).addClass("disabled");
                    initSummernote($(".summernote"));
                    sourceText = $(".summernote").code();
                    $(".btn-desc").show();
                });

                $("#btnCancelJournal").on("click", function(e) {
                    // resetForm();
                    $(".summernote").code(sourceText);
                    $(".summernote").destroy();
                    $(".btn-desc").hide();
                    $(".btn-edit-issue-desc").removeClass("disabled");
                });

                $("#btnSaveJournal").on("click", function(e) {
                    var htmlContent = $(".summernote").code();
                    //if ($("#description").valid()) {
                        saveSummerNote(htmlContent);
                        $(".summernote").destroy();
                        $(".btn-desc").hide();
                        $(".btn-edit-issue-desc").removeClass("disabled");
                    //}
                });



                function initSummernote(container) {
                    container.summernote($.extend(Eipd.namespace("config").summernote, {
                        onblur: function(e) {
                            // $("#description").val($(".summernote").code()).valid();
                        },
                        onfocus: function(e) {
                            // resetForm();
                        }
                    }));
                }
                
                function resetForm() {
                    form.clean();
                    form.resetForm();
                    $(".summernote").parent().removeClass("has-error");
                }

                function saveSummerNote(content) {
                    $.ajax({
                        url: "../issue/updateIssueDetails.jspa",
                        type: "POST",
                        dataType: "json",
                        data: {
                            "issueDTO.description": content,
                            "issueDTO.issueId": $("#issueId").val()
                        },
                        success: function(result) {
                            checkResult(result, {
                                showBox: false
                            });
                        }
                    });
                }
            }


            function startUser(){
                $('#btnAddComment, #btnCancelComment').click(function(e){
                    $('#commentForm').toggleClass('hide');
                    $('#btnAddComment').toggleClass('hide');
                    e.preventDefault();
                });

                $('.progress-bar').progressbar({
                    display_text : 'fill'
                });

                /*
                 * X-Ediable
                 */
                (function (e) {
                    "use strict";
                    var t = function (e) {
                        this.init("address", e, t.defaults)
                    };
                    e.fn.editableutils.inherit(t, e.fn.editabletypes.abstractinput);
                    e.extend(t.prototype, {
                        render: function () {
                            this.$input = this.$tpl.find("input")
                        },
                        value2html: function (t, n) {
                            if (!t) {
                                e(n).empty();
                                return
                            }
                            var r = e("<div>").text(t.city).html() + ", " + e("<div>").text(t.street).html() +
                                    " st., bld. " + e("<div>").text(t.building).html();
                            e(n).html(r)
                        },
                        html2value: function (e) {
                            return null
                        },
                        value2str: function (e) {
                            var t = "";
                            if (e)
                                for (var n in e)
                                    t = t + n + ":" + e[n] + ";";
                            return t
                        },
                        str2value: function (e) {
                            return e
                        },
                        value2input: function (e) {
                            if (!e)
                                return;
                            this.$input.filter('[name="city"]').val(e.city);
                            this.$input.filter('[name="street"]').val(e.street);
                            this.$input.filter('[name="building"]').val(e.building)
                        },
                        input2value: function () {
                            return {
                                city: this.$input.filter('[name="city"]').val(),
                                street: this.$input.filter('[name="street"]').val(),
                                building: this.$input.filter('[name="building"]').val()
                            }
                        },
                        activate: function () {
                            this.$input.filter('[name="city"]').focus()
                        },
                        autosubmit: function () {
                            this.$input.keydown(function (t) {
                                t.which === 13 && e(this).closest("form").submit()
                            })
                        }
                    });
                    t.defaults = e.extend({}, e.fn.editabletypes.abstractinput.defaults, {
                        tpl: '<div class="editable-address"><label><span>City: </span><input type="text" name="city" class="input-small"></label></div><div class="editable-address"><label><span>Street: </span><input type="text" name="street" class="input-small"></label></div><div class="editable-address"><label><span>Building: </span><input type="text" name="building" class="input-mini"></label></div>',
                        inputclass: ""
                    });
                    e.fn.editabletypes.address = t
                })(window.jQuery);

                //defaults
                $.fn.editable.defaults.url = '../issue/updateIssueDetails.jspa';
                $.fn.editable.defaults.mode = 'inline';
                $.fn.editableContainer.defaults.onblur = "submit"; //submit the value when click outside the container
                $.fn.editable.defaults.emptytext = "---"; // set to '-' when no content
                $.fn.editable.defaults.emptyclass = "text-danger";  //default: text-muted
                $.fn.editable.defaults.unsavedclass = "text-danger";

                //SELECT2的控件，如果数据需要远程加载的话，保留一个空对象即可
                var dataSource = {
                    severity: {
                        "DEADLY": "致命",
                        "SERIOUS": "严重",
                        "COMMON": "普通",
                        "SLIGHT": "轻微"
                    },
                    priority: {
                        "CRITICAL": "紧急",
                        "MAJOR": "高",
                        "MINOR": "中",
                        "TRIVIAL": "低"
                    },
                    securityLevel: {
                        "TOP": "绝密",
                        "NORMAL": "保密",
                        "PUBLIC": "公开"
                    },

                    "projectDTO.projectType": {
                        "SOFT_UPGRADE": "程序升级",
                        "NEW_SOFT": "新程序开发",
                        "SOFT_MIGRATION": "程序移植"
                    },

                    receiverId: {},

                    "projectDTO.projectManager": {}
                };

                var callbacks = {
                    "status": function(value, sourceData) {
                        var $anchor = $(this);
                        var background = issueCommon.getIssueStatusBackground(value);
                        var i18nText = i18nRes.issue.issueStatus[value];
                        $anchor.html('<span class="' + background + '">' + i18nText +'</span>');
                    },

                    "severity": function(value, sourceData) {
                        $(this).html('<span class="' + issueCommon.getIssueSeverityFontColor(value) + '">' + i18nRes.issue.issueSeverity[value] +'</span>');
                    }
                };

                loadScript('<s:url value="/js/core/issues/i18n.js" />', function() {
                    loadScript('<s:url value="/js/core/issues/messageBox.js" />', function() {
                        loadScript('<s:url value="/js/core/issues/issueCommon.js" />', loadInitIssueScript);
                    });
                });

                function loadInitIssueScript() {
                  loadScript('<s:url value="/js/core/issues/issueLabel.js" />', function() {
                    issueLabel.initEditPage();
                    initSelect2Component();
                  });
                }



                function initSelect2Component() {
                    //init the xeditable plugin
                        $("a[data-type='select2'], a[data-type='text'] ,a[data-type='textarea']:not([single]), a[data-type='combodate']").each(function(i, $obj) {  //如果不想作为ediatble元素，可以为<a> 添加一个single属性
                            var tempStorage = [];
                            //内联文本处理
                            if(!dataSource[$(this).data("name")]) {
                                var select2Setting = {
                                    disabled: false,

                                    params: function(params) {
                                        var prefix = "issueDTO.", customParams = {};
                                        customParams[prefix + "issueId"] = params.pk;
                                        customParams[prefix + params.name] = params.value;
                                        return customParams;
                                    }
                                };

                              var status = $("#status").val();
                              $(this).editable($.extend(select2Setting, status === 'VALIDATED' || status === 'CLOSED' ? {disabled: true} : {}, $(this).data("maxLength") ? {
                                  validate: function(value) {
                                      if ($(this).data("required")) {
                                          if($.trim(value) === '') {
                                              return '项目名称不能为空';
                                          }
                                      }
                                      
                                      var maxLength = $(this).data("maxLength");
                                      if ($.trim(value).length > maxLength) {
                                          return "字段最大允许" + maxLength + "个字符";
                                      }
                                  }
                              } : {}));
                            } else {  //内联select2处理
                              $.each(dataSource[$(this).data("name")], function(k, v) {
                                tempStorage.push({id: k, text: v});
                              });
                              initEditable($(this), tempStorage, callbacks[$(this).data("name")]);
                            }
                        });

                        //初始化编辑页面的事件绑定和弹出框
                        issueCommon.initialize();
                        issueCommon.createMenuItems_edit();
                    }

                function initEditable($container, data, callback) {
                    var select2Setting = {
                        source: data,
                        disabled: false,
                        select2: {
                            width: 200
                        },
                        params: function(params) {
                            var prefix = "issueDTO.", customParams = {};
                          //如果是分配者的话，则需要传入流程id和接收者名称
                            if ($container.data("name") === "receiverId") {
                                customParams[prefix + "processInstanceId"] = $container.data("processinstanceid");
                                customParams[prefix + "fixedUser"] = $container.data("fixedUser");
                            }
                            customParams[prefix + "issueId"] = params.pk;
                            customParams[prefix + params.name] = params.value;
                            return customParams;
                        }
                    };

                    if ($container.data("name") === "securityLevel") {
                        if(!issueCommon.isManager()) {
                            $.extend(select2Setting, {disabled: true}); // 非经理，则不可编辑
                        }
                    }

                    var status = $("#status").val();
                    //如果Issue状态为验证通过或者关闭，则禁止编辑
                    select2Setting = $.extend(select2Setting, //@TODO  状态值需要抽离
                        { display: callback || undefined }, { disabled: status === 'VALIDATED' || status === 'CLOSED' ? true : false },
                        $container.data("name") === "receiverId" ? {url: "issue_processAssignIssue.jspa", select2 : {
                            allowClear: true,
                            width: 200,
                            ajax: {
                                url: $.url_root+'/user/findUsersByDevelopRole.jspa',
                                dataType: "json",
                                quietMillis: 300,
                                type: 'POST',
                                data: function(term, page) {
                                    page = page ? page : 1;
                                    return {
                                        "userQueryConditionDTO.name": term,
                                        "userQueryConditionDTO.realName": term,
                                        iDisplayStart: (page-1)*10 + 1,
                                        iDisplayLength: 10
                                    };
                                },

                                results: function (data, page) {

                                    return {results: data.json.results,
                                        more:(page * 10) < data.totalRecords
                                    };
                                }
                            },

                            formatResult: function(object, container, query) {
                                var realName = object.realName == undefined ? "<br /> 用户名：" : "<br />" + "用户名：" + object.realName;
                                var html = "登录名：" + object.text;
                                html += realName;
                                return html;
                            },

                            formatSelection : function(object, container){
                                var realName = object.realName == undefined ? "" : object.realName;
                                var html = " " + realName;
                                html += (object.id ?  " [ " + object.id + " ]" : "");
                                $container.data("fixedUser", object.id);
                                return html;
                            },

                            dropdownCssClass: "bigdrop", // apply css that makes the dropdown taller

                            escapeMarkup: function (m) { return m; } // we do not want to escape markup since we are displaying html in results
                      }}:{}, $container.data("name") === "projectDTO.projectManager" ? {url: "updateIssueDetails.jspa", select2 : {
                            allowClear: true,
                            width: 200,
                            ajax: {
                                url: $.url_root + "/user/findUsersByManagerRole.jspa",
                                dataType: 'json',
                                quietMillis: 300,

                                data: function(term, page) {
                                    page = page ? page : 1;
                                    return {
                                        "userQueryConditionDTO.name": term,
                                        "userQueryConditionDTO.realName": term,
                                        iDisplayStart: (page - 1) * 10 + 1,
                                        iDisplayLength: 10
                                    };
                                },

                                results: function(data, page) {
                                    var more = (page * 10) < data.totalRecords;
                                    return {
                                        results: data.json.results,
                                        more: more
                                    };
                                }
                            },

                            formatResult: function(object, container, query) {
                                var realName = object.realName == undefined ? "<br /> 用户名：" : "<br />" + "用户名：" + object.realName;
                                var html = "登录名：" + object.text;
                                html += realName;
                                return html;
                            },

                            formatSelection : function(object, container){
                                var realName = object.realName == undefined ? "" : object.realName;
                                var html = " " + realName;
                                html += (object.id ?  " [ " + object.id + " ]" : "");
                                return html;
                            },

                            dropdownCssClass: "bigdrop",

                            escapeMarkup: function(m) {
                                return m;
                            }
                      }} : {}, $container.data("name") === "securityLevel" ? {url: "../issue/updateSecurityLevel.jspa" } : {} );

                    if($container.data("name") === "receiverId") {  //针对修复者需要特殊处理

                        // 如果已指定修复者，则不可编辑
                        if($.trim($container.data("value")) || !issueCommon.isManager()) {
                              $.extend(select2Setting, {disabled: true});
                         }

                        $container.editable(select2Setting).on("save", function(e, params) {
                            //issueEdit.generateMember();  //填充审核负责人和直接审核人
                            window.location.href = window.document.location.href;
                        });
                    } else {
                        $container.editable(select2Setting);
                    }
                };

                // first disable the button
                $(".message-container").find(".btn_chat").each(function(i, v) {
                    $(this).addClass("disabled");
                });

                $(".message-container").on("keyup", ".issueReplyContent", function(e) {
                    var $btn = $(this).next().children("button");

                    if ($btn.hasClass("disabled") && $.trim($(this).val())) {
                        $btn.removeClass("disabled");
                    }

                    if (!$.trim($(this).val())) {
                        $btn.addClass("disabled")
                    }

                    e.stopPropagation();
                });

                $("#commentForm").on("keyup", "textarea", function(e) {
                    var $btn = $(this).next().children("button").eq(1);

                    if ($btn.hasClass("disabled") && $.trim($(this).val())) {
                        $btn.removeClass("disabled");
                    }

                    if (!$.trim($(this).val())) {
                        $btn.addClass("disabled")
                    }

                    e.stopPropagation();
                });

                $(".message-container").on("click", ".btn_chat", function(e) {
                    var $that = $(this),
                        $sibling = $(this).prev(),
                        $inputContent = $sibling.closest("span").prev('input');

                    $.ajax({
                        url: "../issue/createIssueComment.jspa",
                        type: "POST",
                        dataType: "json",
                        data: {
                            "commentDTO.commentBody": $inputContent.val(),
                            "commentDTO.issueId": $("#issueId").val(),
                            "commentDTO.parentCommentId": $sibling.data("parent")
                        },
                        success: function(data) {
                            checkResult(data, {
                                callback: function() {
                                    data = data.commentDTO;
                                    var html = '<li class="message message-reply">'
                                        + '<img src="'+$.url_root + data.userLogoPath+'"style="width: 31px; height: 31px;">'
                                          + '<span class="message-text break-all"> <a href="javascript:void(0);" class="username">' + data.creator + '</a>' + data.commentBody + '</span>'
                                           + '<ul class="list-inline font-xs">'
                                               + '<li>'
                                                  + '<a href="javascript:void(0);" class="text-muted">' + data.createTime + '</a>'
                                               + '</li>'
                                           + '</ul>'
                                        + '</li>';
                                    $sibling.closest("li").prev(".sub-message-replay").append($(html));
                                    $inputContent.val("");
                                    $that.addClass("disabled");
                                }
                            });
                        }
                    });
                }).on("click", ".action-delete", function(e) {
                    var $that = $(this);
                    $.ajax({
                        url: "../issue/deleteIssueComment.jspa",
                        type: "POST",
                        dataType: "json",
                        data: {
                            "commentId": $that.data("comment")
                        },
                        success: function(data) {
                            checkResult(data, {
                                message: "<span style='font-size: 17px;'>删除评论成功！</span>",
                                callback: function() {
                                    $that.closest(".message").parent().remove();
                                }
                            });
                        }
                    });
                });

                $("#btn-submitComment").click(function(e) {
                    var $that = $(this),
                        sibling = $(this).prev(),
                        $inputContent = $(this).closest("div").prev();

                    $.ajax({
                        url: "../issue/createIssueComment.jspa",
                        type: "POST",
                        dataType: "json",
                        data: {
                            "commentDTO.commentBody": $inputContent.val(),
                            "commentDTO.issueId": $("#issueId").val()
                        },
                        success: function(data) {
                            checkResult(data, {
                                callback: function() {
                                    data = data.commentDTO;
                                    var html = '<ul><li class="message">'
                                        +   '<img src="'+$.url_root + data.userLogoPath+'"style="width: 50px; height: 50px;">'
                                        +   '<span class="message-text break-all">'
                                        +   '<a href="javascript:void(0);" class="username">' + data.creator + '</a>'
                                        +      data.commentBody
                                        +   '</span>'
                                        +   '<ul class="list-inline font-xs" style="margin-top: 5px;">'
                                        // +   '<li><a href="javascript:void(0);" class="text-info"><i class="fa fa-reply"></i> 回复</a></li>'
                                        // +       '<li><a href="javascript:void(0);" class="text-muted">显示所有回复 (14)</a></li>'
                                      //  +       '<li><a href="javascript:void(0);" class="text-primary">编辑</a></li>'
                                        +       '<li><a href="javascript:void(0);" class="text-danger action-delete" data-comment="' + data.issueCommentId + '">'+ '删除</a></li>'
                                        +   '</ul>'
                                        + '</li>'
                                        + '<div class="sub-message-replay"></div>'
                                        + '<li>'
                                            + '<div class="input-group wall-comment-reply">'
                                                + '<input type="text" class="form-control issueReplyContent" placeholder="在这里输入您的回复内容...">'
                                                + '<span class="input-group-btn">'
                                                +     '<input type="hidden" data-author="' + "1" + '" data-parent="' + data.issueCommentId + '">'
                                                +     '<button class="btn btn-primary btn_chat disabled">'
                                                +         '<i class="fa fa-reply"></i> 回复'
                                                +     '</button>'
                                                + '</span>'
                                            + '</div>'
                                        + '</li></ul>';
                                        $(".message-container").append($(html));
                                        $inputContent.val("");
                                        $that.addClass("disabled");
                                    }
                            });

                        }
                      });
                });
            }

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


        loadScript('<s:url value="/js/core/issues/issueRemark.js" />', loadIssueRemark);
        function loadIssueRemark()
        {
             $('#issueTab a[href="#a1"]').on('show.bs.tab', function (e) {
                 issueRemark.findIssueRemarkRecords();
             });

        }

        loadScript('<s:url value="/js/core/issues/editWhitebox.js" />', function() {
            editWhitebox.initialize();
        });
    </script>
</html>

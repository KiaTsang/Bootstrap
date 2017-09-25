<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en-us">
 <jsp:include page="/pages/top.jsp"></jsp:include>
<head>
<link href="<s:url value="/css/summernote.css" />" rel="stylesheet" type="text/css" >
<link href="<s:url value="/css/summernote-bs3.css" />" rel="stylesheet" type="text/css" >
<style>
    .table thead tr, .fc-border-separate thead tr {
        background-color: #FFFFFF;
        background-image: -moz-linear-gradient(center top , #FFFFFF 0px, #FFFFFF 100%);
        font-size: 12px;
    }
    .table-noborder, .table-noborder >tbody > tr, .table-noborder >tbody > tr > td {
        border-top: 0px solid #ddd;
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
        margin: 20px 0 0 0;
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

    a.clickExpand, a.clickCollapse {
        cursor: pointer;
    }

    input.readonlyDate {
       cursor: pointer !important;
       background-color: white !important;
    }

    table.attchedList, table.attchedList a {
        color: #5e9cd2;
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

        <!-- RIBBON -->
        <div id="ribbon">
            <!-- breadcrumb -->
            <ol class="breadcrumb">
                <li><s:text name="complaint.complt"/></li>
                <li><a href="<s:url value="/complaint/complaint.jspa"/>"><s:text name="complaint.record"/></a></li>
                <li><s:text name="complaint.detail"/></li>
            </ol>
        </div>
        <!-- END RIBBON -->
<!-- row -->
<div id="content">
<!-- row -->
<div class="row">
    <article class="col-sm-12 col-md-12 col-lg-12 sortable-grid ui-sortable">
        <!-- Widget ID (each widget will need unique ID)-->
        <div class="jarviswidget well" id="wid-id-3" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-togglebutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false" data-widget-custombutton="false" data-widget-sortable="false">
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
                            <span class="font-md text-primary"><s:text name="complaint.client.message"/></span>
                        </div>
                    </div>

                    <hr class="simple">

                    <!-- row -->
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 toolbar">
                            <a class="btn btn-default" href="javascript:history.go(-1);"><s:text name="global.return"/></a>&nbsp;&nbsp;
                            <!--<a class="btn btn-default">编辑</a>&nbsp;	nbsp; -->
                              <a class="btn btn-default deleteBtn" href="javascript:void(0);"><s:text name="global.delete"/></a>
                            <!--<div class="btn-group">
                                    <a class="btn btn-default dropdown-toggle" data-toggle="dropdown">更多
                                        <i class="fa fa-caret-down"></i>
                                    </a>
                                    <ul class="dtable dropdown-menu pull-right">
                                        <li>
                                            <a href="javascript:void(0);">关注</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="javascript:void(0);">复制</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="javascript:void(0);">删除</a>
                                        </li>
                                    </ul>
                                </div>
                            -->
                        </div>
                    </div>
                    <!--end row-->

                    <!--row -->
                    <div class="row">

                        <!--left zone-->
                        <div class="col-xs-12 col-sm-12 col-md-7 col-lg-7 ">
                            <!--row-->
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                                    <span class="timeline-seperator">
                                        <span><s:text name="complaint.base.message"/></span>
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
                                                        <span class="details-label"> <s:text name="complaint.complaintCode"/>:</span>
                                                        <a href="javascript:void(0);" id="complaintCode" data-name="complaintCode" data-type="text" data-pk="${complaintDTO.id}" data-select-search="true" data-value="${complaintDTO.complaintCode}" >
		                                                    ${complaintDTO.complaintCode}
		                                                </a>
                                                    </p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                            <ul class="list-unstyled">
                                                <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"> <s:text name="complaint.isSolved"/>:</span>
                                                        <a href="javascript:void(0);" id="isSolved" data-name="isSolved" data-type="select2" data-pk="${complaintDTO.id}" data-select-search="true" data-value="${complaintDTO.isSolved}" >
		                                                    <s:text name="complaint.%{complaintDTO.isSolved}" />
		                                                </a>
                                                    </p>
                                                </li>
                                            </ul>
                                        </div>
                                         <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                            <ul class="list-unstyled">
                                                <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"> <s:text name="complaint.infoProvider"/>:</span>
                                                        <a href="javascript:void(0);" id="infoProvider" data-name="infoProvider" data-type="text" data-pk="${complaintDTO.id}" data-select-search="true" data-value="${complaintDTO.infoProvider}" >
		                                                    ${complaintDTO.infoProvider}
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
                                        <span><s:text name="complaint.project.base"/></span>
                                        <div class="btn-group pull-right">
                                            <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">
                                                <span class="caret single"></span>
                                            </a>
                                        </div>
                                    </span>
                                </div>
                                <div class="row" id="cardProject">
                                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                            <ul class="list-unstyled" style="margin-left: 9px;">
                                                <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="project.name"/>:</span>
                                                        <a href="javascript:void(0);" id="projectName" data-name="projectName" data-select-search="true">
		                                                    <s:if test="complaintDTO.projectName != null">
                                                                ${complaintDTO.projectName}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                                  <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"> <s:text name="project.code"/>:</span>
                                                        <a href="javascript:void(0);" id="code" data-name="projectDTO.code" data-select-search="true">
		                                                    <s:if test="complaintDTO.projectDTO.code != null">
                                                                ${complaintDTO.projectDTO.code}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                                <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"> <s:text name="project.type"/>:</span>
                                                        <a href="javascript:void(0);" id="cardProjectType" data-name="projectDTO.projectType" data-select-search="true">
		                                                    <s:if test="complaintDTO.projectDTO.projectType != null">
                                                                <s:text name="issue.projectType.%{complaintDTO.projectDTO.projectType}" />
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                                <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="project.requirementCode"/>:</span>
                                                        <a href="javascript:void(0);" id="requirementCode" data-name="projectDTO.requirementCode" data-select-search="true">
		                                                    <s:if test="complaintDTO.projectDTO.requirementCode != null">
                                                                ${complaintDTO.projectDTO.requirementCode}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                                <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="project.cos.version"/>:</span>
                                                        <a href="javascript:void(0);" id="cosVersion" data-name="projectDTO.cosVersion" data-select-search="true">
		                                                    <s:if test="complaintDTO.projectDTO.cosVersion != null">
                                                                ${complaintDTO.projectDTO.cosVersion}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                  </a>
                                                    </p>
                                                </li>
                                                 <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="project.cos.developer"/>:</span>
                                                        <a href="javascript:void(0);" id="cosDeveloper" data-name="projectDTO.cosDeveloper" data-select-search="true">
		                                                    <s:if test="complaintDTO.projectDTO.cosDeveloper != null">
                                                                ${complaintDTO.projectDTO.cosDeveloper}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                                 <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"> <s:text name="project.customDeveloper"/>:</span>
                                                        <a href="javascript:void(0);" id="customDeveloper" data-name="projectDTO.customDeveloper" data-select-search="true">
		                                                    <s:if test="complaintDTO.projectDTO.customDeveloper != null">
                                                                ${complaintDTO.projectDTO.customDeveloper}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                                 <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="project.usecase.designer"/>:</span>
                                                        <a href="javascript:void(0);" id="ucDesigner" data-name="projectDTO.ucDesigner" data-select-search="true">
		                                                    <s:if test="complaintDTO.projectDTO.ucDesigner != null">
                                                                ${complaintDTO.projectDTO.ucDesigner}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                            <ul class="list-unstyled">
                                                <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="project.level"/>:</span>
                                                        <a href="javascript:void(0);" id="projectLevel" data-name="projectDTO.projectLevel" data-select-search="true">
		                                                    <s:if test="complaintDTO.projectDTO.projectLevel != null">
		                                                        <s:text name="issue.projectLevel.%{complaintDTO.projectDTO.projectLevel}" />
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                                <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="project.chip.type"/>:</span>
                                                        <a href="javascript:void(0);" id="icModel" data-name="projectDTO.icModel" data-select-search="true">
                                                            <s:if test="complaintDTO.projectDTO.icModel != null">
                                                                ${complaintDTO.projectDTO.icModel}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                                  <li>
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="project.productionProcedure"/>:</span>
                                                        <a href="javascript:void(0);" id="productionProcedure" data-name="projectDTO.productionProcedure" data-select-search="true">
	                                                        <s:if test="complaintDTO.projectDTO.productionProcedure != null">
                                                                ${complaintDTO.projectDTO.productionProcedure}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                                  <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="project.productionEquipment"/>:</span>
                                                        <a href="javascript:void(0);" id="productionEquipment" data-name="projectDTO.productionEquipment" data-select-search="true">
		                                                    <s:if test="complaintDTO.projectDTO.productionEquipment != null">
                                                                ${complaintDTO.projectDTO.productionEquipment}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                                  <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="project.app.developer"/>:</span>
                                                        <a href="javascript:void(0);" id="appDeveloper" data-name="projectDTO.appDeveloper" data-select-search="true">
		                                                    <s:if test="complaintDTO.projectDTO.appDeveloper != null">
                                                                ${complaintDTO.projectDTO.appDeveloper}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                                  <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="project.tester"/>:</span>
                                                        <a href="javascript:void(0);" id="tester" data-name="projectDTO.tester" data-select-search="true">
		                                                    <s:if test="complaintDTO.projectDTO.tester != null">
                                                                ${complaintDTO.projectDTO.tester}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>


                                    <div class="row" id="systemProject">
                                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                            <ul class="list-unstyled" style="margin-left: 9px;">
                                                <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"> <s:text name="project.name"/>:</span>
                                                        <a href="javascript:void(0);" id="projectName" data-name="projectName" data-select-search="true">
		                                                    <s:if test="complaintDTO.projectName != null">
                                                                ${complaintDTO.projectName}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                                  <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"> <s:text name="project.code"/>:</span>
                                                        <a href="javascript:void(0);" id="code" data-name="projectDTO.code" data-select-search="true">
		                                                    <s:if test="complaintDTO.projectDTO.code != null">
                                                                ${complaintDTO.projectDTO.code}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                                <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"> <s:text name="issue.system.name"/>:</span>
                                                        <a href="javascript:void(0);" id="productionName" data-name="projectDTO.productionName" data-select-search="true">
		                                                    <s:if test="complaintDTO.projectDTO.productionName != null">
                                                                ${complaintDTO.projectDTO.productionName}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                            <ul class="list-unstyled">
                                                <li>
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="project.manager"/>:</span>
                                                        <a href="javascript:void(0);" id="projectManager" data-name="projectDTO.projectManager" data-select-search="true">
		                                                    <s:if test="complaintDTO.projectDTO.projectManager != null">
                                                                ${complaintDTO.realNameOfProjectManager} [ ${complaintDTO.projectDTO.projectManager} ]
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                                <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="issue.product.owner"/>:</span>
                                                        <a href="javascript:void(0);" id="productionManager" data-name="projectDTO.productionManager" data-select-search="true">
		                                                    <s:if test="complaintDTO.projectDTO.productionManager != null">
                                                                ${complaintDTO.projectDTO.productionManager}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                     <div class="row" id="whiteboxProject">
                                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                            <ul class="list-unstyled" style="margin-left: 9px;">
                                                <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"> <s:text name="project.name"/>:</span>
                                                        <a href="javascript:void(0);" id="projectName" data-name="projectName" data-select-search="true">
		                                                    <s:if test="complaintDTO.projectName != null">
                                                                ${complaintDTO.projectName}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                                  <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"> <s:text name="project.code"/>:</span>
                                                        <a href="javascript:void(0);" id="code" data-name="projectDTO.code" data-select-search="true">
		                                                    <s:if test="complaintDTO.projectDTO.code != null">
                                                                ${complaintDTO.projectDTO.code}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                            <ul class="list-unstyled">
                                                <li>
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="project.manager"/>:</span>
                                                        <a href="javascript:void(0);" id="projectManager" data-name="projectDTO.projectManager" data-select-search="true">
		                                                    <s:if test="complaintDTO.projectDTO.projectManager != null">
		                                                		${complaintDTO.projectDTO.projectManager}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                                <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="project.type"/>:</span>
                                                       <a href="javascript:void(0);" id="wbProjectType" data-name="projectDTO.projectType" data-select-search="true">
		                                                    <s:if test="complaintDTO.projectDTO.projectType != null">
                                                                <s:text name="issue.projectType.%{complaintDTO.projectDTO.projectType}" />
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
		                                                </a>
                                                    </p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                     <div class="row" id="outsiteTestProject">
                                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                            <ul class="list-unstyled" style="margin-left: 9px;">
                                                <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="project.name"/>:</span>
                                                        <a href="javascript:void(0);" id="projectName" data-name="projectName" data-select-search="true">
                                                            <s:if test="complaintDTO.projectName != null">
                                                                ${complaintDTO.projectName}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
                                                        </a>
                                                    </p>
                                                </li>
                                                <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"> <s:text name="project.type"/>:</span>
                                                        <a href="javascript:void(0);" id="cardProjectType" data-name="projectDTO.projectType" data-select-search="true">
                                                            <s:if test="complaintDTO.projectDTO.projectType != null">
                                                                <s:text name="issue.projectType.%{complaintDTO.projectDTO.projectType}" />
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
                                                        </a>
                                                    </p>
                                                </li>
                                                  <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"> <s:text name="project.code"/>:</span>
                                                        <a href="javascript:void(0);" id="code" data-name="projectDTO.code" data-select-search="true">
                                                            <s:if test="complaintDTO.projectDTO.code != null">
                                                                ${complaintDTO.projectDTO.code}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
                                                        </a>
                                                    </p>
                                                </li>
                                                <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="project.requirementCode"/>:</span>
                                                        <a href="javascript:void(0);" id="requirementCode" data-name="projectDTO.requirementCode" data-select-search="true">
                                                            <s:if test="complaintDTO.projectDTO.requirementCode != null">
                                                                ${complaintDTO.projectDTO.requirementCode}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
                                                        </a>
                                                    </p>
                                                </li>
                                                <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="outside.productionCode"/>:</span>
                                                        <a href="javascript:void(0);" id="productionCode" data-name="projectDTO.productionCode" data-select-search="true">
                                                            <s:if test="complaintDTO.projectDTO.productionCode != null">
                                                                ${complaintDTO.projectDTO.productionCode}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
                                                        </a>
                                                    </p>
                                                </li>
                                                 <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="project.app.developer"/>:</span>
                                                        <a href="javascript:void(0);" id="appDeveloper" data-name="projectDTO.appDeveloper" data-select-search="true">
                                                            <s:if test="complaintDTO.projectDTO.appDeveloper != null">
                                                                ${complaintDTO.projectDTO.appDeveloper}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
                                                        </a>
                                                    </p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                            <ul class="list-unstyled">
                                                <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="outside.requirementName"/>:</span>
                                                        <a href="javascript:void(0);" id="requirementName" data-name="projectDTO.requirementName" data-select-search="true">
                                                            <s:if test="complaintDTO.projectDTO.requirementName != null">
                                                                ${complaintDTO.projectDTO.requirementName}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
                                                        </a>
                                                    </p>
                                                </li>
                                                <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="outside.industryType"/>:</span>
                                                        <a href="javascript:void(0);" id="industryType" data-name="projectDTO.industryType" data-select-search="true">
                                                            <s:if test="complaintDTO.projectDTO.industryType != null">
                                                                <s:text name="outside.industryType.%{complaintDTO.projectDTO.industryType}" />
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
                                                        </a>
                                                    </p>
                                                </li>
                                                 <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="outside.requirementManager"/>:</span>
                                                        <a href="javascript:void(0);" id="requirementManager" data-name="projectDTO.requirementManager" data-select-search="true">
                                                            <s:if test="complaintDTO.projectDTO.requirementManager != null">
                                                                ${complaintDTO.projectDTO.requirementManager}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
                                                        </a>
                                                    </p>
                                                </li>
                                                <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="project.chip.type"/>:</span>
                                                        <a href="javascript:void(0);" id="icModel" data-name="projectDTO.icModel" data-select-search="true">
                                                            <s:if test="complaintDTO.projectDTO.icModel != null">
                                                                ${complaintDTO.projectDTO.icModel}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
                                                        </a>
                                                    </p>
                                                </li>
                                                 <li >
                                                    <p class="text-muted">
                                                        <span class="details-label"><s:text name="project.cos.developer"/>:</span>
                                                        <a href="javascript:void(0);" id="cosDeveloper" data-name="projectDTO.cosDeveloper" data-select-search="true">
                                                            <s:if test="complaintDTO.projectDTO.cosDeveloper != null">
                                                                ${complaintDTO.projectDTO.cosDeveloper}
                                                            </s:if>
                                                            <s:else>
                                                                -----
                                                            </s:else>
                                                        </a>
                                                    </p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                            </div>
                            <!--end row-->

                            <!--row-->
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                                    <span class="timeline-seperator">
                                        <span><s:text name="complaint.faultSummary"/></span>
                                        <div class="btn-group pull-right">
                                            <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">
                                                <span class="caret single"></span>
                                            </a>
                                        </div>
                                    </span>
 									<div class="pull-right" style="margin: 10px -20px;">
                                        <a class="btn btn-default btn-sm btn-edit-complaint-summary" href="javascript:void(0);"><i class="fa fa-edit"></i> <s:text name="global.edit"/></a>
                                    </div>
                                    <div id="complaint-summary" style="padding: 10px 0; margin: 61px 2px 0 0;">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <ul class="list-unstyled">
                                                <li >
                                                    <div class="summernoteSummary break-all">${complaintDTO.faultSummary}</div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="btn-summary" style="margin-right: 15px; display: none;">
                                        <div class="pull-right">
                                            <a id="btnSaveSummary" class="btn btn-primary">
                                                <i class="fa fa-save"></i> 保存
                                            </a>
                                            <a id="btnCancelSummary" class="btn btn-default"><s:text name="global.cancel"/></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--end row-->

                            <!--row-->
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                                    <span class="timeline-seperator">
                                        <span><s:text name="complaint.faultDescption"/></span>

                                        <div class="btn-group pull-right">
                                            <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">
                                                <span class="caret single"></span>
                                            </a>
                                        </div>
                                    </span>

									<div class="pull-right" style="margin: 10px -20px;">
                                        <a class="btn btn-default btn-sm btn-edit-complaint-desc" href="javascript:void(0);"><i class="fa fa-edit"></i> <s:text name="global.edit"/></a>
                                    </div>

                                    <div id="complaint-description" style="padding: 10px 0; margin: 61px 2px 0 0;">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <ul class="list-unstyled">
                                                <li >
                                                    <div class="summernoteDesc break-all">${complaintDTO.faultDescption}</div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="btn-desc" style="margin-right: 15px; display: none;">
                                        <div class="pull-right">
                                            <a id="btnSaveDesc" class="btn btn-primary">
                                                <i class="fa fa-save"></i> 保存
                                            </a>
                                            <a id="btnCancelDesc" class="btn btn-default"><s:text name="global.cancel"/></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--end row-->

                            <!--row-->
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                                    <span class="timeline-seperator">
                                        <span><s:text name="complaint.causeAnalysis"/></span>

                                        <div class="btn-group pull-right">
                                            <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">
                                                <span class="caret single"></span>
                                            </a>
                                        </div>
                                    </span>
									<div class="pull-right" style="margin: 10px -20px;">
                                           <a class="btn btn-default btn-sm btn-edit-complaint-analysis" href="javascript:void(0);"><i class="fa fa-edit"></i> <s:text name="global.edit"/></a>
                                    </div>
                                    <div id="complaint-analysis" style="padding: 10px 0; margin: 61px 2px 0 0;">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <ul class="list-unstyled">
                                                <li >
                                                    <div class="summernoteAnalysis break-all">${complaintDTO.causeAnalysis}</div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="btn-analysis" style="margin-right: 15px; display: none;">
                                        <div class="pull-right">
                                            <a id="btnSaveAnalysis" class="btn btn-primary">
                                                <i class="fa fa-save"></i> 保存
                                            </a>
                                            <a id="btnCancelAnalysis" class="btn btn-default"><s:text name="global.cancel"/></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--end row-->

                            <!--row-->
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
                                    <span class="timeline-seperator">
                                        <span><s:text name="complaint.disposeScheme"/></span>

                                        <div class="btn-group pull-right">
                                            <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">
                                                <span class="caret single"></span>
                                            </a>
                                        </div>
                                    </span>
									<div class="pull-right" style="margin: 10px -20px;">
                                           <a class="btn btn-default btn-sm btn-edit-complaint-scheme" href="javascript:void(0);"><i class="fa fa-edit"></i> <s:text name="global.edit"/></a>
                                    </div>
                                    <div id="complaint-scheme" style="padding: 10px 0; margin: 61px 2px 0 0;">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                             <ul class="list-unstyled">
                                                   <li >
                                                       <div class="summernoteScheme break-all">${complaintDTO.disposeScheme}</div>
                                                   </li>
                                               </ul>
                                        </div>
                                    </div>
                                    <div class="btn-scheme" style="margin-right: 15px; display: none;">
                                        <div class="pull-right">
                                            <a id="btnSaveScheme" class="btn btn-primary">
                                                <i class="fa fa-save"></i> 保存
                                            </a>
                                            <a id="btnCancelScheme" class="btn btn-default"><s:text name="global.cancel"/></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--end row-->
                        </div>
                        <!--left zone-->

                        <!--right zone-->
                        <div class="col-xs-12 col-sm-12 col-md-5 col-lg-5 ">
                                <span class="timeline-seperator">
                                  <span><s:text name="issue.date"/></span>
                                   <div class="btn-group pull-right">
                                       <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:;">
                                           <span class="caret single"></span>
                                       </a>
                                   </div>
                                </span>
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <ul class="list-unstyled">
                                         <li>
                                            <p class="text-muted">
                                               <span class="details-label"><s:text name="issue.create.date"/><s:text name="punctuation.colon"/></span>
                                               <s:date name="complaintDTO.createTime" format="%{getText('struts.datetime.format')}"/>
                                            </p>
                                        </li>
                                         <li>
                                            <p class="text-muted">
                                               <span class="details-label"><s:text name="issue.update.date"/><s:text name="punctuation.colon"/></span>
                                               <s:date name="complaintDTO.lastUpdateTime" format="%{getText('struts.datetime.format')}"/>
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                                <span class="timeline-seperator">
                                  <span>人员</span>
                                   <div class="btn-group pull-right">
                                       <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:;">
                                           <span class="caret single"></span>
                                       </a>
                                   </div>
                                </span>
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <ul class="list-unstyled">
                                         <li>
                                            <p class="text-muted">
                                               <span class="details-label"><s:text name="issue.committer"/><s:text name="punctuation.colon"/></span>
                                               <s:if test="complaintDTO.creator != null">
                                                   ${complaintDTO.realNameOfCreator } [ ${complaintDTO.creator } ]
                                               </s:if>
                                               <s:else>
                                                   ---
                                               </s:else>
                                            </p>
                                        </li>
                                         <li>
                                            <p class="text-muted">
                                               <span class="details-label"><s:text name="issue.updater"/><s:text name="punctuation.colon"/></span>
                                               <s:if test="complaintDTO.lastUpdater != null">
                                                   ${complaintDTO.realNameOfUpdater } [ ${complaintDTO.lastUpdater } ]
                                               </s:if>
                                               <s:else>
                                                   ---
                                               </s:else>
                                            </p>
                                        </li>
                                    </ul>
                                </div>
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
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="margin-top:15px;">
                                            <table id="fileAttachements" class="table table-hover table-noborder">
                                                <tbody>
                                                    <s:iterator value="complaintDTO.attachementsDTO">
                                                        <tr>
                                                            <td><a href="fileAttachementDownload.jspa?fileAttachementId=${top.fileAttachementId }">${top.fileName }</a></td>
                                                            <td width="100">${top.fileSize } B</td>
                                                            <td width="160"><s:date name="top.createTime"  format="yyyy年M月d日 hh:mm"/></td>
                                                            <td width="20"><a href="javascript:void(0);" class='deletefile' data-filepath='${top.filePath }' data-fileattachementid="${top.fileAttachementId }" data-attachmentname="${top.fileName}"><i class="fa fa-trash-o"></i></a></td>
                                                        </tr>
                                                    </s:iterator>
                                                    <tr>
                                                        <td colspan="4">
                                                            <div class="smart-form" style="width: 100%">
                                                                <div class="hidden" id="imageError"><label style="font-size:10px; color:#DE1F00;"></label></div>
                                                                <label class="input input-file" for="file">
                                                                    <div class="button">
                                                                        <input id="file-upload" type="file" name="upload">Browse
                                                                    </div>
                                                                        <input type="text" id="fileName" readonly="" placeholder="<s:text name="issue.chose.attachment"/>">
                                                                </label>
                                                                <div class="note"><s:text name="issue.attachment.note"/></div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
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
<input type="hidden" value="${complaintDTO.projectDTO.type}" id="projectType">
<input type="hidden" value="${complaintDTO.id}" id="complaintId">
<!-- end row -->

<jsp:include page="/pages/footer.jsp" />
<script src="<s:url value="/js/resetheight.js"/>"></script>
</body>

<script type="text/javascript">

    // DO NOT REMOVE : GLOBAL FUNCTIONS!
   pageSetUp();

    progressbar();
    function progressbar() {
        loadScript('<s:url value="/js/plugin/bootstrap-progressbar/bootstrap-progressbar.js"/>', editable);
    }
    function editable() {
        loadScript('<s:url value="/js/plugin/x-editable/x-editable.min.js"/>', startUser);
    }
    function startUser() {
   	    loadScript("<s:url value='/js/core/complaint/complaint_edit.js'/>", summernote);
    }
    function summernote(){
	    loadScript('<s:url value="/js/plugin/summernote/summernote.js"/>', init);
    }
    function init(){
        loadScript('<s:url value="/js/lang/summernote-zh-CN.js" />');
	    initTable();
	    initSelect2Component();
	    complaintEdit._initDelete();
   	    complaintEdit._summernoteStart();
    }

	var dataSource ={};
	var callbacks ={};

	
	
    function initSummernote(container){
        container.summernote(Eipd.namespace("config").summernote);
	}

    var projectType = $('#projectType').val();
    if(projectType=='card'){
	    $('#cardProject').show();
	    $('#systemProject').hide();
	    $('#whiteboxProject').hide();
	    $('#outsiteTestProject').hide();
    }else if(projectType =='system'){
	    $('#cardProject').hide();
	    $('#systemProject').show();
	    $('#whiteboxProject').hide();
	    $('#outsiteTestProject').hide();
    }else if(projectType=='whitebox'){
	    $('#cardProject').hide();
	    $('#systemProject').hide();
	    $('#whiteboxProject').show();
	    $('#outsiteTestProject').hide();
	} else if(projectType=='outsiteTest'){
        $('#outsiteTestProject').show();
		$('#cardProject').hide();
        $('#systemProject').hide();
        $('#whiteboxProject').hide();

    }

	function initTable(){
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
        $.fn.editable.defaults.url = $.url_root + "/complaint/updateComplaint.jspa";
        $.fn.editable.defaults.mode = 'inline';
        $.fn.editableContainer.defaults.onblur = "submit"; //submit the value when click outside the container
        $.fn.editable.defaults.emptytext = "---"; // set to '-' when no content
        $.fn.editable.defaults.emptyclass = "edit-default";  //default: text-muted
        $.fn.editable.defaults.unsavedclass = "text-danger";

        dataSource = {
            isSolved: {
                "true": "已解决",
                "false": "未解决"
            }
        };
	}
    function initEditable($container, data) {
        var select2Setting = {
            source: data,
            select2: {
                width: 200
            },
            params: function(params) {
                var prefix = "complaintDTO.", customParams = {};
                //如果是分配者的话，则需要传入流程id和接收者名称
                customParams[prefix + "id"] = params.pk;
                customParams[prefix + params.name] = params.value;
                return customParams;
            }
        };
		$container.editable(select2Setting);
    };

    function initSelect2Component() {
        //init the xeditable plugin
        $("a[data-type='select2'],[data-type='text']:not([single])").each(function(i, $obj) {  //如果不想被这个方法处理为ediatble元素，可以为<a> 添加一个single属性
            var tempStorage = [];
            if(dataSource[$(this).data("name")] === undefined) {
                $(this).editable({
                	disabled: false,
                    params: function(params) {
                        var prefix = "complaintDTO.", customParams = {};
                        customParams[prefix + "id"] = params.pk;
                        customParams[prefix + params.name] = params.value;
                        return customParams;
                    }
                });
            }else {
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
            loadScript('<s:url value="/js/plugin/jquery-file/jquery.fileupload-validate.js" />', initFileOperation);
        }
        function initFileOperation() {
            loadScript("<s:url value='/js/core/complaint/complaint_edit.js'/>", fileOperation);
        }
    }
    function fileOperation(){
    	complaintEdit._initFileUploadAndDelete();
    }
</script>
</html>

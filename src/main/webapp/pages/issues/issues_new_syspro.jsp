<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
    /*.ad-container table {*/
        /*background-color: #FFFFFF;*/
    /*}*/
    /*.table-noborder, .table-noborder >tbody > tr, .table-noborder >tbody > tr > td {*/
        /*border-top: 0px solid #ddd;*/
    /*}*/
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

</style>
</head>
<body>
    <jsp:include page="/pages/top.jsp"></jsp:include>
    <!-- Left panel : Navigation area -->
    <!-- Note: This width of the aside area can be adjusted through LESS variables -->
  <jsp:include page="/pages/leftnav.jsp"></jsp:include>
  <div id="main" role="main">
    <div id="ribbon">
            <!-- breadcrumb -->
            <ol class="breadcrumb">
                <li><a href="<s:url value="/dashboard_syspro.jspa"/>">系统产品首页</a></li>
                <li><a href="<s:url value="/issue/issues_list_syspro.jspa"/>">缺陷列表</a></li>
                <li>创建缺陷</li>
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

        <div id="content">
        <!-- row -->
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="alert alert-block alert-info">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 text-right tile">
                                <ul class="pull-right">
                                    <li>
                                        <a href="javascript:void(0);" id="issueTypeSystemPro" class="jarvismetro-tile  bg-color-green issueType selected">
                                            <span class="iconbox">
                                                <i class="fa fa-2x "><s:text name="issue.system"/></i>
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- row -->
            <form id="create-issue-form" action='<s:url value="/issue/createSystemIssue.jspa" />' method="post">
                <input id="updateFlag" type="hidden" name="issueDTO.isCreated"> <%-- 默认创建--%>
                <input id="pid" type="hidden" name="issueDTO.projectId">
                <input id="labels" type="hidden" name="issueDTO.beanString">
                <input id="labelUrl" type="hidden" value="<s:url value="/issue/findDefaultLabelsForSystem.jspa"/>">
                <input id="draftFlag" type="hidden" name="issueDTO.isSavedToDraft" value="false">
                <input id="proId" type="hidden" name="issueDTO.proId">
                <div class="row issueBody issueBodySystemPro">
                    <article class="col-sm-12 col-md-12 col-lg-12 sortable-grid ui-sortable">
                        <!-- Widget ID (each widget will need unique ID)-->
                        <div class="jarviswidget well" id="wid-id-3" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-togglebutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false" data-widget-custombutton="false" data-widget-sortable="false">
                            <header>
                                <!--<span class="widget-icon"> <i class="fa fa-comments"></i> </span>-->
                                <!--<h2>Default Tabs with border </h2>-->
                            </header>
                            <!-- widget div-->
                            <div>
                                <!-- widget edit box -->
                                <div class="jarviswidget-editbox">
                                    <!-- This area used as dropdown edit box -->
                                </div>
                                <!-- end widget edit box -->
                                <div class="banner"></div><%-- 需要一个容纳提示语的div.banner --%>
                                <!-- widget content -->
                                <div class="widget-body widget-hide-overflow">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
                                            <span class="font-md text-primary" ><s:text name="issue.system"/></span>
                                        </div>
                                    </div>
                                    <hr class="simple">
                                    <!-- <form action="" id="checkout-form" class="" novalidate="novalidate"> -->
                                        <!--row-->
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 tile">
                                                <%-- 需要一个div.changed-form容器来包装需要验证的字段 --%>
                                                  <div class="row">
                                                      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                          <div class="form-group">
                                                            <label><s:text name="project.name"/>&nbsp;<span style="color: red;">*</span></label>
                                                              <div>
                                                                  <input id="projectSelector" class="required-validation" name="issueDTO.systemProjectDTO.name" style="width: 100%" type="hidden" data-key="name">
                                                              </div>
                                                              <div class="note"><s:text name="project.tips"/></div>
                                                          </div>
                                                    </div>
                                                  </div>
                                                  <div class="row">
                                                      <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                                          <div class="form-group changed-form">
                                                              <label class="control-label"><s:text name="project.code"/></label>
                                                               <div>
                                                                  <input name="issueDTO.systemProjectDTO.code" class="form-control required-validation pInfo" type="text" placeholder="<s:text name="project.code"/>" data-key="code"/>
                                                              </div>
                                                          </div>
                                                      </div>
                                                      <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                                          <div class="form-group">
                                                              <label class="control-label"> <s:text name="project.manager"/></label>
                                                              <div>
                                                                    <input class="projMan pInfo" style="width: 100%;" type="hidden" name="issueDTO.systemProjectDTO.projectManager" data-placeholder="<s:text name="project.manager"/>" data-key="projectManager">
                                                              </div>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="row">
                                                      <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                                          <div class="form-group">
                                                                <label class="control-label"><s:text name="issue.system.name"/> </label>
                                                                <div>
                                                                  <input class="proName required-validation" style="width: 100%;" class="form-control pInfo required-validation" name="pdName" type="text" placeholder="<s:text name="issue.system.name"/>" data-key="productionName" />
                                                                </div>
                                                          </div>
                                                      </div>
                                                      <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                                            <div class="form-group">
                                                                <label class="control-label"><s:text name="issue.product.owner"/></label>
                                                                <div>
                                                                    <input class="prodManShow form-control" type="text" value="" disabled>
                                                                    <input class="prodMan form-control" type="hidden" value="" disabled>
                                                                </div>
                                                            </div>
                                                      </div>
                                                  </div>
                                                  <div class="row">
                                                      <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                                            <div class="form-group">
                                                                <label class="control-label"><s:text name="issue.product.code"/></label>
                                                                <div>
                                                                    <input class="prodCode form-control" type="text" value="" disabled>
                                                                </div>
                                                            </div>
                                                      </div>
                                                  </div>
                                                  <div class="row">
							                          <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
							                            <div class="form-group approved-container">
							                              <label><s:text name="global.isapproved"/></label>
                                                          <input id="isApprovedSelector" class="searchRemoved" name="issueDTO.isApproved" style="width: 100%">
							                            </div>
							                          </div>
							                          <div class="col col-xs-6 col-sm-6 col-md-6 col-lg-6 hidden" id="fixedUser_div">
							                              <label><s:text name="issue.fixedUser"/>&nbsp;<span style="color: red;">*</span></label>
							                              <input id="fixedUserSelector" name="issueDTO.fixedUser" style="width: 100%" type="hidden" data-placeholder="<s:text name="issue.fixedUser"/>">
							                          </div>
							                     </div>
                                                  <div class="row">
                                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                          <div class="form-group">
                                                            <label><s:text name="issue.summary"/>&nbsp;<span style="color: red;">*</span></label>
                                                            <div class="input-icon-right">
                                                                <div>
                                                                  <input type="text" name="issueDTO.summary" class="form-control required-validation">
                                                                </div>
                                                               <div class="note"><s:text name="issue.summary.note"/></div>
                                                            </div>
                                                          </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                          <div class="form-group">
                                                            <label><s:text name="issue.module"/></label>
                                                            <div class="input-icon-right">
                                                                <div>
                                                                  <input type="text" name="issueDTO.module" class="form-control required-validation">
                                                                </div>
                                                            </div>
                                                          </div>
                                                        </div>
                                                    </div>
                                                     <div class="row">
                                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                            <div class="form-group">
                                                                <label class=" control-label"><s:text name="issue.test.environment"/></label>
                                                                <div>
                                                                    <textarea name="issueDTO.environment" class="form-control required-validation" rows="3" style="resize: none;"></textarea>
                                                                </div>
                                                                <div class="note"><s:text name="issue.test.environment.note"/></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                   <div class="row">
                                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                          <div class="form-group">
                                                            <label class=" control-label"> <s:text name="issue.position"/></label>
                                                            <div>
                                                                <textarea class="form-control" rows="3" name="issueDTO.position"
                                                                  style="resize: none;"></textarea>
                                                            </div>
                                                            <div class="note"><s:text name="issue.position.note"/></div>
                                                          </div>
                                                        </div>
                                                  </div>
                                                  <div class="row">
                                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                          <div class="form-group">
                                                            <label class=" control-label"> <s:text name="issue.description"/></label>
                                                            <div>
                                                                <textarea name="issueDTO.description" class="summernote"></textarea>
                                                            </div>
                                                            <div class="note"><s:text name="issue.description.note"/></div>
                                                          </div>
                                                        </div>
                                                     </div>
                                                    <div class="row">
                                                      <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                                            <div class="form-group">
                                                                 <label class=" control-label"><s:text name="issue.priority"/></label>
                                                                 <select name="issueDTO.priority" style="width: 100%" class="select2 searchRemoved">
                                                                      <option value="CRITICAL"><s:text name="issue.priority.CRITICAL"/></option>
                                                                      <option value="MAJOR"><s:text name="issue.priority.MAJOR"/></option>
                                                                      <option value="MINOR"><s:text name="issue.priority.MINOR"/></option>
                                                                      <option value="TRIVIAL" selected><s:text name="issue.priority.TRIVIAL"/></option>
                                                                 </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                                            <div class="form-group">
                                                                <label class=" control-label"><s:text name="issue.level"/></label>
                                                                 <select style="width:100%" class="select2 searchRemoved" name="issueDTO.severity">
                                                                    <option value="DEADLY"><s:text name="issue.level.DEADLY"/></option>
                                                                    <option value="SERIOUS"><s:text name="issue.level.SERIOUS"/></option>
                                                                    <option value="COMMON" selected><s:text name="issue.level.COMMON"/></option>
                                                                    <option value="SLIGHT"><s:text name="issue.level.SLIGHT"/></option>
                                                                  </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                                          <div class="form-group">
                                                            <div class="form-group">
                                                              <label class="control-label"><s:text name="issue.affectedVersion"/></label>
                                                              <div>
                                                                  <input type="text" name="issueDTO.affectedVersion" class="form-control required-validation">
                                                              </div>
                                                            </div>
                                                          </div>
                                                        </div>
                                                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                                          <div class="form-group">
                                                            <label class=" control-label"><s:text name="issue.fixedVersion"/></label>
                                                            <div>
                                                                <input type="text" name="issueDTO.fixedVersion" class="form-control required-validation" />
                                                            </div>
                                                          </div>
                                                        </div>
                                                      </div>
                                                      <div class="row">
                                                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                                          <div class="form-group">
                                                            <label class=" control-label"> <s:text name="issue.timeOriginalEstimate"/> </label>
                                                            <div class="input-icon-right">
                                                              <input type="text" name="issueDTO.timeOriginalEstimate"
                                                                class="form-control" /> <i class="fa  fa-clock-o"></i>
                                                            </div>
                                                            <div class="note"><s:text name="issue.timeOriginalEstimate.note"/></div>
                                                          </div>
                                                        </div>
                                                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                                          <div class="form-group">
                                                            <label class=" control-label"><s:text name="issue.timeEstimate"/></label>
                                                            <div class="input-icon-right">
                                                              <input type="text" name="issueDTO.timeEstimate"
                                                                class="form-control" /> <i class="fa fa-clock-o"></i>
                                                            </div>
                                                            <div class="note"><s:text name="issue.timeEstimate.note"/></div>
                                                          </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                                            <div class="form-group">
                                                                <label class=" control-label"> <s:text name="issue.globalApprover"/></label>
                                                                <input class="pInfo rs" id="receiverSelector" name="issueDTO.globalApprover" style="width: 100%" type="hidden" data-placeholder="审核负责人">
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                                            <div class="form-group">
                                                                <label class="control-label"> <s:text name="issue.fix.deadline"/></label>
                                                                <div class="input-group">
                                                                    <input type="text" name="issueDTO.dueDate" class="form-control datepicker" data-date-format="yyyy-mm-dd" placeholder="修复期限">
                                                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                            <div class="form-group">
                                                                <label class="control-label">指定关注者</label>
                                                                <div class="input-icon-right">
                                                                    <input class="watcher" type="hidden" style="width: 100%"; name="issueDTO.watchers" data-placeholder="指定关注者">
                                                                    <i class="fa fa-eye"></i>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                                <div>
                                                    <h3><s:text name="issue.labelgroup.description" /></h3>
                                                </div>
                                                <div class="chat-body no-padding profile-message mh hs">
                                                    <table id="pageTags" class="table table-hover table-noborder">
                                                        <tbody class="labelGroupsHolder"></tbody>
                                                    </table>
                                                </div>
                                                <div>
                                                    <h3><s:text name="issue.attachment"/></h3>
                                                    <hr>
                                                </div>
                                                    <div class="row">
                                                        <div class="smart-form col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                            <div class="hidden" id="imageError"><label style="font-size:10px; color:#DE1F00;"></label></div>
                                                            <label class="input input-file" for="file">
                                                                <div class="button">
                                                                    <input id="file-upload" type="file"  name="upload">
                                                                    <s:text name="global.upload" />
                                                                </div>
                                                                <input type="text" readonly="" placeholder="<s:text name="issue.chose.attachment"/>">
                                                            </label>
                                                            <div class="note">
                                                                <s:text name="issue.attachment.note"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                <br>
                                                <div class="chat-body no-padding profile-message">
                                                    <table id="fileAttachements" class="table table-hover table-noborder">
                                                        <tbody>
                                                        </tbody>
                                                    </table>
                                                    <div id="fileAttachements_tmp" style="display: none"></div>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                <hr>
                                                <div class="pull-right form-action-bar">
                                                    <a id="btn-draft" title="保存缺陷为草拟状态，在编辑页面提交" href="javascript:void(0);" class="btn btn-primary" data-save="true"><i class="fa fa-save"></i>&nbsp;<s:text name="global.save"/></a>&nbsp;&nbsp;
                                                    <a id="btn-save" title="提交该缺陷" href="javascript:void(0);" class="btn btn-primary"><i class="glyphicon glyphicon-floppy-saved"></i>&nbsp;<s:text name="global.save.commit"/></a>&nbsp;&nbsp;
                                                    <a title="取消提交" href="<s:url value="/issue/issues_list_syspro.jspa"/>" class="btn btn-default"><i class="fa fa-ban"></i>&nbsp;<s:text name="global.cancel"/></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!--end row-->
                                    <!-- </form> -->
                                    <!-- SEARCH CONTAINER -->
                                    <div id="ad-container-SystemPro" class="ad-container hidden-xs">
                                        <a id="chat-list-open-close-SystemPro" class="chat-list-open-close" href="javascript:;" tabindex="0" data-toggle="popover"><i class="fa fa-tag txt-color-blue"></i></a>
                                        <div id="chat-list-body-SystemPro" class="chat-list-body custom-scroll">
                                            <div class=" no-padding profile-message">
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                    <br>
                                                    <h4> 为缺陷设定标签</h4>
                                                    <br>
                                                    <table id="tagTable" class="table table-hover table-noborder"></table>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="chat-list-footer">
                                            <div class="pull-right">
                                                <a href="javascript:void(0);"  class="btn btn-primary btn-add-label-in-page"><i class="fa fa-save"></i>&nbsp;<s:text name="global.confirm"/></a>&nbsp;&nbsp;
                                                <a href="javascript:void(0);" class="btn btn-default btn-close-lable btn-close-drawer"><i class="fa fa-ban"></i>&nbsp;<s:text name="global.cancel"/></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end widget content -->
                            </div>
                            <!-- end widget div -->
                        </div>
                        <!-- end widget -->
                    </article>
                </div>
            </form>
            <!-- end row -->
        </div>
    </div>
    <input id="typeIndicator" type="hidden" value="system">
    <jsp:include page="/pages/footer.jsp" />
</body>
<script src="<s:url value="/js/resetheight.js"/>"></script>
<script type="text/javascript">
// DO NOT REMOVE : GLOBAL FUNCTIONS!
pageSetUp();
// PAGE RELATED SCRIPTS
loadScript('<s:url value="/js/plugin/bootstrap-wizard/jquery.bootstrap.wizard.min.js" />', runBootstrapWizard);
function runBootstrapWizard() {
    $('#bootstrap-wizard-1').bootstrapWizard({
        'tabClass': 'form-wizard',
        'onNext': function (tab, navigation, index) {
            var $valid = $("#wizard-1").valid();
            if (!$valid) {
                $validator.focusInvalid();
                return false;
            } else {
                $('#bootstrap-wizard-1').find('.form-wizard').children('li').eq(index - 1).addClass(
                        'complete');
                $('#bootstrap-wizard-1').find('.form-wizard').children('li').eq(index - 1).find('.step')
                        .html('<i class="fa fa-check"></i>');
            }
        }
    });
}
/*
 * Load fuelux wizard dependency
 */
loadScript('<s:url value="/js/plugin/fuelux/wizard/wizard.js" />', fueluxWizard);
function fueluxWizard() {
    var wizard = $('.wizard').wizard();
    wizard.on('finished', function (e, data) {
        //$("#fuelux-wizard").submit();
        $.smallBox({
            title: "Congratulations! Your form was submitted",
            content: "<i class='fa fa-clock-o'></i> <i>1 seconds ago...</i>",
            color: "#5F895F",
            iconSmall: "fa fa-check bounce animated",
            timeout: 4000
        });
    });
}
// PAGE RELATED SCRIPTS
loadScript('<s:url value="/js/plugin/dropzone/dropzone.min.js" />', startDropzone);
function startDropzone () {
    Dropzone.autoDiscover = false;
    $("#mydropzone").dropzone({
        //url: "/file/post",
        addRemoveLinks : true,
        maxFilesize: 0.5,
        dictResponseError: 'Error uploading file!'
    });
}
    /*
     * SUMMERNOTE EDITOR
     */
    loadScript('<s:url value="/js/plugin/summernote/summernote.js" />', summernoteStart);
    function summernoteStart() {
        loadScript('<s:url value="/js/lang/summernote-zh-CN.js" />', function() {
            $('.summernote').summernote($.extend(Eipd.namespace("config").summernote, {
                onkeyup: function(e) {
                    saveNotes();
                    // validateSummernote();
                }
            }));
        });
    }
    
    function saveNotes() {
        $(".summernote").val($(".summernote").code());
    }
    
    function validateSummernote() {
        $('.summernote').valid();
    }
    
$('#chooseLable-SystemPro, #cancleChooseLable-SystemPro').click(function (e) {
    $('#ad-container-SystemPro').toggleClass('open');
    e.preventDefault();
});
$('#myonoffswitch').click(function (e) {
    var $btn_add_project = $("#project_add_content");
    $btn_add_project.slideToggle(function(){
        if($btn_add_project.is(':visible')){
            $('#myonoffswitch').attr('checked',true);
        }else
        {
            $('#myonoffswitch').attr('checked',false);
        }
    });
});

$('#file-upload').change(function(e){
    $(this).parent().next().val($(this).val());
    e.preventDefault();
});

$('a.issueType').click(function(){
    if($(this).hasClass('selected')) {
        return;
    }
    // 切换被点击元素的CSS
    $.each($('a.issueType'), function(k,v){
        $(v).removeClass('selected');
    });
    $(this).addClass('selected');
    // 切换不同类型对应的表单字段
    $.each($('div.issueBody'), function(k,v){
        $(v).toggleClass('hidden',true);
    });
    var id = $(this).attr('id').replace('issueType','');
    $('.issueBody'+id).removeClass('hidden');
});

$(document).ready(function() {
    loadScript('<s:url value="/js/plugin/form/form.bar.js" />', function(){
        $.formbar();
    });
    
    common.initSelectLange("zh_CN");  

    $("#projectSelector").select2({
        allowClear: true,
        placeholder: "请选择或者输入一个项目名称",
        maximumInputLength: 200,

        createSearchChoice: function(term, data) { //if not found, then add
            return {
                id : term,
                text : term
            };
        },

        query: function(options) { //search
            var realParams = {
                pageSize: 5,  //默认每次显示5条记录
                pageNum: options.page,
                "projectQueryCondition.type" : "system",
                "projectQueryCondition.name" : options.term
            };

            $.ajax({
                url : $.url_root + "/project/displayProjects.jspa",
                dataType : "json",
                type: "POST",
                data: realParams,

                success : function(data) {
                    checkResult(data, {
                        showBox: false,
                        callback: function() {
                            options.callback(data.json);
                        }
                    });
                }
            });
        },
        
        formatInputTooLong: function (input, max) {
            var n = input.length - max;
            return "项目名称过长，至多允许200个字符，" + "请删掉" + n + "个字符";
        },

        formatResult: function(object, container, query) {
        	var projectManager = object.projectManager == undefined ? "<br /> 项目经理：" : "<br />" + "项目经理：" + object.projectManager;
            var html = "项目名称：" + object.text;
            html += (object.code ? "<br />" + "项目编码：" + object.code : "");
            html += projectManager;
            return html;
        }
        }).on('select2-selected', function(e) { //fire when selected the option
            var pid = e.choice.pid,
                prefix = "issueDTO.systemProjectDTO.";

            $("#pid").val("");

            clearProjectInfo();

            if (pid) {
                $("#pid").val(pid);

                $.ajax({
                    "url" : $.url_root + "/project/findSystemProject.jspa",
                    "data" : {
                        "pid" : pid
                    },
                    "async": false,
                    "dataType" : "json",

                    success : function(data) {
                        if(data.success) {
                            data = data.systemProjectDTO;

                            validator.validate(data);  //验证指定数据是否被改变
                            for (var key in data) {
                                if(data.hasOwnProperty(key)) {
                                    var $input = $(".pInfo[name='" + prefix + key + "']:not('.skiped')");
                                    if ($input.length) {
                                        if ($input.is(":hidden")) {
                                            $input.select2("val", data[key]);
                                        } else {
                                            if (key === "code") {
                                                $input.val("_null_1_1_1_a_s_c_i_i"); // @HACK
                                                $("#create-issue-form").valid();
                                                $input.val(data[key]);
                                                continue;
                                            }
                                            $input.val(data[key]);
                                        }
                                    }
                                }
                            }
                        }
                    }
                });
                if ($("#isApprovedSelector").select2("val") === "true") {
	                var prodMger = $(".prodMan").val(),
	                    proMger = $(".pInfo[data-key='projectManager']").select2("val");
	                if (prodMger) {
	                    $("#receiverSelector").select2("val", prodMger);
	                } else {
	                    if (proMger) {
	                        $("#receiverSelector").select2("val", proMger);
	                    }
	                }
                }
            } else {
                clearProjectInfo();
                validator.validate(); //    reset the validation
            }

            createProjectFlag();

            $(".proName").removeClass("required-validation");
            $("#create-issue-form").valid();
        }).on('select2-clearing', function(e) {
            $(".changed-form").find("input.changed").val(""); //清空所有文本框
            validator.cleanValidation();
        }).on("select2-removed", function(e) {
            clearProjectInfo();
            removeProjectFlag();
            $(".proName").addClass("required-validation");
        });

        // 关注者
        $(".watcher").select2({
            multiple: true,
            ajax: {
                url: $.url_root + "/user/getToUsers.jspa",
                dataType: 'json',
                quietMillis: 300,
                type: "POST",

                data: function(term, page) {
                    return {
                        "userQueryConditionDTO.name": term,
                        "userQueryConditionDTO.realName": term,
                        pageNum: (page - 1 ) * 5 + 1,
                        pageLen: 5
                    };
                },

                results: function(resp, page) {
                    return resp.json;
                }
            },

            formatResult: function(object, container, query) {
                var realName = object.text || "未填写";
                return "登录名：" + object.extraInfos.ln + "<br> 用户名：" + realName;
            },
            formatSelection : function(object, container){
                var realName = object.text == undefined ? "" : object.text;
                var html = " " + realName;
                html += (object.extraInfos.ln ?  " [ " + object.extraInfos.ln + " ]" : "");
                return html;
            },

            dropdownCssClass: "bigdrop",

            escapeMarkup: function(m) { return m; }
        });

    var clearProjectInfo = function() {
        $.each($(".pInfo"), function(i, v) {
            var $that = $(this);
            if ($that.is(":hidden")) {
            	if ($that.hasClass("rs")) {
            		$that.select2("val", $(".prodMan").val());
            	} else {
                    $that.select2("val", "");
                }
            } else {
                $that.val("");
            }
        });
    };


    var datas = (function($) {
        var results = [];

        $.ajax({
            url: $.url_root + "/user/findUsersByManagerRole.jspa",
            dataType: 'json',
            type: "POST",
            async: false,

            success: function(data) {
                checkResult(data, {
                        showBox: false,
                        callback: function() {
                            results = data.json.results;
                        }
                    }
                );
            }
        });

        return results;
    }(jQuery));

    /*初始化产品经理和项目负责人*/
    $(".projMan").each(function(i, v) {
        $(this).select2({
            allowClear: true,
            data: datas,

            formatResult: function(object, container, query) {
                var realName = object.realName == undefined ? "<br /> 用户名：" : "<br />" + "用户名：" + object.realName;
                var html = "登录名：" + object.text;
                html += realName;
                return html;
            },

            formatSelection : function(object, container) {
            	 var realName = object.realName == undefined ? "" : object.realName;
                 var html = " " + realName;
                 html += (object.id ?  " [ " + object.id + " ]" : "");
                 return html;
            }
        }).on("select2-selected", function(e) {
            var prodMger = $.trim($(".prodMan").val()),
                proMger = $.trim($(".projMan").select2("val"));
                if ($("#isApprovedSelector").select2("val") !== itemsMap.no_audit) {
                    if (prodMger) {
                        $("#receiverSelector").select2("val", prodMger);
                    } else {
                        if (proMger) {
                            $("#receiverSelector").select2("val", proMger);
                        }
                    }
                }
        }).on("select2-removed", function(e) {
            if ($("#isApprovedSelector").select2("val") !== itemsMap.no_audit) {
                $("#receiverSelector").select2("val", "");
            }else
             {
            	 var val = $(".prodMan").val();
                 if (val) {
                     $("#receiverSelector").select2("val", val);
                 }
             }
           
        });
    });

    $("#receiverSelector").select2({
        allowClear: true,

        data: datas,

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

        dropdownCssClass: "bigdrop", // apply css that makes the dropdown taller
        escapeMarkup: function (m) { return m; } // we do not want to escape markup since we are displaying html in results

    }).on('select2-selected', function(e) {
        $("#create-issue-form").valid();
    });

    var createProjectFlag = function() {
        removeProjectFlag();
        $("<input>", {
            type: "hidden",
            name: "issueDTO.hasProject",
            value: true,
            id: "hasProject"
        }).appendTo($("#create-issue-form"));
    };

    var removeProjectFlag = function() {
        $("#hasProject").remove();
    };

    // 加载产品名称，必须要跟在receiverSelector实例化后面
    (function($, preUrl) {
        $(".proName").select2({
            allowClear: true,

            query: function(options) {
                $.ajax({
                    url: preUrl + "/production/finProsSNP.jspa",
                    dataType: "json",
                    type: "POST",
                    data: {
                        kw: options.term,
                        ps: 4,
                        pn: options.page
                    },
                    quietMillis: 300,

                    success: function(data) {
                        checkResult(data, {
                            showBox: false,
                            callback: function() {
                                options.callback(data.json);
                            }
                        });
                    }
                });
            },

            dropdownCssClass: "bigdrop", // apply css that makes the dropdown taller
            escapeMarkup: function (m) { return m; } // we do not want to escape markup since we are displaying html in results
        }).on("select2-selected", function(e) {
            $(".prodMan").val(e.choice.extraInfos.pm);
            
            var realName = e.choice.extraInfos.pmRealName == undefined ? "" : e.choice.extraInfos.pmRealName;
            var html = " " + realName;
            html += (e.choice.extraInfos.pm ?  " [ " + e.choice.extraInfos.pm + " ]" : "");
            $(".prodManShow").val(html);
            
            $(".prodCode").val(e.choice.extraInfos.code);
            
            if ($("#isApprovedSelector").select2("val") === "true") {
            	 $("#receiverSelector").select2("val", e.choice.extraInfos.pm);
            }
            
           
            $("#proId").val(e.val);
            $("#projectSelector").removeClass("required-validation");
            $("#create-issue-form").valid();
        }).on("select2-removed", function(e) {
            $(".prodMan").val("");
            $(".prodManShow").val("");
            $(".prodCode").val("");
            $("#proId").val("");
            $("#receiverSelector").select2("val", "");
            var val = $(".projMan").select2("val");
            if (val) {
                $("#receiverSelector").select2("val", val);
            }
            $("#projectSelector").addClass("required-validation");
        });
    }(jQuery, $.url_root));

    //load the fixedUser select2 handler

    $("#fixedUserSelector").select2({
        placeholder: "Please select one",
        allowClear: true,
        ajax: {
            url: $.url_root + "/user/findUsersByDevelopRole.jspa",
            dataType: 'json',
            quietMillis: 300,

            data: function (term, page) {
                return {
                    "userQueryConditionDTO.name": term,
                    "userQueryConditionDTO.realName": term,
                    iDisplayStart: (page-1)*10,
                    iDisplayLength: 10
                };
            },

            results: function (data, page) {
                return {
                    results: data.json.results,
                    more: (page * 10) < data.totalRecords
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

        dropdownCssClass: "bigdrop", // apply css that makes the dropdown taller
        escapeMarkup: function (m) { return m; } // we do not want to escape markup since we are displaying html in results

    }).on('select2-selected', function(e) {
        $("#create-issue-form").valid();
    });

    var itemsMap = {
        audit: "true",
        no_audit: "false"
    };

    (function(itemsMap) {
        $.ajax({
            url: $.url_root + "/issue/loadItems.jspa",
            dataType: 'json',
            type: "POST",
            async: false,
            data: {
                searchKey: $("#typeIndicator").val()
            },

            success: function(result) {
                checkResult(result, {
                    showBox: false,

                    callback: function() {
                        var data = result.items,
                            len = data.length,
                            dataSource = [],
                            i;

                        for (i = 0; i < len; i++) {
                            dataSource.push({id: itemsMap[data[i]], text: i18nRes.issue.auditItem[data[i]]});
                        }

                        $("#isApprovedSelector").select2({
                            data: dataSource
                        }).on('select2-selected', function(e) { //fire when selected the option
                            var isApproved = e.choice.id;
                            if (isApproved === itemsMap.no_audit) {
                                $("#fixedUser_div").removeClass("hidden");
                                $("#fixedUserSelector").addClass("required-validation");
                                $("#receiverSelector").select2("val", "");
                            } else {
                                $("#fixedUser_div").addClass("hidden");
                                $("#fixedUserSelector").select2("val", "");
                                $("#fixedUserSelector").removeClass();
                                
                                var prodMger = $(".prodMan").val(),
                                proMger = $(".pInfo[data-key='projectManager']").select2("val");
	                            if (prodMger) {
	                                $("#receiverSelector").select2("val", prodMger);
	                            } else {
	                                if (proMger) {
	                                    $("#receiverSelector").select2("val", proMger);
	                                }
	                            }
                            }
                        });

                        $(".searchRemoved .select2-search").remove();

                        if (dataSource[0]) {
                            var curSelected = dataSource[0].id;
                            $("#isApprovedSelector").select2("val", curSelected);

                            if (curSelected === itemsMap.no_audit) {
                                $("#fixedUser_div").removeClass("hidden");
                                $("#fixedUserSelector").addClass("required-validation");
                                $("#receiverSelector").select2("val", "");
                            }else
                            {
                                var prodMger = $(".prodMan").val(),
                                proMger = $(".pInfo[data-key='projectManager']").select2("val");
                                if (prodMger) {
                                    $("#receiverSelector").select2("val", prodMger);
                                } else {
                                    if (proMger) {
                                        $("#receiverSelector").select2("val", proMger);
                                    }
                                }
                            }
                        }
                    }
                }
                );
            }
        })
    }(itemsMap));

    loadScript('<s:url value="/js/core/issues/issuesValidate.js" />', function() {
        issueValidate.initIssueSysValidate();
    });
});

    loadScript('<s:url value="/js/core/issues/issueCommon.js" />', loadInitIssueScript);

        function loadInitIssueScript() {
            loadScript('<s:url value="/js/core/issues/issueLabel.js" />', function() {
                issueLabel.initialize();
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
                loadScript('<s:url value="/js/plugin/jquery-file/jquery.fileupload-validate.js" />', initFileUpload);
            }
        }
        function initFileUpload()
        {
            $('#file-upload').fileupload({
                url:$.url_root + "/issue/fileAttachementUpload.jspa",
                dataType: 'json',
                autoUpload: true,
                maxFileSize: 10000000,// <1 MB
            }).on('fileuploadprocessalways', function (e, data) {
                if(data.files.error){
                    $('#imageError').find("label").empty();
                    if(data.files[0].error=="File is too large"){
                        $('#imageError').removeClass('hidden').find("label").append("最大上传文件大小为 10.00 MB！");
                    }
                    if(data.files[0].error=="File type not allowed"){
                        $('#imageError').removeClass('hidden').find("label").append("上传文件类型不对！");
                    }
                }
            }).on('fileuploaddone',function (e, data) {
                var file=data.result;
                $('#imageError').addClass('hidden');
                var url =file.url;
                var date = new Date();
                var createTime =date.getFullYear()+"年"+(date.getMonth()+1)+"月"+date.getDate()+"日 " +date.getHours()+":"+date.getMinutes();
                var fileContent ="<tr>"
                    +"<td><a href='"+$.url_root+"/issue/fileAttachementDownload.jspa?filePath="+url+"&fileName="+file.uploadFileName+"'>"+file.uploadFileName+"</a></td>"
                    +"<td width='100'>"+file.size+" B</td>"
                    +"<td width='160'>"+createTime+"</td>"
                    +"<td width='20' ><a class='deletefile' data-filepath='"+url+"' data-filename='"+file.uploadFileName+"' href='javascript:void(0);'><i class='fa fa-trash-o'></i>"
                    +"</a></td>"
                    +"<input type='hidden' name='filePath' value='"+url+"'>"
                    +"<input type='hidden' name='fileName' value='"+file.uploadFileName+"'>"
                    +"<input type='hidden' name='mimeType' value="+file.uploadContentType+">"
                    +"</tr>";
                $('#fileAttachements tbody').prepend(fileContent);
            });
            $('#fileAttachements').on("click", ".deletefile", function(e) {
                var $that = $(this);
                $.ajax({
                    url:$.url_root + "/issue/deleteFileAttachement.jspa",
                    datatype:"json",
                    data:{
	                   "filePath": $(this).data("filepath"), //data-filePath
	                   "fileName": $(this).data("filename")
                	},
	                success :function(result)
	                {
	                    if(result.success) {
		                    $that.closest("tr").remove();
		                    $('#fileName').val("");
	                	}
	                }
                });
            });
        }
    loadScript('<s:url value="/js/validate.cus.js" />', validate);
    function validate() {
        validator.bindEvent();  //绑定validate事件
    }
</script>
</html>

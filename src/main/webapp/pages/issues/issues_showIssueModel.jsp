<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en-us">
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
    
    .custom-scroll {
        height: 200px;
        overflow-y: scroll;
        overflow-x: hidden;
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

    .tile ul li .jarvismetro-tile .iconbox i {
        height: 35px;
    }

    /* jquery validator */
    em.invalid {
        color: red;
        padding-top: -15px;
    }
    div.state-error input.invalid {
        background: none repeat scroll 0 0 #fff0f0;
        border-color: #a90329;
    }

    .btnEditField {
        cursor: pointer;
        color: #3276b1;
    }
    .btnDeleteField {
        cursor: pointer;
        color: #c26565;
    }

    .btnDeleteOption {
        cursor: pointer;
    }
    .btnEditOption {
        cursor: pointer;
        color: #3276b1;
    }
    .btnEditOptionSave {
        cursor: pointer;
        color: #3276b1;
    }
    .btnEditOptionCancel {
        cursor: pointer;
        color: #3276b1;
    }

    .popover {
        min-width: 400px !important;
    }

    tr.trFieldItem td:last-child {
        width: 60px;
    }

    .select2-container .select2-choice .select2-arrow b {
        margin-top: 8px;
    }

    .panel-info .panel-body {
        position: relative;
    }

    .panel-info .panel-body > label.checkbox-inline {
        margin: 0 0 0 10px;
    }

    /*.panel-info .panel-body > span {
        position: absolute;
        margin-left: -5px;
        cursor: pointer;
        color: #a90329 !important;
    }*/

    .panel-info .panel-heading > .close {
        margin-right: -7px!important;
    }

    .panel-info .panel-heading > .edit-group-icon {
        margin-top: 4px!important;
        margin-right: 2px!important;
        cursor: pointer;
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
        padding: 1px 47px 1px 8px;
        position: relative;
        float: left;
        list-style: none outside none;
		}

	.label-block .label-choice-before:before {
        color: #fff;
        content: "\f057"
		}

	.label-block .label-choice-close {
        display: block;
        padding: 3px 4px 3px 6px;
        right: 0;
        top: 0;
        font-family: FontAwesome;
        font-size: 15px;
        font-style: normal;
        font-weight: 400;
        line-height: 1;
        margin: 0;
        min-height: 20px;
        min-width: 21px;
        position: absolute;
        text-decoration: none !important;
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
</style>

<body>

    <jsp:include page="/pages/top.jsp"></jsp:include>
    <!-- Left panel : Navigation area -->
    <!-- Note: This width of the aside area can be adjusted through LESS variables -->
    <jsp:include page="/pages/leftnav.jsp"></jsp:include>
    <!-- END NAVIGATION -->
    <style>
    /* .select2-search {
        z-index: 0!important;
    }

    .select2-results {
        overflow: visible!important;
    }

    .jarviswidget .widget-body.widget-hide-overflow {
        overflow: visible!important;
    } */
    </style>
    <div id="main" role="main">
        <!-- RIBBON -->
        <div id="ribbon">
            <!-- breadcrumb -->
            <ol class="breadcrumb">
                <li>字段设置</li>
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

        <!-- row -->
        <div id="content">
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
                            <!-- <div class="widget-body widget-hide-overflow"> -->
                            <div class="widget-body">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
                                        <span class="font-md text-primary" >字段设置</span>
                                    </div>
                                </div>
                                <hr />
                                <!--任务类别-->
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 tile" >
                                        <ul class="pull-left" id="taskTypeList">
                                            <li>
                                                <a href="javascript:void(0);" id="taskType_platform" class="jarvismetro-tile  bg-color-purple selected taskType">
                                                    <span class="iconbox ">
                                                        <i class="fa fa-2x"><s:text name="issue.card" /></i>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0);" id="taskType_industry" class="jarvismetro-tile  bg-color-green taskType">
                                                    <span class="iconbox">
                                                        <i class="fa fa-2x"><s:text name="issue.system" /></i>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0);" id="taskType_whitebox" class="jarvismetro-tile  bg-color-orange taskType">
                                                    <span class="iconbox">
                                                        <i class="fa fa-2x"><s:text name="issue.whitebox" /></i>
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <!--end 任务类别-->

                                <!--新增组-->
                                <div class="row" style="margin-top: 10px;">
                                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                                        <form id="formAddGroup">
                                            <div class="alert alert-info fade in">
                                              <button class="close" data-dismiss="alert">×</button>
                                              <i class="fa-fw fa fa-info"></i> 
                                              <strong>提示!</strong> 可以通过下面的输入框来创建新的标签。
                                            </div>
                                            <div class="well well-sm text-info">
                                              <div class="row">
                                                <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                                  <input class="labelCategory required-validation" type="hidden" name="issueLabel.labelGroupDTO.labelGroupId" data-placeholder="标签分类" data-url='<s:url value="/issue/findDefaultLabelGroupsForCard.jspa" />' data-initialize="true" data-single="true" data-createSearchChoice="true" data-min-limit="false" data-scope="CARD" data-options='{"param2": "labelGroupDTO.name"}'>
                                                </div>
                                                <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                                                  <input class="labelType" name="labelType" type="hidden" data-placeholder="标签类型" data-src="local" data-single="true" data-select="CHECKBOX">
                                                </div>
                                                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                                  <div class="input-group">
                                                    <input name="issueLabel.name" type="text" class="form-control col-sm-6 labelContent required-validation" placeholder="标签内容">
                                                    <div class="input-group-btn">
                                                      <button class="btn btn-primary btn-create-label" style="height: 32px;" type="button" data-url='<s:url value="/issue/createIssueLabel.jspa" />'>
                                                        <i class="fa fa-check "></i>
                                                      </button>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                                <div class="row" style="margin-top: 10px;">
                                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 group-info"></div>
                                </div>
                            </div>
                            <!-- end widget content -->
                        </div>
                        <!-- end widget div -->
                    </div>
                    <!-- end widget -->
                </article>
            </div>
        </div>
        <!-- end row -->
    </div>
    <jsp:include page="/pages/footer.jsp" />
     <script src="<s:url value="/js/resetheight.js"/>"></script>

</body>

<script type="text/javascript">

    // DO NOT REMOVE : GLOBAL FUNCTIONS!
    pageSetUp();

    loadScript('<s:url value="/js/core/issues/issueCommon.js" />', loadInitIssueScript);

    function loadInitIssueScript() {
      loadScript('<s:url value="/js/core/issues/issueLabel.js" />', function() {
        loadScript('<s:url value="/js/core/issues/createLabel.js" />', function() {
            issueLabel.initialize();
            label.initialize();
        });
      });
    }

</script>
</html>

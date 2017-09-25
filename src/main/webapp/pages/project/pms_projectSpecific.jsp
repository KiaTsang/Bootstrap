<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="zh">
<jsp:include page="/pages/top.jsp"></jsp:include>
<head>
<link href="<s:url value="/css/summernote.css" />" rel="stylesheet" type="text/css" >
<link href="<s:url value="/css/summernote-bs3.css" />" rel="stylesheet" type="text/css" >
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
				<li>项目</li>
				<li>项目详情</li>
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
			        <div class="jarviswidget well" data-widget-colorbutton="false" data-widget-editbutton="false"
			             data-widget-togglebutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false"
			             data-widget-custombutton="false" data-widget-sortable="false">

			        <!-- widget div-->
			        <div>
			        <!-- widget edit box -->
			        <div class="jarviswidget-editbox">
			            <!-- This area used as dropdown edit box -->

			        </div>
			        <!-- end widget edit box -->

			        <!-- widget content -->
			        <div class="widget-body">
			        <hr class="simple">
			        <div class="row">
			            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
			            	<div>
				            	<span class="font-md text-primary issueCode"> ${projectDTO.code }</span>
				            	<!-- <br/> -->
				            	<%-- <span class="font-lg">
									<a href="javascript:void(0);" class="gt0 break-all" id="projectName" data-type="text" data-name="projectDTO.name" data-pk="${projectDTO.projectId }" data-value="${projectDTO.name }" data-original-title="项目" data-max-length="200" data-required="true">
										${projectDTO.name }
									</a>
								</span> --%>
                                <div>
                                    <div class="inline">
                                        <a href="javascript:void(0);" class="gt0 title-link pjTitle break-all font-lg" id="projectName" data-type="text" data-name="projectDTO.name" data-pk="${projectDTO.projectId }" data-value="${projectDTO.name }" data-original-title="项目" data-max-length="200" data-required="true">
                                            ${projectDTO.name }
                                        </a>
                                    </div>
                                </div>
							 </div>
							<hr class="simple">
			                <h4>项目明细</h4>
			                <br>

			                <a href='<s:url value="/issue/issues_new_syspro.jspa" />'>
			                <button class="btn btn-info "><i class="fa fa-plus"></i> 新建缺陷</button></a>
			            </div>
			        </div>
			        <div class="row">
			            <input type="hidden" id="viewProjectId" value="${projectDTO.projectId}" />
			            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
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
	                                        <span class="details-label">项目负责人：</span>
	                                        <a href="javascript:void(0);" id="projectManager" class="specialSelect2" data-type="select2" data-select-search="true" data-name="projectDTO.projectManager" data-pk="${projectDTO.projectId }" data-value="${projectDTO.projectManager }" data-original-title="项目负责人" >
	                                        <s:if test="projectDTO.projectManager != null">
	                                            ${projectDTO.projectManagerDTO.realName } [ ${projectDTO.projectManagerDTO.name } ]
	                                        </s:if>
	                                        <s:else>
	                                            <span name="dependField">---</span>
	                                        </s:else>
	                                        </a>
	                                    </p>
	                                </li>
	                                <li>
                                        <p class="text-muted">
                                        <span class="details-label">状态：</span>
                                        <a href="javascript:void(0);" id="projectStatus" class="specialSelect2" data-type="select2" data-select-search="true" data-name="projectDTO.status" data-pk="${projectDTO.projectId }" data-value="${projectDTO.status }" data-original-title="状态" >
                                        <s:if test="projectDTO.status != null">
                                           ${projectDTO.status }
                                        </s:if>
                                        <s:else>
                                            <span name="dependField">---</span>
                                        </s:else>
                                        </a>
                                    </p>
                                    </li>
                                    <li>
                                        <p class="text-muted">
                                            <span class="details-label">项目成员：</span>
                                            <a href="javascript:void(0);" id="projectMember" class="specialSelect2" data-type="select2" data-select-search="true" data-name="projectDTO.projectMember" data-pk="${projectDTO.projectId }" data-value="${projectDTO.projectMember }" data-original-title="项目成员" >
                                            <s:if test="projectDTO.projectMember != null">
                                                <s:iterator value="projectDTO.projectMemberDTO">
                                                ${realName } [ ${name} ],
                                                </s:iterator>
                                            </s:if>
                                            <s:else>
                                                <span name="dependField">---</span>
                                            </s:else>
                                            </a>
                                        </p>
                                    </li>
                                    <li>
		                               <span class="timeline-seperator">
		                                   <span>描述信息</span>
		                                   <div class="btn-group pull-right">
		                                       <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:;">
		                                           <span class="caret single"></span>
		                                       </a>
		                                   </div>
		                               </span>
		                                <div class="pull-right" style="margin: 10px -20px;">
		                                    <a class="btn btn-default btn-sm btn-edit-project-desc" href="javascript:;"><i class="fa fa-edit"></i> 编辑</a>
		                                </div>
		                                <!-- class="chat-body profile-message" -->
		                                <div id="project-description" style="padding: 10px 0; margin: 61px 22px 0 0;">
		                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		                                        <ul class="list-unstyled">
		                                            <li>
		                                                <div class="summernote break-all">${projectDTO.description }</div>
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
			                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
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
	                                           <s:date name="projectDTO.createTime" format="%{getText('struts.datetime.format')}"/>
	                                        </p>
	                                    </li>
	                                     <li>
	                                        <p class="text-muted">
	                                           <span class="details-label"><s:text name="issue.update.date"/><s:text name="punctuation.colon"/></span>
	                                           <s:date name="projectDTO.lastUpdateTime" format="%{getText('struts.datetime.format')}"/>
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
                                               <s:if test="projectDTO.creator != null">
                                                    ${projectDTO.realNameOfCreator } [ ${projectDTO.creator } ]
                                               </s:if>
                                               <s:else>
                                                   ---
                                               </s:else>
                                            </p>
                                        </li>
                                         <li>
                                            <p class="text-muted">
                                               <span class="details-label"><s:text name="issue.updater"/><s:text name="punctuation.colon"/></span>
                                               <s:if test="projectDTO.lastUpdater != null">
                                                  ${projectDTO.realNameOfUpdater } [ ${projectDTO.lastUpdater } ]
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
                                       <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="javascript:;">
                                           <span class="caret single"></span>
                                       </a>
                                   </div>
                                </span>
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="margin-top:15px;">
                                <div class="smart-form " style="width: 100%">
                                      <div class="hidden" id="imageError"><label style="font-size:10px; color:#DE1F00;"></label></div>
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
                                           <s:iterator value="projectDTO.attachementsDTO">
                                               <tr>
                                                   <td><a href="<s:url action="/project/pmsFileAttachementDownload.jspa">
                                                                    <s:param name="fileAttachementId">${top.fileAttachementId }</s:param>
                                                                </s:url>">${top.fileName }</a>
                                                   </td>
                                                   <td width="100">${top.fileSize } B</td>
                                                   <td width="160"><s:date name="top.createTime"  format="yyyy年M月d日"/></td>
                                                   <td width="20"><a href="javascript:;" class='deletefile' data-filepath='${top.filePath }' data-fileAttachementId="${top.fileAttachementId }" data-attachmentname="${top.fileName}"><i class="fa fa-trash-o"></i></a></td>
                                               </tr>
                                           </s:iterator>
                                       </tbody>
                                   </table>
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
			<!-- end row -->

		</div>
		</div>
		<jsp:include page="/pages/footer.jsp" />
    	<script src="<s:url value="/js/resetheight.js"/>"></script>
		</body>
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
    
    loadScript('<s:url value="/js/core/issues/i18n.js" />', function() {
        loadScript('<s:url value="/js/core/issues/messageBox.js" />', function() {
        });
    });
    
    loadScript('<s:url value="/js/plugin/jquery-file/jquery.fileupload.js" />', loadDataTableScripts);

    function loadDataTableScripts() {

        loadScript('<s:url value="/js/plugin/jquery-file/jquery.iframe-transport.js" />', up_10);

        function up_10() {
            loadScript('<s:url value="/js/plugin/jquery-file/jquery.xdr-transport.js" />', up_20);
        }

        function up_20() {
            loadScript('<s:url value="/js/plugin/jquery-file/jquery.fileupload-process.js" />', up_30);
        }

        function up_30() {
            loadScript('<s:url value="/js/plugin/jquery-file/jquery.fileupload-validate.js" />', initFileUpload);
        }
        
        function initFileUpload() {
        	 loadScript("<s:url value='/js/plugin/x-editable/x-editable.js' />", initPage);
        }
    }
    function initPage(){
        loadScript("<s:url value='/js/core/project/viewPmsProject.js'/>", function() {
        	viewPmsProject.init();
        });
    }
    
    /*
     * SUMMERNOTE EDITOR
     */
    loadScript('<s:url value="/js/plugin/summernote/summernote.js" />', summernoteStart);
    function summernoteStart() {
        loadScript('<s:url value="/js/lang/summernote-zh-CN.js" />');
        var sourceText = "";
        $(".btn-edit-project-desc").on("click", function(e) {
            $(this).addClass("disabled");
            initSummernote($(".summernote"));
            sourceText = $(".summernote").code();
            $(".btn-desc").show();
        });

        $("#btnCancelJournal").on("click", function(e) {
            $(".summernote").code(sourceText);
            $(".summernote").destroy();
            $(".btn-desc").hide();
            $(".btn-edit-project-desc").removeClass("disabled");
        });

        $("#btnSaveJournal").on("click", function(e) {
            var htmlContent = $(".summernote").code();
            saveSummerNote(htmlContent);
            $(".summernote").destroy();
            $(".btn-desc").hide();
            $(".btn-edit-project-desc").removeClass("disabled");
        });

        function initSummernote(container) {
            container.summernote(Eipd.namespace("config").summernote);
        }

        function saveSummerNote(content) {
            $.ajax({
                url: $.url_root+'/project/updatePMSProject.jspa',
                type: "POST",
                dataType: "json",
                data: {
                    "projectDTO.description": content,
                    "projectDTO.projectId": $("#viewProjectId").val()
                },
                success: function(result) {
                    checkResult(result, {
                        showBox: false
                    });
                }
            });
        }
    }
    
    progressbar();
    function progressbar() {
        loadScript("<s:url value='/js/plugin/bootstrap-progressbar/bootstrap-progressbar.js'/>", editable);
    }
    function editable() {
        loadScript("<s:url value='/js/plugin/flot/jquery.flot.cust.js'/>", ft_2);

        function ft_2() {
            loadScript("<s:url value='/js/plugin/flot/jquery.flot.resize.js'/>", ft_3);
        }

        function ft_3() {
            loadScript("<s:url value='/js/plugin/flot/jquery.flot.fillbetween.min.js'/>", ft_4);
        }

        function ft_4() {
            loadScript("<s:url value='/js/plugin/flot/jquery.flot.orderBar.js'/>", ft_5);
        }

        function ft_5() {
            loadScript("<s:url value='/js/plugin/flot/jquery.flot.pie.js'/>", ft_6);
        }

        function ft_6() {
            loadScript("<s:url value='/js/plugin/flot/jquery.flot.tooltip.js'/>", start);
        }
    }
    
    function start() {
        
    }
</script>
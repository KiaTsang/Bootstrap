<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="zh">
<jsp:include page="/pages/top.jsp"></jsp:include>
<head>
<link href="<s:url value="/css/summernote.css" />" rel="stylesheet" type="text/css" >
<link href="<s:url value="/css/summernote-bs3.css" />" rel="stylesheet" type="text/css" >
<style>
.well .form-actions {
	margin-bottom: -13px;
	margin-left: -19px;
	margin-right: -19px;
}

.radio-inline+.radio-inline,.checkbox-inline+.checkbox-inline {
	margin-left: 0px;
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

.simpleSelect {
	width: 160px;
	height: 32px;
	padding: 5px;
}

.simpleInput {
	width: 160px;
	height: 18px;
	padding: 5px;
}
</style>
<style type="text/css">
.timeline-seperator:after {
	border-bottom: 1px dashed rgba(0, 0, 0, 0.1);
	content: " ";
	display: block;
	margin: -8px 15px 10px 0;
}

.timeline-seperator {
	color: #000000;
	font-size: inherit display: block;
	margin: 20px 0 0 8px;
	text-align: left;
	cursor: pointer;
	/*font-weight: bold;*/
}

.timeline-seperator>*:first-child {
	background: none repeat scroll 0 0 #FFFFFF;
	border: 0px dashed rgba(0, 0, 0, 0.1);
	border-radius: 4px;
	font-size: 13px;
	padding: 4px 5px;
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
                <li>投诉</li>
				<li><s:text name="complaint.commit"/></li>
			</ol>
		</div>
		<!-- END RIBBON -->
		<!-- row -->
		<div id="content">
			<!-- row -->
			<form id="create-complaint-form" action='<s:url value="/complaint/createComplaint.jspa" />' method="post">
				<input id="pid" type="hidden" name="complaintDTO.projectId">
				<div class="row">
					<article class="col-sm-12 col-md-12 col-lg-12 sortable-grid ui-sortable">
						<!-- Widget ID (each widget will need unique ID)-->
						<div class="jarviswidget well" id="wid-id-3"
							data-widget-colorbutton="false" data-widget-editbutton="false"
							data-widget-togglebutton="false" data-widget-deletebutton="false"
							data-widget-fullscreenbutton="false"
							data-widget-custombutton="false" data-widget-sortable="false">

							<header> </header>

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
											<span class="font-md text-primary"><s:text name="complaint.message.entering" /></span>
										</div>

										<hr />

										<!-- 投诉基本信息 -->
										<div class="clearfix"></div>
										<span class="timeline-seperator toggleSource" id="toggleOutsideTelecomDesc00"> <span><i class="fa fa-minus-square-o"></i>
											<s:text name="complaint.base.message" /></span>
											<div class="btn-group pull-right">
												<a class="btn btn-default btn-xs" href="javascript:void(0);"> <span class="fa-caret-down"></span></a>
											</div>
										</span>
										<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="outsideTelecomDesc00" style="margin-top: 10px;">
											<div class="row">
												<div class="col-sm-6">
													<div class="form-group">
														<label><s:text name="complaint.complaintCode" /></label> <input type="text" name="complaintDTO.complaintCode" class="form-control required-validation" data-key="code" />
													</div>
												</div>
												<div class="col-sm-6">
													<div class="form-group">
														<label class=" control-label"><s:text name="complaint.isSolved" /></label>
															<select style="width: 100%" name="complaintDTO.isSolved" class="select2">
																<option value="false" selected="selected"><s:text name="complaint.false" /></option>
																<option value="true"><s:text name="complaint.true" /></option>
															</select>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-6">
													<div class="form-group">
														<label><s:text name="complaint.infoProvider" /></label>
														<input type="text" name="complaintDTO.infoProvider" class="form-control required-validation" />
													</div>
												</div>
											</div>
										</div>

										<!-- 项目基本信息 -->
										<div class="clearfix"></div>
										<span class="timeline-seperator toggleSource" id="toggleOutsideTelecomDesc01"> <span><i class="fa fa-minus-square-o"></i> <s:text name="complaint.project.base" /></span>
											<div class="btn-group pull-right">
												<a class="btn btn-default btn-xs " href="javascript:void(0);"> <span class="fa-caret-down"></span></a>
											</div>
										</span>
										<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="outsideTelecomDesc01" style="margin-top: 10px;">
											<div class="row">
												<div class="col-sm-6 tile">
													<div class="form-group">
														<label><s:text name="project.name" />&nbsp;<span style="color: red;">*</span></label>
														<input id="projectSelector" class="required-validation" name="complaintDTO.projectName" style="width: 100%" type="hidden">
													</div>
												</div>
											</div>
											<!-- 卡项目信息 start -->
											<div class="row cardProBody">
												<!-- widget grid -->
												<%-- <section class="col-xs-12 col-sm-12 col-md-12 col-lg-12"> --%>
												<!-- Widget ID (each widget will need unique ID)-->
												<div class="jarviswidget" id="wid-id-1" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
													<!-- widget div-->
													<div>
														<div class="widget-body">
															<fieldset>
																<!--项目信息-->
																<div class="row">
																	<div class="col-sm-6">
																		<div class="form-group changed-form">
																			<label class="control-label"><s:text name="project.code" /></label>
																			<div>
																				<input class="form-control" name="projectDTO.code" type="text" />
																			</div>
																		</div>
																	</div>
																</div>
																<div class="row">
																	<div class="col-sm-6">
																		<div class="form-group">
																			<label><s:text name="project.type" /></label> <input class="form-control" name="projectDTO.projectType" type="text" data-key="type" />
																		</div>
																	</div>
																	<div class="col col-sm-6">
																		<label><s:text name="project.level" /></label>
																		<div>
																			<input id="project-level" class="form-control " name="projectDTO.projectLevel" type="text" data-key="level" />
																		</div>
																	</div>
																	<%--<div class="col-sm-6">
													                    <div class="form-group">
													                      <label><s:text name="project.manager"/></label>
													                       <input  class="form-control" name="projectDTO.projectManager" type="text"  data-key="manager"/>
													                    </div>
			                  										</div> --%>
																</div>
															</fieldset>
															<div id="project_add_content" style="display: none;">
																<fieldset>
																	<div class="row">
																		<div class="col-sm-6">
																			<div class="form-group">
																				<label><s:text name="project.requirementCode" /></label>
																				<input type="text" name="projectDTO.requirementCode" class="form-control" data-mask="(999) 999-9999" />
																			</div>
																		</div>
																		<div class="col col-sm-6">
																			<div class="form-group">
																				<label><s:text name="project.chip.type" /></label>
																				<input type="text" name="projectDTO.icModel" class="form-control" data-mask="(999) 999-9999" />
																			</div>
																		</div>
																	</div>

																	<div class="row">
																		<div class="col-sm-6">
																			<div class="form-group">
																				<label><s:text name="project.cos.version" /></label>
																				<input type="text" name="projectDTO.cosVersion" class="form-control" />
																			</div>
																		</div>
																		<div class="col col-sm-6">
																			<div class="form-group">
																				<label><s:text name="project.productionProcedure" /></label>
																				<input type="text" name="projectDTO.productionProcedure" class="form-control" />
																			</div>
																		</div>
																	</div>

																	<div class="row">
																		<div class="col-sm-6">
																			<div class="form-group">
																				<label><s:text name="project.cos.developer" /></label>
																				<input type="text" name="projectDTO.cosDeveloper" class="form-control" />
																			</div>
																		</div>
																		<div class="col col-sm-6">
																			<div class="form-group">
																				<label><s:text name="project.productionEquipment" /></label>
																				<input type="text" name="projectDTO.productionEquipment" class="form-control" />
																			</div>
																		</div>
																	</div>

																	<div class="row">
																		<div class="col-sm-6">
																			<div class="form-group">
																				<label><s:text name="project.customDeveloper" /></label>
																				<input type="text" name="projectDTO.customDeveloper" class="form-control" />
																			</div>
																		</div>
																		<div class="col col-sm-6">
																			<div class="form-group">
																				<label><s:text name="project.app.developer" /></label>
																				<input type="text" name="projectDTO.appDeveloper" class="form-control" />
																			</div>
																		</div>
																	</div>

																	<div class="row">
																		<div class="col-sm-6">
																			<div class="form-group">
																				<label><s:text name="project.usecase.designer" /></label>
																				<input type="text" name="projectDTO.ucDesigner" class="form-control" />
																			</div>
																		</div>
																		<div class="col col-sm-6">
																			<div class="form-group">
																				<label><s:text name="project.tester" /></label>
																				<input type="text" name="projectDTO.tester" class="form-control" />
																			</div>
																		</div>
																	</div>
																</fieldset>

															</div>
															<!-- end widget content -->
														</div>
														<!-- end widget div -->
													</div>
													<!-- end widget -->
													<%-- </section> --%>
												</div>

												<!-- widget footer -->
												<div class="widget-footer text-right moreMessage" style="margin-right: 13px; margin-left: 7px; margin-bottom: -10px;">
													<span class="onoffswitch-title">
														<i class="fa fa-eye "></i> <s:text name="global.display.all" />
													</span>
													<span class="onoffswitch">
														<input id="myonoffswitch" class="onoffswitch-checkbox" type="checkbox" name="onoffswitch">
														<label class="onoffswitch-label" for="myonoffswitch">
															<span class="onoffswitch-inner" data-swchoff-text="NO" data-swchon-text="YES"></span>
															<span class="onoffswitch-switch"></span>
														</label>
													</span>
												</div>
												<!-- end widget footer -->

												</section>
											</div>
											<!-- 卡项目信息 end -->

											<!-- 系统项目信息 start -->
											<div class="row systemtProBody">
												<section class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
													<!-- Widget ID (each widget will need unique ID)-->
													<div class="jarviswidget" id="wid-id-1" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
														<div>
															<div class="widget-body">
																<fieldset>
																	<!--<legend>-->
																	<!--项目信息-->
																	<!--</legend>-->
																	<div class="row">
																		<div class="col-sm-6">
																			<div class="form-group changed-form">
																				<label class="control-label"><s:text name="project.code" /></label>
																				<div>
																					<input class="form-control" name="projectDTO.code" type="text" />
																				</div>
																			</div>
																		</div>
																		<div class="col col-sm-6">
																			<label><s:text name="project.manager" /></label>
																			<div>
																				<input name="projectDTO.projectManager" class="form-control" type="text" data-key="projectManager" />
																			</div>
																		</div>
																	</div>
																	<div class="row">
																		<div class="col-sm-6">
																			<div class="form-group">
																				<label><s:text name="issue.system.name" /></label>
																				<input name="projectDTO.productionName" class="form-control" type="text" data-key="productionName" />
																			</div>
																		</div>
																		<div class="col-sm-6">
																			<div class="form-group">
																				<label><s:text name="issue.product.owner" /></label>
																				<input name="projectDTO.productionManager" class="form-control" type="text" data-key="productionManager" />
																			</div>
																		</div>
																	</div>
																</fieldset>
																<!-- end widget content -->
															</div>
														</div>
														<!-- end widget div -->
													</div>
											</div>
											<!-- end widget -->
											<!-- 系统项目信息 end -->

											<!-- 白盒项目信息 start -->
											<div class="row whiteboxProBody ">
												<section class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
													<!-- Widget ID (each widget will need unique ID)-->
													<div class="jarviswidget" id="wid-id-1" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
														<!-- widget div-->
														<div>
															<!-- widget edit box -->
															<div class="jarviswidget-editbox">
																<!-- This area used as dropdown edit box -->
															</div>
															<!-- end widget edit box -->
															<!-- widget content -->
															<div class="widget-body">
																<fieldset>
																	<!--<legend>-->
																	<!--项目信息-->
																	<!--</legend>-->
																	<div class="row">
																		<div class="col-sm-6">
																			<div class="form-group changed-form">
																				<label class="control-label"><s:text name="project.code" /></label>
																				<div>
																					<input class="form-control" name="projectDTO.code" type="text" />
																				</div>
																			</div>
																		</div>
																		<div class="col col-sm-6">
																			<label><s:text name="project.manager" /></label>
																			<div>
																				<input name="projectDTO.projectManager" class="form-control" type="text" data-key="manager" />
																			</div>
																		</div>
																	</div>
																	<div class="row">
																		<div class="col-sm-6">
																			<div class="form-group">
																				<label class=" control-label"> <s:text name="project.type" /></label>
																				<input id="projectType" name="projectDTO.projectType" class="form-control" type="text" data-key="projectType" />
																			</div>
																		</div>
																	</div>
																</fieldset>
																<!-- end widget content -->
															</div>
															<!-- end widget div -->
														</div>
														<!-- end widget -->
												</section>
											</div>
											<!-- 白盒项目信息 endt -->
											
											<!--  外场测试项目信息 start -->
                                            <div class="row outsiteTestProBody">
                                                <!-- widget grid -->
                                                <%-- <section class="col-xs-12 col-sm-12 col-md-12 col-lg-12"> --%>
                                                <!-- Widget ID (each widget will need unique ID)-->
                                                <div class="jarviswidget" id="wid-id-1" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false">
                                                    <!-- widget div-->
                                                    <div>
                                                        <div class="widget-body">
                                                            <fieldset>
                                                                <!--项目信息-->
                                                                <div class="row">
                                                                    <div class="col-sm-6">
                                                                        <div class="form-group changed-form">
                                                                            <label class="control-label"><s:text name="project.code" /></label>
                                                                            <div>
                                                                                <input class="form-control" name="projectDTO.code" type="text" />
                                                                            </div>
                                                                        </div>
                                                                     </div>
                                                                     <div class="col col-sm-6">
                                                                            <div class="form-group">
                                                                                <label><s:text name="outside.requirementName" /></label>
                                                                                <input type="text" name="projectDTO.requirementName" class="form-control"/>
                                                                            </div>
                                                                     </div>
                                                                    </div>
				                                                    <div class="row">
					                                                      <div class="col-sm-6">
	                                                                        <div class="form-group">
	                                                                            <label><s:text name="project.type" /></label> <input class="form-control" name="projectDTO.projectType" type="text" data-key="type" />
	                                                                        </div>
	                                                                    </div>
	                                                                    <div class="col col-sm-6">
	                                                                        <label><s:text name="outside.industryType" /></label>
	                                                                        <div>
	                                                                            <input id="industryType" class="form-control " name="projectDTO.industryType" type="text" data-key="industryType"/>
	                                                                        </div>
	                                                                    </div>
                                                                    </div>
                                                                    <div class="row">
	                                                                    <div class="col col-sm-6">
	                                                                            <div class="form-group">
	                                                                                <label><s:text name="project.requirementCode" /></label>
	                                                                                <input type="text" name="projectDTO.requirementCode" class="form-control"/>
	                                                                            </div>
	                                                                     </div>
                                                                       <div class="col col-sm-6">
                                                                            <div class="form-group">
                                                                                <label><s:text name="outside.requirementManager" /></label>
                                                                                <input type="text" name="projectDTO.requirementManager" class="form-control"/>
                                                                            </div>
                                                                     </div>
                                                                    </div>

                                                                    <div class="row">
                                                                        <div class="col-sm-6">
                                                                            <div class="form-group">
                                                                                <label><s:text name="outside.productionCode" /></label>
                                                                                <input type="text" name="projectDTO.productionCode" class="form-control"/>
                                                                            </div>
                                                                        </div>
                                                                         <div class="col col-sm-6">
                                                                            <div class="form-group">
                                                                                <label><s:text name="project.chip.type" /></label>
                                                                                <input type="text" name="projectDTO.icModel" class="form-control" data-mask="(999) 999-9999" />
                                                                            </div>
                                                                         </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-sm-6">
                                                                            <div class="form-group">
                                                                                <label><s:text name="project.app.developer" /></label>
                                                                                <input type="text" name="projectDTO.appDeveloper" class="form-control" />
                                                                            </div>
                                                                        </div>
                                                                        <div class="col col-sm-6">
                                                                            <div class="form-group">
                                                                                <label><s:text name="project.cos.developer" /></label>
                                                                                <input type="text" name="projectDTO.cosDeveloper" class="form-control" />
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </fieldset>

                                                            <!-- end widget content -->
                                                        </div>
                                                        <!-- end widget div -->
                                                    </div>
                                                    <!-- end widget -->
                                                    <%-- </section> --%>
                                                </div>
                                                </section>
                                            </div>
                                            <!-- 外场测试项目信息 end -->
										</div>
										<!-- 故障简称 -->
										<div class="clearfix"></div>
										<span class="timeline-seperator toggleSource" id="toggleOutsideTelecomDesc02">
											<span>
												<i class="fa fa-minus-square-o"></i> <s:text name="complaint.faultSummary" /> </span>
												<div class="btn-group pull-right">
													<a class="btn btn-default btn-xs " href="javascript:void(0);"> <span class="fa-caret-down"></span></a>
												</div>
										</span>
										<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="outsideTelecomDesc02" style="margin-top: 10px;">
											<div class="form-group">
												<textarea name="complaintDTO.faultSummary" class="summernote required-validation" id="faultSummary"></textarea>
											</div>
										</div>

										<!-- 故障描述 -->
										<div class="clearfix"></div>
										<span class="timeline-seperator toggleSource" id="toggleOutsideTelecomDesc03"> <span>
											<i class="fa fa-minus-square-o"></i> <s:text name="complaint.faultDescption" /></span>
											<div class="btn-group pull-right">
												<a class="btn btn-default btn-xs " href="javascript:void(0);"> <span class="fa-caret-down"></span></a>
											</div>
										</span>
										<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="outsideTelecomDesc03" style="margin-top: 10px;">
											<div class="form-group">
												<textarea name="complaintDTO.faultDescption" class="summernote required-validation" id="faultDescption"></textarea>
											</div>
										</div>

										<!-- 原因分析 -->
										<div class="clearfix"></div>
										<span class="timeline-seperator toggleSource" id="toggleOutsideTelecomDesc04"> <span>
											<i class="fa fa-minus-square-o"></i> <s:text name="complaint.causeAnalysis" /></span>
											<div class="btn-group pull-right">
												<a class="btn btn-default btn-xs " href="javascript:void(0);"> <span class="fa-caret-down"></span></a>
											</div>
										</span>
										<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="outsideTelecomDesc04" style="margin-top: 10px;">
											<div class="form-group">
												<textarea name="complaintDTO.causeAnalysis" class="summernote required-validation" id="causeAnalysis"></textarea>
											</div>
										</div>

										<!-- 处理方案 -->
										<div class="clearfix"></div>
										<span class="timeline-seperator toggleSource" id="toggleOutsideTelecomDesc05"> <span>
											<i class="fa fa-minus-square-o"></i> <s:text name="complaint.disposeScheme" /></span>
											<div class="btn-group pull-right">
												<a class="btn btn-default btn-xs " href="javascript:void(0);"> <span class="fa-caret-down"></span></a>
											</div>
										</span>
										<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="outsideTelecomDesc05" style="margin-top: 10px;">
											<div class="row">
												<div class="col-xs-12">
													<div class="form-group">
														<textarea name="complaintDTO.disposeScheme" class="summernote required-validation" id="disposeScheme"></textarea>
													</div>
												</div>
											</div>
										</div>
										<!-- 文件上傳 -->
                                        <div class="clearfix"></div>
                                        <span class="timeline-seperator toggleSource" id="toggleFileUpload"> <span>
                                            <i class="fa fa-minus-square-o"></i> <s:text name="complaint.attachment.uploadfile"/></span>
                                            <div class="btn-group pull-right">
                                                <a class="btn btn-default btn-xs" href="javascript:void(0);"> <span class="fa-caret-down"></span></a>
                                            </div>
                                        </span>
                                        <div class="smart-form col-sm-12" id="fileUpload" style="margin-top: 10px;">
                                            <div class="hidden" id="imageError"><label style="font-size:10px; color:#DE1F00;"></label></div>
                                            <label class="input input-file" for="file">
                                                <div class="button">
                                                    <input id="file-upload" type="file" name="upload"><s:text name="global.upload" />
                                                </div>
                                                <input type="text" id="fileName" readonly="" placeholder="<s:text name="complaint.attachment.choosefile"/>">
                                            </label>
                                            <div class="note"><s:text name="complaint.attachment.maxsize"/></div>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="chat-body no-padding profile-message">
                                                <table id="fileAttachements" class="table table-hover table-noborder">
                                                    <tbody></tbody>
                                                </table>
                                            </div>
                                        </div>
									</div>

									<!--保存-->
									<div class="row">
										<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
											<hr>
											<div class="pull-right form-action-bar">
												<a href="javascript:void(0);" id="btn-save" class="btn btn-primary"><i class="glyphicon glyphicon-floppy-saved"></i>&nbsp;<s:text name="global.create" /></a>&nbsp;&nbsp;
												<a href="javascript:history.go(-1);" class="btn btn-default"><i class="fa fa-ban"></i>&nbsp;<s:text name="global.cancel" /></a>
											</div>
										</div>
									</div>
									<!--end 保存-->
								</div>
								<!-- end widget content -->
							</div>
							<!-- end widget div -->
						</div>
						<!-- end widget -->
					</article>
				</div>
			</form>
		</div>
	</div>
	<!-- end row -->

	<jsp:include page="/pages/footer.jsp" />
	<script src="<s:url value="/js/resetheight.js"/>"></script>
</body>

<script type="text/javascript">
	// DO NOT REMOVE : GLOBAL FUNCTIONS!
	pageSetUp();

	loadScript('<s:url value="/js/plugin/form/form.bar.js" />', function() {
		$.formbar();
	});

	/*
	 * SUMMERNOTE EDITOR
	 */
	loadScript('<s:url value="/js/plugin/summernote/summernote.js" />', summernoteStart);
	function summernoteStart() {
	    loadScript('<s:url value="/js/lang/summernote-zh-CN.js" />', function() {
	        $('.summernote').summernote($.extend(Eipd.namespace("config").summernote, {
	            onkeyup: function(e) {
	                // var $note = $(this).parent().prev();
	                // saveSingleNote($note);
	                // formValidator.element($note);
	            }
	        }));
	    });
	};
	
	function saveSingleNote(jq) {
	    jq.val(jq.code());
	}

	function initEvent(coll, expand) {

		// 折叠按钮
		$('.toggleSource').click(function() {
			var id = $(this).attr('id');
			id = id.replace('toggle', '');
			id = id.substring(0, 1).toLowerCase() + id.substring(1);
			$('#' + id).toggleClass('hidden');

			// 切换指示图标
			var icon = $('span.fa-caret-down, span.fa-caret-left', $(this));
			if (icon.hasClass('fa-caret-down')) {
				icon.removeClass('fa-caret-down').addClass('fa-caret-left');
			} else if (icon.hasClass('fa-caret-left')) {
				icon.removeClass('fa-caret-left').addClass('fa-caret-down');
			}

			icon = $('i.fa-minus-square-o, i.fa-plus-square-o', $(this));
			if (icon.hasClass('fa-minus-square-o')) {
				icon.removeClass('fa-minus-square-o').addClass('fa-plus-square-o');
			} else if (icon.hasClass('fa-plus-square-o')) {
				icon.removeClass('fa-plus-square-o').addClass('fa-minus-square-o');
			}
		});
	}

	initEvent();

	$('#myonoffswitch').click(function(e) {
		var $btn_add_project = $("#project_add_content");
		$btn_add_project.slideToggle(function() {
			if ($btn_add_project.is(':visible')) {
				$('#myonoffswitch').attr('checked', true);
			} else {
				$('#myonoffswitch').attr('checked', false);
			}
		});
	});

	function initTable() {
		$('.cardProBody').show();
		$('.systemtProBody').hide();
		$('.whiteboxProBody').hide();
		$('.outsiteTestProBody').hide();
	}

	initTable();

	$("#projectSelector").select2(
		{
			placeholder : "<s:text name="project.name"/>",
			allowClear : true,
			formatResult : function(object, container, query) {
				var html = i18nRes.complaint.complaintField.projectName + ": " + object.text;
					html += (object.type != undefined ? "<br />" + i18nRes.complaint.complaintField.projectType + ": " + i18nRes.global.projectType[object.type] : "");
				return html;
			},
			query : function(options) { //search
				$.ajax({
					url : $.url_root + "/project/displayAllProjects.jspa",
					dataType : "json",
					type : "POST",
					data : {
						"projectQueryCondition.name" : options.term
					},
					success : function(data) {
						if (data.success) {
							options.callback(data.json);
						} else {
							options.callback({
								results : []
							});
							//添加错误提示
						}

					}
				});
			}
		}).on('select2-selected',
		function(e) { //fire when selected the option
			var pid = e.choice.pid;
			$("#pid").val(pid);
			var type = e.choice.type;
			if (type == 'card') {
				$('.cardProBody').show();
				$('.moreMessage').show();
				$('.systemtProBody').hide();
				$('.whiteboxProBody').hide();
				$('.outsiteTestProBody').hide();

			} else if (type == 'system') {
				$('.cardProBody').hide();
				$('.moreMessage').hide();
				$('.systemtProBody').show();
				$('.whiteboxProBody').hide();
				$('.outsiteTestProBody').hide();
			} else if (type == 'whitebox') {
				$('.cardProBody').hide();
				$('.moreMessage').hide();
				$('.systemtProBody').hide();
				$('.whiteboxProBody').show();
				$('.outsiteTestProBody').hide();
			}else if(type == 'outsiteTest')
		    {
				$('.outsiteTestProBody').show();
                $('.moreMessage').hide();
                $('.systemtProBody').hide();
                $('.whiteboxProBody').hide();
                $('.cardProBody').hide();
				
			}

			var prefix = "projectDTO.";
			if (pid != undefined) {
				$.ajax({
					"url" : $.url_root + "/project/findProjects.jspa",
					"data" : {
						"pid" : pid
					},
					"dataType" : "json",
					success : function(data) {
						if (data.success) {
							data = data.projectDTO;
							validator.validate(data); //验证指定数据是否被改变
							for ( var key in data) {
								var $inps = $('#outsideTelecomDesc01').find("input[type='text']");

								$.each($inps, function(i, o) {
									$(this).attr("disabled","disabled");
								});

								var $input = $("input[type='text'][name='" + prefix + key + "']");

								if ($input.length > 0) {
									$input.val(data[key]);
									if (key == 'projectLevel') {
										$input.val(i18nRes.projectLevel[data[key]]);
									}
									if (key == 'projectType') {
										$input.val(i18nRes.projectType[data[key]]);
									}
									if (key == 'industryType') {
                                        $input.val(i18nRes.industryType[data[key]]);
                                    }
								}
							}
						}
					}
				});
			}
			 $("#create-complaint-form").valid();
		});

	loadScript('<s:url value="/js/validate.cus.js" />', validate);
	function validate() {
		validator.bindEvent(); //绑定validate事件
	}

	function saveNotes() {
		$("#faultDescption").val($("#faultDescption").code());
		$("#causeAnalysis").val($("#causeAnalysis").code());
		$("#disposeScheme").val($("#disposeScheme").code());
		$("#faultSummary").val($("#faultSummary").code());
	}

	var formValidator = $("#create-complaint-form").validate({
		ignore : ":not('.required-validation')", //指定验证时要忽略哪些元素，默认是hidden，支持jQuery的伪类选择器，需要为应用该验证器的元素加上.required-validation
		errorElement : "strong",
		errorClass : "note_error text-danger",
		focusCleanup : true,
		focusInvalid : false,
		rules : {
			"complaintDTO.complaintCode" : {
				customRule : /^[0-9a-zA-Z_]+$/,
				maxlength: 200,
				remote : { //ajax后台验证该code是否唯一
					url : $.url_root + "/complaint/validateCode.jspa",
					dataType : "json",
					type : "POST",
					data : {
						"code" : function() {
							return $('input[data-key="code"]').val();
						},
						"pid" : function() {
							return $("#pid").val();
						}
					}
				}
			},
			"complaintDTO.projectName" : {
				required : true,
			},
			"complaintDTO.infoProvider": {
			    maxlength: 200
			}/* ,
			"complaintDTO.faultSummary": {
			    maxlength: 10000
			},
			"complaintDTO.faultDescption": {
			    maxlength: 10000
			},
			"complaintDTO.causeAnalysis": {
			    maxlength: 10000
			},
			"complaintDTO.disposeScheme": {
                maxlength: 10000
            } */
		},// Messages for form
		messages : {
			"complaintDTO.projectName" : {
				required : i18nRes.complaint.NameValidator
			},
			"complaintDTO.complaintCode" : {
			    remote : i18nRes.complaint.CodeValidator,
			    maxlength: "投诉编号不能超过200个字符"
			},
			"complaintDTO.infoProvider": {
			    maxlength: "信息提供人不能超过200个字符"
			}/* ,
			"complaintDTO.faultSummary": {
			    maxlength: "字段最大允许10000个字符"  
            },
            "complaintDTO.faultDescption": {
                maxlength: "字段最大允许10000个字符"  
            },
            "complaintDTO.causeAnalysis": {
                maxlength: "字段最大允许10000个字符"  
            },
            "complaintDTO.disposeScheme": {
                maxlength: "字段最大允许10000个字符"  
            } */
		},
		highlight : function(element, errorClass) {
			$(element).parent().addClass("has-error");
		},
		unhighlight : function(element, errorClass) {
			$(element).parent().removeClass("has-error");
		},
		submitHandler : function(form) {
			form.submit(); //表单提交
		},// Do not change code below
		invalidHandler : function(event, validator) { //验证不通过时触发
		    // console.log(validator.numberOfInvalids());
			// validator.numberOfInvalids() === 1 && $(validator.invalidElements()[0]).data("key") === "code" && this.submit();
		},
		errorPlacement : function(error, element) {
		    error.appendTo(element.parent());
		}
	});

	$.validator.addMethod("customRule", function(value, element, rule) {
		if (value.length != 0) {
			var r = value.match(rule);
			if (r == null){
				return false;
			}
		}
		return true;
	}, i18nRes.complaint.RuleValidator);

	$('#btn-save').click(function() {
		// 锁定，防止重复提交
        if(!lockItms($('#btn-save').get(0))) {
        	return;
        }
        saveNotes();
		if (!$("#create-complaint-form").valid()) {
			// 解锁
        	unlockItms($('#btn-save').get(0));
			return;
		}
		$("#create-complaint-form").submit();
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
	        loadScript('<s:url value="/js/plugin/jquery-file/jquery.fileupload-validate.js" />', initFileUpload);
	    }
	}

	/*文件上传下载*/
    function initFileUpload()
    {
        $('#file-upload').fileupload({
	        url: $.url_root + "/complaint/fileAttachementUpload.jspa",
	        dataType: 'json',
	        autoUpload: true,
	        maxFileSize: 10000000,// <1 MB
        }).on('fileuploadprocessalways', function (e, data) {

        if(data.files.error){
            $('#imageError').find("label").empty();
            if(data.files[0].error=="File is too large"){
                $('#imageError').removeClass('hidden').find("label").append(i18nRes.tipMessage.max_file_size);
            }
            if(data.files[0].error=="File type not allowed"){
            	$('#imageError').removeClass('hidden').find("label").append(i18nRes.tipMessage.file_type);
            }
        }
        }).on('fileuploaddone',function (e, data) {
	        var file=data.result;
	        $('#imageError').addClass('hidden');
	        var url =file.url;
	        var date = new Date();
	        var createTime =date.getFullYear()+ i18nRes.global.year +(date.getMonth()+1)+ i18nRes.global.month + date.getDate()+ i18nRes.global.day +date.getHours()+":"+date.getMinutes();
	        var fileContent ="<tr>"
                +"<td><a href=" + $.url_root + "/complaint/fileAttachementDownload.jspa?filePath="+url+"&fileName="+file.uploadFileName+">"+file.uploadFileName+"</a></td>"
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
	            url: $.url_root + "/complaint/deleteFileAttachement.jspa",
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
	                }else {
	                //console.log("错误信息");
	                }
	            }
            });
        });
    }
</script>
</html>

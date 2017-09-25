<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="en-us">
<head></head>
<style>
    .inbox-data-from {
        width: 100px !important;
    }
    .inbox-data-from > :first-child {
        width: 100px !important;
    }

    .inbox-data-date {
        width: 160px !important;
    }
</style>
<body>
<!-- HEADER -->
<!-- possible classes: minified, fixed-ribbon, fixed-header, fixed-width-->
<jsp:include page="/pages/top.jsp" />

<!-- Left panel : Navigation area -->
<!-- Note: This width of the aside area can be adjusted through LESS variables -->
<jsp:include page="/pages/leftnav.jsp" />

<div id="main" role="main">

<!-- RIBBON -->
<div id="ribbon">
    <!-- breadcrumb -->
    <ol class="breadcrumb">
        <li>首页</li>
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

<!-- MAIN CONTENT -->
<div id="content">
    <div class="inbox-nav-bar no-content-padding">

        <h1 class="page-title txt-color-blueDark"><i class="fa fa-fw fa-inbox"></i> 消息 &nbsp;
            <div class="btn-group hidden">
                <a href="#" data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle"><span
                        class="caret single"></span></a>
                <ul class="dropdown-menu">
                    <li>
                        <a id="btnDeleteAll" href="javascript:;">全部 删除</a>
                    </li>
                    <li>
                        <a id="btnReadAll" href="javascript:;">全部标记为 已读</a>
                    </li>
                </ul>
            </div>
        </h1>

		<div class="inbox-checkbox-triggered optionMenu2 hidden">
			<div class="btn-group">
                <a id="btnDetailDelete" href="javascript:void(0);" class="btn btn-default">
                <input type="hidden" id="detailDelId" value="">
                   <strong>删除</strong>
                </a>
            </div>
		</div>
        <div class="inbox-checkbox-triggered optionMenu1">

            <div class="btn-group">
                <a href="#" data-toggle="dropdown" class="btn btn-default dropdown-toggle">
                    标记为 <span class="caret single"></span>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a id="btnMarkAsRead" href="javascript:void(0);">
                           <strong>已读</strong>
                        </a>
                    </li>
                    <li>
                        <a id="btnMarkAsUnread" href="javascript:void(0);">
                           <strong>未读</strong>
                        </a>
                    </li>
                </ul>
            </div>

            <div class="btn-group">
                <a id="btnDelete" href="javascript:void(0);" class="btn btn-default">
                   <strong>删除</strong>
                </a>
            </div>

            <div class="btn-group">
                <a id="btnSelectAll" href="javascript:void(0);" class="btn btn-default">
                    <strong>全选</strong>
                </a>
                <a id="btnSelectNone" href="javascript:void(0);" class="btn btn-default">
                    <strong>全不选</strong>
                </a>
                <a id="btnSelectReverse" href="javascript:void(0);" class="btn btn-default">
                    <strong>反选</strong>
                </a>
            </div>
        </div>

        <div class="btn-group pull-right inbox-paging optionMenu1">
            <a id="btnPrev" href="javascript:void(0);" class="btn btn-default btn-sm">
                <strong><i class="fa fa-chevron-left"></i></strong>
            </a>
            <a id="btnNext" href="javascript:void(0);" class="btn btn-default btn-sm">
                <strong><i class="fa fa-chevron-right"></i></strong>
            </a>
        </div>
        <span class="pull-right optionMenu1">
            <strong id="pagingInfo"></strong>
        </span>
    </div>

    <div id="inbox-content" class="inbox-body no-content-padding">
    	<input type="hidden" id="infoMid" value="${messageId}">

        <div class="inbox-side-bar">
            <h6> 目录 <a id="btnRefresh" href="javascript:void(0);" rel="tooltip" title="" data-placement="right" data-original-title="刷新"
                       class="pull-right txt-color-darken"><i class="fa fa-refresh"></i></a></h6>

            <ul class="inbox-menu-lg">
                <li id="btnShowUnread" class="active">
                    <a class="inbox-load" href="javascript:void(0);"> 新收到 (<span class="unreadCount"></span>) </a>
                </li>
                <li id="btnShowRead">
                    <a href="javascript:void(0);">已读</a>
                </li>
                <!-- <li>
                    <a href="javascript:void(0);">垃圾箱</a>
                </li> -->
            </ul>

        </div>

        <div class="table-wrap custom-scroll animated fast fadeInRight">
            <!-- ajax will fill this area -->读取中...
        </div>
    </div>
</div>
</div>
</body>
<jsp:include page="/pages/footer.jsp" />
<script src="<s:url value="/js/resetheight.js"/>"></script>
<script type="text/javascript">
    pageSetUp();

    loadScript("<s:url value='/js/core/notification/inbox.js' />", initPage);

    function initPage() {
        InboxList.init();
    }

</script>
</html>
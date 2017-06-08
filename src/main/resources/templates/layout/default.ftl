<#macro head>
    <#assign layout_head>
        <#nested />
    </#assign>
</#macro>
<#macro script>
    <#assign layout_script>
        <#nested />
    </#assign>
</#macro>

<#assign ctx = rc.contextPath />

<#macro body>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8" />
    <title>中美联泰大都会</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />

    <!-- ================== BEGIN BASE CSS STYLE ================== -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
    <link href="${ctx}/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
    <link href="${ctx}/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${ctx}/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="${ctx}/assets/css/animate.min.css" rel="stylesheet" />
    <link href="${ctx}/assets/css/style.min.css" rel="stylesheet" />
    <link href="${ctx}/assets/css/style-responsive.min.css" rel="stylesheet" />
    <link href="${ctx}/assets/css/theme/default.css" rel="stylesheet" id="theme" />
    <link href="${ctx}/assets/css/metlife.css" rel="stylesheet" />
    <!-- ================== END BASE CSS STYLE ================== -->

    <!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
    ${layout_head}
    <!-- ================== END PAGE LEVEL STYLE ================== -->

    <!-- ================== BEGIN BASE JS ================== -->
    <script src="${ctx}/assets/plugins/pace/pace.min.js"></script>
    <!-- ================== END BASE JS ================== -->

</head>
<body>
<!-- begin #page-loader -->
<div id="page-loader" class="fade in"><span class="spinner"></span></div>
<!-- end #page-loader -->

<!-- begin #page-container -->
<div id="page-container" class="fade page-sidebar-fixed page-header-fixed">
    <!-- begin #header -->
    <div id="header" class="header navbar navbar-default navbar-fixed-top">
        <!-- begin container-fluid -->
        <div class="container-fluid">
            <!-- begin mobile sidebar expand / collapse button -->
            <div class="navbar-header">
                <a href="index.html" class="navbar-brand"><span class="navbar-logo"></span>中美联泰大都会 ECIF</a>
                <button type="button" class="navbar-toggle" data-click="sidebar-toggled">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- end mobile sidebar expand / collapse button -->

            <!-- begin header navigation right -->
            <ul class="nav navbar-nav navbar-right">

                <li class="dropdown">
                    <a href="javascript:;" data-toggle="dropdown" class="dropdown-toggle f-s-14">
                        <i class="fa fa-bell-o"></i>
                        <span class="label">5</span>
                    </a>
                    <ul class="dropdown-menu media-list pull-right animated fadeInDown">
                        <li class="dropdown-header">Notifications (5)</li>
                        <li class="media">
                            <a href="javascript:;">
                                <div class="media-left"><i class="fa fa-bug media-object bg-red"></i></div>
                                <div class="media-body">
                                    <h6 class="media-heading">Server Error Reports</h6>
                                    <div class="text-muted f-s-11">3 minutes ago</div>
                                </div>
                            </a>
                        </li>
                        <li class="media">
                            <a href="javascript:;">
                                <div class="media-left"><img src="${ctx}/assets/img/user-1.jpg" class="media-object" alt="" /></div>
                                <div class="media-body">
                                    <h6 class="media-heading">John Smith</h6>
                                    <p>Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
                                    <div class="text-muted f-s-11">25 minutes ago</div>
                                </div>
                            </a>
                        </li>
                        <li class="media">
                            <a href="javascript:;">
                                <div class="media-left"><img src="${ctx}/assets/img/user-2.jpg" class="media-object" alt="" /></div>
                                <div class="media-body">
                                    <h6 class="media-heading">Olivia</h6>
                                    <p>Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
                                    <div class="text-muted f-s-11">35 minutes ago</div>
                                </div>
                            </a>
                        </li>
                        <li class="media">
                            <a href="javascript:;">
                                <div class="media-left"><i class="fa fa-plus media-object bg-green"></i></div>
                                <div class="media-body">
                                    <h6 class="media-heading"> New User Registered</h6>
                                    <div class="text-muted f-s-11">1 hour ago</div>
                                </div>
                            </a>
                        </li>
                        <li class="media">
                            <a href="javascript:;">
                                <div class="media-left"><i class="fa fa-envelope media-object bg-blue"></i></div>
                                <div class="media-body">
                                    <h6 class="media-heading"> New Email From John</h6>
                                    <div class="text-muted f-s-11">2 hour ago</div>
                                </div>
                            </a>
                        </li>
                        <li class="dropdown-footer text-center">
                            <a href="javascript:;">View more</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown navbar-user">
                    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="${ctx}/assets/img/user-13.jpg" alt="" />
                        <span class="hidden-xs">Rocky</span> <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu animated fadeInLeft">
                        <li class="arrow"></li>
                        <li><a href="javascript:;">个人信息</a></li>
                        <li><a href="javascript:;">日程</a></li>
                        <li><a href="javascript:;">设置</a></li>
                        <li class="divider"></li>
                        <li><a href="javascript:;">登出</a></li>
                    </ul>
                </li>
            </ul>
            <!-- end header navigation right -->
        </div>
        <!-- end container-fluid -->
    </div>
    <!-- end #header -->

    <!-- begin #sidebar -->
    <div id="sidebar" class="sidebar">
        <!-- begin sidebar scrollbar -->
        <div data-scrollbar="true" data-height="100%">
            <!-- begin sidebar user -->
            <ul class="nav">
                <li class="nav-profile">
                    <div class="image">
                        <a href="javascript:;"><img src="${ctx}/assets/img/user-13.jpg" alt="" /></a>
                    </div>
                    <div class="info">
                        Rocky
                        <small>数据管理员</small>
                    </div>
                </li>
            </ul>
            <!-- end sidebar user -->
            <!-- begin sidebar nav -->
            <ul class="nav">
                <li class="nav-header">导航</li>
                <#list menus() as menu>

                    <li class="<#if (menu.childrens?size > 0) >has-sub</#if><#if menu.id = menuId > active</#if>">
                        <a href="javascript:;">
                            <#if (menu.childrens?size > 0) ><b class="caret pull-right"></b></#if>
                            <i class="fa ${menu.icon}"></i>
                            <span>${menu.name}</span>
                        </a>
                    <#if (menu.childrens?size > 0) >
                        <ul class="sub-menu">
                        <#list menu.childrens as submenu>
                            <li class="<#if submenu.id = subMenuId >active</#if>"><a href="${ctx}/${submenu.url!''}">${submenu.name}</a></li>
                        </#list>
                        </ul>
                    </#if>
                    </li>


                </#list>


                <!-- begin sidebar minify button -->
                <li><a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i></a></li>
                <!-- end sidebar minify button -->
            </ul>
            <!-- end sidebar nav -->
        </div>
        <!-- end sidebar scrollbar -->
    </div>
    <div class="sidebar-bg"></div>
    <!-- end #sidebar -->

    <!-- begin #content -->

    <#nested />
    <!-- end #content -->

    <!-- begin scroll to top btn -->
    <a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
    <!-- end scroll to top btn -->
</div>
<!-- end page container -->

<!-- ================== BEGIN BASE JS ================== -->
<script src="${ctx}/assets/plugins/jquery/jquery-1.9.1.min.js"></script>
<script src="${ctx}/assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
<script src="${ctx}/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
<script src="${ctx}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!--[if lt IE 9]>
<script src="${ctx}/assets/crossbrowserjs/html5shiv.js"></script>
<script src="${ctx}/assets/crossbrowserjs/respond.min.js"></script>
<script src="${ctx}/assets/crossbrowserjs/excanvas.min.js"></script>
<![endif]-->
<script src="${ctx}/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="${ctx}/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
<!-- ================== END BASE JS ================== -->
${layout_script}
<!-- ================== END PAGE LEVEL JS ================== -->

</body>
</html>
</#macro>
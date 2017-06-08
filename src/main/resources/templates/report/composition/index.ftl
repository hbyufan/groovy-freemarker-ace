<#include "../../layout/default.ftl" />

<@head>
<link href="${ctx}/assets/plugins/morris/morris.css" rel="stylesheet" />
</@head>

<@script>
<script src="${ctx}/assets/plugins/flot/jquery.flot.min.js"></script>
<script src="${ctx}/assets/plugins/flot/jquery.flot.time.min.js"></script>
<script src="${ctx}/assets/plugins/flot/jquery.flot.resize.min.js"></script>
<script src="${ctx}/assets/plugins/flot/jquery.flot.pie.min.js"></script>
<script src="${ctx}/assets/plugins/flot/jquery.flot.stack.min.js"></script>
<script src="${ctx}/assets/plugins/flot/jquery.flot.crosshair.min.js"></script>
<script src="${ctx}/assets/plugins/flot/jquery.flot.categories.js"></script>
<script src="${ctx}/assets/plugins/morris/raphael.min.js"></script>
<script src="${ctx}/assets/plugins/morris/morris.js"></script>
<script src="${ctx}/assets/js/chart-flot.demo.min.js"></script>
<script src="${ctx}/assets/js/apps.min.js"></script>
<!-- ================== END PAGE LEVEL JS ================== -->

<script>
    $(document).ready(function() {
        App.init();
        Chart.init();
    });
</script>
</@script>

<@body>
<div id="content" class="content">
    <ol class="breadcrumb pull-right">
        <li><a href="javascript:;">首页</a></li>
        <li><a href="javascript:;">报表管理</a></li>
        <li class="active">客户构成</li>
    </ol>

    <h1 class="page-header">客户构成<small>客户构成分析</small></h1>

    <div class="row">

        <!-- begin col-6 -->
        <div class="col-md-12">
            <div class="panel panel-inverse" data-sortable-id="flot-chart-2">
                <div class="panel-heading">
                    <div class="panel-heading-btn">
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">客户构成分析</h4>
                </div>
                <div class="panel-body">
                    <h4 class="text-center">客户构成分析</h4>
                    <div id="interactive-chart" class="height-sm"></div>
                </div>
            </div>
        </div>
        <!-- end col-6 -->
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-inverse" data-sortable-id="table-basic-1">
                <div class="panel-heading">
                    <div class="panel-heading-btn">
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">客户构成分析</h4>
                </div>
                <div class="panel-body">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>渠道</th>
                            <th>客户数</th>
                            <th>新增客户数</th>
                            <th>流失客户数</th>
                            <th>赢回客户数</th>
                            <th>客户流失率</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>个险</td>
                            <td>100</td>
                            <td>12</td>
                            <td>12</td>
                            <td>34</td>
                            <td>19%</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>团险</td>
                            <td>100</td>
                            <td>12</td>
                            <td>34</td>
                            <td>12</td>
                            <td>19%</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>合计</td>
                            <td>100</td>
                            <td>12</td>
                            <td>12</td>
                            <td>34</td>
                            <td>19%</td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

</div>
</@body>
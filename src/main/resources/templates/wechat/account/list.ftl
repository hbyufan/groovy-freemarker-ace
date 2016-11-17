<#include "../../layout/default.ftl" />

<@head>

</@head>

<@body>


<div class="row">
    <div class="col-xs-12">
        <div class="widget-box widget-color-blue2">
            <div class="widget-header">
                <h4 class="widget-title lighter smaller">公众号列表</h4>
            </div>

            <div class="widget-body">
                <div class="widget-main">
                    <div class="row">
                        <div class="col-xs-10">
                    <form class="form-inline">
                        <input type="text" class="col-md-2" placeholder="名称" />

                        <button type="button" class="btn btn-info btn-sm">
                            <i class="ace-icon fa fa-search bigger-110"></i>搜索
                        </button>
                    </form>
                        </div>
                        <div class="col-xs-2 right align-right">
                            <button type="button" class="btn btn-info btn-sm">
                                <i class="ace-icon fa fa-plus bigger-110"></i>添加
                            </button>
                        </div>
                    </div>
                </div>
                <div class="widget-main padding-8">
                    <table id="simple-table" class="table  table-bordered table-hover">
                        <thead>
                        <tr>
                            <th class="center col-md-1">序号</th>
                            <th>名称</th>
                            <th>公众号ID</th>
                            <th>Status</th>
                            <th></th>
                        </tr>
                        </thead>

                        <tbody>
                        <tr>
                            <td class="center align-middle">
                                1
                            </td>

                            <td class="align-middle">
                                <a href="#">测试号</a>
                            </td>
                            <td class="align-middle">wxrewfdare</td>

                            <td class="align-middle">
                                <span class="label label-sm label-warning">Expiring</span>
                            </td>

                            <td>
                                <div class="hidden-sm hidden-xs btn-group">

                                    <button class="btn btn-xs btn-info">
                                        <i class="ace-icon fa fa-pencil bigger-120"></i>
                                    </button>

                                    <button class="btn btn-xs btn-danger">
                                        <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                    </button>

                                </div>

                            </td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>


    </div><!-- /.span -->
</div><!-- /.row -->

</@body>
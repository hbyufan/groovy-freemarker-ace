<#include "../../layout/default.ftl" />

<@head>

</@head>

<@script>
<script src="${ctx}/assets/js/apps.min.js"></script>
<!-- ================== END PAGE LEVEL JS ================== -->

<script>
    $(document).ready(function() {
        App.init();
    });
</script>
</@script>

<@body>
<div id="content" class="content">
    <!-- begin breadcrumb -->
    <ol class="breadcrumb pull-right">
        <li><a href="javascript:;">首页</a></li>
        <li><a href="javascript:;">用户信息</a></li>
        <li class="active">用户画像</li>
    </ol>
    <!-- end breadcrumb -->
    <!-- begin page-header -->
    <h1 class="page-header">用户画像<small style="margin-left: 20px">全方位客户信息</small></h1>
    <!-- end page-header -->
    <!-- begin profile-container -->
    <div class="profile-container">
        <!-- begin profile-section -->
        <div class="profile-section">
            <!-- begin profile-left -->
            <div class="profile-left">
                <!-- begin profile-image -->
                <div class="profile-image">
                    <img src="${ctx}/assets/img/profile-cover.jpg" />
                    <i class="fa fa-user hide"></i>
                </div>
                <!-- end profile-image -->
                <div class="m-b-10">
                    <a href="#" class="btn btn-warning btn-block btn-sm">更改图片</a>
                </div>
                <!-- begin profile-highlight -->
                <div class="profile-highlight">
                    <div class="checkbox m-b-5 m-t-0">
                        <label>信息条目</label>
                    </div>
                    <div class="checkbox m-b-0">
                        <label>信息条目</label>
                    </div>
                </div>
                <!-- end profile-highlight -->
            </div>
            <!-- end profile-left -->
            <!-- begin profile-right -->
            <div class="profile-right">
                <!-- begin profile-info -->
                <div class="profile-info">
                    <!-- begin table -->
                    <div class="table-responsive">
                        <table class="table table-profile">
                            <thead>
                            <tr>
                                <th></th>
                                <th>
                                    <h4>王小姐 <small>尊享客户</small></h4>
                                </th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr class="divider">
                                <td colspan="2"></td>
                            </tr>
                            <tr>
                                <td class="field">手机</td>
                                <td><i class="fa fa-mobile fa-lg m-r-5"></i> (86) 136-6163-4728</td>
                            </tr>
                            <tr>
                                <td class="field">性别</td>
                                <td>
                                    <select class="form-control input-inline input-xs" name="gender">
                                        <option value="male">女</option>
                                        <option value="female">男</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="field">出生日期</td>
                                <td>
                                    <select class="form-control input-inline input-xs" name="day">
                                        <option value="04" selected>04</option>
                                    </select>
                                    -
                                    <select class="form-control input-inline input-xs" name="month">
                                        <option value="11" selected>11</option>
                                    </select>
                                    -
                                    <select class="form-control input-inline input-xs" name="year">
                                        <option value="1989" selected>1989</option>
                                    </select>
                                </td>
                            </tr>
                            <tr class="divider">
                                <td colspan="2"></td>
                            </tr>
                            <tr class="highlight">
                                <td class="field">证件</td>
                                <td>（身份证）430434199909991111</td>
                            </tr>
                            <tr class="divider">
                                <td colspan="2"></td>
                            </tr>
                            <tr>
                                <td class="field">城市</td>
                                <td>
                                    <select class="form-control input-inline input-xs" name="region">
                                        <option value="US" selected>上海</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="field">所属机构</td>
                                <td>无</td>
                            </tr>
                            <tr>
                                <td class="field">所属渠道</td>
                                <td>无</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- end table -->
                </div>
                <!-- end profile-info -->
            </div>
            <!-- end profile-right -->
        </div>
        <!-- end profile-section -->
        <!-- begin profile-section -->
        <div class="profile-section">
            <!-- begin row -->
            <div class="row">
                <!-- begin col-4 -->
                <div class="col-md-4">
                    <h4 class="title">历史沟通记录 <small>56 条记录</small></h4>
                    <!-- begin scrollbar -->
                    <div data-scrollbar="true" data-height="280px" class="bg-silver">
                        <!-- begin chats -->
                        <ul class="chats">
                            <li class="left">
                                <span class="date-time">昨天 11:23pm</span>
                                <a href="javascript:;" class="name">客户</a>
                                <a href="javascript:;" class="image"><img alt="" src="${ctx}/assets/img/user-12.jpg"></a>
                                <div class="message">
                                    沟通记录沟通记录，沟通记录沟通记录，沟通记录沟通记录，沟通记录沟通记录，沟通记录沟通记录，沟通记录沟通记录
                                </div>
                            </li>
                            <li class="right">
                                <span class="date-time">08:12am</span>
                                <a href="#" class="name"><span class="label label-primary">客服</span> 0087</a>
                                <a href="javascript:;" class="image"><img alt="" src="${ctx}/assets/img/user-13.jpg"></a>
                                <div class="message">
                                    沟通回复沟通回复沟通个回复，沟通回复沟通回复沟通个回复，沟通回复沟通回复沟通个回复
                                </div>
                            </li>
                            <li class="left">
                                <span class="date-time">09:20am</span>
                                <a href="#" class="name">客户</a>
                                <a href="javascript:;" class="image"><img alt="" src="${ctx}/assets/img/user-12.jpg"></a>
                                <div class="message">
                                    沟通记录沟通记录，沟通记录沟通记录，沟通记录沟通记录
                                </div>
                            </li>
                            <li class="right">
                                <span class="date-time">11:12am</span>
                                <a href="#" class="name"><span class="label label-primary">客服</span> 1900</a>
                                <a href="javascript:;" class="image"><img alt="" src="${ctx}/assets/img/user-13.jpg"></a>
                                <div class="message">
                                    沟通回复沟通回复沟通个回复，沟通回复
                                </div>
                            </li>
                        </ul>
                        <!-- end chats -->
                    </div>
                    <!-- end scrollbar -->
                </div>
                <!-- end col-4 -->
                <!-- begin col-4 -->
                <div class="col-md-4">
                    <h4 class="title">保单购买记录 <small>4 条</small></h4>
                    <!-- begin scrollbar -->
                    <div data-scrollbar="true" data-height="280px" class="bg-silver">
                        <!-- begin table -->
                        <table class="table table-condensed">
                            <thead>
                            <tr>
                                <th>产品</th>
                                <th>缴费情况</th>
                                <th>状态</th>
                                <th>购买时间</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>

                                <td>
                                    <h5 class="m-t-0 m-b-5">XXXX终身寿险</h5>
                                </td>
                                <td>4000（期交）</td>
                                <td>正常</td>
                                <td>13/02/2017</td>
                            </tr>
                            <tr>

                                <td>
                                    <h5 class="m-t-0 m-b-5">XXXX终身寿险</h5>
                                </td>
                                <td>4000（期交）</td>
                                <td>正常</td>
                                <td>13/02/2017</td>
                            </tr>
                            <tr>

                                <td>
                                    <h5 class="m-t-0 m-b-5">XXXX终身寿险</h5>
                                </td>
                                <td>4000（期交）</td>
                                <td>正常</td>
                                <td>13/02/2017</td>
                            </tr>
                            <tr>

                                <td>
                                    <h5 class="m-t-0 m-b-5">XXXX终身寿险</h5>
                                </td>
                                <td>4000（期交）</td>
                                <td>正常</td>
                                <td>13/02/2017</td>
                            </tr>

                            </tbody>
                        </table>
                        <!-- end table -->
                    </div>
                    <!-- end scrollbar -->
                </div>
                <!-- end col-4 -->
                <!-- begin col-4 -->
                <div class="col-md-4">
                    <h4 class="title">30天内待收保费 <small>1 条</small></h4>
                    <!-- begin scrollbar -->
                    <div data-scrollbar="true" data-height="280px" class="bg-silver">
                        <!-- begin todolist -->
                        <ul class="todolist">
                            <li class="active">
                                <a href="javascript:;" class="todolist-container active" data-click="todolist">
                                    <div class="todolist-input"><i class="fa fa-square-o"></i></div>
                                    <div class="todolist-title">PCL0020100003 保单待交费</div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;" class="todolist-container" data-click="todolist">
                                    <div class="todolist-input"><i class="fa fa-square-o"></i></div>
                                    <div class="todolist-title">PCL0020100003 保单待交费</div>
                                </a>
                            </li>

                        </ul>
                        <!-- end todolist -->
                    </div>
                    <!-- end scrollbar -->
                </div>
                <!-- end col-4 -->
            </div>
            <!-- end row -->
        </div>
        <!-- end profile-section -->
    </div>
    <!-- end profile-container -->
</div>
</@body>
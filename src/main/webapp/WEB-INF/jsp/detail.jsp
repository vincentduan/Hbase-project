<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
<%-- <%@include file="/WEB-INF/jsp/common/head.jsp"%> --%>
<%@include file="/WEB-INF/jsp/common/taglib.jsp"%>
<script type="text/javascript" src="<%=basePath%>resources/js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/js/jquery.bootstrap.newsbox.min.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/bootstrap3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/js/echarts.min.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/js/bootstrap-datetimepicker.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="<%=basePath%>resources/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>

<link rel="stylesheet" style="text/css" href="<%=basePath%>resources/bootstrap3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" style="text/css" href="<%=basePath%>resources/bootstrap3.3.5/css/bootstrap-theme.min.css">
<link rel="stylesheet" style="text/css" href="<%=basePath%>resources/css/default.css">
<link rel="stylesheet" style="text/css" href="<%=basePath%>resources/css/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" style="text/css" href="<%=basePath%>resources/css/normalize.css">
<link rel="stylesheet" style="text/css" href="<%=basePath%>resources/css/site.css">

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<h2> ${person.name } <small><c:if test="${person.threatDegree == '0'}">一般人物</c:if>
					<c:if test="${person.threatDegree == '1'}">主要人物</c:if>
					<c:if test="${person.threatDegree == '2'}">重点任务</c:if>
					<button type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>被监控</button> </small>
				</h2>
				<hr>
					<ul id="myTab" class="nav nav-tabs">
						<li class="active"><a href="javascript:void(0);" tab="person" >码址</a></li>
						<li><a href="javascript:void(0);" tab="track">活动轨迹</a></li>
						<li><a href="javascript:void(0);" tab="mediaCoverage">媒体报道</a></li>
						<li><a href="javascript:void(0);" tab="personrel">联系人</a></li>
						<li><a href="javascript:void(0);" tab="event">事件 </a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="person">
							<p></p>
							<div class="form-horizontal">
										<div class="form-group ">
											<label class="col-sm-2 control-label">姓名：</label>
											<div class="col-sm-10">
												<p class="form-control-static">Mamnoon Hussain</p>
											</div>
										</div>
										<div class="form-group ">
											<label class="col-sm-2 control-label">身份：</label>
											<div class="col-sm-10">
												<p class="form-control-static">政治家</p>
											</div>
										</div>
										<div class="form-group ">
											<label class="col-sm-2 control-label">出生年月：</label>
											<div class="col-sm-10">
												<p class="form-control-static">1949年12月25日</p>
											</div>
										</div>
										<div class="form-group ">
											<label class="col-sm-2 control-label">职务：</label>
											<div class="col-sm-10">
												<p class="form-control-static">总理</p>
											</div>
										</div>
										<div class="form-group ">
											<label class="col-sm-2 control-label">邮箱：</label>
											<div class="col-sm-10">
												<p class="form-control-static">Mamnoon Hussain@google.com</p>
											</div>
										</div>
										<div class="form-group ">
											<label class="col-sm-2 control-label">社交：</label>
											<div class="col-sm-10">
												<p class="form-control-static"><a href="#">Hussain(facebook)</a></p>
											</div>
										</div>
										<div class="form-group ">
											<label class="col-sm-2 control-label">电话：</label>
											<div class="col-sm-10">
												<p class="form-control-static"><a href="#">(123) 456-7890</a></p>
											</div>
										</div>
										<div class="form-group ">
											<label class="col-sm-2 control-label">威胁程度：</label>
											<div class="col-sm-10">
												<a class="btn btn-danger disabled" role="button">危险</a>
											</div>
										</div>
										<div class="form-group ">
											<label class="col-sm-2 control-label">宗教信仰：</label>
											<div class="col-sm-10">
												<p class="form-control-static">伊斯兰教</p>
											</div>
										</div>
										<div class="form-group ">
											<label class="col-sm-2 control-label">所属党派：</label>
											<div class="col-sm-10">
												<p class="form-control-static">执政党</p>
											</div>
										</div>
									</div>
						</div>
	<div class="tab-pane fade" id="track">
		<p></p>
		<div class="form-horizontal">
			<div class="form-group ">
            	<label class="col-md-2 control-label">开始日期:</label>
	                <div id="datetimeStart" class="input-group date form_date col-md-5" data-date="" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
	                    <input class="form-control" size="16" type="text" value="" readonly>
	                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
						<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
	                </div>
				<input type="hidden"  value="" />
			</div>
			<div class="form-group ">
            	<label class="col-md-2 control-label">结束日期:</label>
	                <div  id="datetimeEnd" class="input-group date form_date col-md-5" data-date="" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
	                    <input class="form-control" size="16" type="text" value="" readonly>
	                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
						<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
	                </div>
				<input type="hidden" value="" />
			</div>
		</div>
		<div id="ditu" style="width: 750px;height:400px;">
		</div>
		<p></p>
		<div class="form-horizontal">
			<div class="form-group ">
				<label class="col-md-2 control-label">具体日期:</label>
				<div class="col-md-5">
					<input type="text" class="form-control" id="date">
				</div>
			</div>
			<div class="form-group">
				<label for="source" class="col-md-2 control-label">出发地:</label>
				<div class="col-md-5">
					<input type="text" class="form-control" id="source">
				</div>
			</div>	
			<div class="form-group">
				<label for="destination" class="col-md-2 control-label">目的地:</label>
				<div class="col-md-5">
					<input type="text" class="form-control" id="destination">
				</div>
			</div>
			<div class="form-group">
				<label for="hotel" class="col-md-2 control-label">入住酒店:</label>
				<div class="col-md-5">
					<select class="form-control" id="hotel">
						<c:forEach items="${list_hotel }" var="hotel">
							<option value="${hotel }">${hotel }</option>
						</c:forEach>
					</select>
				</div>
				<div class="col-md-offset-7">
					<button type="submit" onclick="search();" class="btn btn-primary">查询</button>
				</div>
			</div>
		</div>
		<div>
			<table id="contentTable" class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>日期</th>
						<th>航班</th>
						<th>出发地</th>
						<th>目的地</th>
						<th>入住酒店</th>
						<th>房间号</th>
						<th>同行联系人</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>20100601</td>
						<td>PK301</td>
						<td>伊斯兰堡</td>
						<td>卡拉奇</td>
						<td>卡拉奇酒店</td>
						<td>110</td>
						<td>Jack Doson</td>
					</tr>
					<tr>
						<td>20100601</td>
						<td>PK301</td>
						<td>伊斯兰堡</td>
						<td>卡拉奇</td>
						<td>卡拉奇酒店</td>
						<td>111</td>
						<td>Jack Doson</td>
					</tr>
					<tr>
						<td>20100601</td>
						<td>PK301</td>
						<td>伊斯兰堡</td>
						<td>卡拉奇</td>
						<td>卡拉奇酒店</td>
						<td>110</td>
						<td>Jack Doson</td>
					</tr>
					<tr>
						<td>20100601</td>
						<td>PK301</td>
						<td>伊斯兰堡</td>
						<td>卡拉奇</td>
						<td>卡拉奇酒店</td>
						<td>110</td>
						<td>Jack Doson</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<!-- track end -->
	<div class="tab-pane fade" id="mediaCoverage">
		<p></p>
		<div class="form-horizontal">
			<div class="form-group ">
            	<label class="col-md-2 control-label">开始日期:</label>
	                <div id="datetimeStart_m" class="input-group date form_date col-md-5" data-date="" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
	                    <input class="form-control" size="16" type="text" value="" readonly>
	                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
						<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
	                </div>
				<input type="hidden"  value="" />
			</div>
			<div class="form-group ">
            	<label class="col-md-2 control-label">结束日期:</label>
	                <div  id="datetimeEnd_m" class="input-group date form_date col-md-5" data-date="" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
	                    <input class="form-control" size="16" type="text" value="" readonly>
	                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
						<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
	                </div>
				<input type="hidden" value="" />
			</div>
		</div>
		<div id="mc" style="width: 750px;height:400px">
		</div>
		<table id="contentTable_mc" class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>媒体</th>
					<th>报道数量</th>
					<th>负面报道占比</th>
					<th>最近一个月的报道数量</th>
				</tr>
			</thead>
			<tbody>
				<tr><td><a href="#">BBC</a></td><td>32篇(<a href="#">详细列表</a>)</td><td>80%</td><td>20篇(<a href="#">详细内容</a>)</td></tr>
				<tr><td><a href="#">CNN</a></td><td>50篇(<a href="#">详细列表</a>)</td><td>30%</td><td>10篇(<a href="#">详细内容</a>)</td></tr>
				<tr><td><a href="#">VOA</a></td><td>32篇(<a href="#">详细列表</a>)</td><td>80%</td><td>20篇(<a href="#">详细内容</a>)</td></tr>
				<tr><td><a href="#">NPR</a></td><td>50篇(<a href="#">详细列表</a>)</td><td>30%</td><td>10篇(<a href="#">详细内容</a>)</td></tr>
			</tbody>
		</table>
		<div id="mc2" style="width: 750px;height:400px">
		</div>
		<table id="contentTable_mc2" class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>搜索引擎</th>
					<th>被搜索的数量</th>
					<th>最近一个月的被搜索数量</th>
				</tr>
			</thead>
			<tbody>
				<tr><td><a href="#">baidu</a></td><td>32条(<a href="#">详细列表</a>)</td><td>20条(<a href="#">详细内容</a>)</td></tr>
				<tr><td><a href="#">google</a></td><td>50条(<a href="#">详细列表</a>)</td><td>10条(<a href="#">详细内容</a>)</td></tr>
				<tr><td><a href="#">bing</a></td><td>32条(<a href="#">详细列表</a>)</td><td>20条(<a href="#">详细内容</a>)</td></tr>
			</tbody>
		</table>
		<div class="modal fade" id="mcModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
						<h4 class="modal-title" id="mcModalLabel">
							标题
						</h4>
					</div>
					<div class="modal-body" id="mcModalBody">
						在这里添加一些文本
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal -->
		</div>
	</div>
	<div class="tab-pane fade" id="personrel">
		<p></p>
		<fieldset>
            <legend>社会关系</legend>
            <dl class="dl-horizontal">
			  <dt>妻子：</dt>
			  <dd>张三(92%),李四(31%)</dd>
			</dl>
			<dl class="dl-horizontal">
			  <dt>儿子：</dt>
			  <dd>王五(100%)</dd>
			</dl>
			<dl class="dl-horizontal">
			  <dt>女儿：</dt>
			  <dd>赵六(100%)</dd>
			</dl>
        </fieldset>
        <fieldset>
            <legend>邮箱(3个)</legend>
            <dl class="dl-horizontal">
			  <dt style="width:180px">Sharif@google.com</dt>
			  <dd style="margin-left:200px">联系人<br>1@google.com<br>2@google.com<br>3@google.com<br>4@google.com</dd>
			</dl>
			<dl class="dl-horizontal">
			  <dt style="width:180px">Sharif@hotMail.com</dt>
			  <dd style="margin-left:200px">联系人<br>1@google.com<br>2@google.com<br>3@google.com</dd>
			</dl>
			<dl class="dl-horizontal">
			  <dt style="width:180px">Sharif@facebook.com</dt>
			  <dd style="margin-left:200px">联系人<br>1@google.com<br>2@google.com<br>3@google.com</dd>
			</dl>
        </fieldset>
         <fieldset>
            <legend>skype(2个)</legend>
            <dl class="dl-horizontal">
			  <dt style="width:250px">Mamnoon Hussain@skype.com</dt>
			  <dd style="margin-left:260px">联系人<br>1@google.com<br>2@google.com<br>3@google.com<br>4@google.com</dd>
			</dl>
			<dl class="dl-horizontal">
			  <dt style="width:250px">Mamnoon Hussain@skype.com</dt>
			  <dd style="margin-left:260px">联系人<br>1@google.com<br>2@google.com<br>3@google.com</dd>
			</dl>
        </fieldset>
	</div>
	<div class="tab-pane fade" id="event">
		<p></p>
		<table id="contentTable_event" class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>日期</th>
						<th>事件</th>
						<th>地点</th>
						<th>设备信息</th>
						<th>包含该事件的资源数</th>
						<th>详情</th>
					</tr>
				</thead>
				<tbody>
					<tr><td>20100512</td><td>使用电脑登陆Facebook</td><td>卡拉奇</td><td>IP地址:192.0.0.1</td><td>20</td><td><a href="#">详细信息</a></td></tr>
					<tr><td>20121002</td><td>发表关于XXX的评论</td><td>卡拉奇</td><td>IP地址:192.0.0.1</td><td>20</td><td><a href="#">详细信息</a></td></tr>
					<tr><td>20140211</td><td>出席XXXX国际会议</td><td>白沙瓦</td><td>无</td><td>20</td><td><a href="#">详细信息</a></td></tr>
				</tbody>
			</table>
	</div>
</div>
					
			</div>
			<div class="col-md-4">
				<br> <img src="<%=basePath %>resources/images/avatar.jpg" alt="${person.name }" class="img-rounded img-responsive" width="50%"> <br>
							<address>
								<strong>Twitter, Inc.</strong><br> 1355 Market Street, Suite 900<br> San Francisco, CA 94103<br> <abbr title="Phone">P:</abbr> (123) 456-7890
							</address>
					<div class="panel panel-danger">
						<div class="panel-heading">
							<h3 class="panel-title">告警事件</h3>
						</div>
						<div class="panel-body">
							<p>2017年2月17日,基地组织领导人与Nawaz Sharif入住卡拉奇酒店</p>
							<p>2017年2月16日,基地组织领导人与Nawaz Sharif进行了电话联系</p>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<span class="glyphicon glyphicon-list-alt"></span><b>最近30分钟内发生的事件</b></div>
						<div class="panel-body">
							<div class="row">
								<div class="col-xs-12">
									<ul class="demo1">
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/1.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>5分钟前</strong>收到 <a href="#">邮箱联系人Hillary</a>发送的邮件......<small><a href="#">详细内容</a></small></td> -->
													<td>Google邮箱共收到50封邮件.... <a href="#">详细信息</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/2.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>6分钟前</strong>接听了 <a href="#">手机联系人Hillary</a>打来的电话 ......<small><a href="#">详细内容</a></small></td> -->
													<td>共有500次通话记录....<a>详细信息</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/3.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>8分钟内</strong>收到 <a href="#">Facebook好友Hillary</a>的点赞 ......<small><a href="#">详细内容</a></small></td> -->
													<td>共收到500条短信....<a>详细信息</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/4.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>10分钟前</strong>收到 <a href="#">Twitter好友Hillary</a>的点赞 ......<small><a href="#">详细内容</a></small></td> -->
													<td>共收到30次视频邀请....<a>详细信息</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/5.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>15分钟前</strong>收到 <a href="#">Skype好友Hillary</a>的视频邀请 ......<small><a href="#">详细内容</a></small></td> -->
													<td>共收到30次视频邀请....<a>详细信息</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/6.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>20分钟前</strong>收到 <a href="#">Facebook好友Hillary</a>的点赞 ......<small><a href="#">详细内容</a></small></td> -->
													<td>共收到30次视频邀请....<a>详细信息</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/7.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>25分钟前</strong>接受了 <a href="#">BBC记者Hillary</a>的采访 ......<small><a href="#">详细内容</a></small></td> -->
													<td>共接受过100次媒体采访....<a>详细信息</a></td>
												</tr>
											</table>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel-footer">
						</div>
					</div>
			</div>
		</div>
		<hr>
	</div>
	
<script type="text/javascript" src="<%=basePath%>resources/js/worldecharts.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/js/world.js"></script>
<script type="text/javascript">

$(function () {
	$(".demo1").bootstrapNews({
			newsPerPage: 5,
			autoplay: true,
			pauseOnHover:true,
			direction: 'up',
			newsTickerInterval: 2000,
			onToDo: function () {
			}
		});
	$("#myTab li a").click(function(){
		var name = $(this).attr("tab");
		$("#myTab li").removeClass("active");
		$(this).parent().attr("class", "active");
		console.log(name);
		$("#myTabContent").children().attr("class","tab-pane fade");
		$("#" + name).attr("class","tab-pane fade in active");
	});
});

function showTab(){
	console.log($(this));
	/* $("#myTab li:eq(0)").removeClass("active");
	$("#myTab li:eq("+val+")").attr("class", "active");
	$("#ios").attr("class","tab-pane fade in active");
	$("#home").attr("class","tab-pane fade "); */
	$(":not(this)").removeClass("active");
	$(this).attr("class", "active");
	
}

function echartMC(){
	var myChart = echarts.init(document.getElementById('mc'));
    // 指定图表的配置项和数据
    var option = {
    		title: {
    	        text: '一周内媒体报道情况',
    	        subtext: '纯属虚构'
    	    },
    	    tooltip : {
    	        trigger: 'axis'
    	    },
    	    legend: {
    	        data:['BBC','CNN','VOA','NPR']
    	    },
    	    toolbox: {
    	        feature: {
    	            saveAsImage: {}
    	        }
    	    },
    	    grid: {
    	        left: '3%',
    	        right: '4%',
    	        bottom: '3%',
    	        containLabel: true
    	    },
    	    xAxis : [
    	        {
    	            type : 'category',
    	            boundaryGap : false,
    	            data : ['周一','周二','周三','周四','周五','周六','周日']
    	        }
    	    ],
    	    yAxis : [
    	        {
    	            type : 'value'
    	        }
    	    ],
    	    series : [
    	        {
    	            name:'BBC',
    	            type:'line',
    	            smooth: true,
    	            data:[120, 132, 101, 134, 90, 230, 210]
    	        },
    	        {
    	            name:'CNN',
    	            type:'line',
    	            smooth: true,
    	            data:[220, 182, 191, 234, 290, 330, 310]
    	        },
    	        {
    	            name:'VOA',
    	            type:'line',
    	            data:[150, 232, 201, 154, 190, 330, 410]
    	        },
    	        {
    	            name:'NPR',
    	            type:'line',
    	            smooth: true,
    	            data:[320, 332, 301, 334, 390, 330, 210]
    	        }
    	    ]
    };
    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
    myChart.on("click", function(param){
    	console.log(param.name+","+param.value+","+param.seriesName);
    	$("#mcModalLabel").html("<b>"+param.name+"</b><small>&nbsp;&nbsp;详细数据</small>");
    	$("#mcModalBody").html("<table class='table table-condensed'><thead><tr><th>媒体名称</th><th>报道日期</th><th>内容概述</th></tr></thead><tbody><tr> <td>BBC</td> <td>20160910</td> <td>到底是谁杀死了金正男</td></tr> <tr> <td>CNN</td> <td>20170216</td><td>不是金正恩刺杀的金正男</td> </tr> </tbody></table>")
    	$("#mcModal").modal('show');
    }) 
}

echartMC();
function echartMC2(){
	var myChart = echarts.init(document.getElementById('mc2'));
	console.log("echartMC");
    // 指定图表的配置项和数据
    var option = {
    		title: {
    	        text: '一周内搜索引擎被搜索的情况',
    	        subtext: '纯属虚构'
    	    },
    	    tooltip : {
    	        trigger: 'axis'
    	    },
    	    legend: {
    	        data:['baidu','google','bing']
    	    },
    	    toolbox: {
    	        feature: {
    	            saveAsImage: {}
    	        }
    	    },
    	    grid: {
    	        left: '3%',
    	        right: '4%',
    	        bottom: '3%',
    	        containLabel: true
    	    },
    	    xAxis : [
    	        {
    	            type : 'category',
    	            boundaryGap : false,
    	            data : ['周一','周二','周三','周四','周五','周六','周日']
    	        }
    	    ],
    	    yAxis : [
    	        {
    	            type : 'value'
    	        }
    	    ],
    	    series : [
    	        {
    	            name:'baidu',
    	            type:'line',
    	            smooth: true,
    	            data:[120, 132, 101, 134, 90, 230, 210]
    	        },
    	        {
    	            name:'google',
    	            type:'line',
    	            smooth: true,
    	            data:[220, 182, 191, 234, 290, 330, 310]
    	        },
    	        {
    	            name:'bing',
    	            type:'line',
    	            data:[150, 232, 201, 154, 190, 330, 410]
    	        }
    	    ]
    };
    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
}
echartMC2();



function search(){
	var personid = ${person.id };
	var date = $("#track #date").val();
	var source = $("#track #source").val();
	var destination = $("#track #destination").val();
	var hotel = $("#track #hotel").val();
	//console.log(date+source+destination+hotel);
	$.ajax({
			url: "<%=basePath%>track/list",
			type : "POST",
			data : {
				personid : personid,
				date : date,
				source : source,
				destination : destination,
				hotel : hotel
			},
			success : function(result) {
				//console.log(result);
				$("#contentTable tbody").empty();
				$.each(result, function(i, n) {
					//console.log(result[i].personid);
					var rel;
					if (result[i].personid != personid) {
						rel = result[i].personid;
					} else {
						rel = "无";
					}
					var trHTML = "<tr>" + "<td>" + result[i].date
							+ "</td>" + "<td>" + result[i].flight
							+ "</td>" + "<td>" + result[i].source
							+ "</td>" + "<td>"
							+ result[i].destination + "</td>"
							+ "<td>" + result[i].hotel + "</td>"
							+ "<td>" + rel + "</td>" + "<td>XXX</td></tr>";
					$("#contentTable").append(trHTML);

				})

			}

		});
	}
echartDitu();
$('#datetimeStart').datetimepicker({
    language:  'zh-CN',
    format: 'yyyy-mm-dd',
    weekStart: 1,
    todayBtn:  1,
	autoclose: 1,
	todayHighlight: 1,
	startView: 2,
	minView: 2,
	forceParse: 0,
	endDate: new Date()
}).on("changeDate",function(){
    $("#datetimeEnd").datetimepicker("setStartDate",$("#datetimeStart input").val());
});

$('#datetimeEnd').datetimepicker({
    language:  'zh-CN',
    format: 'yyyy-mm-dd',
    weekStart: 1,
    todayBtn:  1,
	autoclose: 1,
	todayHighlight: 1,
	startView: 2,
	minView: 2,
	forceParse: 0,
	/* startDate:new Date()  */
});
$('#datetimeStart_m').datetimepicker({
    language:  'zh-CN',
    format: 'yyyy-mm-dd',
    weekStart: 1,
    todayBtn:  1,
	autoclose: 1,
	todayHighlight: 1,
	startView: 2,
	minView: 2,
	forceParse: 0,
	endDate: new Date()
}).on("changeDate",function(){
    $("#datetimeEnd_m").datetimepicker("setStartDate",$("#datetimeStart_m input").val());
});

$('#datetimeEnd_m').datetimepicker({
    language:  'zh-CN',
    format: 'yyyy-mm-dd',
    weekStart: 1,
    todayBtn:  1,
	autoclose: 1,
	todayHighlight: 1,
	startView: 2,
	minView: 2,
	forceParse: 0,
	/* startDate:new Date()  */
});
</script>
</body>
</html>
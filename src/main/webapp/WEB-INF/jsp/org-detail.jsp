<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
<%-- <%@include file="/WEB-INF/jsp/common/head.jsp"%> --%>
<%@include file="/WEB-INF/jsp/common/taglib.jsp"%>
<script type="text/javascript"
	src="<%=basePath%>resources/js/jquery-1.11.1.js"></script>
<script type="text/javascript"
	src="<%=basePath%>resources/js/jquery.bootstrap.newsbox.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>resources/js/echarts.min.js"></script>
<link rel="stylesheet" style="text/css"
	href="<%=basePath%>resources/bootstrap3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" style="text/css"
	href="<%=basePath%>resources/bootstrap3.3.5/css/bootstrap-theme.min.css">
<link rel="stylesheet" style="text/css"
	href="<%=basePath%>resources/css/default.css">
<link rel="stylesheet" style="text/css"
	href="<%=basePath%>resources/css/normalize.css">
<link rel="stylesheet" style="text/css"
	href="<%=basePath%>resources/css/site.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<h2>穆斯林联盟<small>重要组织&nbsp<button type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>被监控</button> </small>
				</h2>
				<hr>
					<ul id="myTab" class="nav nav-tabs">
						<li class="active"><a href="javascript:void(0);" tab="org" >资料</a></li>
						<li><a href="javascript:void(0);" tab="mediaCoverage">媒体报道</a></li>
						<!-- <li><a href="javascript:void(0);" tab="personrel">组织关系</a></li> -->
						<li><a href="javascript:void(0);" tab="event">事件 </a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="org">
							<p></p>
							<div class="form-horizontal">
										<div class="form-group ">
											<label class="col-sm-3 control-label">组织名称：</label>
											<div class="col-sm-9">
												<p class="form-control-static">Pakistan Muslim League</p>
											</div>
										</div>
										<div class="form-group ">
											<label class="col-sm-3 control-label">领导人：</label>
											<div class="col-sm-9">
												<p class="form-control-static"><a href="<%=basePath %>person/3/detail">Chaudhry Shujaat Hussain</a></p>
											</div>
										</div>
										<div class="form-group ">
											<label class="col-sm-3 control-label">成立时间：</label>
											<div class="col-sm-9">
												<p class="form-control-static">19870517</p>
											</div>
										</div>
										<div class="form-group ">
											<label class="col-sm-3 control-label">邮箱：</label>
											<div class="col-sm-9">
												<p class="form-control-static">Chaudhry Shujaat Hussain@google.com</p>
											</div>
										</div>
										<div class="form-group ">
											<label class="col-sm-3 control-label">组织成员人数：</label>
											<div class="col-sm-9">
												<p class="form-control-static">32(<a href="#">人物详细信息</a>)</p>
											</div>
										</div>
										<div class="form-group ">
											<label class="col-sm-3 control-label">网站：</label>
											<div class="col-sm-9">
												<p class="form-control-static"><a href="#">www.Muslim-League.com</a></p>
											</div>
										</div>
										<div class="form-group ">
											<label class="col-sm-3 control-label">电话：</label>
											<div class="col-sm-9">
												<p class="form-control-static"><a href="#">(123) 456-7890</a></p>
											</div>
										</div>
										<div class="form-group ">
											<label class="col-sm-3 control-label">威胁程度：</label>
											<div class="col-sm-9">
												<a class="btn btn-danger disabled" role="button">危险</a>
											</div>
										</div>
									</div>
						</div>
	<div class="tab-pane fade" id="mediaCoverage">
		<p></p>
		<div id="mc" style="width: 600px;height:400px;background-color:#666">
		</div>
		<table id="contentTable"
				class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>媒体</th>
						<th>报道数量</th>
						<th>负面报道占比</th>
						<th>最近一个月的报道数量</th>
					</tr>
				</thead>
				<tbody>
					<tr><td><a href="#">BBC</a></td><td>32篇(<a href="#">详细内容</a>)</td><td>80%</td><td>20(<a href="#">详细内容</a>)</td></tr>
					<tr><td><a href="#">CNN</a></td><td>80篇(<a href="#">详细内容</a>)</td><td>80%</td><td>20(<a href="#">详细内容</a>)</td></tr>
					<tr><td><a href="#">BBC</a></td><td>32篇(<a href="#">详细内容</a>)</td><td>80%</td><td>20(<a href="#">详细内容</a>)</td></tr>
					<tr><td><a href="#">CNN</a></td><td>80篇(<a href="#">详细内容</a>)</td><td>80%</td><td>20(<a href="#">详细内容</a>)</td></tr>
				</tbody>
			</table>
	</div>
	<div class="tab-pane fade" id="personrel">
		<p>组织关系</p>
		
	</div>
	<div class="tab-pane fade" id="event">
		<p></p>
		<table id="contentTable" class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>日期</th>
						<th>事件</th>
						<th>地点</th>
						<th>袭击类型</th>
						<th>详情</th>
					</tr>
				</thead>
				<tbody>
					<tr><td>20100512</td><td>发动恐怖袭击</td><td>卡拉奇</td><td>爆炸</td><td><a href="#">详细信息</a></td></tr>
					<tr><td>20121002</td><td>发动恐怖袭击</td><td>卡拉奇</td><td>绑架</td><td><a href="#">详细信息</a></td></tr>
					<tr><td>20140211</td><td>发动恐怖袭击</td><td>白沙瓦</td><td>劫持</td><td><a href="#">详细信息</a></td></tr>
					<tr><td>20100512</td><td>发动恐怖袭击</td><td>卡拉奇</td><td>爆炸</td><td><a href="#">详细信息</a></td></tr>
					<tr><td>20121002</td><td>发动恐怖袭击</td><td>卡拉奇</td><td>绑架</td><td><a href="#">详细信息</a></td></tr>
					<tr><td>20140211</td><td>发动恐怖袭击</td><td>白沙瓦</td><td>劫持</td><td><a href="#">详细信息</a></td></tr>
					<tr><td>20100512</td><td>发动恐怖袭击</td><td>卡拉奇</td><td>爆炸</td><td><a href="#">详细信息</a></td></tr>
					<tr><td>20121002</td><td>发动恐怖袭击</td><td>卡拉奇</td><td>绑架</td><td><a href="#">详细信息</a></td></tr>
					<tr><td>20140211</td><td>发动恐怖袭击</td><td>白沙瓦</td><td>劫持</td><td><a href="#">详细信息</a></td></tr>
				</tbody>
			</table>
	</div>
</div>
			</div>
			<div class="col-md-4">
				<br> <img src="<%=basePath %>resources/images/Flag_of_Muslim_League.png" alt="乔杜里·舒贾特·侯赛因" class="img-rounded img-responsive" width="50%"> <br>
							<address>
								<strong>Twitter, Inc.</strong><br> <a>@Muslim-League</a><br> Islamabad,Pakistan<br> <abbr title="Phone">website:</abbr> www.Muslim-League.com
							</address>
					<div class="panel panel-default">
						<div class="panel-heading">
							<span class="glyphicon glyphicon-list-alt"></span><b>最近发生的事件</b></div>
						<div class="panel-body">
							<div class="row">
								<div class="col-xs-12">
									<ul class="demo1">
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/gas_mask.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>5分钟前</strong>收到 <a href="#">邮箱联系人Hillary</a>发送的邮件......<small><a href="#">详细内容</a></small></td> -->
													<td>在<a href="#">巴基斯坦</a>组织50次<strong>爆炸袭击</strong>.... <a href="#">详细信息</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/linkedin.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>6分钟前</strong>接听了 <a href="#">手机联系人Hillary</a>打来的电话 ......<small><a href="#">详细内容</a></small></td> -->
													<td>在<a href="#">阿富汗</a>组织了85次<strong>枪击事件</strong>....<a>详细信息</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/facebook.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>8分钟内</strong>收到 <a href="#">Facebook好友Hillary</a>的点赞 ......<small><a href="#">详细内容</a></small></td> -->
													<td>在<a href="#">印度</a>组织50次<strong>爆炸袭击</strong>....<a>详细信息</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/twitter2.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>10分钟前</strong>收到 <a href="#">Twitter好友Hillary</a>的点赞 ......<small><a href="#">详细内容</a></small></td> -->
													<td>在<a href="#">伊朗</a>组织50次<strong>人质劫持</strong>....<a>详细信息</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/call.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>15分钟前</strong>收到 <a href="#">Skype好友Hillary</a>的视频邀请 ......<small><a href="#">详细内容</a></small></td> -->
													<td>共收到30次视频邀请....<a>详细信息</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/wechat2.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>20分钟前</strong>收到 <a href="#">Facebook好友Hillary</a>的点赞 ......<small><a href="#">详细内容</a></small></td> -->
													<td>共收到30次视频邀请....<a>详细信息</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/message.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>25分钟前</strong>接受了 <a href="#">BBC记者Hillary</a>的采访 ......<small><a href="#">详细内容</a></small></td> -->
													<td>在<a href="#">伊拉克</a>组织50次恐怖袭击....<a>详细信息</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/bomb.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>25分钟前</strong>接受了 <a href="#">BBC记者Hillary</a>的采访 ......<small><a href="#">详细内容</a></small></td> -->
													<td>在<a href="#">叙利亚</a>组织99次恐怖袭击....<a>详细信息</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/gun.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>25分钟前</strong>接受了 <a href="#">BBC记者Hillary</a>的采访 ......<small><a href="#">详细内容</a></small></td> -->
													<td>在<a href="#">伊朗</a>组织7次枪击事件....<a>详细信息</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="<%=basePath %>resources/images/video2.png" width="60" class="img-circle" /></td>
													<!-- <td><strong>25分钟前</strong>接受了 <a href="#">BBC记者Hillary</a>的采访 ......<small><a href="#">详细内容</a></small></td> -->
													<td>在<a href="#">伊朗</a>组织7次枪击事件....<a>详细信息</a></td>
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
	//console.log($(this));
	/* $("#myTab li:eq(0)").removeClass("active");
	$("#myTab li:eq("+val+")").attr("class", "active");
	$("#ios").attr("class","tab-pane fade in active");
	$("#home").attr("class","tab-pane fade "); */
	$(":not(this)").removeClass("active");
	$(this).attr("class", "active");
	
} 

function echartMC(){
	var myChart = echarts.init(document.getElementById('mc'));
	console.log("echartMC");
    // 指定图表的配置项和数据
    var option = {
    		title: {
    	        text: '媒体报道情况',
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
}

echartMC();
</script>
</body>
</html>
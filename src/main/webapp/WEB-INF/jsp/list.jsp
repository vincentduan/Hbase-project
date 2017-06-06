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
		<h2>XXXX系统</h2>
		<hr>
		<br>
		<div class="row">
			<div class="col-md-2">
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a href="<%=basePath%>person/list">人物</a></li>
					<li class="active"><a href="<%=basePath%>org/list">组织</a></li>
				</ul>
			</div>
			<div class="col-md-10">
				<div class="page-header">
					<h2>
						<small>人物列表</small>
					</h2>
				</div>
				<table id="contentTable" class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>姓名</th>
							<th>中文名</th>
							<th>性别</th>
							<th>出生日期</th>
							<th>手机号码</th>
							<th>所属组织</th>
							<th>威胁程度</th>
							<th>&nbsp;&nbsp;&nbsp;&nbsp;操&nbsp;&nbsp;作&nbsp;&nbsp;&nbsp;&nbsp;</th>
						</tr>
					</thead>
					
					<tbody>
					
						<c:forEach items="${list }" var="person">
							<tr class="<c:if test='${person.threatDegree == 1}'>warning</c:if><c:if test='${person.threatDegree == 2}'>danger</c:if>">
								<td>${person.name }</td>
								<td>${person.chineseName }</td>
								<td>${person.gender }</td>
								<td>${person.birthday }</td>
								<td>${person.telephone }</td>
								<td>${person.party }</td>
								<td><c:if test="${person.threatDegree == '0'}">低</c:if><c:if test="${person.threatDegree == '1'}">中</c:if><c:if test="${person.threatDegree == '2'}">高</c:if></td>
								<td><a href="<%=basePath%>person/${person.id }/detail">详细信息</a></td>
							</tr>
						</c:forEach>
						<%-- <tr class="warning">
							<td>1</td>
							<td>朴槿惠</td>
							<td>女</td>
							<td>195202202</td>
							<td>18928377463</td>
							<td>2016年丑闻</td>
							<td>基地组织</td>
							<td><a href="#">崔顺实</a>、<a href="#">李在镕</a></td>
							<td>中</td>
							<td><a href="<%=basePath%>person/detail">详细信息</a></td>
						</tr>
						<tr class="danger">
							<td>2</td>
							<td>金正恩</td>
							<td>男</td>
							<td>19830108</td>
							<td>18928377463</td>
							<td>2017年暴动</td>
							<td>基地组织</td>
							<td><a href="#">李雪主</a></td>
							<td>高</td>
							<td><a href="<%=basePath%>person/detail">详细信息</a></td>
						</tr>
						<tr >
							<td>3</td>
							<td>金正日</td>
							<td>男</td>
							<td>19830108</td>
							<td>18928377463</td>
							<td>2017年暴动</td>
							<td>基地组织</td>
							<td><a href="#">李雪主</a></td>
							<td>高</td>
							<td><a href="<%=basePath%>person/detail">详细信息</a></td>
						</tr> --%>
					</tbody>
				</table>
				
			</div>
			
		</div>
	</div>
	<%-- <div id="ditu" style="width: 600px;height:400px;"></div>
	<script type="text/javascript" src="<%=basePath%>resources/js/worldecharts.js"></script>
	<script type="text/javascript" src="<%=basePath%>resources/js/world.js"></script>
	
	<script type="text/javascript">
	echartDitu();
	</script> --%>
</body>
</html>
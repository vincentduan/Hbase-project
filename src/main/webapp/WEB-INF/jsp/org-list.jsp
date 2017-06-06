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
						<small>组织列表</small>
					</h2>
				</div>
				<table id="contentTable" class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>组织名称</th>
							<th>成立时间</th>
							<th>位置分布</th>
							<th>组织分类</th>
							<th>威胁程度</th>
							<th>&nbsp;&nbsp;&nbsp;&nbsp;操&nbsp;&nbsp;作&nbsp;&nbsp;&nbsp;&nbsp;</th>
						</tr>
					</thead>
					
					<tbody>
						<tr class="warning">
							<td>基地组织</td>
							<td>19890807</td>
							<td>中东</td>
							<td>政党</td>
							<td>中</td>
							<td><a href="<%=basePath%>org/detail">详细信息</a></td>
						</tr>
						<tr class="danger">
							<td>穆斯林联盟</td>
							<td>19890807</td>
							<td>中东</td>
							<td>军队</td>
							<td>高</td>
							<td><a href="<%=basePath%>org/detail">详细信息</a></td>
						</tr>
						<tr >
							<td>巴基斯坦人民军</td>
							<td>19890807</td>
							<td>中东</td>
							<td>工会</td>
							<td>低</td>
							<td><a href="<%=basePath%>org/detail">详细信息</a></td>
						</tr>
					</tbody>
				</table>
				
			</div>
		</div>
	</div>
</body>
</html>
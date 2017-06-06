<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<%@include file="/WEB-INF/jsp/common/taglib.jsp"%>    
    <title>登录界面</title>
    <link href="<%=basePath %>resources/css/style.css" rel="stylesheet">
</head>
<body>
    <div id="denglu">
        <div id="signin">
            <h1 class="sign-title">用户登录</h1>
        </div>
        <div id="login-wrap">
            <div id="login-logo"></div>
            <input id="uid" type="text" class="form-control" placeholder="User ID" autofocus>
            <input id="upw" type="password" class="form-control" placeholder="Password">
            <button class="btn-login" type="submit">
                <i class="fa fa-check"></i>
            </button>
        </div>
        <div id="remberme">
            <input id="rmecb" type="checkbox" name="class0" value="00"/><h1 class="sign-word">记住用户</h1>
        </div>
        <div id="forgetpw">
            <h1 class="sign-word">忘记密码？</h1>
        </div>
    </div>
</body>
</html>

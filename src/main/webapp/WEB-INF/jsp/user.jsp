<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>一带一路态势感知</title>
<%@include file="/WEB-INF/jsp/common/taglib.jsp"%>
<link type="text/css" href="<%=basePath%>resources/css2/font-awesome.css" rel="stylesheet" />
<link type="text/css" href="<%=basePath%>resources/css2/style.css" rel="stylesheet" />
<link type="text/css" href="<%=basePath%>resources/css2/tablestyle.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/css2/timeline-style.css">
<link rel="stylesheet" href="<%=basePath%>resources/css2/common.css">
<link rel="stylesheet" href="<%=basePath%>resources/css2/leaflet.css">
<link rel="stylesheet" href="<%=basePath%>resources/css2/menu-style.css">
<script type="text/javascript" src="js/jquery-1.4.2.js"></script>
<script type="text/javascript" src="js/echarts.js"></script>
</head>
<body>
    <div id="main">
        <div id = "nav">
            <div id = "logo"></div>
            <div id = "title">
                <i  class="icon-double-angle-right"></i>&nbsp;&nbsp;一 带 一 路 态 势 感 知
            </div>
        </div>  
        <div id="userpro">
            <div id="userpropic"></div>
            <div id="sideMenu" class="sideMenu">
                <ul>
                    <li class="nLi">
                        <h1>用户姓名：马云</h1>
                    </li>
                    <li class="nLi">
                        <h1>等级权限：0</h1>
                    </li>
                    <li class="nLi">
                        <h1>上次登录时间：2017年2月8日</h1>
                    </li>
                    <li class="nLi">
                        <h1>地区分类：山东</h1>
                    </li>
                    <li class="nLi">
                        <h1>所属单位：××局</h1>
                    </li>
                    <li class="nLi">
                        <h1>未读消息：10条</h1>
                    </li>
                    <li class="nLi">
                        <h1>历史报告</h1>
                    </li>
                    <li class="nLi">
                        <h1>设置</h1>
                        <ul class="sub on">
                            <li><a href="#"><h2>查看权限</h2></a></li>
                            <li><a href="#"><h2>修改密码</h2></a></li>
                            <li><a href="#"><h2>申请权限</h2></a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div id="zhibiao">
            <h1 class="sign-title">指标体系</h1>
        </div>
        <div id="yewu">
            <h1 class="sign-title">业务应用</h1>
        </div>
        <div id="history">
            <div id="indexMenutitle2">历史操作记录</div>
            <div id="timeline_2">
            <div class="content">
            <div class="wrapper">
                <div class="light"><i></i></div>
                <div class="main">
                    <h1 class="title"></h1>
                    <div class="year">
                        <h2><a class="yeartab" href="#">2017.1.20<i></i></a></h2>
                        <div class="list">
                            <ul>
                                <!-- <li class="cls highlight"> -->
                                <li class="cls">
                                    <p class="date">14:27:43</p>
                                    <p class="intro">群组分析</p>
                                    <p class="version">&nbsp;</p>
                                    <div class="more">
                                        <p>朴槿惠-崔顺实</p>
                                    </div>
                                </li>
                                <li class="cls">
                                    <p class="date">14:26:02</p>
                                    <p class="intro">应急预警</p>
                                    <p class="version">&nbsp;</p>
                                    
                                </li>
                                <li class="cls highlight"> 
                                    <p class="date">14:20:23</p>
                                    <p class="intro">告警保护</p>
                                    <p class="version">&nbsp;</p>
                                    <div class="more">
                                        <p class="country">关键人告警</p>
                                        <p>朴槿惠</p>
                                        <p class="country">事件告警</p>
                                        <p>反朴游行</p>
                                    </div>
                                </li>
                                <li class="cls">
                                    <p class="date">13:20:23</p>
                                    <p class="intro">事件探索</p>
                                    <p class="version">&nbsp;</p>
                                    <div class="more">
                                        <p>炒作主体统计</p>
                                    </div>
                                </li>
                                <li class="cls">
                                    <p class="date">13:00:53</p>
                                    <p class="intro">事件探索</p>
                                    <p class="version">&nbsp;</p>
                                    <div class="more">
                                        <p>炒作主体迁移</p>
                                    </div>
                                </li>
                                <li class="cls">
                                    <p class="date">11:30:42</p>
                                    <p class="intro">重点监控</p>
                                    <p class="version">&nbsp;</p>
                                    <div class="more">
                                        <p>朴槿惠</p>
                                        <p>青瓦台</p>
                                    </div>
                                </li>
                                <li class="cls">
                                    <p class="date">11:17:24</p>
                                    <p class="intro">预警分析</p>
                                    <p class="version">&nbsp;</p>
                                    <div class="more">
                                        <p>监控对象被报道统计</p>
                                    </div>
                                </li>
                                <li class="cls">
                                    <p class="date">11:06:14</p>
                                    <p class="intro">预警分析</p>
                                    <p class="version">&nbsp;</p>
                                    <div class="more">
                                        <p>报道媒体统计</p>
                                    </div>
                                </li>
                                <li class="cls">
                                    <p class="date">10:49:32</p>
                                    <p class="intro">预警分析</p>
                                    <p class="version">&nbsp;</p>
                                    <div class="more">
                                        <p>事件脉络分析</p>
                                    </div>
                                </li>
                                <li class="cls">
                                    <p class="date">10:23:41</p>
                                    <p class="intro">事件采集</p>
                                    <p class="version">&nbsp;</p>
                                    <div class="more">
                                        <p>闺蜜门</p>
                                    </div>
                                </li>
                                <li class="cls">
                                    <p class="date">10:01:27</p>
                                    <p class="intro">用户登录：XXXX(山东厅X级管理员)</p>
                                    <p class="version">&nbsp;</p>
                                   
                                </li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="year">
                        <h2><a class="yeartab" href="#">2017.1.19<i></i></a></h2>
                        <div class="list">
                            <ul>
                                 <li class="cls">
                                    <p class="date">11:30:42</p>
                                    <p class="intro">重点监控</p>
                                    <p class="version">&nbsp;</p>
                                    <div class="more">
                                        <p>朴槿惠</p>
                                        <p>青瓦台</p>
                                    </div>
                                </li>
                                <li class="cls">
                                    <p class="date">11:17:24</p>
                                    <p class="intro">预警分析</p>
                                    <p class="version">&nbsp;</p>
                                    <div class="more">
                                        <p>监控对象被报道统计</p>
                                    </div>
                                </li>
                                <li class="cls">
                                    <p class="date">11:06:14</p>
                                    <p class="intro">预警分析</p>
                                    <p class="version">&nbsp;</p>
                                    <div class="more">
                                        <p>报道媒体统计</p>
                                    </div>
                                </li>
                                <li class="cls">
                                    <p class="date">10:49:32</p>
                                    <p class="intro">预警分析</p>
                                    <p class="version">&nbsp;</p>
                                    <div class="more">
                                        <p>事件脉络分析</p>
                                    </div>
                                </li>
                                <li class="cls">
                                    <p class="date">10:23:41</p>
                                    <p class="intro">事件采集</p>
                                    <p class="version">&nbsp;</p>
                                    <div class="more">
                                        <p>闺蜜门</p>
                                    </div>
                                </li>
                                <li class="cls">
                                    <p class="date">10:01:27</p>
                                    <p class="intro">用户登录：XXXX(山东厅X级管理员)</p>
                                    <p class="version">&nbsp;</p>
                                   
                                </li>
                            </ul>
                        </div>
                    </div>
                    
                </div>
                <script type="text/javascript" src="js/jquery.min.js"></script>
                <script type="text/javascript" src="js/timeline.js"></script>
            </div>
        </div>
    </div>
        </div>
        <div id="tuijian">
            <div id="indexMenutitle">每日简报</div>
            <div id="lefttuijian">
                <br><p class="tuijiansubtitle">监测新闻热点推荐</p>
                <br><p class="tuijianword">2017-02-07 “闺蜜门”进展：朴槿惠本周或首次接受特别检查组当面调查</p>
                <br><p class="tuijianword">2017-02-22 潘基文弃选引发韩国选情突变</p>
                <br><p class="tuijianword">2017-01-26 韩国上季GDP 季增0.4％ 不受闺蜜门影响</p>
                <br><p class="tuijianword">2017-01-22 韩国闺蜜门被捕官员赵允旋被特检组问话</p>
                <br><p class="tuijianword">2017-01-18 “太子”被提请批捕 “闺蜜门”压垮三星？</p>
                <br><p class="tuijianword">2017-01-11 "崔顺实门"第二次庭审进行 崔否认曾经"逼捐"</p>

            </div>
            <div id="righttuijian">
                <br><p class="tuijiansubtitle">监测重点人员近期热度</p>
                <br><p class="tuijianword">朴槿惠(87)</p>
                <br><p class="tuijianword">崔顺实(75)</p>
                <br><p class="tuijianword">李在镕(59)</p>
                <br><p class="tuijiansubtitle">监测区域网民热点话题</p>
                <br><p class="tuijianword">弹劾朴槿惠游行</p>
                <br><p class="tuijianword">韩国大选</p>
                <br><p class="tuijianword">韩国岁月号事件</p>
            </div>
            <div id="line_zhuangshi"></div>
        </div>      
    </div>
    <script type="text/javascript">
        $(function(){
            $(".sideMenu .nLi h1").click(function(){
                if($(this).parent(".nLi").hasClass("on")){
                    $(this).parent(".nLi").removeClass("on")
                }else{
                    $(this).parent(".nLi").addClass("on")
                }
            })
        })
    </script>
</body>
</html>

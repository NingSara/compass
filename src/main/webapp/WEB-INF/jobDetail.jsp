<%@ page import="com.compass.compass.bean.jobInfo.Position" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ page import="com.compass.compass.bean.jobInfo.*" %>
<%@ page import="com.compass.compass.bean.recommend.*" %>
<%@ page import="com.compass.compass.bean.search.*" %>
<%@ page import="com.compass.compass.bean.user.*" %>
<%@ page import="com.compass.compass.bean.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>job detail</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/css/navibar.css"/>
    <link rel="stylesheet" type="text/css" href="/css/footer.css"/>
    <style type="text/css">
    	@media (max-width: 768px){
    		.alignblock{
    			text-align:none;
    			padding-top:0px;
    			padding-bottom:10px;
    		}
    		.bodyup{
    			text-align:left;
    		}
    		.alignbr{
    			display:none;
    		}
    		.guessrow >.col-md-12{
				width: 100%
			}
		}
		@media (min-width: 992px){
    		.alignblock{
    			text-align:center;
    			padding-top:30px;
    			
    		}
    		.bodyupbr{
    			display:none;
    		}
    		.bodyup{
    			text-align:right;
    		}
    		.alignbr{
    			display:inline;
    		}
    		.guessrow >.col-md-4{
				width: 31%
			}
		}
		.greenlink:link{
			color:#000000;
			text-decoration:none;
		}
		.greenlink:visited{
			color:#000000;
			text-decoration:none;
		}
		.greenlink:hover{
			color:#26AE61;
			text-decoration:none;
		}
		.greenlink:active{
			color:#26AE61;
			text-decoration:none;
		}
		.alignblock{
			padding-left:39px
		}
		.detailblock{
			float:left;
			padding-left:10px;
			padding-top:7px;
		}
		.guessblock{max-width:220px}
		.guessblock >h3 a{
			color:#000000;
			text-decoration:none;
		}
		.guessblock >h3 a:hover{
			color:#26AE61;
		}
		
    </style>
    
    
    
  </head>
  <body>
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
	<%!
		User myuser;
	%>
	<%
		myuser=(User)session.getAttribute("user");
	%>
	<%!
	Position theposition;
	List< PositionBaseRecommendLink > similarlist;
	%>
	<%
		theposition=(Position) request.getAttribute("position");
		similarlist=( List< PositionBaseRecommendLink >)request.getAttribute("positionBaseRecommends");
	%>
    <!--导航-->
    <div class="navbar navbar-default navbar-fixed-top" style="background-color:white"> 
		<div class="container">
			<div class="navbar-header">
			<img src="/img/图标.png" width="180px">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navBar"> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
				</button> 
			</div> 
			<div class="collapse navbar-collapse navbar-right" id="navBar"> 
				<ul class="nav navbar-nav"> 
					<li><a href="index.jsp" class="barlink">首页</a></li>  
					<li class="dropdown"> 
						<a href="#" class="dropdown-toggle barlink" data-toggle="dropdown"> 
							按类搜索<span class="caret"></span> 
						</a> 
						<ul class="dropdown-menu" role="menu">
							
							<li><a href="category.jsp?categoryName=工程技术人员" class="barlink">工程技术人员</a></li> 
							<li><a href="category.jsp?categoryName=科学研究人员" class="barlink">科学研究人员</a></li> 
							<li><a href="category.jsp?categoryName=教学人员" class="barlink">教学人员</a></li> 
							<li><a href="category.jsp?categoryName=金融业务人员" class="barlink">金融业务人员</a></li> 
							<li><a href="category.jsp?categoryName=经济业务人员" class="barlink">经济业务人员</a></li> 
							<li><a href="category.jsp?categoryName=办事人员和有关人员" class="barlink">办事人员和有关人员</a></li> 
							<li><a href="category.jsp?categoryName=商业和服务业人员" class="barlink">商业和服务业人员</a></li> 
							<li><a href="category.jsp?categoryName=卫生专业技术人员" class="barlink">卫生专业技术人员</a></li>  
						</ul> 
					</li>
					<%
						Position position = (Position) request.getAttribute("position");
						
					%>
					<li class="dropdown"> 
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
						我的主页<span class="caret"></span> 
						</a> 
						<ul class="dropdown-menu" role="menu"> 
						<li><a href="myinfo.jsp">个人信息</a></li> 
						<li><a href="markedjobs.jsp">职位收藏</a></li> 
						<li><a href="guessYouLike.jsp">猜你喜欢</a></li> 
						<li><a href="recommend.jsp">为你推荐</a></li> 
						</ul> 
					</li>
					<li><a href="#">合作伙伴</a></li> 
					<li><a href="#">联系我们</a></li>
					<li>
						<div 
						style=
						"border-radius:25px;background-color:#26AE61;color:#fff;margin:10px 0px 0px 5px;height:30px;width:100px;padding:5px 20px 0px 20px">
							<%if(myuser!=null){%>
							<a href="" class="loginbutton">您已登录</a>
							<%}else{%>
							<a href="login" class="loginbutton">登录/注册</a>
							<%}%>
						</div>
					</li>
				</ul> 
			</div> 
		</div> 
	</div> 
    <div class="container bodyup" style="width:100%;margin-bottom:10px">
        <div class="row">
        	<div class="col-md-7 col-xs-6">
        		<h1><span style="color:#26AE61;">关于</span><br class="bodyupbr">这个职位</h1>
        	</div>
        	<div class="col-md-5 col-xs-6" style="background-color: #fff;text-align:center;">
            	<img src="/img/search.png" style="width:160px" class="img-responsive center-block">
        	</div>
        </div>
	</div>
	<!-- 下面是与搜索结果页面相同的一个条目-->
	<div class="container" style="padding-bottom:20px;">
		<div class="row" style="box-shadow: 0px 0px 5px 5px #F5F5F5;margin-top:20px;padding-bottom:15px">
    			<div class="col-md-4 col-xs-12" style="margin-bottom:5px">
    				<div style="float:left;margin:10px;width:70px;height:70px;padding-top:13px">
    					<span class="glyphicon glyphicon-hand-right" style="color:rgb(2,138,241);height:40px;font-size: 30px"></span>
    				</div>
    				<div style="float:left;margin-left:30px;max-width:220px">
    					<h3><a href="" class="greenlink">
							<%=position.getName()%><%--JAVA开发初级工程师--%>
						</a></h3>
    					<div style="color:#A9A9A9;">
							<%=position.getCompanyName()%><%--银联商务股份有限公司--%>
						</div>
    				</div>
    			</div>
    			<div class="col-md-3 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    			style="font-size:15px;color:#A9A9A9;">
    				<span class="glyphicon glyphicon-plane" style="color:#26AE61;"></span>&nbsp;&nbsp;
					<%=position.getPlace()%><%--济南-高新区--%>
    			</div>
    			<div class="col-md-3 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    			style="font-size:15px;color:#A9A9A9;">
    				<div 
						style=
						"border-radius:20px;background-color:rgb(213,255,231);color:#26AE61;margin:-2px 0px 0px -8px;width:auto;display:inline-block;padding:5px 10px">
						<%=position.getWage()%><%--薪资：10k-12k--%>
					</div>
    			</div>
    			<div class="col-md-2 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    			style="font-size:15px;">
    				<span class="label label-warning" style="font-size:15px">&nbsp;&nbsp;<%=position.getType()%><%--校招--%>&nbsp;&nbsp;</span>
    			</div>
    	</div>
    </div>
    
    <!--下面是详细信息。其中，每个条目标题的颜色依次为：蓝、绿、蓝、绿......即第一个是蓝，下面依次选择绿色和蓝色。颜色只和顺序对应，不和具体标题内容对应-->
    <div class="container"  style="box-shadow: 0px 0px 5px 5px #F5F5F5;margin-top:40px;padding-bottom:20px">
        <!--一个详细内容条目-->
    	<div class="row" style="margin-top:10px">
    		<div class="col-md-12 col-xs-12" style="padding-left:10px;">
    			<div style="float:left;margin:10px;padding-top:13px;">
    				<span class="glyphicon glyphicon-time" style="color:#3CB371;height:40px;font-size: 30px"></span>
    			</div>
    			<div class="detailblock">
    				<h3>起止<span style="color:#3CB371;">日期</span></h3>
    			</div>
    		</div>
    		<div class="col-md-12 col-xs-12" style="padding-left:70px;padding-top:20px">
    			<div style="color:#A9A9A9;font-size:17px">
					<%=position.getBeginDate()%>-<%=position.getEndDate()%><%--2021年3月-2099年10月--%>
				</div>
    		</div>
    	</div>
	
		<!--一个详细内容条目结束。下面类似-->
    	
    	<div class="row" style="margin-top:10px">
    		<div class="col-md-12 col-xs-12" style="padding-left:10px;">
    			<div style="float:left;margin:10px;padding-top:13px;">
    				<span class="glyphicon glyphicon-bookmark" style="color:rgb(77,173,245);height:40px;font-size: 30px"></span>
    			</div>
    			<div class="detailblock">
    				<h3>能力<span style="color:rgb(77,173,245);">要求</span></h3>
    			</div>
    		</div>
    		<div class="col-md-12 col-xs-12" style="padding-left:70px;padding-top:20px">
    			<div style="color:#A9A9A9;font-size:17px">
					<%=position.getRequire()%>
				<%--1、.熟悉常用的Java语言，有javaWeb项目开发经验。
				2、熟练掌握Oracle、MySQL等数据库开发。
3、熟练使用Hibernate、Spring等框架进行整合项目开发。
4、能使用svn、 Maven等代码管理方式；
5、具有规范化、标准化的代码编写习惯，撰写技术文档的能力；
6、熟悉基本的软件开发流程，有良好的沟通能力和团队合作能力。--%>
    			</div>
    		</div>
    	</div>
    	
    	<div class="row" style="margin-top:10px">
    		<div class="col-md-12 col-xs-12" style="padding-left:10px;">
    			<div style="float:left;margin:10px;padding-top:13px;">
    				<span class="glyphicon glyphicon-map-marker" style="color:#3CB371;height:40px;font-size: 30px"></span>
    			</div>
    			<div class="detailblock">
    				<h3>工作<span style="color:#3CB371;">地点</span></h3>
    			</div>
    		</div>
    		<div class="col-md-12 col-xs-12" style="padding-left:70px;padding-top:20px">
    			<div style="color:#A9A9A9;font-size:17px">
					<%=position.getPlace()%><%--济南高新区 舜风路1006-5号--%>
				</div>
    		</div>
    	</div>
    	
    	<div class="row" style="margin-top:10px">
    		<div class="col-md-12 col-xs-12" style="padding-left:10px;">
    			<div style="float:left;margin:10px;padding-top:13px;">
    				<span class="glyphicon glyphicon-flag" style="color:rgb(77,173,245);height:40px;font-size: 30px"></span>
    			</div>
    			<div class="detailblock">
    				<h3>薪资<span style="color:rgb(77,173,245);">福利</span></h3>
    			</div>
    		</div>
    		<div class="col-md-12 col-xs-12" style="padding-left:70px;padding-top:20px">
    			<div style="color:#A9A9A9;font-size:17px">
    			福利：<br>
					<%=position.getJobWelfare()%>
    			<br>薪资：<br>
					<%=position.getWage()%>
    			</div>
    		</div>
    	</div>
    	
    	<div class="row" style="margin-top:10px">
    		<div class="col-md-12 col-xs-12" style="padding-left:10px;">
    			<div style="float:left;margin:10px;padding-top:13px;">
    				<span class="glyphicon glyphicon-user" style="color:#3CB371;height:40px;font-size: 30px"></span>
    			</div>
    			<div class="detailblock">
    				<h3>所需<span style="color:#3CB371;">人数</span></h3>
    			</div>
    		</div>
    		<div class="col-md-12 col-xs-12" style="padding-left:70px;padding-top:20px">
    			<div style="color:#A9A9A9;font-size:17px">
    			<%=position.getQuantity()%><%--10人--%>
    			</div>
    		</div>
    	</div>
    	
    	<div class="row" style="margin-top:10px">
    		<div class="col-md-12 col-xs-12" style="padding-left:10px;">
    			<div style="float:left;margin:10px;padding-top:13px;">
    				<span class="glyphicon glyphicon-envelope" style="color:rgb(77,173,245);height:40px;font-size: 30px"></span>
    			</div>
    			<div class="detailblock">
    				<h3>简历投递<span style="color:rgb(77,173,245);">邮箱</span></h3>
    			</div>
    		</div>
    		<div class="col-md-12 col-xs-12" style="padding-left:70px;padding-top:20px">
    			<div style="color:#A9A9A9;font-size:17px">
					<%=position.getJobDeliverUrl()%>
					<%--济南高新区 舜风路1006-5号--%>
				</div>
    		</div>
    	</div>
    	
    	<div class="row" style="margin-top:10px">
    		<div class="col-md-12 col-xs-12" style="padding-left:10px;">
    			<div style="float:left;margin:10px;padding-top:13px;">
    				<span class="glyphicon glyphicon-new-window" style="color:#3CB371;height:40px;font-size: 30px"></span>
    			</div>
    			<div class="detailblock">
    				<h3>应聘<span style="color:#3CB371;">网址</span></h3>
    			</div>
    		</div>
    		<div class="col-md-12 col-xs-12" style="padding-left:70px;padding-top:20px">
    			<div style="color:#A9A9A9;font-size:17px">
					<%=position.getJobEmployUrl()%><%--www.baidu.com--%>
				</div>
    		</div>
    	</div>
    	
    	<div class="row" style="margin-top:10px">
    		<div class="col-md-12 col-xs-12" style="padding-left:10px;">
    			<div style="float:left;margin:10px;padding-top:13px;">
    				<span class="glyphicon glyphicon-saved" style="color:rgb(77,173,245);height:40px;font-size: 30px"></span>
    			</div>
    			<div class="detailblock">
    				<h3>公司<span style="color:rgb(77,173,245);">介绍</span></h3>
    			</div>
    		</div>
    		<div class="col-md-12 col-xs-12" style="padding-left:70px;padding-top:20px">
    			<div style="color:#A9A9A9;font-size:17px">
					<%=position.getCompanyIntroduction()%>
    			<%--银联商务股份有限公司（简称：银联商务）
    			是中国银联控股的，专门从事线下、互联网以及移动支付的综合支付与信息服务机构，
    			成立于2002年12月，总部设在上海市浦东新区。
    			银联商务是首批获得人民银行《支付业务许可证》的支付机构，也是人民银行确定的21家重点支付机构之一。
    成立十五年以来，在中国人民银行领导下，在中国银联的指导下，
    银联商务始终坚持“服务社会、方便大众”的理念，积极履行企业公民的社会责任，
    致力于改善中国银行卡受理环境和电子支付环境，
    竭诚为发卡机构、商户、企业和广大持卡人提供优质、高效、安全、规范的线下、互联网、移动支付服务、信息服务以及互联网金融服务。
    银联商务建立了南到海南三沙市永兴岛、北抵黑龙江漠河，覆盖全国所有地级以上城市的服务网络，并加快向发达县镇乡等农村地区拓展，
    在全国形成专业化、全方位的服务态势。截至2020年2月末，银联商务已在全国除台湾以外的所有省级行政区设立机构，实体服务网络覆盖全国所有的地级以上城市，
    覆盖率达100%，全辖员工超万人，服务特约商户793.9万家；2019年受理各类交易127.3亿笔、15万亿元，是国内规模***的综合支付服务机构之一。 
    2019年公司荣获“2019胡润中国新金融50强”、“中国智慧城市发展十周年领军企业”、
    “2019创新互联网企业TOP100”、“2019中国金融机构金牌榜·金龙奖”年度***金融科技创新公司等众多奖项。--%>

    			</div>
    		</div>
    	</div>
	</div>
	
	<div class="container">
	<div class="col-xs-12 col-md-4" style="margin-top:20px;width:100%;text-align:center;">
			<form role="form">
				<button 
				type="submit" class="btn btn-block" 
				style="background-color:#3CB371;height:40px;width:200px;font-size: 18px;color:#fff;display:block;margin:0 auto">
				点击收藏</button>
			</form>
	</div>
	
	</div>
	
	
	<div style="width:100%;padding-top:20px;padding-bottom:30px;background-color:#F9FCFF;margin-top:50px">
	<div class="container">
		<h1 style="text-align:center">相似推荐</h1>
		<br>
		<div class="row guessrow" style="margin-top:10px">
		<div class="col-xs-12 col-md-4" 
			style="box-shadow: 0px 0px 5px 5px #F5F5F5 ;margin-right:40px;margin-top:10px;padding-top:10px;padding-bottom:20px;background-color:#fff">
    		<div style="float:left;margin:10px;box-shadow: 0px 0px 5px 5px #F5F5F5;width:70px;height:70px;text-align:center;padding-top:13px">
    			<span class="glyphicon glyphicon-thumbs-up" style="color:rgb(64,224,208);font-size:50px"></span>
    		</div>
    		<div style="float:left;margin-left:10px" class="guessblock">
    			<h3><a href="">输入职位名</a></h3>
    			<div style="margin-top:10px">
    				<span class="glyphicon glyphicon-tag" style="color:#26AE61;"></span>&nbsp;&nbsp;输入公司名
    			</div>
    			<div style="margin-bottom:5px;margin-top:5px">
    				<span class="glyphicon glyphicon-plane" style="color:#26AE61;"></span>&nbsp;&nbsp;输入公司地点
    			</div>
    			<span class="label label-success">&nbsp;&nbsp;全职&nbsp;&nbsp;</span>
    		</div>
    	</div>
    	
    	<div class="col-xs-12 col-md-4" 
    	style="box-shadow: 0px 0px 5px 5px #F5F5F5 ;margin-right:40px;margin-top:10px;padding-top:10px;padding-bottom:20px;background-color:#fff">
    		<div style="float:left;margin:10px;box-shadow: 0px 0px 5px 5px #F5F5F5;width:70px;height:70px;text-align:center;padding-top:13px">
    			<span class="glyphicon glyphicon-thumbs-up" style="color:rgb(255,128,0);font-size:50px"></span>
    		</div>
    		<div style="float:left;margin-left:10px" class="guessblock">
    			<h3><a href="">输入职位名</a></h3>
    			<div style="margin-top:10px">
    				<span class="glyphicon glyphicon-tag" style="color:#26AE61;"></span>&nbsp;&nbsp;输入公司名
    			</div>
    			<div style="margin-bottom:5px;margin-top:5px">
    				<span class="glyphicon glyphicon-plane" style="color:#26AE61;"></span>&nbsp;&nbsp;输入公司地点
    			</div>
    			<span class="label label-primary">&nbsp;&nbsp;实习&nbsp;&nbsp;</span>
    		</div>
    	</div>
    	
    	<div class="col-xs-12 col-md-4" 
    	style="box-shadow: 0px 0px 5px 5px #F5F5F5 ;margin-top:10px;padding-top:10px;padding-bottom:20px;;background-color:#fff">
    		<div style="float:left;margin:10px;box-shadow: 0px 0px 5px 5px #F5F5F5;width:70px;height:70px;text-align:center;padding-top:13px">
    			<span class="glyphicon glyphicon-thumbs-up" style="color:rgb(128,0,255);font-size:50px"></span>
    		</div>
    		<div style="float:left;margin-left:10px" class="guessblock">
    			<h3><a href="">输入职位名</a></h3>
    			<div style="margin-top:10px">
    				<span class="glyphicon glyphicon-tag" style="color:#26AE61;"></span>&nbsp;&nbsp;输入公司名
    			</div>
    			<div style="margin-bottom:5px;margin-top:5px">
    				<span class="glyphicon glyphicon-plane" style="color:#26AE61;"></span>&nbsp;&nbsp;输入公司地点
    			</div>
    			<span class="label label-warning">&nbsp;&nbsp;兼职&nbsp;&nbsp;</span>
    		</div>
    	</div>
			
		</div>

		<div class="col-xs-12 col-md-4" style="margin-top:20px;width:100%;text-align:center;">
			<form role="form" action="similarJobs.jsp" method="post">
				<button 
				type="submit" class="btn btn-block" 
				style="background-color:#3CB371;height:40px;width:200px;font-size: 18px;color:#fff;display:block;margin:0 auto">
				查看更多</button>
			</form>
		</div>
	</div>
</div>
	
	
    <!-- 页脚 -->
    <div class="indexfoot">
	<div class="container">
		<div class="row" style="margin-top:50px;margin-bottom:50px">
			<div class="col-xs-12 col-md-4">
				<div>
					<img src="/img/图标2.png" width="180px">
				</div>
				<p style="color:rgb(138,153,179);">
				You can get the latest employment information in real time here.
            We use recommendation algorithm to help you find the most suitable job. 
				</p>
			</div>
			<div class="col-xs-12 col-md-5 aboutus">
				<div style="padding-top:5px;">
					<h4 style="color:#fff">更多信息</h4>
				</div>
				<div style="float:left;margin-right:100px;margin-top:5px">
					<a href="">关于我们</a>
					<br><br>
					<a href="">媒体报道</a>
					<br><br>
					<a href="">加入我们</a>
				</div>
				<div style="float:left;margin-top:5px">
					<a href="">常见问题</a>
					<br><br>
					<a href="">服务声明</a>
					<br><br>
					<a href="">友情链接</a>
				</div>
			</div>
			<div class="col-xs-12 col-md-3">
				<div style="padding-top:5px">
					<h4 style="color:#fff">联系我们</h4>
				</div>
				<div style="margin-top:5px;float:left">
					<span style="color:rgb(138,153,179);">销售热线：400-886-0051</span>
					<br><br>
					<span style="color:rgb(138,153,179);">客服热线：400-620-5100</span>
					<br><br>
					<span style="color:rgb(138,153,179);">Email：JobHunter@163.com</span>
				</div>
			
			</div>
		</div>
	</div>
	</div>
    
  </body>
</html>
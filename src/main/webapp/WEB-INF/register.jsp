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
    <title>注册</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./css/navibar.css"/>
    <link rel="stylesheet" type="text/css" href="./css/footer.css"/>
    <style type="text/css">
    	@media (max-width: 768px){
    		.bodyup{
    			text-align:left;
    		}
		}
		@media (min-width: 992px){
    		.bodyupbr{
    			display:none;
    		}
    		.bodyup{
    			text-align:right;
    		}
		}
    	.input-group-addon{
    	background-color:#FFF;
    	}
    	.greenlinkg:link{
			color:#A9A9A9;
			text-decoration:none;
		}
		.greenlinkg:visited{
			color:#A9A9A9;;
			text-decoration:none;
		}
		.greenlinkg:hover{
			color:#26AE61;
			text-decoration:none;
		}
		.greenlinkg:active{
			color:#26AE61;
			text-decoration:none;
		}
    
    
    </style>
    
    
  </head>
  <body style="background-color:#F9FCFF">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
        <%!
		User myuser;
    	List< CategoryLink > catelist;
		int strarr[]=new int[8];
		String cateurl[]=new String[8];
	%>
	<%
		myuser=(User)session.getAttribute("user");
		catelist = (List<CategoryLink>) session.getAttribute("fixedCategories");
		int ii=0;
		for(Iterator i = catelist.iterator();i.hasNext(); ){
			CategoryLink tempc=(CategoryLink) i.next();
			strarr[ii] = tempc.getPositionNum() ;
			cateurl[ii]=tempc.getUrl();
			ii++;
		}
	%>
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
					<li><a href="index" class="barlink">首页</a></li> 
					<li class="dropdown"> 
						<a href="#" class="dropdown-toggle barlink" data-toggle="dropdown"> 
							按类搜索<span class="caret"></span> 
						</a> 
						<ul class="dropdown-menu" role="menu"> 
							<li><a href="<%=cateurl[0]%>" class="barlink">工程技术人员</a></li> 
							<li><a href="<%=cateurl[1]%>" class="barlink">科学研究人员</a></li> 
							<li><a href="<%=cateurl[2]%>" class="barlink">教学人员</a></li> 
							<li><a href="<%=cateurl[3]%>" class="barlink">金融业务人员</a></li> 
							<li><a href="<%=cateurl[4]%>" class="barlink">经济业务人员</a></li> 
							<li><a href="<%=cateurl[5]%>" class="barlink">办事人员和有关人员</a></li> 
							<li><a href="<%=cateurl[6]%>" class="barlink">商业和服务业人员</a></li> 
							<li><a href="<%=cateurl[7]%>" class="barlink">卫生专业技术人员</a></li>  
						</ul> 
					</li> 
					<li class="dropdown"> 
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
						我的主页<span class="caret"></span> 
						</a> 
						<ul class="dropdown-menu" role="menu"> 
						<li><a href="myInfo">个人信息</a></li> 
						<li><a href="markedPositions">职位收藏</a></li> 
						<li><a href="guessYourLike">猜你喜欢</a></li> 
						<li><a href="recommend">为你推荐</a></li> 
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
    
   <div class="container bodyup" style="width:100%;margin-bottom:10px;">
        <div class="row">
        	<div class="col-md-7 col-xs-6">
        		<h1><span style="color:#26AE61;">注册</span><br class="bodyupbr">我的账号</h1>
        	</div>
        	<div class="col-md-5 col-xs-6" style="text-align:center;">
            	<img src="./img/app.png" style="width:160px" class="img-responsive center-block">
        	</div>
        </div>
	</div>
   <div style="background-color:#fff;padding-top:30px;">
    <div class="container" style="padding-bottom:40px">
    	<div class="row">
    		<div class="col-md-4 col-xs-12 col-md-push-4" 
    		style="box-shadow: 0px 0px 5px 5px #F5F5F5;text-align:center;padding:20px;padding-bottom:40px">
    		<h3><b>账号信息</b></h3>
    		<br>
    		<br>
    		<form role="form">
    			<div class="input-group">
            		<span class="input-group-addon" style="height:40px">
            		<span class="glyphicon glyphicon-user" style="color:#26AE61;"></span>
            		</span>
            		<input type="text" class="form-control" style="height:40px" placeholder="请输入账号，账号不能与已存在的相同">
        		</div>
        		<br>
    			<div class="input-group">
    				<span class="input-group-addon" style="height:40px">
    				<span class="glyphicon glyphicon-lock" style="color:#26AE61;"></span>
    				</span>
            		<input type="text" class="form-control" style="height:40px" placeholder="请输入密码">
        		</div>
        		<br>
        		<div class="input-group">
    				<span class="input-group-addon" style="height:40px">
    				<span class="glyphicon glyphicon-ok" style="color:#26AE61;"></span>
    				</span>
            		<input type="text" class="form-control" style="height:40px" placeholder="请再次输入密码">
        		</div>
        		<br>
        		<button type="submit" class="btn btn-block" style="background-color:#3CB371;height:40px;font-size: 17px;color:#fff">
				  	点击注册
				</button>
    		</form>
    		<br>
    		<div><a class="greenlinkg" href="login.jsp">已有账号？点击这里登录</a></div>
    		</div>
    	
    	</div>
    
    
    </div>
    </div> 
    <div class="indexfoot">
	<div class="container">
		<div class="row" style="margin-top:50px;margin-bottom:50px">
			<div class="col-xs-12 col-md-4">
				<div>
					<img src="./img/图标2.png" width="180px">
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
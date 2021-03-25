<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>登录</title>
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
    <div class="navbar navbar-default navbar-fixed-top" style="background-color:white"> 
		<div class="container">
			  
			<div class="navbar-header">
			<img src="./img/图标.png" width="180px"> 
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navBar"> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
				</button> 
			</div> 
			<div class="collapse navbar-collapse navbar-right" id="navBar"> 
				<ul class="nav navbar-nav"> 
					<li><a href="index.jsp" class="barlink">首页</a></li> 
					<li><a href="search.jsp" class="barlink">开始搜索</a></li> 
					<li class="dropdown"> 
						<a href="#" class="dropdown-toggle barlink" data-toggle="dropdown"> 
							按类搜索<span class="caret"></span> 
						</a> 
						<ul class="dropdown-menu" role="menu"> 
							<li><a href="#" class="barlink">金融</a></li> 
							<li><a href="#" class="barlink">销售</a></li> 
							<li><a href="#" class="barlink">教育/培训</a></li> 
							<li><a href="#" class="barlink">互联网</a></li> 
							<li><a href="#" class="barlink">设计</a></li> 
							<li><a href="#" class="barlink">房地产</a></li> 
							<li><a href="#" class="barlink">医疗</a></li> 
							<li><a href="#" class="barlink">食品</a></li> 
						</ul> 
					</li> 
					<li class="dropdown"> 
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
						我的主页<span class="caret"></span> 
						</a> 
						<ul class="dropdown-menu" role="menu"> 
						<li><a href="#">个人信息</a></li> 
						<li><a href="#">职位收藏</a></li> 
						<li><a href="#">猜你喜欢</a></li> 
						<li><a href="#">为你推荐</a></li> 
						</ul> 
					</li>
					<li><a href="#">合作伙伴</a></li> 
					<li><a href="#">联系我们</a></li>
					<li>
						<div 
						style=
						"border-radius:25px;background-color:#26AE61;color:#fff;margin:10px 0px 0px 5px;height:30px;width:100px;padding:5px 20px 0px 20px">
							<a href="login.jsp" class="loginbutton">登录/注册</a>
						</div>
					</li>
				</ul> 
			</div> 
		</div> 
	</div> 
    
   <div class="container bodyup" style="width:100%;margin-bottom:10px;">
        <div class="row">
        	<div class="col-md-7 col-xs-6">
        		<h1><span style="color:#26AE61;">登录</span><br class="bodyupbr">我的账号</h1>
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
    		<h3><b>登录信息</b></h3>
    		<br>
    		<br>
    		<form class="bs-example bs-example-form" role="form">
    			<div class="input-group">
            		<span class="input-group-addon" style="height:40px">
            		<span class="glyphicon glyphicon-user" style="color:#26AE61;"></span>
            		</span>
            		<input type="text" class="form-control" style="height:40px" placeholder="请输入账号">
        		</div>
        		<br>
    			<div class="input-group">
    				<span class="input-group-addon" style="height:40px">
    				<span class="glyphicon glyphicon-lock" style="color:#26AE61;"></span>
    				</span>
            		<input type="text" class="form-control" style="height:40px" placeholder="请输入密码">
        		</div>
        		<br>
        		<button type="button" class="btn btn-block" style="background-color:#3CB371;height:40px;font-size: 17px;color:#fff">
				  	点击登录
				</button>
    		</form>
    		<br>
    		<div><a class="greenlinkg" href="register.jsp">没有账号？点击这里注册</a></div>
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
				Sed consequat sapien faus quam bibendum convallis quis in nulla. Pellentesque volutpat odio eget diam cursus semper.
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
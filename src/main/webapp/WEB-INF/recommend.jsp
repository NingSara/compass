<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>为你推荐</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./css/navibar.css"/>
    <link rel="stylesheet" type="text/css" href="./css/footer.css"/>
    <style type="text/css">
    	@media (max-width: 768px){
    		.mainrow >.col-xs-12{
    		
    		}
    		.alignblock{
    			text-align:none;
    			padding-top:0px;
    			padding-bottom:10px;
    		}
    		.bodyup{
    			text-align:left;
    		}
    		.jobtitle{
    			max-width:220px
    		}
		}
		@media (min-width: 992px){
			.mainrow >.col-md-4{
				width: 25%;
				margin-right:30px;
			}
			.mainrow >.col-md-8{
			}
			.bodyupbr{
    			display:none;
    		}
    		.bodyup{
    			text-align:right;
    		}
    		.alignblock{
    			text-align:center;
    			padding-top:30px;
    			
    		}
    		.jobtitle{
    			max-width:145px;
    		}
		}
    	.shadeblock{
    		box-shadow: 0px 0px 3px 3px #F5F5F5;
    		padding:0px
    	}
    	
    	.greenlinkgray:link{
			color:#A9A9A9;
			text-decoration:none;
		}
		.greenlinkgray:visited{
			color:#A9A9A9;
			text-decoration:none;
		}
		.greenlinkgray:hover{
			color:#A9A9A9;
			text-decoration:none;
		}
		.greenlinkgray:active{
			color:#A9A9A9;
			text-decoration:none;
		}
    	.active >a{
    		background:rgb(213,255,231) !important;
    		color:#26AE61 !important;
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
			padding-left:0px
		}
        .searchresult{
			box-shadow: 0px 0px 3px 3px #F5F5F5;
			margin-top:20px;
			padding-bottom:15px;
		}
    	
    </style>
   
   
  </head>
  <body>
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
					<li class="dropdown"> 
						<a href="#" class="dropdown-toggle barlink" data-toggle="dropdown"> 
							按类搜索<span class="caret"></span> 
						</a> 
						<ul class="dropdown-menu" role="menu"> 
							<li><a href="category.jsp?categoryName=金融" class="barlink">金融</a></li> 
							<li><a href="category.jsp?categoryName=销售" class="barlink">销售</a></li> 
							<li><a href="category.jsp?categoryName=教育/培训" class="barlink">教育/培训</a></li> 
							<li><a href="category.jsp?categoryName=互联网" class="barlink">互联网</a></li> 
							<li><a href="category.jsp?categoryName=设计" class="barlink">设计</a></li> 
							<li><a href="category.jsp?categoryName=房地产" class="barlink">房地产</a></li> 
							<li><a href="category.jsp?categoryName=医疗" class="barlink">医疗</a></li> 
							<li><a href="category.jsp?categoryName=食品" class="barlink">食品</a></li>  
						</ul> 
					</li> 
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
							<a href="login.jsp" class="loginbutton">登录/注册</a>
						</div>
					</li>
				</ul> 
			</div> 
		</div> 
	</div> 
    
    <div class="container bodyup" style="width:100%;margin-bottom:10px">
        <div class="row">
        	<div class="col-md-7 col-xs-6">
        		<h1>我的<span style="color:#26AE61;">主页</span></h1>
        	</div>
        	<div class="col-md-5 col-xs-6" style="background-color: #fff;text-align:center;">
            	<img src="./img/img-1.png" style="width:160px" class="img-responsive center-block">
        	</div>
        </div>
	</div>
    
    <div class="container" style="margin-bottom:30px;padding:10px">
    	<div class="row mainrow">
    		<div class="col-md-4 col-xs-12 shadeblock" style="margin-bottom:20px;background-color:#F9FCFF;">
    		<div style="background-color:#F9FCFF;width:100%">
    			<h4 style="padding:10px;padding-left:30px"><b>主页功能</b></h4>
    			<div style="padding:10px 20px 20px 20px;background-color:#fff">
    			<ul class="nav nav-pills nav-stacked">
  					<li role="presentation"><a href="myinfo.jsp" class="greenlinkgray">个人信息</a></li>
  					<li role="presentation"><a href="markedjobs.jsp" class="greenlinkgray">职位收藏</a></li>
  					<li role="presentation"><a href="guessYouLike.jsp" class="greenlinkgray">猜你喜欢</a></li>
  					<li role="presentation" class="active greenlinkgray"><a href="recommend.jsp" class="greenlinkgray">为你推荐</a></li>
				</ul>
				</div>
    		</div>
    		</div>
    		<div class="col-md-8 col-xs-12 shadeblock" style="padding:0px 20px 20px 20px">
    			<div style="width:100%;padding-bottom:10px">
    				<h3><b><span style="color:#26AE61;">为你推荐</span>的就业信息</b></h3>
    			</div>
    			<div style="padding:0px 10px 80px 10px;min-height:650px;width:100%;position:relative">
    				<!--一条就业信息-->
    				<div class="row searchresult">
    						<div class="col-md-4 col-xs-12" style="margin-bottom:10px">
    							<div style="float:left;margin:5px;width:50px;height:50px;padding-top:13px">
    								<span class="glyphicon glyphicon-hand-right" style="color:rgb(2,138,241);height:40px;font-size: 30px"></span>
    							</div>
    							<div style="float:left;margin-left:15px;" class="jobtitle">
    								<h3><a href="#" class="greenlink">输入职位</a></h3>
    								<div style="color:#A9A9A9;">输入公司名</div>
    							</div>
    						</div>
    						<div class="col-md-3 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    						style="font-size:15px;color:#A9A9A9">
    							<span class="glyphicon glyphicon-plane" style="color:#26AE61;"></span>&nbsp;&nbsp;输入地点
    						</div>
    						<div class="col-md-3 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    						style="font-size:15px;color:#A9A9A9;">
    							<div 
									style=
									"border-radius:20px;background-color:rgb(213,255,231);color:#26AE61;margin:-2px 0px 0px -8px;width:auto;display:inline-block;padding:5px 10px">
										薪资：10k-12k
								</div>
    						</div>
    						<div class="col-md-2 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    						style="font-size:15px;">
    							<span class="label label-warning" style="font-size:15px">&nbsp;&nbsp;校招&nbsp;&nbsp;</span>
    						</div>
    					</div>
    					<!--一条就业信息结束。下面类似-->
    					
    					<div class="row searchresult">
    						<div class="col-md-4 col-xs-12" style="margin-bottom:10px">
    							<div style="float:left;margin:5px;width:50px;height:50px;padding-top:13px">
    								<span class="glyphicon glyphicon-hand-right" style="color:#26AE61;height:40px;font-size: 30px"></span>
    							</div>
    							<div style="float:left;margin-left:15px;" class="jobtitle">
    								<h3><a href="#" class="greenlink">输入职位</a></h3>
    								<div style="color:#A9A9A9;">输入公司名</div>
    							</div>
    						</div>
    						<div class="col-md-3 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    						style="font-size:15px;color:#A9A9A9">
    							<span class="glyphicon glyphicon-plane" style="color:#26AE61;"></span>&nbsp;&nbsp;输入地点
    						</div>
    						<div class="col-md-3 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    						style="font-size:15px;color:#A9A9A9;">
    							<div 
									style=
									"border-radius:20px;background-color:rgb(213,255,231);color:#26AE61;margin:-2px 0px 0px -8px;width:auto;display:inline-block;padding:5px 10px">
										薪资：10k-12k
								</div>
    						</div>
    						<div class="col-md-2 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    						style="font-size:15px;">
    							<span class="label label-warning" style="font-size:15px">&nbsp;&nbsp;校招&nbsp;&nbsp;</span>
    						</div>
    					</div>
    					
    					<div class="row searchresult">
    						<div class="col-md-4 col-xs-12" style="margin-bottom:10px">
    							<div style="float:left;margin:5px;width:50px;height:50px;padding-top:13px">
    								<span class="glyphicon glyphicon-hand-right" style="color:rgb(2,138,241);height:40px;font-size: 30px"></span>
    							</div>
    							<div style="float:left;margin-left:15px;" class="jobtitle">
    								<h3><a href="#" class="greenlink">输入职位</a></h3>
    								<div style="color:#A9A9A9;">输入公司名</div>
    							</div>
    						</div>
    						<div class="col-md-3 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    						style="font-size:15px;color:#A9A9A9">
    							<span class="glyphicon glyphicon-plane" style="color:#26AE61;"></span>&nbsp;&nbsp;输入地点
    						</div>
    						<div class="col-md-3 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    						style="font-size:15px;color:#A9A9A9;">
    							<div 
									style=
									"border-radius:20px;background-color:rgb(213,255,231);color:#26AE61;margin:-2px 0px 0px -8px;width:auto;display:inline-block;padding:5px 10px">
										薪资：10k-12k
								</div>
    						</div>
    						<div class="col-md-2 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    						style="font-size:15px;">
    							<span class="label label-warning" style="font-size:15px">&nbsp;&nbsp;校招&nbsp;&nbsp;</span>
    						</div>
    					</div>
    					
    					<div class="row searchresult">
    						<div class="col-md-4 col-xs-12" style="margin-bottom:10px">
    							<div style="float:left;margin:5px;width:50px;height:50px;padding-top:13px">
    								<span class="glyphicon glyphicon-hand-right" style="color:#26AE61;height:40px;font-size: 30px"></span>
    							</div>
    							<div style="float:left;margin-left:15px;" class="jobtitle">
    								<h3><a href="#" class="greenlink">输入职位</a></h3>
    								<div style="color:#A9A9A9;">输入公司名</div>
    							</div>
    						</div>
    						<div class="col-md-3 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    						style="font-size:15px;color:#A9A9A9">
    							<span class="glyphicon glyphicon-plane" style="color:#26AE61;"></span>&nbsp;&nbsp;输入地点
    						</div>
    						<div class="col-md-3 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    						style="font-size:15px;color:#A9A9A9;">
    							<div 
									style=
									"border-radius:20px;background-color:rgb(213,255,231);color:#26AE61;margin:-2px 0px 0px -8px;width:auto;display:inline-block;padding:5px 10px">
										薪资：10k-12k
								</div>
    						</div>
    						<div class="col-md-2 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    						style="font-size:15px;">
    							<span class="label label-warning" style="font-size:15px">&nbsp;&nbsp;校招&nbsp;&nbsp;</span>
    						</div>
    					</div>
    					
    					<div class="row searchresult">
    						<div class="col-md-4 col-xs-12" style="margin-bottom:10px">
    							<div style="float:left;margin:5px;width:50px;height:50px;padding-top:13px">
    								<span class="glyphicon glyphicon-hand-right" style="color:rgb(2,138,241);height:40px;font-size: 30px"></span>
    							</div>
    							<div style="float:left;margin-left:15px;" class="jobtitle">
    								<h3><a href="#" class="greenlink">输入职位</a></h3>
    								<div style="color:#A9A9A9;">输入公司名</div>
    							</div>
    						</div>
    						<div class="col-md-3 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    						style="font-size:15px;color:#A9A9A9">
    							<span class="glyphicon glyphicon-plane" style="color:#26AE61;"></span>&nbsp;&nbsp;输入地点
    						</div>
    						<div class="col-md-3 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    						style="font-size:15px;color:#A9A9A9;">
    							<div 
									style=
									"border-radius:20px;background-color:rgb(213,255,231);color:#26AE61;margin:-2px 0px 0px -8px;width:auto;display:inline-block;padding:5px 10px">
										薪资：10k-12k
								</div>
    						</div>
    						<div class="col-md-2 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    						style="font-size:15px;">
    							<span class="label label-warning" style="font-size:15px">&nbsp;&nbsp;校招&nbsp;&nbsp;</span>
    						</div>
    					</div>
    					
    					<div class="" style="margin-top:20px;width:100%;position:absolute;height:70px;bottom:0px;left:0px">
    						<nav aria-label="Page navigation">
    							<ul class="pager">
    								<li class="previous">
    									<a href="#"><span aria-hidden="true">&larr;</span>上一页</a>
    								</li>
    								<li class="next">
    									<a href="#">下一页<span aria-hidden="true">&rarr;</span></a>
    								</li>
  								</ul>
    						</nav>
    						<div class="pagerdiscp">显示第1项到第5项记录，共50项</div>
    					</div>
    			
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
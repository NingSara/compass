<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>我的信息</title>
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
		.graywords{
			color:#A9A9A9;
		}
    	.form-control{
    		border-top-right-radius: 15px; 
			border-top-left-radius: 15px; 
			border-bottom-right-radius:15px;
			border-bottom-left-radius:15px; 
    	}
    	
    </style>
   
   
  </head>
  <body>
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <div class="navbar navbar-default navbar-fixed-top" style="background-color:white"> 
    <script src="js/distpicker.data.js"></script>
	<script src="js/distpicker.js"></script>
	<script src="js/main.js"></script>
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
  					<li role="presentation" class="active greenlinkgray"><a href="myinfo.jsp" class="greenlinkgray">个人信息</a></li>
  					<li role="presentation"><a href="markedjobs.jsp" class="greenlinkgray">职位收藏</a></li>
  					<li role="presentation"><a href="guessYouLike.jsp" class="greenlinkgray">猜你喜欢</a></li>
  					<li role="presentation"><a href="recommend.jsp" class="greenlinkgray">为你推荐</a></li>
				</ul>
				</div>
    		</div>
    		</div>
    		<form>
    		<div class="col-md-8 col-xs-12 shadeblock" style="padding:0px 20px 20px 20px">
    			<div style="width:100%;padding-bottom:10px">
    				<h3><b><span style="color:#26AE61;">个人信息</span>查看与修改</b></h3>
    			</div>
    			<div style="padding:0px 10px 80px 10px;min-height:650px;width:100%">
    				<div class="row">
    					<div class="col-md-5 col-xs-12">
    						<div class="graywords">姓名</div>
    						<input type="text" class="form-control" style="height:40px">
    						<br>
    					</div>
    				</div>
    				
    				<div class="row">
    					<div class="col-md-5 col-xs-12">
    						<div class="graywords">年龄</div>
    						<div class="input-group">
    							<input type="text" class="form-control" style="height:40px" 
    							onkeyup="this.value=this.value.replace(/\D/g,'')" 
    							onafterpaste="this.value=this.value.replace(/\D/g,'')">
    							<span class="input-group-addon" 
    							style="height:40px;">
    								岁
    							</span>
    						</div>
    						<br>
    					</div>
    					<div class="col-md-4 col-xs-10">
    						<div class="graywords">性别</div>
    						<div class="form-group">
    							<select class="form-control" style="height:39px">
    								<option>保密</option>
     						 		<option>男</option>
      								<option>女</option>
    							</select>
    						</div>
    					</div>
    				</div>
    				
    				<div class="row">
    					<div class="col-md-5 col-xs-10">
    						<div class="graywords">学历</div>
    						<div class="form-group">
    							<select class="form-control" style="height:39px">
    								<option>保密</option>
     						 		<option>小学</option>
      								<option>初中</option>
      								<option>中专</option>
      								<option>高中</option>
      								<option>大专</option>
      								<option>本科</option>
      								<option>硕士</option>
      								<option>博士</option>
    							</select>
    						</div>
    					</div>
    				</div>
    				
    				<div class="row">
    					<div class="col-md-12 col-xs-12">
    						<div class="graywords">专业</div>
    						<input type="text" class="form-control" style="height:40px">
    						<br>
    					</div>
    				</div>
    				
    				<div class="row">
    					<div class="col-md-5 col-xs-12">
    						<div class="graywords">工作年限</div>
    						<div class="input-group">
    						<input type="text" class="form-control" 
    						style="height:40px;border-top-right-radius: 0px;border-bottom-right-radius:0px" 
    						onkeyup="this.value=this.value.replace(/\D/g,'')" 
    						onafterpaste="this.value=this.value.replace(/\D/g,'')">
    						<span class="input-group-addon" 
    						style="height:40px;">
    							年
    						</span>
    					</div>
    				</div>
    				
    					<div class="col-md-5 col-xs-12">
    						<br>
    						<div class="input-group">
    							<input type="text" class="form-control" 
    							style="height:40px;border-top-right-radius: 0px;border-bottom-right-radius:0px" 
    							onkeyup="this.value=this.value.replace(/\D/g,'')" 
    							onafterpaste="this.value=this.value.replace(/\D/g,'')">
    							<span class="input-group-addon" 
    							style="height:40px;">
    								月
    							</span>
    						</div>
    					</div>
    				</div>
    				<br>
    				
    				<div class="row">
    					<div class="col-md-5 col-xs-10">
    						<div class="graywords">是否全职</div>
							<div class="form-group">
    							<select class="form-control" style="height:39px">
    								<option>无要求</option>
     						 		<option>仅全职</option>
      								<option>仅兼职</option>
    							</select>
    						</div>
    					</div>
    					<div class="col-md-5 col-xs-12">
    						<div class="graywords">期望薪资</div>
    						<div class="input-group">
    							<input type="text" class="form-control" style="height:40px" 
    							onkeyup="this.value=this.value.replace(/\D/g,'')" 
    							onafterpaste="this.value=this.value.replace(/\D/g,'')">
    							<span class="input-group-addon" 
    							style="height:40px;">
    								元 / 月
    							</span>
    						</div>
    						<br>
    					</div>
    				</div>
    				
    				
    				
    				<div class="row">
    					<div class="col-md-12 col-xs-12">
    						<div class="graywords">期望地点</div>
    						
    						<div class="row">
    						<div data-toggle="distpicker">
    								<div class="col-md-4 col-xs-10">
									<div class="form-group">
	  								<label class="sr-only" for="province1">Province</label>
	  								<select class="form-control" id="province1" style="height:40px"></select>
									</div>
	  								</div>
	  								<div class="col-md-4 col-xs-10">
									<div class="form-group">
	  								<label class="sr-only" for="city1">City</label>
	  								<select class="form-control" id="city1" style="height:40px"></select>
									</div>
									</div>
									<div class="col-md-4 col-xs-10">
									<div class="form-group">
	  								<label class="sr-only" for="district1">District</label>
	  								<select class="form-control" id="district1" style="height:40px"></select>
									</div>
									</div>
  							</div>
  							</div>
    						<br>
    					</div>
    				</div>
    				
    				<div class="col-md-4 col-xs-12 col-md-push-4">
    				<button type="submit" class="btn btn-block" style="background-color:#3CB371;height:40px;font-size: 17px;color:#fff">
				  	保存信息
					</button>
    				</div>

    				
    			</div>
    		</div>
    		</form>
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
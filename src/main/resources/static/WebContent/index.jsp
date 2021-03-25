<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html> 
<head> 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
	<title>jobHunter</title> 

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./css/navibar.css"/>
    <link rel="stylesheet" type="text/css" href="./css/footer.css"/>
	<style type="text/css"> 
		/* body{padding-top:100px}
		.form-control:focus{
	    	border-color:#3CB371;
	    	box-shadow:none;
		}
		.navbar .nav > li >a:hover{
			color:#26AE61;
		}
		.navbar .nav >li >a:active{
			color:#26AE61;
			
		}
		.loginbutton:link{
			color:#fff;
			text-decoration:none;
		}
		.loginbutton:visited{
			color:#fff;
			text-decoration:none;
		}
		.loginbutton:hover{
			color:#fff;
			text-decoration:none;
		}
		.loginbutton:active{
			color:#fff;
			text-decoration:none;
		} */
		.block11{
			padding-bottom:50px;
		}
		.block12{
			padding-bottom:50px;
		}
		.categoryblock{
			text-align:center;
			padding-top:25px;
			padding-bottom:25px;
			background-color:#fff;
			border:1px solid #DCDCDC;
			margin-right:-1px;
			margin-bottom:-1px;
		}
		.categoryblock:hover{
			background-color:#F9FCFF;
		}
		.categoryblock >h4 >a{
			color:#000000;
			text-decoration:none;
		}
		.categoryblock >h4 >a:hover{
			color:#26AE61;
		}
		.catecount{
			color:#C0C0C0;
		}
		.guessblock{max-width:220px}
		.guessblock >h3 a{
			color:#000000;
			text-decoration:none;
		}
		.guessblock >h3 a:hover{
			color:#26AE61;
		}
		@media screen and (min-width: 768px){
			.guessrow >.col-md-12{
				width: 100%
			}
			.rowrecmen >.col-md-12{
				width: 100%
			}	
		}
		@media screen and (min-width: 992px){
			.guessrow >.col-md-4{
				width: 31%
			}
			.rowrecmen>.col-md-6{
				width: 48%
			}
		}
		.aboutus> div> a{
			color:rgb(138,153,179);
			text-decoration:none;
		}
		.aboutus> div> a:hover{
			color:#26AE61;
		}
		
	</style>
</head>
<body>
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
     
<!--导航--> 
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
							<a href="#" class="loginbutton">登录/注册</a>
						</div>
					</li>
						
					
				</ul> 
			</div> 
		</div> 
	</div> 
	
<div class="container">
    <div class="row body1">
        <div class="col-xs-12 col-md-6 block11">
            <h1 style="margin-top:25px">立刻开始</h1>
            <h1 style="margin-bottom:40px">寻找我的工作</h1>
            <p style="color:#C0C0C0;">Aliquam vestibulum cursus felis. In iaculis iaculis sapien ac condimentum. 
            Vestibulum congue posuere lacus, id tincidunt nisi porta sit amet. 
            Suspendisse et sapien varius, pellentesque dui non.</p>
            <div class="row" >
            	<form class="bs-example bs-example-form" role="form">
				  <div class="col-xs-12 col-md-6" style="margin-top:20px">
				  	<div class="input-group">
            			<span class="input-group-addon" style="height:40px">职位</span>
            			<input type="text" class="form-control" style="height:40px">
        			</div>
				  </div>
				  <div class="col-xs-12 col-md-4" style="margin-top:20px">
				  	<div class="input-group">
            			<input type="text" class="form-control" style="height:40px">
            			<span class="input-group-addon" style="height:40px">地点</span>
        			</div>
				  </div>
				  <div class="col-xs-12 col-md-2" style="margin-top:20px">
				  	<button type="button" class="btn btn-block" style="background-color:#3CB371;height:40px;font-size: 20px">
				  		<span class="glyphicon glyphicon-search" style="color:#fff;height:40px"></span>
				  	</button>
				  </div>
				</form>          
            </div>
            
        </div>
        <div class="col-xs-12 col-md-6 block12" 
        style="background-color: #fff">
        <div class="intro-img">
            <img src="./img/intro.png" style="width:80%" class="img-responsive center-block">
        </div>
        </div>
    </div>
 </div>
 <div style="background-color:#F9FCFF;width:100%;padding-top:20px;padding-bottom:40px">
 <div class="container">
    	<h1 style="text-align:center">按类搜索</h1>
    	<h5 style="color:#C0C0C0;text-align:center;margin-bottom:30px">搜寻喜欢的行业 寻找当下热门领域</h5>
    	<div class="row">
    		<div class="col-xs-12 col-md-3 categoryblock">
            	<div
            	style="height:70px;background-color:#26AE61;border-radius: 50%;width:70px;padding-top:17px;display:inline-block">
            	<span class="glyphicon glyphicon-briefcase" style="color:#fff;height:40px;font-size: 30px"></span>
            	</div>
            	<h4><a href="">金融</a></h4>
            	<span class="catecount">{5000条}</span>
        	</div>
        	
        	<div class="col-xs-12 col-md-3 categoryblock">
            	<div
            	style="height:70px;background-color:rgb(77,173,245);border-radius: 50%;width:70px;padding-top:17px;display:inline-block">
            	<span class="glyphicon glyphicon-bullhorn" style="color:#fff;height:40px;font-size: 30px"></span>
            	</div>
            	<h4><a href="">销售</a></h4>
            	<span class="catecount">{5000条}</span>
        	</div>
        	<div class="col-xs-12 col-md-3 categoryblock" >
            	<div
            	style="height:70px;background-color:rgb(2,138,241);border-radius: 50%;width:70px;padding-top:17px;display:inline-block">
            	<span class="glyphicon glyphicon-book" style="color:#fff;height:40px;font-size: 30px"></span>
            	</div>
            	<h4><a href="">教育/培训</a></h4>
            	<span class="catecount">{5000条}</span>
        	</div>
        	<div class="col-xs-12 col-md-3 categoryblock" >
            	<div
            	style="height:70px;background-color:rgb(128,0,255);border-radius: 50%;width:70px;padding-top:17px;display:inline-block">
            	<span class="glyphicon glyphicon-globe" style="color:#fff;height:40px;font-size: 30px"></span>
            	</div>
            	<h4><a href="">互联网</a></h4>
            	<span class="catecount">{5000条}</span>
        	</div>
    	</div>
    	<div class="row">
    		<div class="col-xs-12 col-md-3 categoryblock">
            	<div
            	style="height:70px;background-color:rgb(64,224,208);border-radius: 50%;width:70px;padding-top:17px;display:inline-block">
            	<span class="glyphicon glyphicon-pencil" style="color:#fff;height:40px;font-size: 30px"></span>
            	</div>
            	<h4><a href="">设计</a></h4>
            	<span class="catecount">{5000条}</span>
        	</div>
        	<div class="col-xs-12 col-md-3 categoryblock">
            	<div
            	style="height:70px;background-color:rgb(255,128,0);border-radius: 50%;width:70px;padding-top:17px;display:inline-block">
            	<span class="glyphicon glyphicon-home" style="color:#fff;height:40px;font-size: 30px"></span>
            	</div>
            	<h4><a href="">房地产</a></h4>
            	<span class="catecount">{5000条}</span>
        	</div>
        	<div class="col-xs-12 col-md-3 categoryblock">
            	<div
            	style="height:70px;background-color:rgb(29,100,180);border-radius: 50%;width:70px;padding-top:17px;display:inline-block">
            	<span class="glyphicon glyphicon-heart-empty" style="color:#fff;height:40px;font-size: 30px"></span>
            	</div>
            	<h4><a href="">医疗</a></h4>
            	<span class="catecount">{5000条}</span>
        	</div>
        	<div class="col-xs-12 col-md-3 categoryblock">
            	<div
            	style="height:70px;background-color:rgb(251,193,240);border-radius: 50%;width:70px;padding-top:17px;display:inline-block">
            	<span class="glyphicon glyphicon-leaf" style="color:#fff;height:40px;font-size: 30px"></span>
            	</div>
            	<h4><a href="">食品</a></h4>
            	<span class="catecount">{5000条}</span>
        	</div>
    	</div>
    	
    </div>
</div>

<div style="width:100%;padding-top:20px;padding-bottom:30px">
	<div class="container">
		<h1 style="text-align:center">猜你喜欢</h1>
    	<h5 style="color:#C0C0C0;text-align:center;margin-bottom:30px">专属我的职位选择 发现最合心意的工作</h5>
    	<div class="row guessrow">
    	
    	<div class="col-xs-12 col-md-4" style="box-shadow: 0px 0px 5px 5px #F5F5F5 ;margin-right:40px;padding-top:10px;padding-bottom:20px">
    		
    		<div style="float:left;margin:10px;box-shadow: 0px 0px 5px 5px #F5F5F5;width:70px;height:70px;text-align:center;padding-top:13px">
    			<img src="./img/features/img1.png" height=40>
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
    	
    	<div class="col-xs-12 col-md-4" style="box-shadow: 0px 0px 5px 5px #F5F5F5 ;margin-right:40px;padding-top:10px;padding-bottom:20px">
    		<div style="float:left;margin:10px;box-shadow: 0px 0px 5px 5px #F5F5F5;width:70px;height:70px;text-align:center;padding-top:13px">
    			<img src="./img/features/img2.png" height=40>
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
    	
    	<div class="col-xs-12 col-md-4" style="box-shadow: 0px 0px 5px 5px #F5F5F5 ;padding-top:10px;padding-bottom:20px">
    		<div style="float:left;margin:10px;box-shadow: 0px 0px 5px 5px #F5F5F5;width:70px;height:70px;text-align:center;padding-top:13px">
    			<img src="./img/features/img3.png" height=40>
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
    	
		<div class="row guessrow" style="margin-top:10px">
		
			<div class="col-xs-12 col-md-4" style="box-shadow: 0px 0px 5px 5px #F5F5F5 ;margin-right:40px;padding-top:10px;padding-bottom:20px">
    		<div style="float:left;margin:10px;box-shadow: 0px 0px 5px 5px #F5F5F5;width:70px;height:70px;text-align:center;padding-top:13px">
    			<img src="./img/features/img4.png" height=40>
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
    	
    	<div class="col-xs-12 col-md-4" style="box-shadow: 0px 0px 5px 5px #F5F5F5 ;margin-right:40px;padding-top:10px;padding-bottom:20px">
    		<div style="float:left;margin:10px;box-shadow: 0px 0px 5px 5px #F5F5F5;width:70px;height:70px;text-align:center;padding-top:13px">
    			<img src="./img/features/img5.png" height=40>
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
    	
    	<div class="col-xs-12 col-md-4" style="box-shadow: 0px 0px 5px 5px #F5F5F5 ;padding-top:10px;padding-bottom:20px">
    		<div style="float:left;margin:10px;box-shadow: 0px 0px 5px 5px #F5F5F5;width:70px;height:70px;text-align:center;padding-top:13px">
    			<img src="./img/features/img6.png" height=40>
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

		<div class="col-xs-12 col-md-4" style="margin-top:20px;width:100%;text-align:center">
			<form class="bs-example bs-example-form" role="form">
				<button 
				type="button" class="btn btn-block" 
				style="background-color:#3CB371;height:40px;width:200px;font-size: 18px;color:#fff;display:block;margin:0 auto">
				查看更多</button>
			</form>
		</div>
	</div>
</div>

<div style="background-color:#F9FCFF;width:100%;padding-top:20px;padding-bottom:40px">
	<div class="container">
		<h1 style="text-align:center">为你推荐</h1>
		<h5 style="color:#C0C0C0;text-align:center;margin-bottom:30px">最符合我的能力 量身定制推荐</h5>
		<div class="row rowrecmen">
    	
    	<div class="col-xs-12 col-md-6" 
    	style=
    	"box-shadow: 0px 0px 5px 5px #F5F5F5 ;margin-right:40px;padding-top:10px;padding-bottom:20px;background-color:#fff">
    		<div style=
    		"float:left;margin:10px;box-shadow: 0px 0px 5px 5px #F5F5F5;width:80px;height:80px;text-align:center;padding-top:13px;">
    			<img src="./img/features/img1.png" height=50>
    		</div>
    		<div style="float:left;margin-left:10px;border-left:1px solid #DCDCDC;padding-left:30px;max-width:400px" class="guessblock">
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
    	
    	<div class="col-xs-12 col-md-6" 
    	style="box-shadow: 0px 0px 5px 5px #F5F5F5 ;padding-top:10px;padding-bottom:20px;background-color:#fff">
    		<div style="float:left;margin:10px;box-shadow: 0px 0px 5px 5px #F5F5F5;width:80px;height:80px;text-align:center;padding-top:13px">
    			<img src="./img/features/img2.png" height=50>
    		</div>
    		<div style="float:left;margin-left:10px;border-left:1px solid #DCDCDC;padding-left:30px;max-width:400px" class="guessblock">
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
    	</div>
    	
		<div class="row rowrecmen" style="margin-top:15px">
    	
    	<div class="col-xs-12 col-md-6" 
    	style=
    	"box-shadow: 0px 0px 5px 5px #F5F5F5 ;margin-right:40px;padding-top:10px;padding-bottom:20px;background-color:#fff">
    		<div style=
    		"float:left;margin:10px;box-shadow: 0px 0px 5px 5px #F5F5F5;width:80px;height:80px;text-align:center;padding-top:13px;">
    			<img src="./img/features/img1.png" height=50>
    		</div>
    		<div style="float:left;margin-left:10px;border-left:1px solid #DCDCDC;padding-left:30px;max-width:400px" class="guessblock">
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
    	
    	<div class="col-xs-12 col-md-6" 
    	style="box-shadow: 0px 0px 5px 5px #F5F5F5 ;padding-top:10px;padding-bottom:20px;background-color:#fff">
    		<div style="float:left;margin:10px;box-shadow: 0px 0px 5px 5px #F5F5F5;width:80px;height:80px;text-align:center;padding-top:13px">
    			<img src="./img/features/img2.png" height=50>
    		</div>
    		<div style="float:left;margin-left:10px;border-left:1px solid #DCDCDC;padding-left:30px;max-width:400px" class="guessblock">
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
    	</div>
    	<div style="margin-top:20px;width:100%">
			<form class="bs-example bs-example-form" role="form">
				<button 
				type="button" class="btn btn-block" 
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
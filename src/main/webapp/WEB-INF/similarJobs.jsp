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
    <title>相似推荐</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./css/navibar.css"/>
    <link rel="stylesheet" type="text/css" href="./css/footer.css"/>
    <style type="text/css">
    	@media (max-width: 768px){
    		.bodysearch> form> .col-xs-12>  button{
    			width:100%;
    		}
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
		}
		@media (min-width: 992px){
			 .bodysearch> form> .col-md-2>  button{
    			width:60%;
    		}
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
        .searchresult{
			box-shadow: 0px 0px 5px 5px #F5F5F5;
			margin-top:20px;
			padding-bottom:15px;
		}
		
		
    </style>
  </head>
  <body style="">
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
	<%!
    List<PositionBaseRecommendLink> positionlist;
    int listlength;
    PositionBaseRecommendLink positionarr[];
    int pagelength=10;
    %>
    <%
    positionlist=(List<PositionBaseRecommendLink>)request.getAttribute("positionBaseRecommends");
    listlength=positionlist.size();
    if(listlength>pagelength)listlength=pagelength;
    positionarr=new PositionBaseRecommendLink[listlength];
    ii=0;
    for(Iterator it=positionlist.iterator();it.hasNext();){
		positionarr[ii]=(PositionBaseRecommendLink)it.next();
		ii++;
		if(ii==pagelength)break;
	}
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
	<!--导航结束-->

<!--标题-->
	<div class="container bodyup" style="width:100%;margin-bottom:10px">
        <div class="row">
        	<div class="col-md-7 col-xs-6">
        		<h1><span style="color:#26AE61;">更多</span><br class="bodyupbr">相似推荐</h1>
        	</div>
        	<div class="col-md-5 col-xs-6" style="text-align:center;">
            	<img src="./img/img-3.png" style="width:160px" class="img-responsive center-block">
        	</div>
        </div>
	</div>
<!--标题结束-->	
<div style="padding-bottom:20px;padding-top:20px;background-color:#F9FCFF">
	<div class="container" style="padding-bottom:20px;">
	<!-- 原招聘信息 -->
		<div class="row" style="box-shadow: 0px 0px 5px 5px #F5F5F5;margin-top:20px;padding-bottom:15px;background:#fff">
    			<div class="col-md-4 col-xs-12" style="margin-bottom:5px">
    				<div style="float:left;margin:10px;width:70px;height:70px;padding-top:13px">
    					<span class="glyphicon glyphicon-hand-right" style="color:rgb(2,138,241);height:40px;font-size: 30px"></span>
    				</div>
    				<div style="float:left;margin-left:30px;max-width:220px">
    					<h3>JAVA开发初级工程师</h3>
    					<div style="color:#A9A9A9;">银联商务股份有限公司</div>
    				</div>
    			</div>
    			<div class="col-md-3 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    			style="font-size:15px;color:#A9A9A9;">
    				<span class="glyphicon glyphicon-plane" style="color:#26AE61;"></span>&nbsp;&nbsp;济南-高新区
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
    </div>
</div>
    <div style="min-height:400px;padding-top:20px;background:#fff">
    	<div class="container" style="padding-bottom:50px;">
    		
            <!--一条相似推荐结果-->
            <%for(int i=0;i<listlength;i++){%>
    		<div class="row searchresult">
    			<div class="col-md-4 col-xs-12" style="margin-bottom:5px">
    				<div style="float:left;margin:10px;width:70px;height:70px;padding-top:13px">
    					<span class="glyphicon glyphicon-hand-right" 
    					style="color:<%if(i%2==0)out.print("rgb(2,138,241)");else out.print("#26AE61"); %>;height:40px;font-size: 30px"></span>
    				</div>
    				<div style="float:left;margin-left:30px;max-width:220px">
    					<h3><a href="<%=positionarr[i].getUrl()%>" class="greenlink">
    					<%=positionarr[i].getName()%><!-- 输入职位 -->
    					</a></h3>
    					<div style="color:#A9A9A9;">
    					<%=positionarr[i].getCompanyName()%><!-- 输入公司名 -->
    					</div>
    				</div>
    			</div>
    			<div class="col-md-3 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    			style="font-size:15px;color:#A9A9A9;">
    				<span class="glyphicon glyphicon-plane" style="color:#26AE61;"></span>&nbsp;&nbsp;
					<%=positionarr[i].getPlace()%><!-- 输入地点 -->
    			</div>
    			<div class="col-md-3 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    			style="font-size:15px;color:#A9A9A9;">
    				<div 
						style=
						"border-radius:20px;background-color:rgb(213,255,231);color:#26AE61;margin:-2px 0px 0px -8px;width:auto;display:inline-block;padding:5px 10px">
							薪资：<%=positionarr[i].getWage()%><!-- 薪资：10k-12k -->
					</div>
    			</div>
    			<div class="col-md-2 col-xs-9 col-xs-push-3 col-md-push-0 alignblock" 
    			style="font-size:15px;">
    				<span class="label label-warning" style="font-size:15px">&nbsp;&nbsp;
						<%=positionarr[i].getType()%><!-- 校招 -->&nbsp;&nbsp;
					</span>
    			</div>
    		</div>
    		<%} %>
    		<!--一条推荐结果结束。下面类似-->

            <!--翻页键部分-->
    		<div class="row" style="margin-top:20px;">
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
    			<div class="pagerdiscp">显示第1项到第<%=listlength %>项记录，共50项</div>
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
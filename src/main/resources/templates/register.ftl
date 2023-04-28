<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" href="/user/css/bootstrap.css" />
		<link rel="stylesheet" href="/user/css/register.css" />
		<link rel="stylesheet" href="/user/css/footer&cbl.css" />
		<link rel="stylesheet" href="/user/css/daohang.css" />
		<script type="text/javascript" src="/user/js/jquery-1.11.3.js" ></script>
		<script type="text/javascript" src="/user/js/bootstrap.js" ></script>
		<script type="text/javascript" src="/user/js/templet.js" ></script>
		<title></title>
	</head>
	<body>
	<div id="main">
		<nav class=" navbar-inverse" id="daohang">
				<div class="daohang">
					<div class="navbar-header clearfix">
						<button type="button" class="zd" id="zd" >
							<span class="glyphicon glyphicon-align-justify"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse" id="daohangtiao">
						<span class="close"><a href="/index"><i></i></a></span>
					</div>						
				</div>
				<div id="box">
					<div class="box1 col-sm-2 col-xs-2">
						<span id="X" class="glyphicon glyphicon-remove pull-right" ></span>
					</div>
					<div class="box2 col-sm-10 col-xs-10" >
						<ul id="ul1"class="clearfix">
							<li><a href="index.html">首页</a></li>
							<li><a href="templet.html">模板</a></li>
							<li><a href="setmeal.html">套餐</a></li>
							<li><a href="example.html">案例</a></li>
							<li id="wd"><a>文档<i class="glyphicon glyphicon-menu-right"></i></a></li>
							<li id="gy"><a>关于<i class="glyphicon glyphicon-menu-right"></i></a></li>
						</ul>
						<div id="wd1">
							<ul>
								<li id="fanhui1"><a>返回上一级</a></li>
								<li><a>教程中心</a></li>
								<li><a>建站资讯</a></li>
								<li><a>更新日志</a></li>
							</ul>
						</div>
						<div id="gy1" >
							<ul id="ul2">
								<li id="fanhui2"><a>返回上一级</a></li>
								<li id="gcxx"><a>公司信息<i class="glyphicon glyphicon-menu-right"></i></a></li>
								<li><a>荣誉资质</a></li>
								<li><a>联系客服</a></li>
							</ul>
						</div>
						<div id="gc" >
							<ul >
								<li id="fanhui3"><a>返回上一级</a></li>
								<li><a>公司介绍</a></li>
								<li><a>服务条款</a></li>
								<li><a>法律声明</a></li>
								<li><a>可接受服务</a></li>
								<li><a>免责声明</a></li>
							</ul>
						</div>
					</div>
				</div>
			</nav>
		<div class="main">
			<div class="container  ">
				<div class="c2">
					<a href=""></a><span>
						<img src="img/logo2.jpg" />
					</span></a>
					<p>从这里开启奇妙之旅</p>
				</div>
				<div class="c3">
					<form>
						<div class="form-group">
    						<label for="usernameoremail">用户名</label>
    						<input type="text" class="form-control" id="username">
    						<span class="pp hide">此项必须填写</span>
  						</div>
  						<div class="form-group">
    						<label for="password">密码 <img class="help" src="/user/img/help.png" title="最少6位"/>*</label>
    						<input type="password" class="form-control" id="password">
  							<span class="pp hide">此项必须填写</span>
  						</div>
  						<div class="form-group">
    						<label for="password">再次输入密码 </label>
    						<input type="password" class="form-control" id="password2">
  						</div>
  						<div class="c3-1">
							<button type="button" class="btn btn-default btn1" onclick="r()">注册</button>
							<a href="/login" type="button" class="btn btn-default btn2">已经有账号了?请登录</a>
						</div>
					</form>
				</div>
			</div>
		</div>
		<ul class="cbl" >
			<li><a href="#">
				<div class="icon d1"><i class="i1"></i><span class="title">在线客服</span></div>
			</a></li>
			<i class="clearfix"></i>
			<li><a href="#">
				<div class="icon d2"><i class="i2"></i><span class="title">4006285729</span></div>
			</a></li>
			<i class="clearfix"></i>
			<li><a  href="#">
				<div class="icon"><i class="i3"></i><span class="title">教程中心</span></div>
			</a></li>
			<i class="clearfix"></i>
			<li ><a  href="#">
				<div class="icon d4" data-toggle="tooltip" data-placement = "left" title="<img src='img/erweima.png'><br/> 关注微信 " data-html="true"><i class="i4"></i></div>
			</a></li>
		</ul>
	</div>
	</body>
<#--	<script type="text/javascript" src="js/hp.js" ></script>-->
	<script type="text/javascript">
		function r(){
			var username = $("#username").val();
			var password = $("#password").val();
			var password2 = $("#password2").val();
			if ($("#username").val() == "" || $("#psw").val() == "") {
				alert("用户名或密码不能为空！");
			}else if(password!=password2){
				alert("密码不一致");
			}
			else {
				console.log(10);
				$.ajax({
					url:"/register2/"+username+"/"+password,//所要提交数据的服务器地址
					type:"POST",
					dataType:"json",
					contentType:'application/x-www-form-urlencoded;charset=UTF-8',
					async:false,
					cache:false,
					success:function (json) {
						console.log(json.url);
						if(json.flag==1)
							window.location.href=json.url;
					}, //submit提交事件返回true则表单提交,false则阻止表单提交
				})
			}
		};
	</script>
	
</html>

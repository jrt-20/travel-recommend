<!DOCTYPE html>
<html lang="zh-Hans-CN">
<head>
	<meta charset="UTF-8">
	<title>马林旅游社</title>
	<link rel="stylesheet" href="/css/basic.css">
	<link rel="stylesheet" href="/css/column.css">
</head>
<body>
<header id="header">
	<div class="center">
		<h1 class="logo"></h1>
		<nav class="link">
			<h2 class="none">网站导航</h2>
			<ul>
				<li class="active"><a href="/index">首页</a></li>
				<li><a href="/info/1">旅游资讯</a></li>
				<li><a href="ticket.html">机票订购</a></li>
				<li><a href="scenery.html">风景欣赏</a></li>
				<#if user??>
					<li><a href="/login">Welcome,${user.username}</a></li>
					<li><a href="/loginOut">退出</a></li>
					<#else>
						<li><a href="/login">登录</a></li>
				</#if>
			</ul>
		</nav>
	</div>
</header>
<div id="headline">
	<div class="center">
		<hgroup>
			<h2>风景欣赏</h2>
			<h3>欣赏各种美景、体验大自然的魅力</h3>
		</hgroup>
	</div>
</div>

<div id="container">
	<aside class="sidebar">
		<div class="sidebox recommend">
			<h2>景点概览</h2>
			<div class="tag">
				<#list titles as title>
					<li><a href="###">${title.sname}</a></li>
				</#list>
			</div>
		</div>
		<div class="sidebox hot">
			<h2>好评优先</h2>
			<div class="figure">
				<#list rightData as rdata>
					<figure>
						<img src=${rdata.url} width="150px" height="120px" alt=${rdata.brief}>
						<figcaption>${rdata.sname}</figcaption>
					</figure>
				</#list>
			</div>
		</div>
		<div class="sidebox treasure">
			<h2>旅游百宝箱</h2>
			<div class="box">
				<a href="###" class="trea1">天气预报</a>
				<a href="###" class="trea2">火车票查询</a>
				<a href="###" class="trea3">航空查询</a>
				<a href="###" class="trea4">地铁线路查询</a>
			</div>
		</div>

	</aside>
	<div class="list scenery">
		<section>
			<h2>景点推荐</h2>
		</section>
		<#list data as elem>
			<figure>
				<a href="/info/${elem.getSid()}">
					<img src=${elem.url} alt=${elem.brief} >
				</a>
				<figcaption>${elem.sname}  ${elem.brief}</figcaption>
			</figure>
		</#list>
		<div class="more">加载更多...</div>
	</div>
</div>

<footer id="footer">
	<div class="top">
		<div class="block left">
			<h2>合作伙伴</h2>
			<hr>
			<ul>
				<li>途牛旅游</li>
				<li>驴妈妈旅游网</li>
				<li>携程旅游</li>
				<li>中国青年旅社</li>
			</ul>
		</div>
		<div class="block center">
			<h2>旅游FAQ</h2>
			<hr>
			<ul>
				<li>旅游合同签订方式？</li>
				<li>儿童价是基于什么制定的？</li>
				<li>旅游线路的品质怎么界定的？</li>
				<li>单房差是什么？</li>
				<li>旅游保险有哪些种类？</li>
			</ul>
		</div>
		<div class="block right">
			<h2>联系方式</h2>
			<hr>
			<ul>
				<li>微博：林769835910</li>
				<li>FaceBook:吴广林</li>
				<li>邮箱：769835910@qq.com</li>
				<li>地址：汕头市金平区大学路243号</li>
			</ul>
		</div>
	</div>
	<div class="bottom">COPY © 马林旅行社| 汕ICP 备2014101058 号| 旅行社经营许可证：L-YC-BK12345</div>


</footer>
</body>
</html>
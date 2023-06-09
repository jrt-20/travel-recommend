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
		<h1 class="logo">马林旅行社</h1>
		<nav class="link">
			<h2 class="none">网站导航</h2>
			<ul>
				<li><a href="/index">首页</a></li>
				<li class="active"><a href="information.html">旅游资讯</a></li>
				<li><a href="#">机票订购</a></li>
				<li><a href="#">风景欣赏</a></li>
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
			<h2>旅游资讯</h2>
			<h3>介绍各种最新旅游信息、资讯要闻、景点攻略</h3>
		</hgroup>
	</div>
</div>

<div id="container">
	<aside class="sidebar">
		<div class="sidebox recommend">
			<h2>景点推荐</h2>
			<div class="tag">
				<li><a href="###">曼谷(12)</a></li>
				<li><a href="###">东京(5)</a></li>
				<li><a href="###">西双版纳(8)</a></li>
				<li><a href="###">漓江(16)</a></li>
				<li><a href="###">呼伦贝尔(4)</a></li>
				<li><a href="###">首尔(9)</a></li>
				<li><a href="###">巴厘岛(15)</a></li>
				<li><a href="###">土耳其(22)</a></li>
				<li><a href="###">夏威夷(5)</a></li>
				<li><a href="###">巴厘岛(15)</a></li>
				<li><a href="###">毛里求斯(7)</a></li>
				<li><a href="###">吉普岛(4)</a></li>
				<li><a href="###">希腊(18)</a></li>
				<li><a href="###">法瑞意(8)</a></li>
				<li><a href="###">马尔代夫(9)</a></li>
				<li><a href="###">新西兰(16)</a></li>
				<li><a href="###">埃及(11)</a></li>
				<li><a href="###">迪拜(14)</a></li>
				<li><a href="###">斯里兰卡(7)</a></li>
				<li><a href="###">麦哈顿(3)</a></li>
				<li><a href="###">大阪(15)</a></li>
			</div>
		</div>
		<div class="sidebox hot">
			<h2>热点推荐</h2>
			<div class="figure">
				<figure>
					<img src="/img/hot1.jpg" width="150px" height="120px" alt="埃及迪拜10-12日游">
					<figcaption>埃及迪拜10日游</figcaption>
				</figure>
				<figure>
					<img src="/img/hot2.jpg" width="150px" height="120px" alt="法瑞意德10-12日游">
					<figcaption>法瑞意德10日游</figcaption>
				</figure>
				<figure>
					<img src="/img/hot3.jpg" width="150px" height="120px" alt="俄罗斯8日游">
					<figcaption>俄罗斯8日游</figcaption>
				</figure>
				<figure>
					<img src="/img/hot4.jpg" width="150px" height="120px" alt="澳凯墨10日游">
					<figcaption>澳凯墨10日游</figcaption>
				</figure>
				<figure>
					<img src="/img/hot5.jpg" width="150px" height="120px" alt="迪拜+阿布扎比6日游">
					<figcaption>迪拜+阿布扎比6日游</figcaption>
				</figure>
				<figure>
					<img src="/img/hot6.jpg" width="150px" height="120px" alt="德法瑞意11-12日游">
					<figcaption>德法瑞意11-12日游</figcaption>
				</figure>
				<figure>
					<img src="/img/hot7.jpg" width="150px" height="120px" alt="东京-富士山-大阪6日游">
					<figcaption>东京-富士山-大阪6日游</figcaption>
				</figure>
				<figure>
					<img src="/img/hot8.jpg" width="150px" height="120px" alt="巴厘岛4晚5日游">
					<figcaption>巴厘岛4晚5日游</figcaption>
				</figure>
				<figure>
					<img src="/img/hot9.jpg" width="150px" height="120px" alt="曼谷-芭提雅6日游">
					<figcaption>曼谷-芭提雅6日游</figcaption>
				</figure>
				<figure>
					<img src="/img/hot10.jpg" width="150px" height="120px" alt="香港观光1日游">
					<figcaption>香港观光1日游</figcaption>
				</figure>
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
	<div class="list information">
		<div class="infor">
			<ul class="left">
				<li><a href="###">限时特价</a></li>
				<li><a href="###">热门推荐</a></li>
			</ul>
			<ul class="right">
				<li><a href="###" class="select">推荐</a></li>
				<li><a href="###">折扣</a></li>
				<li><a href="###">价格</a></li>
			</ul>
		</div>
		<figure class="tour">
			<img src="/img/tour1.jpg" alt="巴黎 卢浮宫博物馆">
			<figcaption>
				<article>
					<header>
						<hgroup>
							<h2>巴黎 卢浮宫博物馆</h2>
							<h3>【世界三大博物馆】巴黎 卢浮宫博物馆门票（免排队购票+中文语音导览）</h3>
						</hgroup>
						<ol>
							<li><mark>交通</mark>春秋航空，杭州出发，无需专辑</li>
							<li><mark>团期</mark>11/01、11/03、11/08...</li>
						</ol>
						<div class="buy">
							<div class="price">￥<strong>277</strong><s>￥633</s></div>
							<div class="reserve"><a href="###">立即抢购</a></div>
						</div>
						<div class="type">欧洲旅游</div>
						<div class="disc"><span>5.7折</span></div>
					</header>
					<footer>本团旅游由马林旅行社赞助提供，截止于<time>2017-10-10</time></footer>
				</article>
			</figcaption>
		</figure>
		<figure class="tour">
			<img src="/img/tour2.jpg" alt="巴塞罗那 热气球飞越加泰罗尼亚清晨静谧之旅">
			<figcaption>
				<article>
					<header>
						<hgroup>
							<h2>巴塞罗那 热气球</h2>
							<h3>【飞屋环球梦】飞越加泰罗尼亚清晨静谧之旅(60-90分钟 含早餐)</h3>
						</hgroup>
						<ol>
							<li><mark>交通</mark>春秋航空，杭州出发，无需专辑</li>
							<li><mark>团期</mark>11/01、11/03、11/08...</li>
						</ol>
						<div class="buy">
							<div class="price">￥<strong>1233</strong><s>￥2714</s></div>
							<div class="reserve"><a href="###">立即抢购</a></div>
						</div>
						<div class="type">浪漫旅游</div>
						<div class="disc"><span>4.7折</span></div>
					</header>
					<footer>本团旅游由马林旅行社赞助提供，截止于<time>2017-10-10</time></footer>
				</article>
			</figcaption>
		</figure>
		<figure class="tour">
			<img src="/img/tour3.jpg" alt="冰岛 雷克雅未克到蓝湖地热温泉往返交通">
			<figcaption>
				<article>
					<header>
						<hgroup>
							<h2>冰岛 舒适温泉</h2>
							<h3>【舒适温泉梦】冰岛 雷克雅未克到蓝湖地热温泉往返交通(不含温泉票)</h3>
						</hgroup>
						<ol>
							<li><mark>交通</mark>春秋航空，杭州出发，无需专辑</li>
							<li><mark>团期</mark>11/01、11/03、11/08...</li>
						</ol>
						<div class="buy">
							<div class="price">￥<strong>282</strong><s>￥620</s></div>
							<div class="reserve"><a href="###">立即抢购</a></div>
						</div>
						<div class="type">主题旅游</div>
						<div class="disc"><span>4.2折</span></div>
					</header>
					<footer>本团旅游由马林旅行社赞助提供，截止于<time>2017-10-10</time></footer>
				</article>
			</figcaption>
		</figure>
		<figure class="tour">
			<img src="/img/tour4.jpg" alt="苏格兰高地 天空岛 哈利波特足迹三日游">
			<figcaption>
				<article>
					<header>
						<hgroup>
							<h2>哈利波特足迹三日游</h2>
							<h3>【欧洲城堡风】苏格兰高地 天空岛 哈利波特足迹三日游(赠爱丁堡游)</h3>
						</hgroup>
						<ol>
							<li><mark>交通</mark>春秋航空，杭州出发，无需专辑</li>
							<li><mark>团期</mark>11/01、11/03、11/08...</li>
						</ol>
						<div class="buy">
							<div class="price">￥<strong>1262</strong><s>￥2688</s></div>
							<div class="reserve"><a href="###">立即抢购</a></div>
						</div>
						<div class="type">欧洲旅游</div>
						<div class="disc"><span>5.5折</span></div>
					</header>
					<footer>本团旅游由马林旅行社赞助提供，截止于<time>2017-10-10</time></footer>
				</article>
			</figcaption>
		</figure>
		<figure class="tour">
			<img src="/img/tour5.jpg" alt="畅游地中海仙境 意大利五渔村一日游">
			<figcaption>
				<article>
					<header>
						<hgroup>
							<h2>意大利五渔村一日游</h2>
							<h3>【艳绝四海八荒】 畅游地中海仙境 意大利五渔村一日游(佛罗伦萨往返)</h3>
						</hgroup>
						<ol>
							<li><mark>交通</mark>春秋航空，杭州出发，无需专辑</li>
							<li><mark>团期</mark>11/01、11/03、11/08...</li>
						</ol>
						<div class="buy">
							<div class="price">￥<strong>687</strong><s>￥1253</s></div>
							<div class="reserve"><a href="###">立即抢购</a></div>
						</div>
						<div class="type">浪漫旅游</div>
						<div class="disc"><span>5.7折</span></div>
					</header>
					<footer>本团旅游由马林旅行社赞助提供，截止于<time>2017-10-10</time></footer>
				</article>
			</figcaption>
		</figure>
		<figure class="tour">
			<img src="/img/tour6.jpg" alt="意大利 圣吉米尼亚诺+托斯卡纳酒庄+锡耶纳一日游">
			<figcaption>
				<article>
					<header>
						<hgroup>
							<h2>意大利一日游</h2>
							<h3>意大利 圣吉米尼亚诺+托斯卡纳酒庄+锡耶纳一日游(含当地午餐+葡萄酒品尝)</h3>
						</hgroup>
						<ol>
							<li><mark>交通</mark>春秋航空，杭州出发，无需专辑</li>
							<li><mark>团期</mark>11/01、11/03、11/08...</li>
						</ol>
						<div class="buy">
							<div class="price">￥<strong>380</strong><s>￥710</s></div>
							<div class="reserve"><a href="###">立即抢购</a></div>
						</div>
						<div class="type">欧洲旅游</div>
						<div class="disc"><span>4.8折</span></div>
					</header>
					<footer>本团旅游由马林旅行社赞助提供，截止于<time>2017-10-10</time></footer>
				</article>
			</figcaption>
		</figure>
		<figure class="tour">
			<img src="/img/tour7.jpg" alt="法国 圣米歇尔山一日游">
			<figcaption>
				<article>
					<header>
						<hgroup>
							<h2>圣米歇尔山一日游</h2>
							<h3>【一价全包】法国 圣米歇尔山一日游 (中文+法式午餐可选)</h3>
						</hgroup>
						<ol>
							<li><mark>交通</mark>春秋航空，杭州出发，无需专辑</li>
							<li><mark>团期</mark>11/01、11/03、11/08...</li>
						</ol>
						<div class="buy">
							<div class="price">￥<strong>263.64</strong><s>￥640</s></div>
							<div class="reserve"><a href="###">立即抢购</a></div>
						</div>
						<div class="type">欧洲旅游</div>
						<div class="disc"><span>4.5折</span></div>
					</header>
					<footer>本团旅游由马林旅行社赞助提供，截止于<time>2017-10-10</time></footer>
				</article>
			</figcaption>
		</figure>
		<figure class="tour">
			<img src="/img/tour8.jpg" alt="瑞士 人生必登的巅峰 少女峰一日游">
			<figcaption>
				<article>
					<header>
						<hgroup>
							<h2>瑞士 少女峰一日游</h2>
							<h3>【完成愿望清单】瑞士 人生必登的巅峰 少女峰一日游 (苏黎世往返+登山齿轮小火车)</h3>
						</hgroup>
						<ol>
							<li><mark>交通</mark>春秋航空，杭州出发，无需专辑</li>
							<li><mark>团期</mark>11/01、11/03、11/08...</li>
						</ol>
						<div class="buy">
							<div class="price">￥<strong>1497</strong><s>￥3220</s></div>
							<div class="reserve"><a href="###">立即抢购</a></div>
						</div>
						<div class="type">浪漫旅游</div>
						<div class="disc"><span>4.6折</span></div>
					</header>
					<footer>本团旅游由马林旅行社赞助提供，截止于<time>2017-10-10</time></footer>
				</article>
			</figcaption>
		</figure>
		<figure class="tour">
			<img src="/img/tour9.jpg" alt="德国 国王湖Königssee一日游">
			<figcaption>
				<article>
					<header>
						<hgroup>
							<h2>德国 国王湖一日游</h2>
							<h3>【私家包车含酒店接送:德国仙境】德国 国王湖Königssee一日游(慕尼黑出发+中文导游)</h3>
						</hgroup>
						<ol>
							<li><mark>交通</mark>春秋航空，杭州出发，无需专辑</li>
							<li><mark>团期</mark>11/01、11/03、11/08...</li>
						</ol>
						<div class="buy">
							<div class="price">￥<strong>2588</strong><s>￥4200</s></div>
							<div class="reserve"><a href="###">立即抢购</a></div>
						</div>
						<div class="type">欧洲旅游</div>
						<div class="disc"><span>6.6折</span></div>
					</header>
					<footer>本团旅游由马林旅行社赞助提供，截止于<time>2017-10-10</time></footer>
				</article>
			</figcaption>
		</figure>
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
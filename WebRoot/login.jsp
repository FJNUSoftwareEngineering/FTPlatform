<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="image/favicon.ico">

<title>开发基金平台</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-responsive.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/signin.css" rel="stylesheet">
</head>

<body>
	<div class="container"
		style="background:url(image/bg2.jpg);background-repeat:no-repeat;">
		<form action="login_result" class="form-signin"
			style="background:url(image/login_bg.png)">
			<h3 class="form-signin-heading form-signin-heading-signin">登 录</h3>
			<input type="text" class="form-control form-control-signin"
				name="account_id" placeholder="身份证号码" required autofocus>
			<input type="password" class="form-control form-control-signin"
				name="account_pwd" placeholder="密码" required>
			<label class="checkbox checkbox-signin"> <input
				type="checkbox" value="remember-me"> 记住账号 </label>
			<button class="btn btn-lg btn-primary  btn-block btn-signin"
				type="submit">登 录</button>
		</form>
	</div>
	<hr style="margin-top: 100px;">

	<!-- Example row of columns -->
	<div class="row-fluid row-fluid-signin">
		<div class="span4">
			<h2>规模优势</h2>
			<p>
				投资基金可以将零散资金汇集起来成为具备规模优势的资金，交由专业经理人投资于各种金融工具，使投资者的少量资金也能享受组合投资带来的利益，同时通过规模投资还可以使投资者进入小额投资者所不能进入的投资领域，如在银行间市场买卖国债等。</p>

			<p>
			<div class="image" style="background:url(image/image1.jpg);"></div>
			</p>
			<p>
				<a class="image" href="#">View details &raquo;</a>
			</p>

		</div>
		<div class="span4">
			<h2>分散投资风险</h2>
			<p>投资学上有一个谚语：“不要把所有的鸡蛋放在一个篮子里”。投资经验的分析也表明，要在投资中做到起码的分散风险，通常至少要持有30支左右的股票。基金则有雄厚的资金，可分散投资于多种证券，进行组合投资。</p>
			<p>
			<div class="image" style="background:url(image/image3.jpg);"></div>
			</p>
			<p>
				<a class="btn" href="#">View details &raquo;</a>
			</p>
		</div>
		<div class="span4">
			<h2>专家管理</h2>
			<p>基金实行专家管理制度，能对金融市场上各种品种的价格变动趋势作出比较正确的预测，最大限度地避免投资决策的失误，提高投资成功率。</p>
			<p>
			<div class="image" style="background:url(image/image2.jpg);"></div>
			</p>
			<p>
				<a class="btn" href="#">View details &raquo;</a>
			</p>
		</div>
	</div>

	<hr>

	<footer>
	<p>&copy; Company 2014 陈子为、林丹、侯艺凡、郑梅香</p>
	</footer>
	</div>
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
</body>
</html>

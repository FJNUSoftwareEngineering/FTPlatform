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
<link href="css/newclient.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>

</head>



<body>
	<hr style="margin-top: 0px;">
	<!-- Example row of columns -->
	<div class="container">

		<!-- Main component for a primary marketing message or call to action -->
		<div class="jumbotron">
			<form action="add_holding">
				<div class="clearfix">
					<div class="fundNo" style="width: 40%; float: left;">
						<h3 class="right small clearfix">基金编号:</h3>
					</div>
					<div class="fundNo" style="width: 40%;float: left;">
						<s:textfield Class="form-control right top" style="width: 80%"
							readonly="true" name="fund.fundNo"></s:textfield>
					</div>
				</div>
				<div class="clearfix">
					<div class="fundname" style="width: 40%; float: left;">
						<h3 class="right small clearfix">产品名称:</h3>
					</div>
					<div class="fundname" style="width: 40%;float: left;">
						<s:textfield Class="form-control right top" style="width: 80%"
							readonly="true" name="fund.fundName"></s:textfield>
					</div>

				</div>
				<div class="clearfix">
					<div class="price" style="width: 40%; float: left;">
						<h3 class="right small clearfix">基金价格:</h3>
					</div>
					<div class="price" style="width: 40%;float: left;">
						<s:textfield Class="form-control right top" style="width: 80%"
							readonly="true" name="fund.price"></s:textfield>
					</div>
				</div>
				<div class="clearfix">
					<div class="fundaccountno" style="width: 40%; float: left;">
						<h3 class="right small clearfix">资金账户:</h3>
					</div>
					<div class="fundaccountno" style="width: 40%;float: left;">
						<input type="text" class="form-control right top"
							style="width: 80%" name="financialAccount.accNo" placeholder="Type account no"
							required>
					</div>


				</div>
				<div class="clearfix">
					<div class="amount" style="width: 40%; float: left;">
						<h3 class="right small clearfix">够买数量:</h3>
					</div>
					<div class="amount" style="width: 40%;float: left;">
						<input type="text" class="form-control right top" style="width: 80%"
							name="fundHolding.amount" placeholder="0" required>

					</div>

				</div>
				<div class="clearfix">
					<div class="fundaccountpwd" style="width: 40%; float: left;">
						<h3 class="right small clearfix">资金账户密码:</h3>
					</div>
					<div class="fundaccountpwd" style="width: 40%;float: left;">
						<input type="text" class="form-control right top"
							style="width: 80%" name="financialAccount.accPwd" placeholder="Type pwd"
							required>
					</div>

				</div>
				<button class="btn btn-mid btn-primary top-max "
					style="margin-left: 327px" type="submit">够买</button>
				<a class="btn btn-mid btn-success top-max" href="" role="button">取消
				</a>

			</form>
		</div>

	</div>

</body>
<script language=javascript>
	function onlyNum() {
		if (!((event.keyCode >= 48 && event.keyCode <= 57) || (event.keyCode >= 96 && event.keyCode <= 105)))
			event.returnValue = false;
	}
</script>

</html>

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
			<form action="add_financialaccount_result">
				<div class="clearfix">
					<div class="clientcard" style="width: 40%; float: left;">
						<h3 class="right small clearfix">客户编号:</h3>
					</div>
					<div class="clientcard" style="width: 40%;float: left;">
						<input type="text" class="form-control right top"
							style="width: 80%" name="idcard_no" placeholder="Type id-card"
							required>
					</div>
				</div>
				<div class="clearfix">
					<div class="clientphone" style="width: 40%; float: left;">
						<h3 class="right small clearfix">开户金额:</h3>
					</div>
					<div class="clientphone" style="width: 40%;float: left;">
						<input type="text" class="form-control right top"
							style="width: 80%" name="acc_amount" placeholder="Type fund"
							required>
					</div>

				</div>
				<div class="clearfix">
					<div class="clientadress" style="width: 40%; float: left;">
						<h3 class="right small clearfix">账户密码:</h3>
					</div>
					<div class="clientemail" style="width: 40%;float: left;">
						<input type="text" class="form-control right top"
							style="width: 80%" name="acc_pwd" placeholder="Type pwd" required>
					</div>

				</div>
				<div class="clearfix">
					<div class="clientemail" style="width: 40%; float: left;">
						<h3 class="right small clearfix">密码确认:</h3>
					</div>
					<div class="clientemail" style="width: 40%;float: left;">
						<input type="text" class="form-control right top"
							style="width: 80%" name="acc_pwd_check" placeholder="Type again"
							required>
					</div>

				</div>
				<button class="btn btn-mid btn-primary top-max "
					style="margin-left: 327px" type="submit">保存</button>
				<a class="btn btn-mid btn-success top-max" href="" role="button">取消
				</a>
			</form>
		</div>
	</div>

</body>
<script language="JavaScript">
	function SelectMan() {
		selectsex.innerHTML = "男<span class=\"caret\"></span>";
		sex.value = "M";
	}
	function SelectWoman() {
		selectsex.innerHTML = "女<span class=\"caret\"></span>";
		sex.value = "W";
	}
</script>
</html>

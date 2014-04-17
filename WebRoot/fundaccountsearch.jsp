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

	<div class="clearfix">
		<form action="search_financial_account">
			<div class="clientcard" style="width: 40%;float: left;">
				<h3 class="clearfix">资金帐户号码:</h3>
				<input type="text" class="form-control"
					style="float: left;margin-top: 5px;width: 65%" name="search"
					placeholder="Capital account number" required>
				<button class="btn btn-mid btn-primary"
					style="margin-top: 5px;font-size: 13" type="submit">查 询</button>

			</div>
		</form>
	</div>
	<hr style="margin-top: 10px;">
	<div class="jumbotron">
		<div class="clearfix">
			<div class="clientcard" style="width: 40%; float: left;">
				<h3 class="right small clearfix">账户号码:</h3>
			</div>
			<div class="clientcard" style="width: 40%;float: left;">
				<input type="text" class="form-control right top" readOnly="true"
					style="width: 80%" name="id_card_no"
					placeholder="Capital account number" required>
			</div>
		</div>
		<div class="clearfix">
			<div class="clientcard" style="width: 40%; float: left;">
				<h3 class="right small clearfix">资金:</h3>
			</div>
			<div class="clientcard" style="width: 40%;float: left;">
				<input type="text" class="form-control right top" style="width: 80%"
					readOnly="true" name="id_card_no" placeholder="Capital amount"
					required>
			</div>
		</div>
		<div class="clearfix">
			<div class="clientname" style="width: 40%; float: left;">
				<h3 class="right small clearfix">开户时间:</h3>
			</div>
			<div class="clientname" style="width: 40%;float: left;">
				<input type="text" class="form-control right top" style="width: 80%"
					readOnly="true" name="client_name"
					placeholder="Capital create date" required>
			</div>

		</div>

		<div class="clearfix">
			<div class="clientadress" style="width: 40%; float: left;">
				<h3 class="right small clearfix">客户代码:</h3>
			</div>
			<div class="clientname" style="width: 40%;float: left;">
				<input type="text" class="form-control right top" style="width: 80%"
					readOnly="true" name="client_name" placeholder="Capital ID Card No"
					required>
			</div>


		</div>
		<div class="clearfix">
			<div class="clientname" style="width: 40%; float: left;">
				<h3 class="right small clearfix">客户名称:</h3>
			</div>
			<div class="clientname" style="width: 40%;float: left;">
				<input type="text" class="form-control right top" style="width: 80%"
					readOnly="true" name="client_name" placeholder="Capital name"
					required>
			</div>

		</div>
		<div class="clearfix">
			<div class="clientname" style="width: 40%; float: left;">
				<h3 class="right small clearfix">账户状态:</h3>
			</div>
			<div class="clientname" style="width: 40%;float: left;">
				<input type="text" class="form-control right top" readOnly="true"
					style="width: 80%" name="client_name" placeholder="Capital state"
					required>
			</div>
			<div class="clientname" style="width: 40%;float: left;">
				<button class="btn btn-mid btn-danger top-max "
					style="margin-left: 365px" type="submit">冻结账户</button>
			</div>
		</div>
	</div>
</body>
</html>

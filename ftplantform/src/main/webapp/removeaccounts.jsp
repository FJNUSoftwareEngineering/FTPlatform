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
	<div class="jumbotron">
		<form action="deduct_financialamount_result">
			<div class="clearfix">
				<div class="clientcard" style="width: 40%; float: left;">
					<h3 class="right small clearfix">资金账户号码:</h3>
				</div>
				<div class="clientcard" style="width: 40%;float: left;">
					<input type="text" class="form-control right top"
						style="width: 80%" name="acc_no" placeholder="account no" required pattern="^\d+$"
							title="请输入正确的资金账户格式">
				</div>
			</div>
			<div class="clearfix">
				<div class="clientcard" style="width: 40%; float: left;">
					<h3 class="right small clearfix">取出金额:</h3>
				</div>
				<div class="clientcard" style="width: 40%;float: left;">
					<input type="text" class="form-control right top"
						style="width: 80%" name="acc_amount" placeholder="account amount"
						required pattern="^\d{1,10}(\.\d{1,2})?$" title="正确格式：0.39或1.00">
				</div>
			</div>
			<button class="btn btn-mid btn-danger top-max "
				style="margin-left: 365px" type="submit">取 出</button>
		</form>
	</div>
</body>
</html>

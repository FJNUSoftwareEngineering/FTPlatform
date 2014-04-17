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
			<form action="add_fund_result">
				<div class="clearfix">
					<div class="fundname" style="width: 40%; float: left;">
						<h3 class="right small clearfix">基金产品名称:</h3>
					</div>
					<div class="fundname" style="width: 40%;float: left;">
						<input type="text" class="form-control right top"
							style="width: 80%" name="fund_name" placeholder="Type fund"
							required>
					</div>
				</div>
				<div class="clearfix">
					<div class="fundprice" style="width: 40%; float: left;">
						<h3 class="right small clearfix">产品价格:</h3>
					</div>
					<div class="fundprice" style="width: 40%;float: left;">
						<input type="text" class="form-control right top"
							style="width: 80%" name="fundprice" placeholder="Type price"
							required>
					</div>

				</div>

				<div class="clearfix">
					<div class="funddescribe" style="width: 40%; float: left;">
						<h3 class="right small clearfix">描述:</h3>
					</div>
					<div class="funddescribe" style="width: 40%; float: left;">
						<textarea class="form-control right top" style="height:110px;width: 80%"
							name="description" placeholder="Type describe" required></textarea>
					</div>

				</div>
				<button class="btn btn-mid btn-primary top-max "
					style="margin-left: 327px" type="submit">添加基金产品</button>
			</form>
		</div>
	</div>

</body>
</html>

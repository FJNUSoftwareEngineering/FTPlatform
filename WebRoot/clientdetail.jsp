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
	<div class="jumbotron" style="padding-top: 5; padding-bottom: 10">
		<div class="clientcard" style="width: 40%;">
			<h3 class="right small clearfix">客户基本信息:</h3>
		</div>
		<div class="clearfix">
			<div class="clientcard" style="width: 40%; float: left;">
				<h3 class="right small clearfix">客户代码:</h3>
			</div>
			<div class="clientcard" style="width: 40%;float: left;">
				<input type="text" class="form-control right top" style="width: 80%"
					readonly="ture" name="id_card_no" placeholder="Type id-card"
					required>
			</div>
		</div>
		<div class="clearfix">
			<div class="clientname" style="width: 40%; float: left;">
				<h3 class="right small clearfix">姓名:</h3>
			</div>
			<div class="clientname" style="width: 40%;float: left;">
				<input type="text" class="form-control right top" style="width: 80%"
					readonly="ture" name="client_name" placeholder="Type name" required>
			</div>

		</div>
		<div class="clearfix">
			<div class="clientsex" style="width: 40%; float: left;">
				<h3 class="right small clearfix">性别:</h3>
			</div>
			<div class="clientsex" style="width: 40%;float: left;">
				<!-- /btn-group -->
				<div class="btn-group top right ">
					<button class=" btn btn-primary dropdown-toggle"
						data-toggle="dropdown" id="selectsex">
						男<span class="caret"></span>
					</button>
					<input type="text" style="display:none;" name="sex" id="sex"
						value="M" required>
				</div>
			</div>

		</div>
		<div class="clearfix">
			<div class="clientphone" style="width: 40%; float: left;">
				<h3 class="right small clearfix">联系方式:</h3>
			</div>
			<div class="clientphone" style="width: 40%;float: left;">
				<input type="text" class="form-control right top" style="width: 80%"
					readonly="ture" name="phone" placeholder="Type phone number"
					required>
			</div>

		</div>
		<div class="clearfix">
			<div class="clientadress" style="width: 40%; float: left;">
				<h3 class="right small clearfix">地址:</h3>
			</div>
			<div class="clientadress" style="width: 40%;float: left;">
				<textarea class="form-control right top" style="width: 80%"
					readonly="ture" name="address" placeholder="Type address" required></textarea>
			</div>

		</div>
		<div class="clearfix">
			<div class="clientemail" style="width: 40%; float: left;">
				<h3 class="right small clearfix">邮箱:</h3>
			</div>
			<div class="clientemail" style="width: 40%;float: left;">
				<input type="text" class="form-control right top" style="width: 80%"
					readonly="ture" name="email" placeholder="Type email" required>
			</div>

		</div>
	</div>
	<div class="jumbotron" style="padding-top: 5; padding-bottom: 10">
		<div class="clientcard" style="width: 40%;">
			<h3 class="right small clearfix">基金账户信息:</h3>
		</div>
		<div class="clearfix">
			<div class="clientcard" style="width: 40%; float: left;">
				<h3 class="right small clearfix">账户号码:</h3>
			</div>
			<div class="clientcard" style="width: 40%;float: left;">
				<input type="text" class="form-control right top" style="width: 80%"
					readonly="ture" name="id_card_no" placeholder="Type id-card"
					required>
			</div>
		</div>
		<div class="clearfix">
			<div class="clientcard" style="width: 40%; float: left;">
				<h3 class="right small clearfix">资金金额:</h3>
			</div>
			<div class="clientcard" style="width: 40%;float: left;">
				<input type="text" class="form-control right top" style="width: 80%"
					readonly="ture" name="id_card_no" placeholder="Type id-card"
					required>
			</div>
		</div>
		<div class="clearfix">
			<div class="clientname" style="width: 40%; float: left;">
				<h3 class="right small clearfix">开户时间:</h3>
			</div>
			<div class="clientname" style="width: 40%;float: left;">
				<input type="text" class="form-control right top" style="width: 80%"
					readonly="ture" name="client_name" placeholder="Type name" required>
			</div>

		</div>
		<div class="clearfix">
			<div class="clientphone" style="width: 40%; float: left;">
				<h3 class="right small clearfix">帐户状态:</h3>
			</div>
			<div class="clientphone" style="width: 40%;float: left;">
				<input type="text" class="form-control right top" style="width: 80%"
					readonly="ture" name="phone" placeholder="Type phone number"
					required>
			</div>

		</div>
	</div>

	<div class="table-responsive">
		<table class="table">
			<thead>
				<tr>
					<th>#</th>
					<th>账户号码</th>
					<th>产品名称</th>
					<th>产品份额</th>
					<th>购买单价</th>
					<th>账户状态</th>
					<th>开户时间</th>
					<th>资金账号</th>
				</tr>
			</thead>
			<tbody>
				<tr class="active">
					<td style="font-size: 5px">1</td>
					<td style="font-size: 5px">3503432212333</td>
					<td style="font-size: 5px">证券投资基金</td>
					<td style="font-size: 5px">50</td>
					<td style="font-size: 5px">100.00</td>
					<td style="font-size: 5px">正常</td>
					<td style="font-size: 5px">2014-4-15 40:35:34</td>
					<td style="font-size: 5px">313535432</td>
				</tr>
				<tr class="success">
					<td style="font-size: 5px">1</td>
					<td style="font-size: 5px">3503432212333</td>
					<td style="font-size: 5px">证券投资基金</td>
					<td style="font-size: 5px">50</td>
					<td style="font-size: 5px">100.00</td>
					<td style="font-size: 5px">正常</td>
					<td style="font-size: 5px">2014-4-15 40:35:34</td>
					<td style="font-size: 5px">313535432</td>
				</tr>
				<tr class="warning">
					<td style="font-size: 5px">1</td>
					<td style="font-size: 5px">3503432212333</td>
					<td style="font-size: 5px">证券投资基金</td>
					<td style="font-size: 5px">50</td>
					<td style="font-size: 5px">100.00</td>
					<td style="font-size: 5px">正常</td>
					<td style="font-size: 5px">2014-4-15 40:35:34</td>
					<td style="font-size: 5px">313535432</td>
				</tr>
				<tr class="danger">
					<td style="font-size: 5px">1</td>
					<td style="font-size: 5px">3503432212333</td>
					<td style="font-size: 5px">证券投资基金</td>
					<td style="font-size: 5px">50</td>
					<td style="font-size: 5px">100.00</td>
					<td style="font-size: 5px">正常</td>
					<td style="font-size: 5px">2014-4-15 40:35:34</td>
					<td style="font-size: 5px">313535432</td>
				</tr>

			</tbody>
		</table>
	</div>

</body>
</html>

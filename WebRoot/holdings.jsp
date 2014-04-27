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
		<form action="search_holding">
			<div class="clientcard" style="width: 40%;float: left;">
				<h3 class="clearfix">资金帐户号码:</h3>
				<input type="text" class="form-control"
					style="float: left;margin-top: 5px;width: 65%" name="accNo"
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
				<s:textfield Class="form-control right top" style="width: 80%"
					placeholder="Type ID card No" readonly="true"
					name="financialAccount.idcardNo"></s:textfield>
			</div>
		</div>
		<div class="clearfix">
			<div class="clientcard" style="width: 40%; float: left;">
				<h3 class="right small clearfix">资金账号:</h3>
			</div>
			<div class="clientcard" style="width: 40%;float: left;">
				<s:textfield Class="form-control right top" style="width: 80%"
					placeholder="Type acc No" readonly="true"
					name="financialAccount.accNo"></s:textfield>
			</div>
		</div>
		<div class="clearfix">
			<div class="clientname" style="width: 40%; float: left;">
				<h3 class="right small clearfix">开户时间:</h3>
			</div>
			<div class="clientname" style="width: 40%;float: left;">
				<s:textfield Class="form-control right top" style="width: 80%"
					placeholder="create time" readonly="true"
					name="financialAccount.createDate"></s:textfield>
			</div>

		</div>
		<div class="clearfix">
			<div class="clientname" style="width: 40%; float: left;">
				<h3 class="right small clearfix">账户状态:</h3>
			</div>
			<div class="clientname" style="width: 40%;float: left;">
				<s:textfield Class="form-control right top" style="width: 80%"
					placeholder="acc status" readonly="true"
					name="financialAccount.accStatus"></s:textfield>
			</div>
		</div>
	</div>
	<div class="table-responsive">
		<table class="table">
			<thead>
				<tr>
					<th>基金编号</th>
					<th>基金名称</th>
					<th>持有份额</th>
					<th>基金购买单价</th>
					<th>基金当前价格</th>
				</tr>
			</thead>
			<tbody>
             <s:iterator value="personalHoldingVO_list">
				<tr class="success">
					<td style="font-size: 5px"><s:property value="fundNo" /></td>
					<td style="font-size: 5px"><s:property value="fundName" /></td>
					<td style="font-size: 5px"><s:property value="amount" /></td>
					<td style="font-size: 5px"><s:property value="price" /></td>
					<td style="font-size: 5px"><s:property value="price" /></td>
				</tr>
               </s:iterator>
			</tbody>
		</table>
	</div>

</body>
</html>

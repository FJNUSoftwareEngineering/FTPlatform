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
	<div class="jumbotron" style="padding-top: 3; padding-bottom: 13">
		<div class="clearfix">
			<div class="clientcard" style="width: 40%; float: left;">
				<h3 class="right small clearfix">客户代码:</h3>
			</div>
			<div class="clientcard" style="width: 40%;float: left;">
				<s:textfield Class="form-control right top" style="width: 80%"
					readonly="true" name="client.idCardNo"></s:textfield>
			</div>
		</div>
		<div class="clearfix">
			<div class="clientname" style="width: 40%; float: left;">
				<h3 class="right small clearfix">姓名:</h3>
			</div>
			<div class="clientname" style="width: 40%;float: left;">
				<s:textfield Class="form-control right top" style="width: 80%"
					readonly="true" name="client.clientName"></s:textfield>
			</div>

		</div>
		<div class="clearfix">
			<div class="clientsex" style="width: 40%; float: left;">
				<h3 class="right small clearfix">性别:</h3>
			</div>
			<div class="clientsex" style="width: 40%;float: left;">
				<!-- /btn-group -->
				<div class="top right " style="font-size: 15px;font-style: normal;">
					<s:radio name="client.sex" disabled="true"
						list="#{'M':'&nbsp;&nbsp;&nbsp;男&nbsp;&nbsp;&nbsp; ','W':'&nbsp;&nbsp;&nbsp;女&nbsp;&nbsp;&nbsp;'}"></s:radio>
				</div>
			</div>
		</div>

		<div class="clearfix">
			<div class="clientphone" style="width: 40%; float: left;">
				<h3 class="right small clearfix">联系方式:</h3>
			</div>
			<div class="clientphone" style="width: 40%;float: left;">
				<s:textfield Class="form-control right top" style="width: 80%"
					readonly="true" name="client.phone"></s:textfield>
			</div>

		</div>
		<div class="clearfix">
			<div class="clientadress" style="width: 40%; float: left;">
				<h3 class="right small clearfix">地址:</h3>
			</div>
			<div class="clientadress" style="width: 40%;float: left;">
				<s:textarea Class="form-control right top" readonly="true"
					style="width: 80%;height: 60px" name="client.address"></s:textarea>
			</div>

		</div>
		<div class="clearfix">
			<div class="clientemail" style="width: 40%; float: left;">
				<h3 class="right small clearfix">邮箱:</h3>
			</div>
			<div class="clientemail" style="width: 40%;float: left;">
				<s:textfield Class="form-control right top" style="width: 80%"
					readonly="true" name="client.email"></s:textfield>
			</div>

		</div>
		<div class="clearfix">
			<div class="clientadress" style="width: 40%; float: left;">
				<h3 class="right small clearfix">爱好:</h3>
			</div>
			<div class="clientadress" style="width: 40%;float: left;">
				<s:textarea Class="form-control right top" readonly="true"
					style="width: 80%;height: 60px" name="client.hobby"></s:textarea>
			</div>

		</div>
	</div>


	<div class="jumbotron" style="padding-top: 3; padding-bottom: 13">
		<div class="clearfix">
			<div class="clientcard" style="width: 40%; float: left;">
				<h3 class="right small clearfix">账户号码:</h3>
			</div>
			<div class="clientcard" style="width: 40%;float: left;">
				<s:textfield Class="form-control right top" readonly="true"
					style="width: 80%" name="client.idCardNo" placeholder="Type acc No" />
			</div>
		</div>
		<div class="clearfix">
			<div class="clientcard" style="width: 40%; float: left;">
				<h3 class="right small clearfix">资金金额:</h3>
			</div>
			<div class="clientcard" style="width: 40%;float: left;">
				<s:textfield Class="form-control right top" readonly="true"
					style="width: 80%" name="financialAccount.accAmount"
					placeholder="Type acc amount" />
			</div>
		</div>
		<div class="clearfix">
			<div class="clientname" style="width: 40%; float: left;">
				<h3 class="right small clearfix">开户时间:</h3>
			</div>
			<div class="clientname" style="width: 40%;float: left;">
				<s:textfield Class="form-control right top" readonly="true"
					style="width: 80%" name="financialAccount.createDate"
					placeholder="Type create date" />
			</div>

		</div>
		<div class="clearfix">
			<div class="clientphone" style="width: 40%; float: left;">
				<h3 class="right small clearfix">帐户状态:</h3>
			</div>
			<div class="clientphone" style="width: 40%;float: left;">
				<s:textfield Class="form-control right top" readonly="true"
					style="width: 80%" name="financialAccount.accStatus"
					placeholder="Type create date" />
			</div>

		</div>
	</div>

	<div class="table-responsive">
		<table class="table">
			<thead>
				<tr>
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
				<s:iterator value="list_client_financial">
					<tr class="active">
						<td style="font-size: 5px"><s:property value="idCardNo" /></td>
						<td style="font-size: 5px"><s:property value="fundName" /></td>
						<td style="font-size: 5px"><s:property value="amount" /></td>
						<td style="font-size: 5px"><s:property value="price" /></td>
						<td style="font-size: 5px"><s:property value="status" /></td>
						<td style="font-size: 5px"><s:property value="createDate" /></td>
						<td style="font-size: 5px"><s:property value="accNo" /></td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
	</div>

</body>
</html>

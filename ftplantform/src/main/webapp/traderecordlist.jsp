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

		<div class="clientcard" style="width: 40%;float: right;">
			<button class="btn btn-mid btn-primary" style="float: right;"
				type="submit">搜索</button>
			<input type="text" class="form-control"
				style="margin-top: 5px;width: 65%" name="search"
				placeholder="search" required>
		</div>

	</div>
	<hr style="margin-top: 10px;">
	<div class="table-responsive">
		<table class="table" id="tradeerecordtable" cellpadding="0"
			cellspacing="0">
			<thead>
				<tr>
					<th>基金编号</th>
					<th>基金名称</th>
					<th>基金账户</th>
					<th>基金价格</th>
					<th>买卖数量</th>
					<th>操作时间</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="fundTradeVO_list">
					<tr class="active">
						<td style="font-size: 5px"><s:property value="fundNo" /></td>
						<td style="font-size: 5px"><s:property value="fundName" /></td>
						<td style="font-size: 5px"><s:property value="accNo" /></td>
						<td style="font-size: 5px"><s:property value="price" /></td>
						<td style="font-size: 5px"><s:property value="tradeAmount" /></td>
						<td style="font-size: 5px"><s:property value="createDate" /></td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
	</div>
</body>
</html>

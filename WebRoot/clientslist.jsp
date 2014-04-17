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
				placeholder="search by idcardno or clientcard" required>
		</div>

	</div>
	<hr style="margin-top: 10px;">
	<div class="table-responsive">
		<table class="table">
			<thead>
				<tr>
					<th>#</th>
					<th>客户编号</th>
					<th>姓名</th>
					<th>可用资产</th>
					<th>总资产</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr class="active">
					<td>1</td>
					<td>435234353</td>
					<td>陈先生</td>
					<td>1000.00</td>
					<td>2000.00</td>
					<td><a style="font-size: 5px" href="alterclient.jsp">修改基本信息</a></td>
					<td><a style="font-size: 5px" href="clientdetail.jsp">查看详细信息</a></td>
				</tr>
				<tr class="success">
				    <td>2</td>
					<td>435234353</td>
					<td>陈先生</td>
					<td>1000.00</td>
					<td>2000.00</td>
					<td><a style="font-size: 5px" href="alterclient.jsp">修改基本信息</a></td>
					<td><a style="font-size: 5px" href="clientdetail.jsp">查看详细信息</a></td>
				</tr>
				<tr class="warning">
					<td>3</td>
					<td>435234353</td>
					<td>陈先生</td>
					<td>1000.00</td>
					<td>2000.00</td>
					<td><a style="font-size: 5px" href="alterclient.jsp">修改基本信息</a></td>
					<td><a style="font-size: 5px" href="clientdetail.jsp">查看详细信息</a></td>
				</tr>
				<tr class="danger">
					    <td>4</td>
					<td>435234353</td>
					<td>陈先生</td>
					<td>1000.00</td>
					<td>2000.00</td>
					<td><a style="font-size: 5px" href="alterclient.jsp">修改基本信息</a></td>
					<td><a style="font-size: 5px" href="clientdetail.jsp">查看详细信息</a></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>

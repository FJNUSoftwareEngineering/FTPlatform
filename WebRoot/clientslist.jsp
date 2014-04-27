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
<script type="text/javascript">   
      function updateClient(idCardNo){
         location.href='<s:url action="load_a_client"/>?client.idCardNo='+idCardNo;
       }
        function clientDetail(idCardNo){
         location.href='<s:url action="client_detail"/>?client.idCardNo='+idCardNo;
       }
 </script>
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
		<table class="table" id="clientlisttable" cellpadding="0"
			cellspacing="0">
			<thead>
				<tr>
					<th style="font-size: 15px" align="left">客户编号</th>
					<th style="font-size: 15px" align="center">姓名</th>
					<th style="font-size: 15px" align="right">可用资产</th>
					<th style="font-size: 15px" align="right">总资产</th>
					<th style="font-size: 15px" align="center"></th>
					<th style="font-size: 15px" align="center"></th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="list_clients">
					<tr class="active">
						<td style="font-size: 5px"><s:property value="idCardNo" />
						</td>
						<td style="font-size: 5px"><s:property value="clientName" />
						</td>
						<td style="font-size: 5px;"><s:property value="accAmount" />
						</td>
						<td style="font-size: 5px;"><s:property
								value="accTotalAmount" /></td>
						<td><a style="font-size: 5px; cursor:pointer"
							onclick="updateClient(<s:property value="idCardNo"/>);">修改基本信息</a>
						</td>
						<td><a style="font-size: 5px; cursor:pointer"
							onclick="clientDetail(<s:property value="idCardNo"/>);">查看详细信息</a>
						</td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
	</div>
</body>
</html>

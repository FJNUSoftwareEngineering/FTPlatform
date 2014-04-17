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
			<form action="add_result">
				<div class="clearfix">
					<div class="clientcard" style="width: 40%; float: left;">
						<h3 class="right small clearfix">基金编号:</h3>
					</div>
					<div class="clientcard" style="width: 40%;float: left;">
						<input type="text" class="form-control right top" readOnly="true"
							style="width: 80%" name="id_card_no" value="1" required>
					</div>
				</div>
				<div class="clearfix">
					<div class="clientcard" style="width: 40%; float: left;">
						<h3 class="right small clearfix">基金产品名称:</h3>
					</div>
					<div class="clientcard" style="width: 40%;float: left;">
						<input type="text" class="form-control right top"
							style="width: 80%" name="id_card_no" value="证券投资基金" required>
					</div>
				</div>
				<div class="clearfix">
					<div class="clientname" style="width: 40%; float: left;">
						<h3 class="right small clearfix">产品价格:</h3>
					</div>
					<div class="clientname" style="width: 40%;float: left;">
						<input type="text" class="form-control right top"
							style="width: 80%" name="client_name" value="100" required>
					</div>

				</div>

				<div class="clearfix">
					<div class="clientadress" style="width: 40%; float: left;">
						<h3 class="right small clearfix">描述:</h3>
					</div>
					<div class="clientadress" style="width: 40%;float: left;">
						<textarea class="form-control right top"
							style="width: 80%;height: 100px" name="address" required>一种利益共存、风险共担的集合证券投资方式，即通过发行基金份额。</textarea>
					</div>

				</div>
				<div class="clearfix">
					<div class="clientname" style="width: 40%; float: left;">
						<h3 class="right small clearfix">状态:</h3>
					</div>
					<div class="clientname" style="width: 40%;float: left;">
						<input type="text" class="form-control right top"
							style="width: 80%" name="client_name" value="可交易" required>
					</div>

				</div>
						<div class="clearfix">
					<div class="clientname" style="width: 40%; float: left;">
						<h3 class="right small clearfix">创建时间:</h3>
					</div>
					<div class="clientname" style="width: 40%;float: left;">
						<input type="text" class="form-control right top" readOnly="true"
							style="width: 80%" name="client_name" value="2014-04-14 21:57:00" required>
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
</html>

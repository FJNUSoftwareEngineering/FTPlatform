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
			<s:form action="alter_fund_result">
				<div class="clearfix">
					<div class="fundNo" style="width: 40%; float: left;">
						<h3 class="right small clearfix">基金编号:</h3>
					</div>
					<div class="fundNo" style="width: 40%;float: left">
						<s:textfield Class="form-control right top" style="width: 80%"
							readonly="true" name="fund.fundNo"></s:textfield>
					</div>
				</div>
				<div class="clearfix">
					<div class="fundName" style="width: 40%; float: left;">
						<h3 class="right small clearfix">基金产品名称:</h3>
					</div>
					<div class="fundName" style="width: 40%;float: left;">
						<s:textfield Class="form-control right top" style="width: 80%"
							name="fund.fundName" ></s:textfield>

					</div>
				</div>
				<div class="clearfix">
					<div class="price" style="width: 40%; float: left;">
						<h3 class="right small clearfix">产品价格:</h3>
					</div>
					<div class="price" style="width: 40%;float: left;">
						<s:textfield Class="form-control right top" style="width: 80%"
							name="fund.price"  pattern="^\d{1,10}(\.\d{1,2})?$"
							title="价格正确格式：0.39或1.00"></s:textfield>
					</div>

				</div>

				<div class="clearfix">
					<div class="description" style="width: 40%; float: left;">
						<h3 class="right small clearfix">描述:</h3>
					</div>
					<div class="description" style="width: 40%;float: left;">
						<s:textarea Class="form-control right top"
							style="width: 80%;height: 100px" name="fund.description"></s:textarea>
					</div>
				</div>
				<div class="clearfix">
					<div class="status" style="width: 40%; float: left;">
						<h3 class="right small clearfix">状态:</h3>
					</div>
					<div class="status" style="width: 40%;float: left;">
						<s:textfield Class="form-control right top" style="width: 80%"
							name="fund.status"></s:textfield>
					</div>
				</div>
				<div class="clearfix">
					<div class="createtime" style="width: 40%; float: left;">
						<h3 class="right small clearfix">创建时间:</h3>
					</div>
					<div class="createtime" style="width: 40%;float: left;">
						<s:textfield Class="form-control right top" style="width: 80%"
							name="fund.createdDate" readonly="true"></s:textfield>
					</div>
				</div>
				<button class="btn btn-mid btn-primary top-max "
					style="margin-left: 327px" type="submit">保存</button>
				<a class="btn btn-mid btn-success top-max" href="" role="button">取消
				</a>
			</s:form>
		</div>
	</div>

</body>
</html>

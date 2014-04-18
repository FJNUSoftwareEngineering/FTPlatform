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
			<s:form action="alter_client_result">
				<div class="clearfix">
					<div class="clientcard" style="width: 40%; float: left;">
						<h3 class="right small clearfix">身份证号码:</h3>
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
							name="client.clientName"></s:textfield>
					</div>

				</div>
				<div class="clearfix">
					<div class="clientsex" style="width: 40%; float: left;">
						<h3 class="right small clearfix">性别:</h3>
					</div>
					<div class="clientsex" style="width: 40%;float: left;">
						<!-- /btn-group -->
						<div class="top right " style="font-size: 15px;font-style: normal;">
                            <s:radio name="client.sex"  list="#{'M':'&nbsp;&nbsp;&nbsp;男&nbsp;&nbsp;&nbsp; ','W':'&nbsp;&nbsp;&nbsp;女&nbsp;&nbsp;&nbsp;'}"></s:radio>			
						</div>
					</div>
				</div>
				<div class="clearfix">
					<div class="clientphone" style="width: 40%; float: left;">
						<h3 class="right small clearfix">联系方式:</h3>
					</div>
					<div class="clientphone" style="width: 40%;float: left;">
						<s:textfield Class="form-control right top" style="width: 80%"
							name="client.phone"></s:textfield>
					</div>

				</div>
				<div class="clearfix">
					<div class="clientadress" style="width: 40%; float: left;">
						<h3 class="right small clearfix">地址:</h3>
					</div>
					<div class="clientadress" style="width: 40%;float: left;">
						<s:textarea Class="form-control right top"
							style="width: 80%;height: 60px" name="client.address"></s:textarea>
					</div>

				</div>
				<div class="clearfix">
					<div class="clientemail" style="width: 40%; float: left;">
						<h3 class="right small clearfix">邮箱:</h3>
					</div>
					<div class="clientemail" style="width: 40%;float: left;">
						<s:textfield Class="form-control right top" style="width: 80%"
							name="client.email"></s:textfield>
					</div>

				</div>
				<div class="clearfix">
					<div class="clienthobby" style="width: 40%; float: left;">
						<h3 class="right small clearfix">爱好:</h3>
					</div>
					<div class="clientadress" style="width: 40%;float: left;">
						<s:textarea Class="form-control right top"
							style="width: 80%;height: 60px" name="client.hobby"></s:textarea>
					</div>

				</div>
				<div class="clientadress" style="width: 40%;float: left;">
						<s:textarea Class="form-control right top"
							style="display:none;width: 80%;height: 60px" name="client.createdDate" ></s:textarea>
					</div>
				<button class="btn btn-mid btn-primary top-max "
					style="margin-left: 327px" type="submit">修改</button>
				<a class="btn btn-mid btn-success top-max" href="" role="button">取消
				</a>
			</s:form>
		</div>
	</div>

</body>

</html>

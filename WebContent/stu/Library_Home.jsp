<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html>

<html lang="zh-CN">

<head>

	<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

	<title>校园图书系统用户主页</title>

	<link href="../css/bootstrap.min.css" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="../css/index.css">
	<style>
	body 
	{
		background-image:url('paper.gif');
		background-color:#cccccc;
	}
	</style>
  </head>
<body>
	<div class="container div_divider">
  		<!-- 分割线 -->
  		<hr class="hr_1"><h1>欢迎登陆,${user.hostname}</h1> <hr class="hr_2">
  		<div class="row">
  			<!-- 文章列表 -->
  			<div class="col-xs-9">
  				<div class="list-group div_article">
  					<!-- 子头栏 -->
  					<a href="" class="list-group-item active item_article_first">
  						<h4 class="list-group-item-heading">
  							图书管理系统用户功能列表
  						</h4>
  					</a>
  					<div class="list-group-item item_article">
  						<div class="row">
  							<div class="div_center col-xs-9">
  								<div class="list-group-item-heading div_article_title">
 									<strong>
  										图书预约
  									</strong>
  								</div>
  								<p class="list-group-item-text div_article_content">
  									用户可查询所有书籍的基本信息，并所需要借的书进行提前预约，提交后可获取图书管理系统是否成功的消息。系统将在5分钟内给出相应的批复。
  								</p>
  							</div>
  							<div class="col-xs-3 div_right_info">
  								<a class="btn btn-info" style="text-align:right"  href="Library_Order.jsp" role="button">开始预约</a>
  							</div>
 						</div>
  					</div>
  					<div class="list-group-item item_article">
  						<div class="row">
  							<div class="div_center col-xs-9">
  								<div class="list-group-item-heading div_article_title">
 									<strong>
  										借书
  									</strong>
  								</div>
  								<p class="list-group-item-text div_article_content">
  									用户可查询所有书籍的基本信息，并所需要借的书进行当天借阅，当天生成借书的记录即日生效。用户可以查询图书借期，以免错过应当还书的时间。
  								</p>
  							</div>
  							<div class="col-xs-3 div_right_info">
  								<a class="btn btn-info" style="text-align:right"  href="Library_Borrow.jsp" role="button">开始借书</a>
  							</div>
 						</div>
  					</div>
  					<div class="list-group-item item_article">
  						<div class="row">
  							<div class="div_center col-xs-9">
  								<div class="list-group-item-heading div_article_title">
 									<strong>
  										还书
  									</strong>
  								</div>
  								<p class="list-group-item-text div_article_content">
  									用户可查询自己的还书记录，并所需要还的书进行对系统的申请，提交后可获取图书管理系统是否成功的消息。系统将在5分钟内给出相应的批复。
  								</p>
  							</div>
  							<div class="col-xs-3 div_right_info">
  								<a class="btn btn-info" style="text-align:right"  href="Library_Return.jsp" role="button">开始还书</a>
  							</div>
 						</div>
  					</div>
  				</div>
  			</div>
  			<div class="col-xs-3 div_record">
  				<hr>
  				<!-- 小功能列表 -->
  				<div class="row div_little_func">
  					<div class="col-xs-4">
  						<a class="btn btn-default btn-cricle btn_stay" href="Library_Withdraw.jsp">销</a>
  					</div>
  					<br>
  					<div class="col-xs-4">

  						<a class="btn btn-default btn-cricle btn_login" data-toggle="modal" data-target="#loginModal">修</a>

  					</div>
  					<br>
  					<div class="col-xs-4">
  						<a class="btn btn-default btn-cricle btn_stay" href="Library_Login.jsp">退</a>
  					</div>
  				</div>
  			</div>
  		</div>
  			<!-- 登录模态框 -->

  		<div class="modal fade bs-example-modal-sm" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">

  			<div class="modal-dialog modal-sm" role="document">

  				<div class="modal-content">

  					<div class="modal-header">

  						<div class="modal-title" id="myModalLabel" style="text-align: center;">修改个人信息</div>

  					</div>

  					<div class="modal-body">

  						<form class="form-horizontal" style="padding: 12px;" action="../LibraryServlet" method="post">
  						    
  						    <div class="form-group">

  								<input type="text" class="form-control" id="inputEmail3" name="newid" value="${user.id}" readonly="true">  		

  							</div>
  						

  							<div class="form-group">

  								<input type="password" class="form-control" id="inputEmail3" name="newpwd"  placeholder="新密码">  		

  							</div>

  							<div class="form-group">			

  								<input type="password" class="form-control" id="inputPassword3" name="confirm" placeholder="确认密码">

  							</div>
							
							<div class="modal-footer" style="text-align: center;">
							<input type="hidden" name="opttype" value="edit_info"/>
  							<input type="submit" class="btn btn-primary" style="width: 100%" value="提交">

  							</div>
  						</form>
  						
  						

  					</div>

  					

  				</div>

  			</div>

  		</div>
  	</div>
  	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

  	<script src="../js/jquery-3.3.1.min.js"></script>

  	<!-- Include all compiled plugins (below), or include individual files as needed -->

  	<script src="../js/bootstrap.min.js"></script>

  	<script src="../js/init.js" type="text/script"></script>

  	<script src="../js/util.js"></script>
</body>
</html>
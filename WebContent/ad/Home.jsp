<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html>

<html lang="zh-CN">

<head>

	<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

	<title>学生一卡通系统管理员主页</title>

	<link href="../css/bootstrap.min.css" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="../css/index.css">

  </head>

  <body>



  	<!-- 右下角按钮 -->

  	<!-- <button class="btn btn-default btn_right_bottom">写</button> -->

  	<!-- 技术日记 -->

  	<div class="container div_divider">

  		<!-- 分割线 -->

  		<hr class="hr_1"><h1>欢迎登陆,${admin.name}</h1> <hr class="hr_2">

  		<div class="row">

  			<!-- 文章列表 -->

  			<div class="col-xs-9">

  				<div class="list-group div_article">

  					<!-- 子头栏 -->

  					<a href="" class="list-group-item active item_article_first">

  						<h4 class="list-group-item-heading">

  							管理员功能列表

  						</h4>

  					</a>

  					<div class="list-group-item item_article">

  						<div class="row">

  							<div class="div_center col-xs-9">

  								<div class="list-group-item-heading div_article_title">

  									<strong>

  										开卡/销卡

  									</strong>

  								</div>

  								<p class="list-group-item-text div_article_content">

  									管理员可以通过本模块给学生的开卡申请通过，注销学生的一卡通。注意：如果学生未退宿，还书，则无法销卡。请先确认学生没有出现上述状况。

  								</p>

  							</div>

  							<div class="col-xs-3 div_right_info">
  									<a class="btn btn-info" style="text-align:right"  href="CardActivation.jsp" role="button">批准开卡</a>
  									<a class="btn btn-info" style="text-align:right"  href="CardDeactivation.jsp" role="button">销卡</a>
  							</div>

  						</div>

  					</div>

  					<div class="list-group-item item_article">

  						<div class="row">

  							<div class="div_center col-xs-9">

  								<div class="list-group-item-heading div_article_title">

  									<strong>

  										查询一卡通学生信息

  									</strong>

  								</div>

  								<p class="list-group-item-text div_article_content">

  									管理员可以查询和统计卡用户的任意信息，程序提供灵活查询和统计方式；管理员可以统计学生人数，查询单个学生信息，查询一卡通信息状态。

  								</p>

  							</div>

  							<div class="col-xs-3 div_right_info">

  								<a class="btn btn-info" style="text-align:right"  href="PersonalInfo.jsp" role="button">查询统计</a>

  							</div>

  						</div>

  					</div>

  					<div class="list-group-item item_article">

  						<div class="row">

  							<div class="div_center col-xs-9">

  								<div class="list-group-item-heading div_article_title">

  									<strong>

  										成绩输入

  									</strong>

  								</div>

  								<p class="list-group-item-text div_article_content">

  									在本模块中管理员可以输入教师批改后的学生成绩，供学生查询。注意：请确保成绩准确输入，否则会对学生造成很大影响，成绩修改需要向领导提交申请。

  								</p>

  							</div>

  							<div class="col-xs-3 div_right_info">

  								<a class="btn btn-info" style="text-align:right"  href="ScoreSheetInput.jsp" role="button">成绩输入</a>
								<a class="btn btn-info" style="text-align:right"  href="ScoreSheet.jsp" role="button">所有成绩</a>
  							</div>

  						</div>

  					</div>
  					<div class="list-group-item item_article">

  						<div class="row">

  							<div class="div_center col-xs-9">

  								<div class="list-group-item-heading div_article_title">

  									<strong>

  										书籍信息管理

  									</strong>

  								</div>

  								<p class="list-group-item-text div_article_content">

  									在本模块中管理员可以输入图书馆中存放的书籍，供学生查询、预约、借还书籍。注意：请确保书籍信息准确输入，否则会对学生造成很大影响，若修改需要向领导提交申请。

  								</p>

  							</div>

  							<div class="col-xs-3 div_right_info">

  								<a class="btn btn-info" style="text-align:right"  href="BookInfoInput.jsp" role="button">书籍信息输入</a>
								<a class="btn btn-info" style="text-align:right"  href="BookInfo.jsp" role="button">所有书籍信息</a>
  							</div>

  						</div>

  					</div>

  					<div class="list-group-item item_article">

  						<div class="row">

  							<div class="div_center col-xs-9">

  								<div class="list-group-item-heading div_article_title">

  									<strong>

  										宿舍管理

  									</strong>

  								</div>

  								<p class="list-group-item-text div_article_content">

  									在本模块中管理员可以通过学生入宿申请，批准学生进入宿舍。同时本模块也可以通过学生退宿申请。注意：学生退宿需要宿舍职工在现场检查。

  								</p>

  							</div>

  							<div class="col-xs-3 div_right_info">
								<a class="btn btn-info" style="text-align:right"  href="DormInfoInput.jsp" role="button">添加宿舍信息</a>
								<a class="btn btn-info" style="text-align:right"  href="DormInfo.jsp" role="button">所有宿舍信息</a>
  								<a class="btn btn-info" style="text-align:right"  href="CheckIn.jsp" role="button">批准入宿</a>
  								<a class="btn btn-info" style="text-align:right"  href="CheckOut.jsp" role="button">退宿</a>


  							</div>

  						</div>

  					</div>

  				</div>

  			</div>

  			<!-- 右侧 -->

  			<div class="col-xs-3 div_record">
  				<hr>

  				<!-- 小功能列表 -->

  				<div class="row div_little_func">

  					<div class="col-xs-4">

  						<a class="btn btn-default btn-cricle btn_login" data-toggle="modal" data-target="#loginModal">修</a>

  					</div>
  					<br>

  					<div class="col-xs-4">

  						<a class="btn btn-default btn-cricle btn_stay"href="../Login.html">退</a>

  					</div>

  				</div>

  			</div>

  		</div>

  		<!-- 登录模态框 -->

  		<div class="modal fade bs-example-modal-sm" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">

  			<div class="modal-dialog modal-sm" role="document">

  				<div class="modal-content">

  					<div class="modal-header">

  						<div class="modal-title" id="myModalLabel" style="text-align: center;">修改密码</div>

  					</div>

  					<div class="modal-body">

  						<form class="form-horizontal" style="padding: 12px;" action="../LoginServlet" method="post">

  							<div class="form-group">

  								<input type="password" class="form-control" id="inputEmail3" name="newpwd" placeholder="新密码">  		

  							</div>

  							<div class="form-group">			

  								<input type="password" class="form-control" id="inputPassword3" name="confirm" placeholder="确认密码">

  							</div>
							
							<div class="modal-footer" style="text-align: center;">
							<input type="hidden" name="opttype" value="edit_pwd"/>
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
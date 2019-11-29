<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html>

<html lang="zh-CN">

<head>

	<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

	<title>学生一卡通系统用户主页</title>

	<link href="../css/bootstrap.min.css" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="../css/index.css">

  </head>

  <body>



  	<!-- 右下角按钮 -->

  	<!-- <button class="btn btn-default btn_right_bottom">写</button> -->

  	<!-- 技术日记 -->

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

  							一卡通用户功能列表

  						</h4>

  					</a>


  					<div class="list-group-item item_article">

  						<div class="row">

  							<div class="div_center col-xs-9">

  								<div class="list-group-item-heading div_article_title">

  									<strong>

  										查询一卡通用户个人信息

  									</strong>

  								</div>

  								<p class="list-group-item-text div_article_content">

  									卡成员可查询个人基本信息，并对相关信息作出修改，提交后新信息经管理员审批后取代原有信息。管理员将在2-3个工作日内给出相应的批复。

  								</p>

  							</div>

  							<div class="col-xs-3 div_right_info">

  								<a class="btn btn-info" style="text-align:right"  href="PersonalInfo.jsp" role="button">查询个人信息</a>

  							</div>

  						</div>

  					</div>
  					<div class="list-group-item item_article">

  						<div class="row">

  							<div class="div_center col-xs-9">

  								<div class="list-group-item-heading div_article_title">

  									<strong>

  										查询一卡通用户账户信息

  									</strong>

  								</div>

  								<p class="list-group-item-text div_article_content">

  									卡成员可查询个人的帐户信息，包括帐户余额、今日消费、末次充值情况等。可实现网上充值，通过与银行卡的连接，只要用户输入正确密码，即可从银行卡往校园卡转帐，同时帐户信息中末次充值情况将自动更新。可修改个人的登陆信息，对登陆密码作出修改。

  								</p>

  							</div>

  							<div class="col-xs-3 div_right_info">

  								<a class="btn btn-info" style="text-align:right"  href="PersonalAccountInfo.jsp" role="button">查询账户信息</a>

  							</div>

  						</div>

  					</div>

  					<div class="list-group-item item_article">

  						<div class="row">

  							<div class="div_center col-xs-9">

  								<div class="list-group-item-heading div_article_title">

  									<strong>

  										图书管理系统

  									</strong>

  								</div>

  								<p class="list-group-item-text div_article_content">

  									系统用户说明书：<br>
  									1、凭一卡通给图书管理系统申请用户注册和注销，并获取图书管理系统是否成功消息。<br>
  									2、凭一卡通给图书管理系统发图书预约、借书、还书申请，并获取图书管理系统是否成功的消息。<br>
  									3、凭一卡通查询馆内藏书、图书库存情况，查询并统计学生个人图书借阅情况。<br>

  								</p>

  							</div>
  							<div class="col-xs-3 div_right_info">
  								<img src="../img/library.jpg"><br>
  								<a class="btn btn-info btn-lg btn-block"  href="Library_Login.jsp" role="button" style="text-align:center" >点击进入图书管理系统</a>

  							</div>

  						</div>

  					</div>

					  					<div class="list-group-item item_article">

  						<div class="row">

  							<div class="div_center col-xs-9">

  								<div class="list-group-item-heading div_article_title">

  									<strong>

  										教育管理系统

  									</strong>

  								</div>

  								<p class="list-group-item-text div_article_content">

  									系统用户说明书：<br>
  									凭一卡通给教学管理系统发成绩查询申请，并获取查询结果，对学生成绩能发分类汇总，包括学生所有科目的成绩以及绩点。<br>

  								</p>

  							</div>
  							<div class="col-xs-3 div_right_info">
  								<img src="../img/campus.jpg"><br>
  								<a class="btn btn-info btn-lg btn-block"  href="Education_Home.jsp" role="button" style="text-align:center" >点击进入教育管理系统</a>

  							</div>

  						</div>

  					</div>
  					
  					  					<div class="list-group-item item_article">

  						<div class="row">

  							<div class="div_center col-xs-9">

  								<div class="list-group-item-heading div_article_title">

  									<strong>

  										宿舍管理系统

  									</strong>

  								</div>

  								<p class="list-group-item-text div_article_content">

  									系统用户说明书：<br>
  									1、凭一卡通获取学生宿舍管理系统宿舍住房状态信息（只能查询可住几人实住几人、哪个学院、哪个班级等信息，不能查询学生个人具体信息）。<br>
  									2、凭一卡通向宿舍管理系统发房间入住，如批准获取入住房间信息和房锁密码以及入住时间。<br>
  									3、凭一卡通向宿舍管理系统申请退宿，经管理人员宿舍现场确认无需理赔等信息后获取退宿信息。<br>

  								</p>

  							</div>
  							<div class="col-xs-3 div_right_info">
  								<img src="../img/dorm.png"><br>
  								<a class="btn btn-info btn-lg btn-block"  href="Dormitory_Home.jsp" role="button" style="text-align:center" >点击进入宿舍管理系统</a>

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

  						<div class="modal-title" id="myModalLabel" style="text-align: center;">修改个人信息</div>

  					</div>

  					<div class="modal-body">

  						<form class="form-horizontal" style="padding: 12px;" action="../LoginServlet" method="post">
  						    
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
<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html>

<html lang="zh-CN">

<head>

	<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

	<title>校园宿舍系统</title>

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
  							宿舍管理系统用户功能列表
  						</h4>
  					</a>
  					<div class="list-group-item item_article">
  						<div class="row">
  							<div class="div_center col-xs-9">
  								<div class="list-group-item-heading div_article_title">
 									<strong>
  										宿舍申请
  									</strong>
  								</div>
  								<p class="list-group-item-text div_article_content">
  									用户可获取学生宿舍管理系统宿舍住房状态信息（可查询可住几人实住几人、哪个学院、哪个班级等信息），并且可以申请住宿（尽量申请班级同学所在的宿舍）。
  								</p>
  							</div>
  							<div class="col-xs-3 div_right_info">
  								<a class="btn btn-info" style="text-align:right"  href="Domitory_Application.jsp" role="button">宿舍申请</a>
  							</div>
 						</div>
  					</div>
  					<div class="list-group-item item_article">
  						<div class="row">
  							<div class="div_center col-xs-9">
  								<div class="list-group-item-heading div_article_title">
 									<strong>
  										住宿信息
  									</strong>
  								</div>
  								<p class="list-group-item-text div_article_content">
  									用户向宿舍管理系统发房间入住，需要等待管理员批准。管理员批准后可获取入住房间信息和房锁密码以及入住时间。可以等到批准后进入本页面查看信息。
  								</p>
  							</div>
  							<div class="col-xs-3 div_right_info">
  								<a class="btn btn-info" style="text-align:right"  href="Dormitory_Info.jsp" role="button">宿舍信息</a>
  							</div>
 						</div>
  					</div>
  					<div class="list-group-item item_article">
  						<div class="row">
  							<div class="div_center col-xs-9">
  								<div class="list-group-item-heading div_article_title">
 									<strong>
  										退宿申请
  									</strong>
  								</div>
  								<p class="list-group-item-text div_article_content">
  									用户向宿舍管理系统申请退宿，经管理人员宿舍现场确认无需理赔等信息后获取退宿信息。等管理员批准后，方可完成退宿。如果需要理赔，请尽快办理，否则无法注销一卡通。
  								</p>
  							</div>
  							<div class="col-xs-3 div_right_info">
  								<a class="btn btn-info" style="text-align:right"  href="Domitory_Retire.jsp" role="button">退宿申请</a>
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
  						<a class="btn btn-default btn-cricle btn_stay" href="Home.jsp">退</a>
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
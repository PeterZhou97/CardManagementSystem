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
<div class="col-lg-6 col-md-6 col-xs-6"> 
        <div class="col-lg-3 col-md-3 col-xs-3"></div>
        <div class="page-header"> 
            <h1>注销系统账号</h1>
        </div>
        <form class="form-horizontal" id="score" name="score"  action="../LibraryServlet" method="post">
        	<div class="list-group-item-heading div_article_title">									
        	     <strong>
  					您的账号即将注销，请核对您的个人信息是否正确。
  				</strong>
  			</div>
        	<div class="list-group-item-heading div_article_title">									
        	     <strong>
  					ID：${lib_user.stu_id }<br>
  					姓名：${lib_user.name }<br>
  				</strong>
  			</div>
             <div class="form-group"> 
             	<div class="list-group-item-heading div_article_title">									
        	     <strong>
  					在注销账号之前，请输入您的密码。
  				</strong>
  				</div>
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserID" class="control-label">密码:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="password" class="form-control" name="Password" value=""> 
                </div> 
            </div>
            <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"></div>
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="hidden" name="opttype" value="cancel"/>
                    <input type="submit" class="btn btn-default" id="Submit" value="注&nbsp;&nbsp;&nbsp;&nbsp;销"> 
                </div> 
              </div> 
        </form>
        <div class="col-xs-3 div_record">
  				<hr>
  				<!-- 小功能列表 -->
  				<div class="row div_little_func">
  					<div class="col-xs-4">
 						<a class="btn btn-default btn-cricle btn_stay"href="Library_Home.jsp">返</a>
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
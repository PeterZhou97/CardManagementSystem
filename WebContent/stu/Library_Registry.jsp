<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="gbk"> 
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <link href="../css/bootstrap.min.css" rel="stylesheet"> 
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script> 
    <script src="../js/bootstrap.min.js"></script> 
    <title>校园图书管理系统</title> 
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
            <h1>学生一卡通管理系统用户注册</h1>
        </div>
         <form class="form-horizontal" id="registry" name="registry"  action="../LibraryServlet" method="post">
         	 <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserID" class="control-label">用户名:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="text" class="form-control" name="UserID" value="${user.id }"> 
                </div> 
            </div> 
            <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserName" class="control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;名:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="text" class="form-control" name="UserName" value="${user.hostname }"> 
                </div> 
            </div> 
            <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="PassWord" class="control-label">密&nbsp;&nbsp;&nbsp;&nbsp;码:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="password" class="form-control" name="PassWord" value="${user.pwd }"> 
                </div> 
            </div> 
              <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"></div>
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="hidden" name="opttype" value="registry"/>
                    <input type="submit" class="btn btn-default" id="Registry" value="提&nbsp;&nbsp;&nbsp;&nbsp;交"> 
                </div> 
              </div> 
         </form>
         <div class="col-xs-3 div_record">
  				<hr>
  				<!-- 小功能列表 -->
  				<div class="row div_little_func">
  					<div class="col-xs-4">
 						<a class="btn btn-default btn-cricle btn_stay"href="Library_Login.jsp">返</a>
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
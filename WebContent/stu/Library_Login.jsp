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
	<div class="container"> 
    	<div class="col-lg-6 col-md-6 col-xs-6"> 
        	<div class="col-lg-3 col-md-3 col-xs-3"></div>
        		<div class="page-header"> 
            		<h1>校园图书管理系统用户登录</h1>
        		</div>
    	</div>
    	 <form class="form-horizontal" id="login" name="login"  action="../LibraryServlet" method="post">
    	 	<div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserID" class="control-label">用户名:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="text" class="form-control" name="UserID" placeholder="用户名"> 
                </div> 
            </div> 
            <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="PassWord" class="control-label">密&nbsp;&nbsp;&nbsp;&nbsp;码:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="password" class="form-control" name="PassWord" placeholder="密码"> 
                </div> 
            </div> 
            <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"></div>
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <a class="btn btn-default" href="Library_Registry.jsp" role="button">通过一卡通账户注册</a>
                </div>  
                <div class="col-lg-2 col-sm-2 col-xs-2"></div>
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="hidden" name="opttype" value="login"/>
                    <input type="submit" class="btn btn-default" id="Submit" value="登&nbsp;&nbsp;&nbsp;&nbsp;录"> 
                </div> 
                <div class="col-lg-2 col-sm-2 col-xs-2"></div>
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <a class="btn btn-default" href="Home.jsp" role="button">返回主页</a>
                </div>   
            </div> 
    	 </form>
    </div>
</body>
</html>
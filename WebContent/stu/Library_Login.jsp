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
    <title>У԰ͼ�����ϵͳ</title> 
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
            		<h1>У԰ͼ�����ϵͳ�û���¼</h1>
        		</div>
    	</div>
    	 <form class="form-horizontal" id="login" name="login"  action="../LibraryServlet" method="post">
    	 	<div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserID" class="control-label">�û���:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="text" class="form-control" name="UserID" placeholder="�û���"> 
                </div> 
            </div> 
            <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="PassWord" class="control-label">��&nbsp;&nbsp;&nbsp;&nbsp;��:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="password" class="form-control" name="PassWord" placeholder="����"> 
                </div> 
            </div> 
            <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"></div>
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <a class="btn btn-default" href="Library_Registry.jsp" role="button">ͨ��һ��ͨ�˻�ע��</a>
                </div>  
                <div class="col-lg-2 col-sm-2 col-xs-2"></div>
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="hidden" name="opttype" value="login"/>
                    <input type="submit" class="btn btn-default" id="Submit" value="��&nbsp;&nbsp;&nbsp;&nbsp;¼"> 
                </div> 
                <div class="col-lg-2 col-sm-2 col-xs-2"></div>
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <a class="btn btn-default" href="Home.jsp" role="button">������ҳ</a>
                </div>   
            </div> 
    	 </form>
    </div>
</body>
</html>
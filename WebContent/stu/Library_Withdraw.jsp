<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html>

<html lang="zh-CN">

<head>

	<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- ����3��meta��ǩ*����*������ǰ�棬�κ��������ݶ�*����*������� -->

	<title>У԰ͼ��ϵͳ�û���ҳ</title>

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
            <h1>ע��ϵͳ�˺�</h1>
        </div>
        <form class="form-horizontal" id="score" name="score"  action="../LibraryServlet" method="post">
        	<div class="list-group-item-heading div_article_title">									
        	     <strong>
  					�����˺ż���ע������˶����ĸ�����Ϣ�Ƿ���ȷ��
  				</strong>
  			</div>
        	<div class="list-group-item-heading div_article_title">									
        	     <strong>
  					ID��${lib_user.stu_id }<br>
  					������${lib_user.name }<br>
  				</strong>
  			</div>
             <div class="form-group"> 
             	<div class="list-group-item-heading div_article_title">									
        	     <strong>
  					��ע���˺�֮ǰ���������������롣
  				</strong>
  				</div>
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserID" class="control-label">����:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="password" class="form-control" name="Password" value=""> 
                </div> 
            </div>
            <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"></div>
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="hidden" name="opttype" value="cancel"/>
                    <input type="submit" class="btn btn-default" id="Submit" value="ע&nbsp;&nbsp;&nbsp;&nbsp;��"> 
                </div> 
              </div> 
        </form>
        <div class="col-xs-3 div_record">
  				<hr>
  				<!-- С�����б� -->
  				<div class="row div_little_func">
  					<div class="col-xs-4">
 						<a class="btn btn-default btn-cricle btn_stay"href="Library_Home.jsp">��</a>
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
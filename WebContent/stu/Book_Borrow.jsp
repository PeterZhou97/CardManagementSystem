<%@ page language="java" contentType="text/html; charset=gbk" 
    pageEncoding="gbk"%>
<!DOCTYPE html>

<html lang="zh-CN">

<head>

	<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- ����3��meta��ǩ*����*������ǰ�棬�κ��������ݶ�*����*������� -->

	<title>�鼮����</title>

	<link href="../css/bootstrap.min.css" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="../css/index.css">
	<style>
	body 
	{
		background-image:url('paper.gif');
		background-color:#cccccc;
	}
	</style>
<body>
	<div class="col-lg-6 col-md-6 col-xs-6"> 
        <div class="col-lg-3 col-md-3 col-xs-3"></div>
        <div class="page-header"> 
            <h1>�鼮����</h1>
        </div>
        <form class="form-horizontal" id="score" name="score"  action="../LibraryServlet" method="post">
        	<div class="list-group-item-heading div_article_title">									
        	     <strong>
  					�鼮�ţ�${borrowed_book.id }<br>
  					������${borrowed_book.name }<br>
  					��ŵص㣺${borrowed_book.location }
  					�������${borrowed_book.storage }
  					����ʱ�伴����Ч��
  				</strong>
  			</div>
            <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserID" class="control-label">������:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10">
                	<input type="radio" value="15" name="days" checked/>15�� 
                    <input type="radio" value="30" name="days"/>30��
                    <input type="radio" value="60" name="days"/>60��
                </div> 
            </div>
            <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"></div>
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="hidden" name="opttype" value="lend"/>
                    <input type="submit" class="btn btn-default" id="Submit" value="��&nbsp;&nbsp;&nbsp;&nbsp;��"> 
                </div> 
             </div> 
        </form>
        <div class="col-xs-3 div_record">
  				<hr>
  				<!-- С�����б� -->
  				<div class="row div_little_func">
  					<div class="col-xs-4">
 						<a class="btn btn-default btn-cricle btn_stay"href="Library_Borrow.jsp">��</a>
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
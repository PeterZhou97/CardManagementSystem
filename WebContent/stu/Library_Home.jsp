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
	<div class="container div_divider">
  		<!-- �ָ��� -->
  		<hr class="hr_1"><h1>��ӭ��½,${user.hostname}</h1> <hr class="hr_2">
  		<div class="row">
  			<!-- �����б� -->
  			<div class="col-xs-9">
  				<div class="list-group div_article">
  					<!-- ��ͷ�� -->
  					<a href="" class="list-group-item active item_article_first">
  						<h4 class="list-group-item-heading">
  							ͼ�����ϵͳ�û������б�
  						</h4>
  					</a>
  					<div class="list-group-item item_article">
  						<div class="row">
  							<div class="div_center col-xs-9">
  								<div class="list-group-item-heading div_article_title">
 									<strong>
  										ͼ��ԤԼ
  									</strong>
  								</div>
  								<p class="list-group-item-text div_article_content">
  									�û��ɲ�ѯ�����鼮�Ļ�����Ϣ��������Ҫ����������ǰԤԼ���ύ��ɻ�ȡͼ�����ϵͳ�Ƿ�ɹ�����Ϣ��ϵͳ����5�����ڸ�����Ӧ��������
  								</p>
  							</div>
  							<div class="col-xs-3 div_right_info">
  								<a class="btn btn-info" style="text-align:right"  href="Library_Order.jsp" role="button">��ʼԤԼ</a>
  							</div>
 						</div>
  					</div>
  					<div class="list-group-item item_article">
  						<div class="row">
  							<div class="div_center col-xs-9">
  								<div class="list-group-item-heading div_article_title">
 									<strong>
  										����
  									</strong>
  								</div>
  								<p class="list-group-item-text div_article_content">
  									�û��ɲ�ѯ�����鼮�Ļ�����Ϣ��������Ҫ�������е�����ģ��������ɽ���ļ�¼������Ч���û����Բ�ѯͼ����ڣ�������Ӧ�������ʱ�䡣
  								</p>
  							</div>
  							<div class="col-xs-3 div_right_info">
  								<a class="btn btn-info" style="text-align:right"  href="Library_Borrow.jsp" role="button">��ʼ����</a>
  							</div>
 						</div>
  					</div>
  					<div class="list-group-item item_article">
  						<div class="row">
  							<div class="div_center col-xs-9">
  								<div class="list-group-item-heading div_article_title">
 									<strong>
  										����
  									</strong>
  								</div>
  								<p class="list-group-item-text div_article_content">
  									�û��ɲ�ѯ�Լ��Ļ����¼��������Ҫ��������ж�ϵͳ�����룬�ύ��ɻ�ȡͼ�����ϵͳ�Ƿ�ɹ�����Ϣ��ϵͳ����5�����ڸ�����Ӧ��������
  								</p>
  							</div>
  							<div class="col-xs-3 div_right_info">
  								<a class="btn btn-info" style="text-align:right"  href="Library_Return.jsp" role="button">��ʼ����</a>
  							</div>
 						</div>
  					</div>
  				</div>
  			</div>
  			<div class="col-xs-3 div_record">
  				<hr>
  				<!-- С�����б� -->
  				<div class="row div_little_func">
  					<div class="col-xs-4">
  						<a class="btn btn-default btn-cricle btn_stay" href="Library_Withdraw.jsp">��</a>
  					</div>
  					<br>
  					<div class="col-xs-4">

  						<a class="btn btn-default btn-cricle btn_login" data-toggle="modal" data-target="#loginModal">��</a>

  					</div>
  					<br>
  					<div class="col-xs-4">
  						<a class="btn btn-default btn-cricle btn_stay" href="Library_Login.jsp">��</a>
  					</div>
  				</div>
  			</div>
  		</div>
  			<!-- ��¼ģ̬�� -->

  		<div class="modal fade bs-example-modal-sm" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">

  			<div class="modal-dialog modal-sm" role="document">

  				<div class="modal-content">

  					<div class="modal-header">

  						<div class="modal-title" id="myModalLabel" style="text-align: center;">�޸ĸ�����Ϣ</div>

  					</div>

  					<div class="modal-body">

  						<form class="form-horizontal" style="padding: 12px;" action="../LibraryServlet" method="post">
  						    
  						    <div class="form-group">

  								<input type="text" class="form-control" id="inputEmail3" name="newid" value="${user.id}" readonly="true">  		

  							</div>
  						

  							<div class="form-group">

  								<input type="password" class="form-control" id="inputEmail3" name="newpwd"  placeholder="������">  		

  							</div>

  							<div class="form-group">			

  								<input type="password" class="form-control" id="inputPassword3" name="confirm" placeholder="ȷ������">

  							</div>
							
							<div class="modal-footer" style="text-align: center;">
							<input type="hidden" name="opttype" value="edit_info"/>
  							<input type="submit" class="btn btn-primary" style="width: 100%" value="�ύ">

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
<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html>

<html lang="zh-CN">

<head>

	<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- ����3��meta��ǩ*����*������ǰ�棬�κ��������ݶ�*����*������� -->

	<title>У԰����ϵͳ</title>

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
  							�������ϵͳ�û������б�
  						</h4>
  					</a>
  					<div class="list-group-item item_article">
  						<div class="row">
  							<div class="div_center col-xs-9">
  								<div class="list-group-item-heading div_article_title">
 									<strong>
  										��������
  									</strong>
  								</div>
  								<p class="list-group-item-text div_article_content">
  									�û��ɻ�ȡѧ���������ϵͳ����ס��״̬��Ϣ���ɲ�ѯ��ס����ʵס���ˡ��ĸ�ѧԺ���ĸ��༶����Ϣ�������ҿ�������ס�ޣ���������༶ͬѧ���ڵ����ᣩ��
  								</p>
  							</div>
  							<div class="col-xs-3 div_right_info">
  								<a class="btn btn-info" style="text-align:right"  href="Domitory_Application.jsp" role="button">��������</a>
  							</div>
 						</div>
  					</div>
  					<div class="list-group-item item_article">
  						<div class="row">
  							<div class="div_center col-xs-9">
  								<div class="list-group-item-heading div_article_title">
 									<strong>
  										ס����Ϣ
  									</strong>
  								</div>
  								<p class="list-group-item-text div_article_content">
  									�û����������ϵͳ��������ס����Ҫ�ȴ�����Ա��׼������Ա��׼��ɻ�ȡ��ס������Ϣ�ͷ��������Լ���סʱ�䡣���Եȵ���׼����뱾ҳ��鿴��Ϣ��
  								</p>
  							</div>
  							<div class="col-xs-3 div_right_info">
  								<a class="btn btn-info" style="text-align:right"  href="Dormitory_Info.jsp" role="button">������Ϣ</a>
  							</div>
 						</div>
  					</div>
  					<div class="list-group-item item_article">
  						<div class="row">
  							<div class="div_center col-xs-9">
  								<div class="list-group-item-heading div_article_title">
 									<strong>
  										��������
  									</strong>
  								</div>
  								<p class="list-group-item-text div_article_content">
  									�û����������ϵͳ�������ޣ���������Ա�����ֳ�ȷ�������������Ϣ���ȡ������Ϣ���ȹ���Ա��׼�󣬷���������ޡ������Ҫ���⣬�뾡����������޷�ע��һ��ͨ��
  								</p>
  							</div>
  							<div class="col-xs-3 div_right_info">
  								<a class="btn btn-info" style="text-align:right"  href="Domitory_Retire.jsp" role="button">��������</a>
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
  						<a class="btn btn-default btn-cricle btn_stay" href="Home.jsp">��</a>
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
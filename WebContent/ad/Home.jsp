<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html>

<html lang="zh-CN">

<head>

	<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- ����3��meta��ǩ*����*������ǰ�棬�κ��������ݶ�*����*������� -->

	<title>ѧ��һ��ͨϵͳ����Ա��ҳ</title>

	<link href="../css/bootstrap.min.css" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="../css/index.css">

  </head>

  <body>



  	<!-- ���½ǰ�ť -->

  	<!-- <button class="btn btn-default btn_right_bottom">д</button> -->

  	<!-- �����ռ� -->

  	<div class="container div_divider">

  		<!-- �ָ��� -->

  		<hr class="hr_1"><h1>��ӭ��½,${admin.name}</h1> <hr class="hr_2">

  		<div class="row">

  			<!-- �����б� -->

  			<div class="col-xs-9">

  				<div class="list-group div_article">

  					<!-- ��ͷ�� -->

  					<a href="" class="list-group-item active item_article_first">

  						<h4 class="list-group-item-heading">

  							����Ա�����б�

  						</h4>

  					</a>

  					<div class="list-group-item item_article">

  						<div class="row">

  							<div class="div_center col-xs-9">

  								<div class="list-group-item-heading div_article_title">

  									<strong>

  										����/����

  									</strong>

  								</div>

  								<p class="list-group-item-text div_article_content">

  									����Ա����ͨ����ģ���ѧ���Ŀ�������ͨ����ע��ѧ����һ��ͨ��ע�⣺���ѧ��δ���ޣ����飬���޷�����������ȷ��ѧ��û�г�������״����

  								</p>

  							</div>

  							<div class="col-xs-3 div_right_info">
  									<a class="btn btn-info" style="text-align:right"  href="CardActivation.jsp" role="button">��׼����</a>
  									<a class="btn btn-info" style="text-align:right"  href="CardDeactivation.jsp" role="button">����</a>
  							</div>

  						</div>

  					</div>

  					<div class="list-group-item item_article">

  						<div class="row">

  							<div class="div_center col-xs-9">

  								<div class="list-group-item-heading div_article_title">

  									<strong>

  										��ѯһ��ͨѧ����Ϣ

  									</strong>

  								</div>

  								<p class="list-group-item-text div_article_content">

  									����Ա���Բ�ѯ��ͳ�ƿ��û���������Ϣ�������ṩ����ѯ��ͳ�Ʒ�ʽ������Ա����ͳ��ѧ����������ѯ����ѧ����Ϣ����ѯһ��ͨ��Ϣ״̬��

  								</p>

  							</div>

  							<div class="col-xs-3 div_right_info">

  								<a class="btn btn-info" style="text-align:right"  href="PersonalInfo.jsp" role="button">��ѯͳ��</a>

  							</div>

  						</div>

  					</div>

  					<div class="list-group-item item_article">

  						<div class="row">

  							<div class="div_center col-xs-9">

  								<div class="list-group-item-heading div_article_title">

  									<strong>

  										�ɼ�����

  									</strong>

  								</div>

  								<p class="list-group-item-text div_article_content">

  									�ڱ�ģ���й���Ա���������ʦ���ĺ��ѧ���ɼ�����ѧ����ѯ��ע�⣺��ȷ���ɼ�׼ȷ���룬������ѧ����ɺܴ�Ӱ�죬�ɼ��޸���Ҫ���쵼�ύ���롣

  								</p>

  							</div>

  							<div class="col-xs-3 div_right_info">

  								<a class="btn btn-info" style="text-align:right"  href="ScoreSheetInput.jsp" role="button">�ɼ�����</a>
								<a class="btn btn-info" style="text-align:right"  href="ScoreSheet.jsp" role="button">���гɼ�</a>
  							</div>

  						</div>

  					</div>
  					<div class="list-group-item item_article">

  						<div class="row">

  							<div class="div_center col-xs-9">

  								<div class="list-group-item-heading div_article_title">

  									<strong>

  										�鼮��Ϣ����

  									</strong>

  								</div>

  								<p class="list-group-item-text div_article_content">

  									�ڱ�ģ���й���Ա��������ͼ����д�ŵ��鼮����ѧ����ѯ��ԤԼ���軹�鼮��ע�⣺��ȷ���鼮��Ϣ׼ȷ���룬������ѧ����ɺܴ�Ӱ�죬���޸���Ҫ���쵼�ύ���롣

  								</p>

  							</div>

  							<div class="col-xs-3 div_right_info">

  								<a class="btn btn-info" style="text-align:right"  href="BookInfoInput.jsp" role="button">�鼮��Ϣ����</a>
								<a class="btn btn-info" style="text-align:right"  href="BookInfo.jsp" role="button">�����鼮��Ϣ</a>
  							</div>

  						</div>

  					</div>

  					<div class="list-group-item item_article">

  						<div class="row">

  							<div class="div_center col-xs-9">

  								<div class="list-group-item-heading div_article_title">

  									<strong>

  										�������

  									</strong>

  								</div>

  								<p class="list-group-item-text div_article_content">

  									�ڱ�ģ���й���Ա����ͨ��ѧ���������룬��׼ѧ���������ᡣͬʱ��ģ��Ҳ����ͨ��ѧ���������롣ע�⣺ѧ��������Ҫ����ְ�����ֳ���顣

  								</p>

  							</div>

  							<div class="col-xs-3 div_right_info">
								<a class="btn btn-info" style="text-align:right"  href="DormInfoInput.jsp" role="button">���������Ϣ</a>
								<a class="btn btn-info" style="text-align:right"  href="DormInfo.jsp" role="button">����������Ϣ</a>
  								<a class="btn btn-info" style="text-align:right"  href="CheckIn.jsp" role="button">��׼����</a>
  								<a class="btn btn-info" style="text-align:right"  href="CheckOut.jsp" role="button">����</a>


  							</div>

  						</div>

  					</div>

  				</div>

  			</div>

  			<!-- �Ҳ� -->

  			<div class="col-xs-3 div_record">
  				<hr>

  				<!-- С�����б� -->

  				<div class="row div_little_func">

  					<div class="col-xs-4">

  						<a class="btn btn-default btn-cricle btn_login" data-toggle="modal" data-target="#loginModal">��</a>

  					</div>
  					<br>

  					<div class="col-xs-4">

  						<a class="btn btn-default btn-cricle btn_stay"href="../Login.html">��</a>

  					</div>

  				</div>

  			</div>

  		</div>

  		<!-- ��¼ģ̬�� -->

  		<div class="modal fade bs-example-modal-sm" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">

  			<div class="modal-dialog modal-sm" role="document">

  				<div class="modal-content">

  					<div class="modal-header">

  						<div class="modal-title" id="myModalLabel" style="text-align: center;">�޸�����</div>

  					</div>

  					<div class="modal-body">

  						<form class="form-horizontal" style="padding: 12px;" action="../LoginServlet" method="post">

  							<div class="form-group">

  								<input type="password" class="form-control" id="inputEmail3" name="newpwd" placeholder="������">  		

  							</div>

  							<div class="form-group">			

  								<input type="password" class="form-control" id="inputPassword3" name="confirm" placeholder="ȷ������">

  							</div>
							
							<div class="modal-footer" style="text-align: center;">
							<input type="hidden" name="opttype" value="edit_pwd"/>
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
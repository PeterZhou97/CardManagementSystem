<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html>

<html lang="zh-CN">

<head>

	<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- ����3��meta��ǩ*����*������ǰ�棬�κ��������ݶ�*����*������� -->

	<title>ѧ��һ��ͨϵͳ�û���ҳ</title>

	<link href="../css/bootstrap.min.css" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="../css/index.css">

  </head>

  <body>



  	<!-- ���½ǰ�ť -->

  	<!-- <button class="btn btn-default btn_right_bottom">д</button> -->

  	<!-- �����ռ� -->

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

  							һ��ͨ�û������б�

  						</h4>

  					</a>


  					<div class="list-group-item item_article">

  						<div class="row">

  							<div class="div_center col-xs-9">

  								<div class="list-group-item-heading div_article_title">

  									<strong>

  										��ѯһ��ͨ�û�������Ϣ

  									</strong>

  								</div>

  								<p class="list-group-item-text div_article_content">

  									����Ա�ɲ�ѯ���˻�����Ϣ�����������Ϣ�����޸ģ��ύ������Ϣ������Ա������ȡ��ԭ����Ϣ������Ա����2-3���������ڸ�����Ӧ��������

  								</p>

  							</div>

  							<div class="col-xs-3 div_right_info">

  								<a class="btn btn-info" style="text-align:right"  href="PersonalInfo.jsp" role="button">��ѯ������Ϣ</a>

  							</div>

  						</div>

  					</div>
  					<div class="list-group-item item_article">

  						<div class="row">

  							<div class="div_center col-xs-9">

  								<div class="list-group-item-heading div_article_title">

  									<strong>

  										��ѯһ��ͨ�û��˻���Ϣ

  									</strong>

  								</div>

  								<p class="list-group-item-text div_article_content">

  									����Ա�ɲ�ѯ���˵��ʻ���Ϣ�������ʻ����������ѡ�ĩ�γ�ֵ����ȡ���ʵ�����ϳ�ֵ��ͨ�������п������ӣ�ֻҪ�û�������ȷ���룬���ɴ����п���У԰��ת�ʣ�ͬʱ�ʻ���Ϣ��ĩ�γ�ֵ������Զ����¡����޸ĸ��˵ĵ�½��Ϣ���Ե�½���������޸ġ�

  								</p>

  							</div>

  							<div class="col-xs-3 div_right_info">

  								<a class="btn btn-info" style="text-align:right"  href="PersonalAccountInfo.jsp" role="button">��ѯ�˻���Ϣ</a>

  							</div>

  						</div>

  					</div>

  					<div class="list-group-item item_article">

  						<div class="row">

  							<div class="div_center col-xs-9">

  								<div class="list-group-item-heading div_article_title">

  									<strong>

  										ͼ�����ϵͳ

  									</strong>

  								</div>

  								<p class="list-group-item-text div_article_content">

  									ϵͳ�û�˵���飺<br>
  									1��ƾһ��ͨ��ͼ�����ϵͳ�����û�ע���ע��������ȡͼ�����ϵͳ�Ƿ�ɹ���Ϣ��<br>
  									2��ƾһ��ͨ��ͼ�����ϵͳ��ͼ��ԤԼ�����顢�������룬����ȡͼ�����ϵͳ�Ƿ�ɹ�����Ϣ��<br>
  									3��ƾһ��ͨ��ѯ���ڲ��顢ͼ�����������ѯ��ͳ��ѧ������ͼ����������<br>

  								</p>

  							</div>
  							<div class="col-xs-3 div_right_info">
  								<img src="../img/library.jpg"><br>
  								<a class="btn btn-info btn-lg btn-block"  href="Library_Login.jsp" role="button" style="text-align:center" >�������ͼ�����ϵͳ</a>

  							</div>

  						</div>

  					</div>

					  					<div class="list-group-item item_article">

  						<div class="row">

  							<div class="div_center col-xs-9">

  								<div class="list-group-item-heading div_article_title">

  									<strong>

  										��������ϵͳ

  									</strong>

  								</div>

  								<p class="list-group-item-text div_article_content">

  									ϵͳ�û�˵���飺<br>
  									ƾһ��ͨ����ѧ����ϵͳ���ɼ���ѯ���룬����ȡ��ѯ�������ѧ���ɼ��ܷ�������ܣ�����ѧ�����п�Ŀ�ĳɼ��Լ����㡣<br>

  								</p>

  							</div>
  							<div class="col-xs-3 div_right_info">
  								<img src="../img/campus.jpg"><br>
  								<a class="btn btn-info btn-lg btn-block"  href="Education_Home.jsp" role="button" style="text-align:center" >��������������ϵͳ</a>

  							</div>

  						</div>

  					</div>
  					
  					  					<div class="list-group-item item_article">

  						<div class="row">

  							<div class="div_center col-xs-9">

  								<div class="list-group-item-heading div_article_title">

  									<strong>

  										�������ϵͳ

  									</strong>

  								</div>

  								<p class="list-group-item-text div_article_content">

  									ϵͳ�û�˵���飺<br>
  									1��ƾһ��ͨ��ȡѧ���������ϵͳ����ס��״̬��Ϣ��ֻ�ܲ�ѯ��ס����ʵס���ˡ��ĸ�ѧԺ���ĸ��༶����Ϣ�����ܲ�ѯѧ�����˾�����Ϣ����<br>
  									2��ƾһ��ͨ���������ϵͳ��������ס������׼��ȡ��ס������Ϣ�ͷ��������Լ���סʱ�䡣<br>
  									3��ƾһ��ͨ���������ϵͳ�������ޣ���������Ա�����ֳ�ȷ�������������Ϣ���ȡ������Ϣ��<br>

  								</p>

  							</div>
  							<div class="col-xs-3 div_right_info">
  								<img src="../img/dorm.png"><br>
  								<a class="btn btn-info btn-lg btn-block"  href="Dormitory_Home.jsp" role="button" style="text-align:center" >��������������ϵͳ</a>

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

  						<div class="modal-title" id="myModalLabel" style="text-align: center;">�޸ĸ�����Ϣ</div>

  					</div>

  					<div class="modal-body">

  						<form class="form-horizontal" style="padding: 12px;" action="../LoginServlet" method="post">
  						    
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
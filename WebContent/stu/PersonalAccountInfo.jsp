<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- ����3��meta��ǩ*����*������ǰ�棬�κ��������ݶ�*����*������� -->

	<title>һ��ͨ��ֵ</title>

	<link href="../css/bootstrap.min.css" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="../css/index.css">

</head>
<body>
	<div class="container div_divider">
		<hr class="hr_1"><hr class="hr_2">
			<div class="row">
				<div class="col-xs-9">
  					<div class="list-group div_article">
  					<!-- ��ͷ�� -->

  						<a href="" class="list-group-item active item_article_first">
  							<h4 class="list-group-item-heading">
 								һ��ͨ�û���Ϣ
  							</h4>
  						</a>
  					    <div class="list-group-item item_article">
  							<div class="row">
  								<div class="div_center col-xs-9">
  									<div class="list-group-item-heading div_article_title">  										
  									    <strong>
  											��ID��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${user.id }
  										</strong>
  									</div>
  								</div>
  						   </div>
  					   </div>
  					    <div class="list-group-item item_article">
  							<div class="row">
  								<div class="div_center col-xs-9">
  									<div class="list-group-item-heading div_article_title">  										
  									    <strong>
  											�ֿ���������&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${user.hostname }
  										</strong>
  									</div>
  								</div>
  						   </div>
  					   </div>
  					    <div class="list-group-item item_article">
  							<div class="row">
  								<div class="div_center col-xs-9">
  									<div class="list-group-item-heading div_article_title">  										
  									    <strong>
  											�󶨵����п��ţ�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${user.bank_card_id }
  										</strong>
  									</div>
  								</div>
  								
  						   </div>
  					   </div>
  					    <div class="list-group-item item_article">
  							<div class="row">
  								<div class="div_center col-xs-9">
  									<div class="list-group-item-heading div_article_title">  										
  									    <strong>
  											����&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${user.balance }Ԫ
  										</strong>
  									</div>
  								</div>
  						   </div>
  					   </div>
  						<div class="col-xs-3 div_right_info">
  								<a class="btn btn-info btn-lg btn-block" style="text-align:center"  href="QueryBankCard.jsp" role="button">��ѯ���п���Ϣ</a>
  					    </div>
  					    <div class="col-xs-3 div_right_info">
  								<a class="btn btn-success btn-lg btn-block" style="text-align:center"  data-toggle="modal" data-target="#loginModal">��ֵ</a>
  							</div>
  						
  					</div>
  			   </div>
		  </div>
		  <div class="col-xs-3 div_record">
  				<hr>
  				<!-- С�����б� -->
  				<div class="row div_little_func">
  					<div class="col-xs-4">
 						<a class="btn btn-default btn-cricle btn_stay"href="Home.jsp">��</a>
  					</div>
  				</div>
  		</div>		  
		  <div class="modal fade bs-example-modal-sm" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
  			<div class="modal-dialog modal-sm" role="document">
  				<div class="modal-content">
  					<div class="modal-header">
  						<div class="modal-title" id="myModalLabel" style="text-align: center">һ��ͨ��ֵ</div>
  					</div>
  					<div class="modal-body">
  						<form class="form-horizontal" style="padding: 12px;" action="../CardServlet" method="post">  						    
 						    <div class="form-group">
  								<input type="text" class="form-control" id="inputEmail3" name="BankCardID" value="${user.bank_card_id}" readonly="true">  		
  							</div>
  						    <div class="form-group">
  								��<input type="text" class="form-control" id="inputEmail3" name="Money" placeholder="��ֵ���" >  		
  							</div>
  							<div class="form-group">
  								<input type="password" class="form-control" id="inputEmail3" name="BankCardPwd"  placeholder="���п�����">  		
  							</div>
  							<div class="form-group">			
  								<input type="password" class="form-control" id="inputPassword3" name="Confirm" placeholder="ȷ������">
  							</div>							
							<div class="modal-footer" style="text-align: center;">
							<input type="hidden" name="opttype" value="recharge"/>
  							<input type="submit" class="btn btn-primary" style="width: 100%" value="��ֵ">
  							</div>
  						</form>
  					</div>
  				</div>
  			</div>
  		</div>
   </div>
   
   
     <script src="../js/jquery-3.3.1.min.js"></script>

  	<script src="../js/bootstrap.min.js"></script>

  	<script src="../js/init.js" type="text/script"></script>

  	<script src="../js/util.js"></script>
</body>
</html>
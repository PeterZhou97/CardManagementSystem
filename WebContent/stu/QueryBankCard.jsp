<%@ page language="java" contentType="text/html; charset=gbk" import="dao.CardUserDao,entity.*,java.util.*,dao.BankDao"
    pageEncoding="gbk"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- ����3��meta��ǩ*����*������ǰ�棬�κ��������ݶ�*����*������� -->

	<title>���п���Ϣ</title>

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
 								���п���Ϣ
  							</h4>
  						</a>
  					    <div class="list-group-item item_article">
  							<div class="row">
  								<div class="div_center col-xs-9">
  									<div class="list-group-item-heading div_article_title">  										
  									    <strong>
  											���п���ID��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  											<%
  											BankDao dao=new BankDao();
  											CardUser user=(CardUser)request.getSession().getAttribute("user");
  											BankCard carduser=dao.queryBankCardById(user.getBank_card_id());
  											out.println(carduser.getBank_card_id());
  											%>
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
  											�ֿ���������&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  											<%
  											out.println(carduser.getHostname());
  											%>
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
  											���п����룺&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  											<%
  											out.print(carduser.getPwd());
  											%>
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
  											���У�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  											&nbsp;
  											<%
  											out.print(carduser.getBankname());
  											%>
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
  											����&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  											&nbsp;
  											<%
  											out.print(carduser.getMoney());
  											%>Ԫ
  										</strong>
  									</div>
  								</div>
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
 						<a class="btn btn-default btn-cricle btn_stay"href="PersonalAccountInfo.jsp">��</a>
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
<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

	<title>一卡通充值</title>

	<link href="../css/bootstrap.min.css" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="../css/index.css">

</head>
<body>
	<div class="container div_divider">
		<hr class="hr_1"><hr class="hr_2">
			<div class="row">
				<div class="col-xs-9">
  					<div class="list-group div_article">
  					<!-- 子头栏 -->

  						<a href="" class="list-group-item active item_article_first">
  							<h4 class="list-group-item-heading">
 								一卡通用户信息
  							</h4>
  						</a>
  					    <div class="list-group-item item_article">
  							<div class="row">
  								<div class="div_center col-xs-9">
  									<div class="list-group-item-heading div_article_title">  										
  									    <strong>
  											卡ID：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${user.id }
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
  											持卡人姓名：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${user.hostname }
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
  											绑定的银行卡号：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${user.bank_card_id }
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
  											卡余额：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${user.balance }元
  										</strong>
  									</div>
  								</div>
  						   </div>
  					   </div>
  						<div class="col-xs-3 div_right_info">
  								<a class="btn btn-info btn-lg btn-block" style="text-align:center"  href="QueryBankCard.jsp" role="button">查询银行卡信息</a>
  					    </div>
  					    <div class="col-xs-3 div_right_info">
  								<a class="btn btn-success btn-lg btn-block" style="text-align:center"  data-toggle="modal" data-target="#loginModal">充值</a>
  							</div>
  						
  					</div>
  			   </div>
		  </div>
		  <div class="col-xs-3 div_record">
  				<hr>
  				<!-- 小功能列表 -->
  				<div class="row div_little_func">
  					<div class="col-xs-4">
 						<a class="btn btn-default btn-cricle btn_stay"href="Home.jsp">返</a>
  					</div>
  				</div>
  		</div>		  
		  <div class="modal fade bs-example-modal-sm" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
  			<div class="modal-dialog modal-sm" role="document">
  				<div class="modal-content">
  					<div class="modal-header">
  						<div class="modal-title" id="myModalLabel" style="text-align: center">一卡通充值</div>
  					</div>
  					<div class="modal-body">
  						<form class="form-horizontal" style="padding: 12px;" action="../CardServlet" method="post">  						    
 						    <div class="form-group">
  								<input type="text" class="form-control" id="inputEmail3" name="BankCardID" value="${user.bank_card_id}" readonly="true">  		
  							</div>
  						    <div class="form-group">
  								￥<input type="text" class="form-control" id="inputEmail3" name="Money" placeholder="充值金额" >  		
  							</div>
  							<div class="form-group">
  								<input type="password" class="form-control" id="inputEmail3" name="BankCardPwd"  placeholder="银行卡密码">  		
  							</div>
  							<div class="form-group">			
  								<input type="password" class="form-control" id="inputPassword3" name="Confirm" placeholder="确认密码">
  							</div>							
							<div class="modal-footer" style="text-align: center;">
							<input type="hidden" name="opttype" value="recharge"/>
  							<input type="submit" class="btn btn-primary" style="width: 100%" value="充值">
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
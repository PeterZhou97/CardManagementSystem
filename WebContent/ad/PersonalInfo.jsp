<%@ page language="java" contentType="text/html; charset=gbk" import="dao.CardUserDao,entity.CardUser,java.util.*"
    pageEncoding="gbk"%>
<!DOCTYPE html>

<html lang="zh-CN">

<head>

	<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

	<title>批准学生开卡</title>

	<link href="../css/bootstrap.min.css" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="../css/index.css">
	
  </head>
  <%
        CardUserDao dao=new CardUserDao();
  		List<CardUser> CardUserList=dao.queryUser();
  %>
<body>
	<div class="container div_divider">
		<hr class="hr_1"><h2>卡成员信息表</h2> <hr class="hr_2">
  		<div class="row">
  			<table class="table table-bordered">
  				<caption>请注意保管此表格的信息，以免信息外泄使卡成员隐私受到伤害。</caption>
  				<thead>
    				<tr>
      					<th>卡ID</th>
      					<th>绑定银行卡ID</th>
      					<th>持卡人姓名</th>
      					<th>卡密码</th>
      					<th>卡状态</th>
      					<th>卡余额</th>
      					<th>今日消费</th>
      					<th>最近充值</th>
     					<th>操作</th>
      				</tr>
  				</thead>
  				<tbody>
  					<%
  						for(CardUser user:CardUserList){
  							out.println("<tr>");
  							out.println("<td>"+user.getId()+"</td><td>"+user.getBank_card_id()+"</td><td>"+user.getHostname()+"</td><td>"+user.getPwd()+"</td><td>"+user.getStatus()+"</td><td>"+user.getBalance()+"</td><td>"+user.getConsumption_today()+"</td><td>"+user.getRecent_recharge()+"</td>");
  							out.println("<td><a href='../CardServlet?opttype=approve_edit&method=post&ID="+user.getId()+"'>批准该成员修改信息</a></td>");
  							out.println("</tr>");
  						}
  					%>
  				</tbody>
  			</table>
        </div>
        <div class="list-group-item-heading div_article_title">
  			<strong>
                              通过卡ID查询用户信息：
  		   </strong>
  		</div>
  		<form class="form-horizontal" id="query" name="query"  action="../CardServlet" method="post"> 
         <div class="form-group">                 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserID" class="control-label">卡ID:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="text" class="form-control" name="UserID" placeholder="卡ID"> 
                </div> 
                <div class="col-lg-2 col-sm-2 col-xs-2"></div>
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="hidden" name="opttype" value="query"/>
                    <input type="submit" class="btn btn-default" id="Submit" value="查&nbsp;&nbsp;&nbsp;&nbsp;询"> 
                </div> 
        </div> 
        </form>
        <div class="list-group-item-heading div_article_title">
  			<strong>
                              通过持卡人姓名查询用户信息：
  		   </strong>
  		</div>
        <form class="form-horizontal" id="query" name="query"  action="../CardServlet" method="post"> 
         <div class="form-group">                 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserID" class="control-label">持卡人姓名:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="text" class="form-control" name="UserName" placeholder="持卡人姓名"> 
                </div> 
                <div class="col-lg-2 col-sm-2 col-xs-2"></div>
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="hidden" name="opttype" value="query_name"/>
                    <input type="submit" class="btn btn-default" id="Submit" value="查&nbsp;&nbsp;&nbsp;&nbsp;询"> 
                </div> 
        </div> 
        </form>
        <div class="col-xs-3 div_record">
  				<hr>
  				<!-- 小功能列表 -->
  				<div class="row div_little_func">
  					<div class="col-xs-4">
 						<a class="btn btn-default btn-cricle btn_stay"href="Home.jsp">返</a>
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
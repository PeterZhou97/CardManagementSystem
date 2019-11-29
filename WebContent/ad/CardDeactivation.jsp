<%@ page language="java" contentType="text/html; charset=gbk" import="dao.CardUserDao,entity.CardUser,java.util.*"
    pageEncoding="gbk"%>
<!DOCTYPE html>

<html lang="zh-CN">

<head>

	<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

	<title>学生销卡</title>

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
  			<table class="table table-condensed">
  				<caption>请注意保管此表格的信息，以免信息外泄使卡成员隐私受到伤害。</caption>
  				<thead>
    				<tr>
      					<th>卡ID</th>
     					<th>卡成员姓名</th>
     					<th>卡密码</th>
      					<th>目前状态</th>
      					<th>操作</th>
      				</tr>
  				</thead>
  				<tbody>
  					<%
  						for(CardUser user:CardUserList){
  							out.println("<tr>");
  							out.println("<td>"+user.getId()+"</td><td>"+user.getHostname()+"</td><td>"+user.getPwd()+"</td><td>"+user.getStatus()+"</td>");
  							out.println("<td><a href='../CardServlet?opttype=cancel&method=post&CardID="+user.getId()+"'>注销该成员卡</a></td>");
  							out.println("</tr>");
  						}
  					%>
  				</tbody>
  			</table>
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
	</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

  	<script src="../js/jquery-3.3.1.min.js"></script>

  	<!-- Include all compiled plugins (below), or include individual files as needed -->

  	<script src="../js/bootstrap.min.js"></script>

  	<script src="../js/init.js" type="text/script"></script>

  	<script src="../js/util.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=gbk" import="dao.CardUserDao,entity.CardUser,java.util.*"
    pageEncoding="gbk"%>
<!DOCTYPE html>

<html lang="zh-CN">

<head>

	<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- ����3��meta��ǩ*����*������ǰ�棬�κ��������ݶ�*����*������� -->

	<title>ѧ������</title>

	<link href="../css/bootstrap.min.css" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="../css/index.css">
	
  </head>
  <%
        CardUserDao dao=new CardUserDao();
  		List<CardUser> CardUserList=dao.queryUser();
  %>
<body>
	<div class="container div_divider">
		<hr class="hr_1"><h2>����Ա��Ϣ��</h2> <hr class="hr_2">
  		<div class="row">
  			<table class="table table-condensed">
  				<caption>��ע�Ᵽ�ܴ˱�����Ϣ��������Ϣ��йʹ����Ա��˽�ܵ��˺���</caption>
  				<thead>
    				<tr>
      					<th>��ID</th>
     					<th>����Ա����</th>
     					<th>������</th>
      					<th>Ŀǰ״̬</th>
      					<th>����</th>
      				</tr>
  				</thead>
  				<tbody>
  					<%
  						for(CardUser user:CardUserList){
  							out.println("<tr>");
  							out.println("<td>"+user.getId()+"</td><td>"+user.getHostname()+"</td><td>"+user.getPwd()+"</td><td>"+user.getStatus()+"</td>");
  							out.println("<td><a href='../CardServlet?opttype=cancel&method=post&CardID="+user.getId()+"'>ע���ó�Ա��</a></td>");
  							out.println("</tr>");
  						}
  					%>
  				</tbody>
  			</table>
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
	</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

  	<script src="../js/jquery-3.3.1.min.js"></script>

  	<!-- Include all compiled plugins (below), or include individual files as needed -->

  	<script src="../js/bootstrap.min.js"></script>

  	<script src="../js/init.js" type="text/script"></script>

  	<script src="../js/util.js"></script>
</body>
</html>
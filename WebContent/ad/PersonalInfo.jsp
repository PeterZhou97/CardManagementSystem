<%@ page language="java" contentType="text/html; charset=gbk" import="dao.CardUserDao,entity.CardUser,java.util.*"
    pageEncoding="gbk"%>
<!DOCTYPE html>

<html lang="zh-CN">

<head>

	<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- ����3��meta��ǩ*����*������ǰ�棬�κ��������ݶ�*����*������� -->

	<title>��׼ѧ������</title>

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
  			<table class="table table-bordered">
  				<caption>��ע�Ᵽ�ܴ˱�����Ϣ��������Ϣ��йʹ����Ա��˽�ܵ��˺���</caption>
  				<thead>
    				<tr>
      					<th>��ID</th>
      					<th>�����п�ID</th>
      					<th>�ֿ�������</th>
      					<th>������</th>
      					<th>��״̬</th>
      					<th>�����</th>
      					<th>��������</th>
      					<th>�����ֵ</th>
     					<th>����</th>
      				</tr>
  				</thead>
  				<tbody>
  					<%
  						for(CardUser user:CardUserList){
  							out.println("<tr>");
  							out.println("<td>"+user.getId()+"</td><td>"+user.getBank_card_id()+"</td><td>"+user.getHostname()+"</td><td>"+user.getPwd()+"</td><td>"+user.getStatus()+"</td><td>"+user.getBalance()+"</td><td>"+user.getConsumption_today()+"</td><td>"+user.getRecent_recharge()+"</td>");
  							out.println("<td><a href='../CardServlet?opttype=approve_edit&method=post&ID="+user.getId()+"'>��׼�ó�Ա�޸���Ϣ</a></td>");
  							out.println("</tr>");
  						}
  					%>
  				</tbody>
  			</table>
        </div>
        <div class="list-group-item-heading div_article_title">
  			<strong>
                              ͨ����ID��ѯ�û���Ϣ��
  		   </strong>
  		</div>
  		<form class="form-horizontal" id="query" name="query"  action="../CardServlet" method="post"> 
         <div class="form-group">                 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserID" class="control-label">��ID:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="text" class="form-control" name="UserID" placeholder="��ID"> 
                </div> 
                <div class="col-lg-2 col-sm-2 col-xs-2"></div>
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="hidden" name="opttype" value="query"/>
                    <input type="submit" class="btn btn-default" id="Submit" value="��&nbsp;&nbsp;&nbsp;&nbsp;ѯ"> 
                </div> 
        </div> 
        </form>
        <div class="list-group-item-heading div_article_title">
  			<strong>
                              ͨ���ֿ���������ѯ�û���Ϣ��
  		   </strong>
  		</div>
        <form class="form-horizontal" id="query" name="query"  action="../CardServlet" method="post"> 
         <div class="form-group">                 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserID" class="control-label">�ֿ�������:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="text" class="form-control" name="UserName" placeholder="�ֿ�������"> 
                </div> 
                <div class="col-lg-2 col-sm-2 col-xs-2"></div>
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="hidden" name="opttype" value="query_name"/>
                    <input type="submit" class="btn btn-default" id="Submit" value="��&nbsp;&nbsp;&nbsp;&nbsp;ѯ"> 
                </div> 
        </div> 
        </form>
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
<%@ page language="java" contentType="text/html; charset=gbk"  import="entity.AccomodationStatus,dao.StatusDao,java.util.*"
    pageEncoding="gbk"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>

	<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- ����3��meta��ǩ*����*������ǰ�棬�κ��������ݶ�*����*������� -->

	<title>��������</title>

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
 <%
 	StatusDao dao=new StatusDao();
 	List<AccomodationStatus> StaList=dao.queryStatus();
 %>
<body>
	<div class="container div_divider">
		<hr class="hr_1"><h2>����������Ϣ��</h2> <hr class="hr_2">
  		<div class="row">
  			<table class="table table-bordered">
  				<caption>��ע����ϸ�鿴����������Ϣ����ֹ�������ޡ�</caption>
  				<thead>
    				<tr>
    					<th>ѧ��</th>
    					<th>����</th>
    					<th>��������</th>
    					<th>Ŀǰ״̬</th>
    				</tr>
    			</thead>
    			<tbody>
    				<%
    					for(AccomodationStatus status:StaList){
    						out.println("<tr>");
    						out.println("<td>"+status.getStu_id()+"</td><td>"+status.getDom_id()+"</td><td>"+status.getDate_begin()+"</td><td>"+status.getStatus()+"</td>");
    						out.println("<td><a href='../DormitoryServlet?opttype=approve_apply&method=post&StuID="+status.getStu_id()+"&RoomID="+status.getDom_id()+"'>��׼��������</a></td>");
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
</body>
</html>
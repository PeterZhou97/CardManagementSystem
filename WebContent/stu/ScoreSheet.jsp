<%@ page language="java" contentType="text/html; charset=gbk" import="dao.ScoreSheetDao,entity.ScoreSheet,entity.CardUser,java.util.*"
    pageEncoding="gbk"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>

	<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- ����3��meta��ǩ*����*������ǰ�棬�κ��������ݶ�*����*������� -->

	<title>����ѧ���ĳɼ���</title>

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
	ScoreSheetDao dao=new ScoreSheetDao();
	CardUser user=(CardUser)request.getSession().getAttribute("user");
	List<ScoreSheet> ScoreList=dao.querySheet(user.getId());
%>
<body>
	<div class="container div_divider">
		<hr class="hr_1"><h2>ѧ���ɼ���Ϣ��</h2> <hr class="hr_2">
  		<div class="row">
  			<table class="table table-condensed">
  				<caption>��ע�Ᵽ�ܴ˱�����Ϣ��������Ϣ��йʹ����Ա��˽�ܵ��˺���</caption>
  				<thead>
    				<tr>
    					<th>����</th>
    					<th>��Ŀ��</th>
    					<th>��Ŀ</th>
    					<th>�ɼ�</th>
    					<th>����</th>
    				</tr>    				
    			</thead>
    			<tbody>
    				<%
    					for(ScoreSheet sheet:ScoreList){
    						out.println("<tr>");
  							out.println("<td>"+sheet.getName()+"</td><td>"+sheet.getSubject_id()+"</td><td>"+sheet.getSubject()+"</td><td>"+sheet.getScore()+"</td><td>"+sheet.getCredit()+"</td>");
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
 						<a class="btn btn-default btn-cricle btn_stay"href="Education_Home.jsp">��</a>
  					</div>
  				</div>
  		</div>
  	</div>
</body>
</html>
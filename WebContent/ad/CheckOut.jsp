<%@ page language="java" contentType="text/html; charset=gbk"  import="entity.AccomodationStatus,dao.StatusDao,java.util.*"
    pageEncoding="gbk"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>

	<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

	<title>退宿申请</title>

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
		<hr class="hr_1"><h2>宿舍申请信息表</h2> <hr class="hr_2">
  		<div class="row">
  			<table class="table table-bordered">
  				<caption>请注意仔细查看宿舍申请信息，防止错误退宿。</caption>
  				<thead>
    				<tr>
    					<th>学号</th>
    					<th>房号</th>
    					<th>申请日期</th>
    					<th>目前状态</th>
    				</tr>
    			</thead>
    			<tbody>
    				<%
    					for(AccomodationStatus status:StaList){
    						out.println("<tr>");
    						out.println("<td>"+status.getStu_id()+"</td><td>"+status.getDom_id()+"</td><td>"+status.getDate_begin()+"</td><td>"+status.getStatus()+"</td>");
    						out.println("<td><a href='../DormitoryServlet?opttype=approve_retire&method=post&StuID="+status.getStu_id()+"&RoomID="+status.getDom_id()+"'>批准退宿申请</a></td>");
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
</body>
</html>
<%@ page language="java" contentType="text/html; charset=gbk"   import="entity.Dormitory,dao.DormitoryDao,java.util.*"
    pageEncoding="gbk"%>
<html lang="zh-CN">
<head>
<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

	<title>所有宿舍信息</title>

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
  		DormitoryDao dao=new DormitoryDao();
  		List<Dormitory> DormitoryList=dao.queryDorm();
  %>
<body>
	<div class="container div_divider">
		<hr class="hr_1"><h2>宿舍信息表</h2> <hr class="hr_2">
  		<div class="row">
  			<table class="table table-bordered">
  				<caption>请注意仔细查看宿舍信息，防止错误申请宿舍。</caption>
  				<thead>
    				<tr>
      					<th>宿舍编号</th>
      					<th>宿舍专业</th>
      					<th>宿舍班级</th>
      					<th>宿舍密码</th>
      					<th>宿舍可住人数</th>
      					<th>宿舍现住人数</th>
      				</tr>
  				</thead>
  				<tbody>
  					<%
  						for(Dormitory dorm:DormitoryList){
  							out.println("<tr>");
  							out.println("<td>"+dorm.getId()+"</td><td>"+dorm.getDept()+"</td><td>"+dorm.getClasss()+"</td><td>"+dorm.getPwd()+"</td><td>"+dorm.getNum_available()+"</td><td>"+dorm.getNum_present()+"</td>");
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
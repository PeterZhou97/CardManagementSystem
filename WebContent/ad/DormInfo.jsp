<%@ page language="java" contentType="text/html; charset=gbk"   import="entity.Dormitory,dao.DormitoryDao,java.util.*"
    pageEncoding="gbk"%>
<html lang="zh-CN">
<head>
<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- ����3��meta��ǩ*����*������ǰ�棬�κ��������ݶ�*����*������� -->

	<title>����������Ϣ</title>

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
		<hr class="hr_1"><h2>������Ϣ��</h2> <hr class="hr_2">
  		<div class="row">
  			<table class="table table-bordered">
  				<caption>��ע����ϸ�鿴������Ϣ����ֹ�����������ᡣ</caption>
  				<thead>
    				<tr>
      					<th>������</th>
      					<th>����רҵ</th>
      					<th>����༶</th>
      					<th>��������</th>
      					<th>�����ס����</th>
      					<th>������ס����</th>
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
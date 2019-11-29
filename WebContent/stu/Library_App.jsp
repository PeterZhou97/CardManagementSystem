<%@ page language="java" contentType="text/html; charset=gbk"  import="entity.Books_Application,entity.LibraryUser,dao.BookAppDao,java.util.*"
    pageEncoding="gbk"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="gbk">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- ����3��meta��ǩ*����*������ǰ�棬�κ��������ݶ�*����*������� -->
	<title>�û�������Ϣ</title>
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
	BookAppDao dao=new BookAppDao();
    LibraryUser user=(LibraryUser)request.getSession().getAttribute("lib_user");
	List<Books_Application> AppList=dao.queryAppByID(user.getStu_id());
%>
<body>
	<div class="container div_divider">
		<hr class="hr_1"><h2>�û������鼮��Ϣ</h2> <hr class="hr_2">
  		<div class="row">
  			<table class="table table-condensed">
  				<caption>��ע�Ᵽ�ܴ˱�����Ϣ��������Ϣ��йʹ�û���˽�ܵ��˺���</caption>
  				<thead>
    				<tr>
     					<th>�鼮��</th>
     					<th>��ʼ��������</th>
     					<th>״̬</th>
      				</tr>
  				</thead>
  				<tbody>
  					<%
  						for(Books_Application app:AppList){
  							out.println("<tr>");
  							out.println("<td>"+app.getBook_id()+"</td><td>"+app.getAppointed_date()+"</td><td>"+app.getStatus()+"</td>");
  							out.println("<td><a href='../LibraryServlet?opttype=book_withdraw&method=post&StuID="+user.getStu_id()+"&BookID="+app.getBook_id()+"'>����</a></td>");
  							out.println("</tr>");
  						}
  					%>
  			   </tbody>
  		    </table>
  		</div>
  		<div class="col-lg-2 col-sm-2 col-xs-2"></div>
  		<div class="col-xs-3 div_record">
  				<hr>
  				<!-- С�����б� -->
  				<div class="row div_little_func">
  					<div class="col-xs-4">
 						<a class="btn btn-default btn-cricle btn_stay"href="Library_Order.jsp">��</a>
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
<%@ page language="java" contentType="text/html; charset=gbk" import="dao.BookDao,entity.Book,java.util.*"
    pageEncoding="gbk"%>
<!DOCTYPE html>

<html lang="zh-CN">

<head>

	<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- ����3��meta��ǩ*����*������ǰ�棬�κ��������ݶ�*����*������� -->

	<title>ԤԼ�鼮����</title>

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
  		BookDao dao=new BookDao();
  		List<Book> BookList=dao.queryBook();
  %>
<body>
	<div class="container div_divider">
		<hr class="hr_1"><h2>�鼮ԤԼ</h2> <hr class="hr_2">
  		<div class="row">
  			<table class="table table-condensed">
  				<thead>
    				<tr>
    					<th>�鼮��</th>
    					<th>����</th>
    					<th>��ŵص�</th>
    					<th>�����</th>
    				</tr>    				
    			</thead>
    			<tbody>
    				<%
    					for(Book book:BookList){
    						out.println("<tr>");
    						out.println("<td>"+book.getId()+"</td><td>"+book.getName()+"</td><td>"+book.getLocation()+"</td><td>"+book.getStorage()+"</td>");
    						out.println("<td><a href='../LibraryServlet?opttype=book_order&method=post&BookID="+book.getId()+"'>ԤԼ</a></td>");
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
 						<a class="btn btn-default btn-cricle btn_stay"href="Library_Home.jsp">��</a>
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
<%@ page language="java" contentType="text/html; charset=gbk" import="dao.BookDao,entity.Book,java.util.*"
    pageEncoding="gbk"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>

	<meta charset="gbk">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

	<title>所有学生的成绩表</title>

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
		<hr class="hr_1"><h2>书籍信息表</h2> <hr class="hr_2">
  		<div class="row">
  			<table class="table table-condensed">
  				<caption>请注意保管此表格的信息，以免信息外泄使校园图书馆隐私受到伤害。</caption>
  				<thead>
    				<tr>
    					<th>书籍号</th>
    					<th>书名</th>
    					<th>存放地点</th>
    					<th>库存数</th>
    				</tr>    				
    			</thead>
    			<tbody>
    				<%
    					for(Book book:BookList){
    						out.println("<tr>");
    						out.println("<td>"+book.getId()+"</td><td>"+book.getName()+"</td><td>"+book.getLocation()+"</td><td>"+book.getStorage()+"</td>");
    						out.println("<td><a href='../LibraryServlet?opttype=book_edit&method=post&BookID="+book.getId()+"'>编辑</a></td>");
    						out.println("<td><a href='../LibraryServlet?opttype=book_del&method=post&BookID="+book.getId()+"'>删除</a></td>");
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
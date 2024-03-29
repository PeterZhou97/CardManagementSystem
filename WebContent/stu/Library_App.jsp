<%@ page language="java" contentType="text/html; charset=gbk"  import="entity.Books_Application,entity.LibraryUser,dao.BookAppDao,java.util.*"
    pageEncoding="gbk"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="gbk">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>用户借阅信息</title>
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
		<hr class="hr_1"><h2>用户申请书籍信息</h2> <hr class="hr_2">
  		<div class="row">
  			<table class="table table-condensed">
  				<caption>请注意保管此表格的信息，以免信息外泄使用户隐私受到伤害。</caption>
  				<thead>
    				<tr>
     					<th>书籍号</th>
     					<th>开始借阅日期</th>
     					<th>状态</th>
      				</tr>
  				</thead>
  				<tbody>
  					<%
  						for(Books_Application app:AppList){
  							out.println("<tr>");
  							out.println("<td>"+app.getBook_id()+"</td><td>"+app.getAppointed_date()+"</td><td>"+app.getStatus()+"</td>");
  							out.println("<td><a href='../LibraryServlet?opttype=book_withdraw&method=post&StuID="+user.getStu_id()+"&BookID="+app.getBook_id()+"'>撤销</a></td>");
  							out.println("</tr>");
  						}
  					%>
  			   </tbody>
  		    </table>
  		</div>
  		<div class="col-lg-2 col-sm-2 col-xs-2"></div>
  		<div class="col-xs-3 div_record">
  				<hr>
  				<!-- 小功能列表 -->
  				<div class="row div_little_func">
  					<div class="col-xs-4">
 						<a class="btn btn-default btn-cricle btn_stay"href="Library_Order.jsp">返</a>
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
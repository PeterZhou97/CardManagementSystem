<%@ page language="java" contentType="text/html; charset=gbk" import="dao.ScoreSheetDao,entity.ScoreSheet,java.util.*"
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
	ScoreSheetDao dao=new ScoreSheetDao();
	List<ScoreSheet> ScoreList=dao.querySheet();
%>
<body>
	<div class="container div_divider">
		<hr class="hr_1"><h2>学生成绩信息表</h2> <hr class="hr_2">
  		<div class="row">
  			<table class="table table-condensed">
  				<caption>请注意保管此表格的信息，以免信息外泄使卡成员隐私受到伤害。</caption>
  				<thead>
    				<tr>
    					<th>学号</th>
    					<th>姓名</th>
    					<th>科目号</th>
    					<th>科目</th>
    					<th>成绩</th>
    					<th>绩点</th>
    				</tr>    				
    			</thead>
    			<tbody>
    				<%
    					for(ScoreSheet sheet:ScoreList){
    						out.println("<tr>");
  							out.println("<td>"+sheet.getStu_id()+"</td><td>"+sheet.getName()+"</td><td>"+sheet.getSubject_id()+"</td><td>"+sheet.getSubject()+"</td><td>"+sheet.getScore()+"</td><td>"+sheet.getCredit()+"</td>");
  							out.println("<td><a href='"+request.getContextPath()+"/EducationServlet?opttype=edit&method=post&StuID="+sheet.getStu_id()+"&CourseID="+sheet.getSubject_id()+"'>编辑</a></td>");
  							out.println("<td><a href='../EducationServlet?opttype=delete&method=post&StuID="+sheet.getStu_id()+"&CourseID="+sheet.getSubject_id()+"'>删除</a></td>");
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
<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gbk">
<title>�޸�ѧ���ɼ���</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <link href="../css/bootstrap.min.css" rel="stylesheet"> 
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script> 
    <script src="../js/bootstrap.min.js"></script> 
    
</head>
<body>
	<div class="col-lg-6 col-md-6 col-xs-6"> 
        <div class="col-lg-3 col-md-3 col-xs-3"></div>
        <div class="page-header"> 
            <h1>ѧ���ɼ��޸�</h1>
        </div>
        <form class="form-horizontal" id="score" name="score"  action="../EducationServlet" method="post">
        	<div class="list-group-item-heading div_article_title">									
        	     <strong>
  					ע�⣺�ɼ�Ӧ��0-100��֮�䣬����Ӧ����0-5֮�䡣
  				</strong>
  			</div>
        	<div class="list-group-item-heading div_article_title">									
        	     <strong>
  					ѧ����${sheet.name }<br>
  					��Ŀ��${sheet.subject }<br>
  				</strong>
  			</div>
             <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserID" class="control-label">�����ɼ�:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="text" class="form-control" name="Score" value="${sheet.score }"> 
                </div> 
            </div>
             <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserID" class="control-label">����:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="text" class="form-control" name="Credit" value="${sheet.credit }"> 
                </div> 
            </div>
            <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"></div>
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="hidden" name="opttype" value="correct"/>
                    <input type="submit" class="btn btn-default" id="Submit" value="��&nbsp;&nbsp;&nbsp;&nbsp;��"> 
                </div> 
              </div> 
        </form>
        <div class="col-xs-3 div_record">
  				<hr>
  				<!-- С�����б� -->
  				<div class="row div_little_func">
  					<div class="col-xs-4">
 						<a class="btn btn-default btn-cricle btn_stay"href="ScoreSheet.jsp">��</a>
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
<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gbk">
<title>����������Ϣ</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <link href="../css/bootstrap.min.css" rel="stylesheet"> 
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script> 
    <script src="../js/bootstrap.min.js"></script> 
    <style>
	body 
	{
		background-image:url('paper.gif');
		background-color:#cccccc;
	}
	</style>
</head>
<body>
	<div class="col-lg-6 col-md-6 col-xs-6"> 
        <div class="col-lg-3 col-md-3 col-xs-3"></div>
        <div class="page-header"> 
            <h1>������Ϣ�ϴ�</h1>
        </div>
        <form class="form-horizontal" id="score" name="score"  action="../DormitoryServlet" method="post">
        	<div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="BookID" class="control-label">����:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="text" class="form-control" name="DormID" placeholder="����"> 
                </div> 
            </div>
            <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="BookName" class="control-label">ѧԺ:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="text" class="form-control" name="Dept" placeholder="ѧԺ"> 
                </div> 
            </div>
            <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserID" class="control-label">�༶:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="text" class="form-control" name="Classs" placeholder="�༶"> 
                </div> 
            </div>
             <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserID" class="control-label">������:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="password" class="form-control" name="Pwd" placeholder="������"> 
                </div> 
            </div>
            <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserID" class="control-label">��ס����:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="text" class="form-control" name="Num_A" placeholder="��ס����"> 
                </div> 
            </div>
            <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"></div>
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="hidden" name="opttype" value="add"/>
                    <input type="submit" class="btn btn-default" id="Submit" value="��&nbsp;&nbsp;&nbsp;&nbsp;��"> 
                </div> 
              </div> 
        </form>
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
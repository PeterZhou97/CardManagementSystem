<%@ page language="java" contentType="text/html; charset=gbk" 
    pageEncoding="gbk"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="gbk">
<title>���ĸ�����Ϣ</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <link href="../css/bootstrap.min.css" rel="stylesheet"> 
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script> 
    <script src="../js/bootstrap.min.js"></script> 
</head>

<body>
	<div class="col-lg-6 col-md-6 col-xs-6"> 
        <div class="col-lg-3 col-md-3 col-xs-3"></div>
        <div class="page-header"> 
            <h1>���ĸ�����Ϣ</h1>
        </div>
        <form class="form-horizontal" id="edit_info" name="edit_info"  action="../CardServlet" method="post">
        	<div class="list-group-item-heading div_article_title">									
        	     <strong>
  					��ID��${user.id }<br>
  				</strong>
  			</div>
  			 <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserName" class="control-label">����:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="text" class="form-control" name="UserName" value="${user.hostname }"> 
                </div> 
            </div>
            <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserName" class="control-label">ԭ�����п���:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="text" class="form-control" name="BankCardID" value="${user.bank_card_id }"> 
                </div> 
            </div>
            <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserName" class="control-label">ԭ�����п�����:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="password" class="form-control" name="BankCardPwd" value=""> 
                </div> 
            </div>
            <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserName" class="control-label">�°����п���:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="text" class="form-control" name="newBankCardID" value=""> 
                </div> 
            </div>
            <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserName" class="control-label">�°����п���������:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="text" class="form-control" name="newBank" value=""> 
                </div> 
            </div>
             <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"> 
                    <label for="UserName" class="control-label">�°���������:</label> 
                </div> 
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="password" class="form-control" name="newBankCardPwd" value=""> 
                </div> 
            </div>
            <div class="form-group"> 
                <div class="col-lg-2 col-sm-2 col-xs-2"></div>
                <div class="col-lg-10 col-sm-10 col-xs-10"> 
                    <input type="hidden" name="opttype" value="edit"/>
                    <input type="submit" class="btn btn-default" id="Submit" value="��&nbsp;&nbsp;&nbsp;&nbsp;��"> 
                </div> 
              </div> 
        </form>
        <div class="col-xs-3 div_record">
  				<hr>
  				<!-- С�����б� -->
  				<div class="row div_little_func">
  					<div class="col-xs-4">
 						<a class="btn btn-default btn-cricle btn_stay"href="PersonalInfo.jsp">��</a>
  					</div>
  				</div>
  		</div>
    </div>
</body>
</html>
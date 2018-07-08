<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="QuanLyCH.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập</title>
    <script src="js/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"/>
    <!-- Custom Theme files -->
    <link href="css/style1.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- for-mobile-apps -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
    <meta name="keywords" content="Classy Login form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700' rel='stylesheet' type='text/css'/>
</head>
<body>
    <form id="form1" runat="server">
       <div class="header">
		<div class="header-main">
		       <h1>Đăng nhập</h1>
			<div class="header-bottom">
				<div class="header-right w3agile">
					
					<div class="header-left-bottom agileinfo">
						
					 <div action="#" method="post">
						<input type="text"  value="Tên đăng nhập" name="name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Tên đăng nhập';}"/>
					<input type="password"  value="Mật khẩu" name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Mật khẩu';}"/>
						<div class="remember">
			             <span class="checkbox1">
							   <label class="checkbox"><input type="checkbox" name="" checked=""/><i> </i>Duy trì đăng nhập</label>
						 </span>
						 <div class="forgot">
						 	<h6><a href="#">Quên mật khẩu</a></h6>
						 </div>
						<div class="clear"> </div>
					  </div>
                         <asp:Button ID="Button1" runat="server" Text="Đăng nhập"  /><br />
						<%--<input type="submit" value="Đăng nhập">--%>
                           <div>
                        <a href="DangKy.aspx"><asp:Button ID="Button2" runat="server" Text="Đăng ký"  style="background: blue"/></a>
                    </div>
                         
					</div>	
					<div class="header-left-top">
						<div class="sign-up"> <h2>or</h2> </div>
					
					</div>
					<div class="header-social wthree">
							<a href="#" class="face"><h5>Facebook</h5></a>
							<a href="#" class="twitt"><h5>Twitter</h5></a>
						</div><br />

                  
						
				</div>
				</div>
			  
			</div>
		</div>
</div>
        
    </form>
</body>
</html>

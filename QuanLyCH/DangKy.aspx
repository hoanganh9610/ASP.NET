<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="QuanLyCH.DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng ký</title>
     <meta name="viewport" content="width=device-width, initial-scale=1"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="<%--Precise Contact Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs Sign up Web Templates, 
 Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design--%>"/>
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link href="css/styleDK.css" rel='stylesheet' type='text/css' />
	<link href="//fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <h1> Đăng ký</h1>
	<div class="contact-main-w3-agile">

		<div class="form-agileits-w3layouts">
			<form action="#" method="post">
				<div class="form-w3layouts-fields">
					<input type="text" name="Name" placeholder="Tên" required="" />
				</div>
				<div class="form-w3layouts-fields">
					<input type="email" name="Email" placeholder="Mật khẩu" required="" />
				</div>
					<div class="form-w3layouts-fields">
					<input type="email" name="Email" placeholder="Email" required="" />
				</div>
				<div class="form-w3layouts-fields">
					<input type="text" name="Phone" placeholder="Số điện thoại" required="" />
				</div>
				<!--<div class="form-w3layouts-fields">
					<textarea name="Message" placeholder="Message" required></textarea>
				</div>-->
                <asp:Button ID="Button1" runat="server" Text="Gửi" type="submit" value="Gửi" />
				<%--<input type="submit" value="Gửi">--%>
            
			</form>
		</div>
		<!-- // Contact form -->
	</div>
	<div class="clear"></div><br />
              <div class="">
							<a href="DangNhap.aspx" class="" style="background: red"><h5>Quay lại</h5></a>				
				</div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThuNgan.aspx.cs" Inherits="QuanLyCH.ThuNgan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thu ngân</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/javascript" href="js/xltab.js">
</head>
<body>
    <form id="form1" runat="server">
 <div class="row">
            <div class="col-md-6"  >
                <ul class="nav nav-tabs" style="background-color:#5DC2F3 ">
                    <li class="active"><a data-toggle="tab" id="phongban" onClick="doimau(1)"  >PHÒNG BÀN</a>
                    </li>
                    <li ><a data-toggle="tab" href="#menu1" id="thucdon" onClick="doimau(2)">THỰC ĐƠN</a>
                    </li>
                    <li style="width: 410px; margin-top: 5px">
                       <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Tìm sản phẩm (F3)" ></asp:TextBox>
                       <%-- <input type="text" class="form-control" placeholder="Tìm sản phẩm (F3)" form>--%>
                    </li>
                    <li>
                        <input type="button" class="btn" style="margin-left: 10px; margin-top: 4px; width: 60px" >
                    </li>
                </ul>

                <div class="tab-content" >
                    <div id="home">
                      <br>
                       <div style="margin-left: 30px"><button class="btn -btn-success" style="background: #00BFFF">Tất cả</button></div>
                        
                    </div>
                        <div id="home">
                      <br>
                     		
                      		
							
                        
                    </div>
                </div>
            </div>
            <div class="col-md-6" style="margin-left: -30px">
				<ul class="nav nav-tabs" style="background-color:#5DC2F3 ">
                    <li class="active" ><a data-toggle="tab" style="background-color: #F0F8FF"  >Giao đi- hóa đơn 1 </a>
                    </li>
              
                </ul>

                <div class="tab-content" >
                    <div id="hoadon" style="background-color:#F0F8FF; height: 680px">
                      <br>
						<table>
							<tr>
								<td><asp:TextBox ID="TextBox" runat="server" style="margin-left:18px; margin-top:-18px" class="form-control" placeholder="Tìm khách hàng (F4)"></asp:TextBox></td>
							    <td><asp:CheckBox ID="CheckBox8" runat="server" style="margin-left:35px; margin-top: -40px" />Giao hàng </td>
                                <td><asp:DropDownList ID="DropDownList1" runat="server" class="form-control" style="width:150px; margin-left:40px; margin-top:-18px; background:#B5B5B5">
                                        <asp:ListItem>Bảng giá chung</asp:ListItem>
                                    </asp:DropDownList> 

                                </td>
                            </tr>
                                    
						</table>
                        <%--<asp:Label ID="Label1" runat="server" Text="Chưa có thực đơn nào" style="margin-left:300px; margin-top:-20px"></asp:Label>--%>
                        <h4 style="margin-left:300px; margin-top:180px; background-color:aliceblue">Chưa có thực đơn nào</h4>
                    <hr style="border-color: #00BFFF; margin-top:290px"/>
                        <div>
                            <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" style="width:240px; margin-left:18px;" >
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label ID="Label1" runat="server" Text="<b>Tổng tiền:</b>" style="margin-left:530px; margin-top:60px"></asp:Label><br />
                            <asp:Button ID="Button1" runat="server" Text="Thanh toán(F9)"  class="form-control"  style="width:300px; height:65px; background:#00CC33"/>
                            <asp:Button ID="Button2" runat="server" Text="Thông báo"  class="form-control" style="width:200px; height:65px; margin-left:305px; margin-top:-65px; background:#EE6363"/>
                            <asp:Button ID="Button3" runat="server" Text="Chuyển ghép bàn"  class="form-control" style="width:240px; height:65px; margin-left:510px; margin-top:-65px; background:#00BFFF"/>
                        </div>
                         </div>
                   
                   
                </div>
            </div>
        </div>
    </form>
</body>
</html>

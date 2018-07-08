<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="THCheBien.aspx.cs" Inherits="QuanLyCH.THCheBien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thên hàng chế biến</title>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
         <div class="container">
           <%-- <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Thêm hàng chế biến</button>--%>

  <!-- Modal -->
  <div class="modal fade" id="THCheBien" >
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Thêm hàng chế biến</h4>
        </div>
        <div class="modal-body">
             <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Thông tin</a></li>
    <li><a data-toggle="tab" href="#menu1">Mô tả chi tiết</a></li>
    <li><a data-toggle="tab" href="#menu2">Thành phần</a></li>
    <li><a data-toggle="tab" href="#menu3">Món thêm</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active"><br />
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow>
                <asp:TableCell Width="100px"><asp:Label ID="Label1" runat="server" Text="<b>Mã hàng hóa</b>"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="txtMHHoa" runat="server" CssClass="form-control" Width="330px" placeholder="Mã hàng tự động"></asp:TextBox></asp:TableCell>
                <asp:TableCell Width="100px"></asp:TableCell>
                <asp:TableCell> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></asp:TableCell>
                <asp:TableCell></asp:TableCell>
            </asp:TableRow>
        </asp:Table><br />

        <asp:Table ID="Table2" runat="server">
            <asp:TableRow>
                <asp:TableCell Width="100px"><asp:Label ID="Label3" runat="server" Text="<b>Tên hàng</b>"></asp:Label></asp:TableCell>
                <asp:TableCell Width="100px"><asp:TextBox ID="txtTenHang" runat="server" CssClass="form-control" Width="330px"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
        </asp:Table><br />

        <asp:Table ID="Table3" runat="server">
            <asp:TableRow>
                <asp:TableCell Width="100px"><asp:Label ID="Label4" runat="server" Text="<b>Loại thực đơn</b>"></asp:Label></asp:TableCell>
                <asp:TableCell Width="100px">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Width="280px">
                        <asp:ListItem>Đồ ăn</asp:ListItem>
                        <asp:ListItem>Đồ uống</asp:ListItem>
                        <asp:ListItem>Khác</asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table><br />

        <asp:Table ID="Table4" runat="server">
            <asp:TableRow>
                <asp:TableCell Width="100px"><asp:Label ID="Label5" runat="server" Text="<b>Nhóm hàng</b>"></asp:Label></asp:TableCell>
                <asp:TableCell Width="100px">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Width="280px">
                        <asp:ListItem>---Lựa chọn---</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table><br />

        <asp:Table ID="Table5" runat="server">
            <asp:TableRow>
                <asp:TableCell Width="100px"><asp:Label ID="Label6" runat="server" Text="<b>Giá bán</b>"></asp:Label></asp:TableCell>
                <asp:TableCell Width="100px"><asp:TextBox ID="txtGiaVon" runat="server" CssClass="form-control" Width="330px"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
        </asp:Table><br />


      
    </div>
    <div id="menu1" class="tab-pane fade">
fff
    </div><br />

    <div id="menu2" class="tab-pane fade">
        <asp:Table ID="Table8" runat="server">
            <asp:TableRow>
                <asp:TableCell Width="150px"><asp:Label ID="Label9" runat="server" Text="<b>Hàng hóa thành phần</b>"></asp:Label></asp:TableCell>
                <asp:TableCell Width="20px"></asp:TableCell>
                <asp:TableCell Width="100px"><asp:TextBox ID="txtHHTPhan" runat="server" CssClass="form-control" Width="400px" placeholder="Thêm hàng hóa thành phần"></asp:TextBox></asp:TableCell>
               
            </asp:TableRow>
        </asp:Table><br />

        <asp:Table ID="Table9" runat="server">
             <asp:TableRow>
                  <asp:TableCell><asp:Label runat="server" Text="<i>Hàng hóa này chưa có định lượng nguyên liệu.</i>"  style="margin-left:170px"></asp:Label></asp:TableCell>
             </asp:TableRow>
        </asp:Table><br /><br />
    </div>

    <div id="menu3" class="tab-pane fade">
        <asp:Table ID="Table10" runat="server">
            <asp:TableRow>
                <asp:TableCell Width="150px"><asp:Label ID="Label10" runat="server" Text="<b>Hàng hóa món thêm</b>"></asp:Label></asp:TableCell>
                <asp:TableCell Width="20px"></asp:TableCell>
                <asp:TableCell Width="100px"><asp:TextBox ID="txtHHMonThem" runat="server" CssClass="form-control" Width="400px" placeholder="Tìm hàng hóa theo mã hoặc tên (F3)"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
        </asp:Table><br />

        <asp:Table ID="Table11" runat="server">
            <asp:TableRow BorderStyle="Solid" BorderColor="Silver" style="background: #dcf5fc" BorderWidth="1">
                <asp:TableCell Width="180px" Height="50px" ><asp:Label ID="Label11" runat="server" Text="<b>Mã hàng hóa</b>"></asp:Label></asp:TableCell>
                <asp:TableCell Width="650px" Height="50px"><asp:Label ID="Label12" runat="server" Text="<b>Tên hàng</b>"></asp:Label></asp:TableCell>
                <asp:TableCell Width="100px" Height="50px"><asp:Label ID="Label13" runat="server" Text="<b>Giá bán</b>"></asp:Label></asp:TableCell>
            </asp:TableRow>
        </asp:Table><br /><br />

    </div>
  </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" style=" background:#00CC33">Lưu</button>
          <button type="button" class="btn btn-default" data-dismiss="modal" style=" background:#00CC33">Lưu & Thêm mới</button>
          <button type="button" class="btn btn-default" data-dismiss="modal" style=" background:#AAAAAA">Bỏ qua</button>
        </div>
      </div>
    </div>
  </div>
</div>
    </form>
</body>
</html>

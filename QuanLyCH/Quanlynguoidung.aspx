<%@ Page Title="" Language="C#" MasterPageFile="~/Trangchu.Master" AutoEventWireup="true" CodeBehind="Quanlynguoidung.aspx.cs" Inherits="QuanLyCH.Quanlynguoidung" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/mhozital.css" rel="stylesheet" type="text/css"/>
    <div class="row" style="width: 100%">
        <div class="col-sm-3">
            <div class="mdoc" style="width: 210px; margin-top: 10px">
                <label>Tìm kiếm</label>
            </div>
            <div style="margin-top: 10px;margin-left: 30px;padding-top: 2px">
                <asp:TextBox ID="TextBox2" runat="server"  Height="30px" Width="190px" Font-Size="11pt" CssClass="form-control" placeholder="Theo tên ĐN, người dùng"></asp:TextBox>
            </div>

            <div class="mdoc" style="width: 210px; margin-top: 10px">
                <label>Vai trò</label>
            </div>
            <div class="row" style="margin-top: 10px;margin-left: 20px">              
                <div class="col-md-6" >
                    <%--<asp:TextBox ID="TextBox1" runat="server"  Height="30px" Width="190px" Font-Size="11pt" CssClass="form-control" placeholder="Chọn vai trò..."></asp:TextBox>--%>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="190px" Font-Size="11pt" CssClass="form-control" placeholder="Chọn vai trò...">
                          <asp:ListItem>&nbsp;</asp:ListItem>
                          <asp:ListItem>&nbsp;Quản trị chi nhánh</asp:ListItem>
                          <asp:ListItem>&nbsp;Nhân viên kho</asp:ListItem>
                          <asp:ListItem>&nbsp;Nhân viên thu ngân</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="mdoc" style="width: 210px; margin-top: 10px">
                <label>Trạng thái</label>
            </div>
            <div style="margin-left: 40px; margin-top: 10px"">
                <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                <asp:ListItem>&nbsp;Tất cả</asp:ListItem>
                <asp:ListItem>&nbsp;Đang hoạt động</asp:ListItem>
                <asp:ListItem>&nbsp;Ngừng hoạt động</asp:ListItem>
                
                </asp:RadioButtonList>
            </div>
        </div>
        <div class="col-sm-9">
            <div class="row" style="margin-top: 20px;position: relative">
                <h3 style="position: absolute; left: -40px">
                    <b>Người dùng</b>
                </h3>
                <div style="position: absolute;right:120px">
                    <button class="btn btn-success" >
                        <i class="fa fa-plus"></i>&nbsp;Người dùng</button>
                </div>
     <%--           <div style="position: absolute;right: 10px">
                    <button class="btn btn-success">
                        <i class="fa fa-sign-out"></i>&nbsp;Xuất file</button>
                </div>--%>
            </div>
            <br/>
            <div class="row" style="margin-top: 40px;text-align: center; margin-left:-60px; background-color:white">
                <asp:Table ID="Table1" runat="server" CssClass="table" Height="30px">
                    <asp:TableRow BackColor="#3399FF" Font-Bold="True" ForeColor="White">
                        <asp:TableCell>Tên đăng nhập</asp:TableCell>
                        <asp:TableCell>Tên người dùng</asp:TableCell>
                        <asp:TableCell>Điện thoại</asp:TableCell>
                        <asp:TableCell>Trạng thái</asp:TableCell>
                        <asp:TableCell>Ghi chú</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Height="30px">
                        <asp:TableCell>Duy</asp:TableCell>
                        <asp:TableCell>Không</asp:TableCell>
                        <asp:TableCell>Vip</asp:TableCell>
                        <asp:TableCell>4</asp:TableCell>
                        <asp:TableCell>Sẵn sàng</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Height="30px">
                        <asp:TableCell>Hoa</asp:TableCell>
                        <asp:TableCell>Không</asp:TableCell>
                        <asp:TableCell>Vip</asp:TableCell>
                        <asp:TableCell>4</asp:TableCell>
                        <asp:TableCell>Sẵn sàng</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </div>
	</div>
</asp:Content>

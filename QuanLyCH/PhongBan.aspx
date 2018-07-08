<%@ Page Title="" Language="C#" MasterPageFile="~/Trangchu.Master" AutoEventWireup="true" CodeBehind="PhongBan.aspx.cs" Inherits="QuanLyCH.PhongBan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/mhozital.css" rel="stylesheet" type="text/css"/>
    <div class="row" style="width: 100%">
        <div class="col-sm-3">
            <div class="mdoc" style="width: 210px; margin-top: 30px">
                <label>Nhóm</label>
                <i class="fa fa-plus-circle" aria-hidden="true" style="margin-left: 120px; height: 14px;"></i>
            </div>
            <div style="margin-top: 10px; margin-left: 40px;font-size: 11pt; padding-top: 2px">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="35px" Width="180px" CssClass="form-control">
                    <asp:ListItem>--- Tất cả ---</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="mdoc" style="width: 210px; margin-top: 10px">
                <label>Tìm kiếm</label>
            </div>
            <div style="margin-top: 10px;margin-left: 40px;padding-top: 2px">
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="180px" Font-Size="11pt" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="mdoc" style="width: 210px; margin-top: 10px">
                <label>Lựa chọn hiển thị</label>
            </div>
            <div class="row" style="margin-top: 10px">
                <label style="margin-left: 60px; font-size: 11pt; margin-top: 5px">Số bản ghi: </label>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Height="35px" Width="70px" Font-Size="11pt">
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="mdoc" style="width: 210px; margin-top: 10px">
                <label>Trạng thái</label>
            </div>
            <div style="margin-left: 40px; margin-top: 10px"">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>&nbsp;Đang hoạt động</asp:ListItem>
                <asp:ListItem>&nbsp;Ngừng hoạt động</asp:ListItem>
                <asp:ListItem>&nbsp;Tất cả</asp:ListItem>
            </asp:RadioButtonList>
            </div>
        </div>
        <div class="col-sm-9">
            <div class="row" style="margin-top: 20px;position: relative">
                <h3 style="position: absolute; left: -40px">
                    <b>Phòng/Bàn</b>
                </h3>
                <div style="position: absolute;right:120px">
                    <button class="btn btn-success" >
                        <i class="fa fa-plus"></i>&nbsp;Thêm phòng/bàn</button>
                </div>
                <div style="position: absolute;right: 10px">
                    <button class="btn btn-success">
                        <i class="fa fa-sign-out"></i>&nbsp;Xuất file</button>
                </div>
            </div>
            <br/>
            <div class="row" style="margin-top: 40px;text-align: center; margin-left:-60px; background-color:white">
                <asp:Table ID="Table1" runat="server" CssClass="table" Height="30px">
                    <asp:TableRow BackColor="#3399FF" Font-Bold="True" ForeColor="White">
                        <asp:TableCell>Tên phòng/bàn</asp:TableCell>
                        <asp:TableCell>Ghi chú</asp:TableCell>
                        <asp:TableCell>Nhóm</asp:TableCell>
                        <asp:TableCell>Số ghế</asp:TableCell>
                        <asp:TableCell>Trạng thái</asp:TableCell>
                        <asp:TableCell>Số thứ tự</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Height="30px">
                        <asp:TableCell>Duy</asp:TableCell>
                        <asp:TableCell>Không</asp:TableCell>
                        <asp:TableCell>Vip</asp:TableCell>
                        <asp:TableCell>4</asp:TableCell>
                        <asp:TableCell>Sẵn sàng</asp:TableCell>
                        <asp:TableCell>1</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Height="30px">
                        <asp:TableCell>Hoa</asp:TableCell>
                        <asp:TableCell>Không</asp:TableCell>
                        <asp:TableCell>Vip</asp:TableCell>
                        <asp:TableCell>4</asp:TableCell>
                        <asp:TableCell>Sẵn sàng</asp:TableCell>
                        <asp:TableCell>2</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </div>
	</div>
</asp:Content>

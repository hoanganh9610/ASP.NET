<%@ Page Title="" Language="C#" MasterPageFile="~/Trangchu.Master" AutoEventWireup="true" CodeBehind="Thietlapgia.aspx.cs" Inherits="QuanLyCH.Thietlapgia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="css/mhozital.css" rel="stylesheet" type="text/css"/>
    <div class="row" style="width: 100%">
        <div class="col-sm-3">
            <div class="mdoc" style="width: 210px; margin-top: 30px">
                <label>Bảng giá</label>
                <i class="fa fa-plus-circle" aria-hidden="true" style="margin-left: 95px; height: 14px;"></i>
            </div>
            <div style="margin-top: 10px; margin-left: 40px;font-size: 11pt; padding-top: 2px">
                <asp:DropDownList ID="DropDownList3" runat="server" Height="40px" Width="180px" CssClass="form-control">
                    <asp:ListItem>Bảng giá chung</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="mdoc" style="width: 210px; margin-top: 10px">
                <label>Tìm kiếm</label>
            </div>
            <div style="margin-top: 10px;margin-left: 40px;padding-top: 2px">
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="180px" Font-Size="11pt" CssClass="form-control" placeholder="Theo mã, tên hàng"></asp:TextBox>
            </div>

            <div class="mdoc" style="width: 210px; margin-top: 10px">
                <label>Nhóm hàng</label>
            </div>
            <div class="row" style="margin-top: 10px;margin-left: 28px">
                <div class="col-md-6">
                    <i class="fa fa-search" aria-hidden="true" style="margin-left: -10px; height: 14px;"></i>
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="160px" style="margin-top:-20px; margin-left:8px" Font-Size="11pt" CssClass="form-control">&nbsp;</asp:TextBox>
                </div>
            </div>
            <div class="mdoc" style="width: 210px; margin-top: 10px">
                <label>Lựa chọn hiển thị</label>
            </div>
            <div class="row" style="margin-top: 10px">
                <label style="margin-left: 60px; font-size: 11pt; margin-top: 5px">Số bản ghi: </label>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Height="35px" Width="70px" Font-Size="11pt">
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>
        <div class="col-sm-9">
            <div class="row" style="margin-top: 20px;position: relative">
                <h3 style="position: absolute; left: -40px">
                    <b>Bảng giá chung</b>
                </h3>
                <%--<div style="position: absolute;right:120px">
                    <button class="btn btn-success" >
                        <i class="fa fa-plus"></i>&nbsp;Thêm phòng/bàn</button>
                </div>--%>
                <div style="position: absolute;right: 10px">
                    <button class="btn btn-success">
                        <i class="fa fa-sign-out"></i>&nbsp;Xuất file</button>
                </div>
            </div>
            <br/>
            <div class="row" style="margin-top: 40px;text-align: center; margin-left:-60px; background-color:white">
                <asp:Table ID="Table1" runat="server" CssClass="table" Height="30px">
                    <asp:TableRow BackColor="#3399FF" Font-Bold="True" ForeColor="White">
                        <asp:TableCell>Mã hàng hóa</asp:TableCell>
                        <asp:TableCell>Tên hàng</asp:TableCell>
                        <asp:TableCell>Giá vốn</asp:TableCell>
                        <asp:TableCell>Đơn giá nhập cuối</asp:TableCell>
                        <asp:TableCell>Giá mới</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Height="30px">
                        <asp:TableCell>Duy</asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Height="30px">
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </div>
	</div>
</asp:Content>

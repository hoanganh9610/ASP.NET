<%@ Page Title="" Language="C#" MasterPageFile="~/Trangchu.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="QuanLyCH.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/tabs.css" rel="stylesheet" type="text/css" />
    <div style="background-color:#eee; margin-top:-30px" >
        <div class="container" style="margin-top:30px">
            <br />
            <div style="background-color: white">
                <label class="titlehome"><b>KẾT QUẢ BÁN HÀNG HÔM NAY</b></label><br /><br />
                <div class="row" style="margin-left:50px; height:135px">
                <div class="col-lg-4 col-md-6" style="color:#23527c">
                    <div style="width:240px; border:dashed">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3" style="margin-left:25px">
                                    <i class="fa fa-usd fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right" style="width:140px">
                                    <div class="huge">26</div>
                                    <div>Đơn đã xong!</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left" style="margin-left:15px">Xem chi tiết</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6" style="color:#4bac4d">
                    <div style="width:265px; border:dashed">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3" style="margin-left:20px">
                                    <i class="fa fa-pencil fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right" style="width:150px">
                                    <div class="huge">12</div>
                                    <div>Đơn đang phục vụ!</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left"style="margin-left:15px">Xem chi tiết</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6" style="color:#18c0c2">
                    <div style="width:230px; border:dashed">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3" style="margin-left:20px">
                                    <i class="fa fa-user fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right" style="width:120px">
                                    <div class="huge">124</div>
                                    <div>Khách hàng!</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left" style="margin-left:15px">Xem chi tiết</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            </div>
            <br />
            <div style="background-color: white; height:500px" >
                <div class="row" >
                    <div class="col-md-9">
                        <label class="titlehome"><b>DOANH SỐ HÔM NAY</b></label>&nbsp;&nbsp;<i class="fa fa-arrow-circle-right"></i> <b style="color:#0094da">0</b>
                    </div>
                    <br /><br />
                    <div class="col-md-2 "  style="margin-top:20px">
                        <asp:DropDownList ID="resulttoday" runat="server" CssClass="form-control cbtime" Height="35px">
                            <asp:ListItem>Hôm nay</asp:ListItem>
                            <asp:ListItem>Hôm qua</asp:ListItem>
                            <asp:ListItem>7 ngày qua</asp:ListItem>
                            <asp:ListItem>Tháng này</asp:ListItem>
                            <asp:ListItem>Tháng trước</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                
                <ul class="nav nav-tabs" role="tablist">
                    <li class="nav-item">
                      <a class="nav-link active" data-toggle="tab" href="#day">Theo ngày</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" data-toggle="tab" href="#hours">Theo giờ</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" data-toggle="tab" href="#dayweek">Theo thứ</a>
                    </li>
                </ul>
                <div class="tab-content" style="text-align:center; margin-top:100px">
                    <div id="day" class="container tab-pane active"><br/>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/box.png" Height="40px" Width="50px" /><br /><br />
                        <label style="font-family:Arial; font-size:15pt; color:darkgray">Không có dữ liệu</label>
                    </div>
                    <div id="hours" class="container tab-pane fade"><br/>
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/box.png" Height="40px" Width="50px" /><br /><br />
                        <label style="font-family:Arial; font-size:15pt; color:darkgray">Không có dữ liệu</label>
                    </div>
                    <div id="dayweek" class="container tab-pane fade"><br/>
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/images/box.png" Height="40px" Width="50px" /><br /><br />
                        <label style="font-family:Arial; font-size:15pt; color:darkgray">Không có dữ liệu</label>
                    </div>
                  </div>
            </div>
            <br />

            <div style="background-color: white; height:500px">
                <div class="row">
                    <div class="col-md-9">
                        <label class="titlehome"><b>SỐ LƯỢNG KHÁCH HÔM NAY</b></label>&nbsp;&nbsp;<i class="fa fa-arrow-circle-right"></i> <b style="color:#0094da">0</b>
                    </div>
                    <br /><br />
                    <div class="col-md-2 "  style="margin-top:20px">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control cbtime" Height="35px">
                            <asp:ListItem>Hôm nay</asp:ListItem>
                            <asp:ListItem>Hôm qua</asp:ListItem>
                            <asp:ListItem>7 ngày qua</asp:ListItem>
                            <asp:ListItem>Tháng này</asp:ListItem>
                            <asp:ListItem>Tháng trước</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div style="text-align:center; margin-top:100px">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/images/box.png" Height="40px" Width="50px" /><br /><br />
                    <label style="font-family:Arial; font-size:15pt; color:darkgray">Không có dữ liệu</label>
                </div>
            </div>
            <br />
            <div style="background-color: white; height:500px; position:relative">
                <div class="row">
                    <div class="col-md-9">
                        <label class="titlehome"><b>TOP 10 HÀNG HÓA BÁN CHẠY 7 NGÀY QUA</b></label>
                    </div>
                    <div style="position:absolute; left:360px; margin-top:20px">
                        <select>
                            <option>Theo doanh thu</option>
                            <option>Theo số lượng</option>
                        </select>
                    </div>
                    <br /><br />
                    <div class="col-md-2 "  style="margin-top:20px">
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control cbtime" Height="35px">
                            <asp:ListItem>Hôm nay</asp:ListItem>
                            <asp:ListItem>Hôm qua</asp:ListItem>
                            <asp:ListItem>7 ngày qua</asp:ListItem>
                            <asp:ListItem>Tháng này</asp:ListItem>
                            <asp:ListItem>Tháng trước</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div style="text-align:center; margin-top:100px">
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/images/box.png" Height="40px" Width="50px" /><br /><br />
                    <label style="font-family:Arial; font-size:15pt; color:darkgray">Không có dữ liệu</label>
                </div>
            </div>
            <%--<div style="background-color: white">
                <label class="titlehome"><b>TOP 10 HÀNG HÓA BÁN CHẠY 7 NGÀY QUA</b></label><br /><br />
                <div class="row" style="margin-left:50px; height:300px">
               
                </div>
            </div>--%>
            <br /><br />
        </div>
    </div>
</asp:Content>

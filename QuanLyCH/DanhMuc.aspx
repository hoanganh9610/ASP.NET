<%@ Page Title="" Language="C#" MasterPageFile="~/Trangchu.Master" AutoEventWireup="true" CodeBehind="DanhMuc.aspx.cs" Inherits="QuanLyCH.DanhMuc" %>
    <%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
        <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <link href="css/mhozital.css" rel="stylesheet" type="text/css" />
            <style>
                .dropbtn {
                    background-color: #4CAF50;
                    color: white;
                    padding: 10px;
                    font-size: 13.5px;
                    border: none;
                    cursor: pointer;
                    margin-left: 815px;
                }

                .dropdown {
                    position: relative;
                    display: inline-block;
                }

                .dropdown-content {
                    display: none;
                    position: absolute;
                    background-color: #4CAF50;
                    min-width: 220px;
                    box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
                    z-index: 1;
                    margin-left: 815px;

                }

                .dropdown-content a {
                    color: white;
                    padding: 12px 16px;
                    text-decoration: none;
                    display: block;
                }

                .dropdown-content a:hover {
                    background-color: #3e8e41
                }

                .dropdown:hover .dropdown-content {
                    display: block;
                    color: #4CAF50;
                }

                .dropdown:hover .dropbtn {
                    background-color: #3e8e41;

                }
            </style>
            <div class="row" style="width: 100%">
                <div class="col-sm-3">
                    <div class="mdoc" style="width: 210px; margin-top: 10px">
                        <label>Tìm kiếm</label>
                    </div>
                    <div style="margin-top: 10px;margin-left: 40px;padding-top: 2px">
                        <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="180px" Font-Size="11pt" CssClass="form-control" placeholder="Theo mã, tên hàng"></asp:TextBox>
                    </div>

                    <div class="mdoc" style="width: 210px; margin-top: 10px">
                        <label>Loại thực đơn</label>
                    </div>
                    <div class="row" style="margin-top: 10px">
                        <div class="col-md-6" style="margin-left: 40px">
                            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                                <asp:ListItem>&nbsp;Đồ ăn</asp:ListItem>
                                <asp:ListItem>&nbsp;Đồ uống</asp:ListItem>
                                <asp:ListItem>&nbsp;Khác</asp:ListItem>
                            </asp:CheckBoxList>

                        </div>
                    </div>
                    <div class="mdoc" style="width: 210px; margin-top: 10px">
                        <label>Loại hàng</label>
                    </div>
                    <div style="margin-left: 40px; margin-top: 10px" ">
                <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                    <asp:ListItem>&nbsp;Hàng hóa</asp:ListItem>
                    <asp:ListItem>&nbsp;Chế biến</asp:ListItem>
                    <asp:ListItem>&nbsp;Dịch vụ</asp:ListItem>
                    <asp:ListItem>&nbsp;Combo - đóng gói</asp:ListItem>
                </asp:CheckBoxList>            
            </div>
            <div class="mdoc " style="width: 210px; margin-top: 10px ">
                <label>Tồn kho</label>
            </div>
            <div style="margin-left: 40px; margin-top: 10px "">
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                            <asp:ListItem>&nbsp;Tất cả</asp:ListItem>
                            <asp:ListItem>&nbsp;Dưới định mức tồn</asp:ListItem>
                            <asp:ListItem>&nbsp;Vượt định mức tồn</asp:ListItem>
                            <asp:ListItem>&nbsp;Hết hàng trong kho</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div class="mdoc" style="width: 210px; margin-top: 30px">
                        <label>Nhóm hàng</label>
                        <i class="fa fa-plus-circle" aria-hidden="true" style="margin-left: 85px; margin-top:-11px"></i>
                    </div>
                    <div style="margin-top: 20px; margin-left: 40px;font-size: 11pt; padding-top: 2px">
                        <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="180px" CssClass="form-control" placeholder="Tìm kiếm nhóm hàng"></asp:TextBox>

                    </div>
                    <div class="mdoc" style="width: 210px; margin-top: 30px">
                        <label>Lựa chọn hiển thị</label>
                    </div>
                    <div style="margin-left: 40px; margin-top: 10px" ">
                <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                    <asp:ListItem>&nbsp;Hàng đang Kinh doanh</asp:ListItem>
                    <asp:ListItem>&nbsp;Hàng ngừng Kinh doanh</asp:ListItem>
                    <asp:ListItem>&nbsp;Vượt định mức tồn</asp:ListItem>
                    <asp:ListItem>&nbsp;Tất cả</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="row " style="margin-top: 10px ">
                <label style="margin-left: 50px; font-size: 11pt; margin-top: 5px ">Số bản ghi: </label>
                <div class="col-md-6 ">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Height="35px
                        " Width="70px " Font-Size="11pt ">
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div><br /><br />
        </div>
        <div class="col-sm-9">
            <div class="row" style="margin-top: 20px;position: relative">
                <h3 style="position: absolute; left: -40px ">
                    <b>Hàng hóa</b>
                </h3>

            <div class="dropdown" >
                <button class="dropbtn btn" style="height:38px"  ><i class="fa fa-plus
                        "></i>&nbsp;&nbsp;Thêm mới&nbsp;&nbsp;<i class="fa fa-caret-down"></i></button>
                    <div class="dropdown-content ">
                          <a href="#" data-toggle="modal" data-target="#themHH"><i class="fa fa-plus ">&nbsp;&nbsp;Thêm hàng hóa</i></a>
                          <a href="#" data-toggle="modal" data-target="#themhangCB"><i class="fa fa-plus ">&nbsp;&nbsp;Thêm hàng chế biến</i></a>
                          <a href="#" data-toggle="modal" data-target="#themHH"><i class="fa fa-plus ">&nbsp;&nbsp;Thêm dịch vụ</i></a>
                          <a href="#" data-toggle="modal" data-target="#themHH"><i class="fa fa-plus ">&nbsp;&nbsp;Thêm combo - đóng gói</i></a>
                    </div>
            </div>

            <!-- The Modal -->
            <div class="modal" id="themHH">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Thêm hàng hóa</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#homeHH">Thông tin</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#menu1-HH">Mô tả chi tiết</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#menu2-HH">Thành phần</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#menu3-HH">Món thêm</a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div id="homeHH" class="container tab-pane active">
                                    
                                     <asp:Table ID="Table2" runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell Width="100px">
                                                <asp:Label ID="Label1" runat="server" Text="<b>Mã hàng hóa</b>"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtMHHoa" runat="server" CssClass="form-control" Width="330px"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="100px"></asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        </asp:Table>
                        <br />

                        <asp:Table ID="Table3" runat="server">
                            <asp:TableRow>
                                <asp:TableCell Width="100px">
                                    <asp:Label ID="Label3" runat="server" Text="<b>Tên hàng</b>"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell Width="100px">
                                    <asp:TextBox ID="txtTenHang" runat="server" CssClass="form-control" Width="330px"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        <br />

                        <asp:Table ID="Table4" runat="server">
                            <asp:TableRow>
                                <asp:TableCell Width="100px">
                                    <asp:Label ID="Label4" runat="server" Text="<b>Loại thực đơn</b>"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell Width="100px">
                                    <asp:TextBox ID="txtLTDon" runat="server" CssClass="form-control" Width="330px"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        <br />

                        <asp:Table ID="Table5" runat="server">
                            <asp:TableRow>
                                <asp:TableCell Width="100px">
                                    <asp:Label ID="Label5" runat="server" Text="<b>Nhóm hàng</b>"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell Width="100px">
                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Width="280px">
                                        <asp:ListItem>---Lựa chọn---</asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        <br />


                        <asp:Table ID="Table6" runat="server">
                            <asp:TableRow>
                                <asp:TableCell Width="100px">
                                    <asp:Label ID="Label6" runat="server" Text="<b>Giá vốn</b>"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell Width="100px">
                                    <asp:TextBox ID="txtGiaVon" runat="server" CssClass="form-control" Width="330px"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        <br />

                        <asp:Table ID="Table7" runat="server">
                            <asp:TableRow>
                                <asp:TableCell Width="100px">
                                    <asp:Label ID="Label7" runat="server" Text="<b>Giá bán</b>"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell Width="100px">
                                    <asp:TextBox ID="txtGiaBan" runat="server" CssClass="form-control" Width="280px"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        <br />

                        <asp:Table ID="Table8" runat="server">
                            <asp:TableRow>
                                <asp:TableCell Width="100px">
                                    <asp:Label ID="Label8" runat="server" Text="<b>Tồn kho</b>"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell Width="100px">
                                    <asp:TextBox ID="txtTonKho" runat="server" CssClass="form-control" Width="330px"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>

                    </div>
                    <div id="menu1-HH" class="container tab-pane fade">
                        <CKEditor:CKEditorControl ID="CKEditor1" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl>
                    </div>
                    <div id="menu2-HH" class="container tab-pane fade">
                        <asp:Table ID="Table9" runat="server">
                            <asp:TableRow>
                                <asp:TableCell Width="150px">
                                    <asp:Label ID="Label9" runat="server" Text="<b>Hàng hóa thành phần</b>"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell Width="20px"></asp:TableCell>
                                <asp:TableCell Width="100px">
                                    <asp:TextBox ID="txtHHTPhan" runat="server" CssClass="form-control" Width="400px" placeholder="Thêm hàng hóa thành phần"></asp:TextBox>
                                </asp:TableCell>

                            </asp:TableRow>
                        </asp:Table>
                        <br />

                        <asp:Table ID="Table10" runat="server">
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Label runat="server" Text="<i>Hàng hóa này chưa có định lượng nguyên liệu.</i>" style="margin-left:170px"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        <br />
                        <br />
                    </div>

                    <div id="menu3-HH" class="container tab-pane fade">
                        <asp:Table ID="Table11" runat="server">
                            <asp:TableRow>
                                <asp:TableCell Width="150px">
                                    <asp:Label ID="Label10" runat="server" Text="<b>Hàng hóa món thêm</b>"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell Width="20px"></asp:TableCell>
                                <asp:TableCell Width="200px">
                                    <asp:TextBox ID="txtHHMonThem" runat="server" CssClass="form-control" Width="400px" placeholder="Tìm hàng hóa theo mã hoặc tên (F3)"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        <br />

                        <asp:Table ID="Table12" runat="server">
                            <asp:TableRow BorderStyle="Solid" BorderColor="Silver" style="background: #dcf5fc" BorderWidth="1">
                                <asp:TableCell Width="180px" Height="50px">
                                    <asp:Label ID="Label11" runat="server" Text="<b>Mã hàng hóa</b>"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell Width="650px" Height="50px">
                                    <asp:Label ID="Label12" runat="server" Text="<b>Tên hàng</b>"></asp:Label>
                                </asp:TableCell>
                                <asp:TableCell Width="100px" Height="50px">
                                    <asp:Label ID="Label13" runat="server" Text="<b>Giá bán</b>"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        <br />
                        <br />
                    </div>

                </div>
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" style=" background:#00CC33">Lưu</button>
                <button type="button" class="btn btn-default" data-dismiss="modal" style=" background:#00CC33">Lưu & Thêm mới</button>
                <button type="button" class="btn btn-default" data-dismiss="modal" style=" background:#AAAAAA">Bỏ qua</button>
            </div>

            </div>
            </div>
            </div>


            <!-- The Modal -->
            <div class="modal" id="themhangCB">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Thêm hàng chế biến</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#homeCBien">Thông tin</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#menu1-CB">Mô tả chi tiết</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#menu2-CB">Thành phần</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#menu3-CB">Món thêm</a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div id="homeCBien" class="container tab-pane active">

                                    <asp:Table ID="Table13" runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell Width="100px">
                                                <asp:Label ID="Label14" runat="server" Text="<b>Mã hàng hóa</b>"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell>
                                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Width="330px"
                                                    placeholder="Mã hàng tự động"></asp:TextBox>
                                            </asp:TableCell>
                                            <asp:TableCell Width="100px"></asp:TableCell>
                                            <asp:TableCell>
                                                <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell></asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                    <br />

                                    <asp:Table ID="Table14" runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell Width="100px">
                                                <asp:Label ID="Label16" runat="server" Text="<b>Tên hàng</b>"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell Width="100px">
                                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Width="330px"></asp:TextBox>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                    <br />

                                    <asp:Table ID="Table15" runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell Width="100px">
                                                <asp:Label ID="Label17" runat="server" Text="<b>Loại thực đơn</b>"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell Width="100px">
                                                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" Width="280px">
                                                    <asp:ListItem>Đồ ăn</asp:ListItem>
                                                    <asp:ListItem>Đồ uống</asp:ListItem>
                                                    <asp:ListItem>Khác</asp:ListItem>
                                                </asp:DropDownList>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                    <br />

                                    <asp:Table ID="Table16" runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell Width="100px">
                                                <asp:Label ID="Label18" runat="server" Text="<b>Nhóm hàng</b>"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell Width="100px">
                                                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control" Width="280px">
                                                    <asp:ListItem>---Lựa chọn---</asp:ListItem>
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem></asp:ListItem>
                                                </asp:DropDownList>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                    <br />

                                    <asp:Table ID="Table17" runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell Width="100px">
                                                <asp:Label ID="Label19" runat="server" Text="<b>Giá bán</b>"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell Width="100px">
                                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Width="330px"></asp:TextBox>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                    <br />

                                </div>
                                <div id="menu1-CB" class="container tab-pane fade">
                                    <CKEditor:CKEditorControl ID="CKEditorControl1" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl>
                                </div>
                                <div id="menu2-CB" class="container tab-pane fade">
                                    <asp:Table ID="Table18" runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell Width="150px">
                                                <asp:Label ID="Label20" runat="server" Text="<b>Hàng hóa thành phần</b>"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell Width="20px"></asp:TableCell>
                                            <asp:TableCell Width="100px">
                                                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Width="400px"
                                                    placeholder="Thêm hàng hóa thành phần"></asp:TextBox>
                                            </asp:TableCell>

                                        </asp:TableRow>
                                    </asp:Table>
                                    <br />

                                    <asp:Table ID="Table19" runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell>
                                                <asp:Label runat="server" Text="<i>Hàng hóa này chưa có định lượng nguyên liệu.</i>"
                                                    style="margin-left:170px"></asp:Label>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                    <br />
                                    <br />
                                </div>

                                <div id="menu3-CB" class="container tab-pane fade">
                                    <asp:Table ID="Table20" runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell Width="150px">
                                                <asp:Label ID="Label21" runat="server" Text="<b>Hàng hóa món thêm</b>"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell Width="20px"></asp:TableCell>
                                            <asp:TableCell Width="100px">
                                                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Width="400px"
                                                    placeholder="Tìm hàng hóa theo mã hoặc tên (F3)"></asp:TextBox>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                    <br />

                                    <asp:Table ID="Table21" runat="server">
                                        <asp:TableRow BorderStyle="Solid" BorderColor="Silver" style="background: #dcf5fc" BorderWidth="1">
                                            <asp:TableCell Width="180px" Height="50px">
                                                <asp:Label ID="Label22" runat="server" Text="<b>Mã hàng hóa</b>"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell Width="650px" Height="50px">
                                                <asp:Label ID="Label23" runat="server" Text="<b>Tên hàng</b>"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell Width="100px" Height="50px">
                                                <asp:Label ID="Label24" runat="server" Text="<b>Giá bán</b>"></asp:Label>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                    <br />
                                    <br />
                                </div>

                            </div>
                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal" style=" background:#00CC33">Lưu</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal" style=" background:#00CC33">Lưu & Thêm mới</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal" style=" background:#AAAAAA">Bỏ qua</button>
                        </div>

                    </div>
                </div>
            </div>


            <!-- The Modal -->
            <div class="modal" id="themdichvu">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Thêm dich vụ</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#homeDichVu">Thông tin</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#menu1-DV">Mô tả chi tiết</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#menu2-DV">Món thêm</a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div id="homeDichVu" class="container tab-pane active">

                                    <asp:Table ID="Table22" runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell Width="100px">
                                                <asp:Label ID="Label25" runat="server" Text="<b>Mã hàng hóa</b>"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell>
                                                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" Width="330px"></asp:TextBox>
                                            </asp:TableCell>
                                            <asp:TableCell Width="100px"></asp:TableCell>
                                            <asp:TableCell>
                                                <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell></asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                    <br />

                                    <asp:Table ID="Table23" runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell Width="100px">
                                                <asp:Label ID="Label27" runat="server" Text="<b>Tên hàng</b>"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell Width="100px">
                                                <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" Width="330px"></asp:TextBox>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                    <br />

                                    <asp:Table ID="Table24" runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell Width="100px">
                                                <asp:Label ID="Label28" runat="server" Text="<b>Loại thực đơn</b>"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell Width="100px">
                                                <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control" Width="280px">
                                                    <asp:ListItem>Đồ ăn</asp:ListItem>
                                                    <asp:ListItem>Đồ uống</asp:ListItem>
                                                    <asp:ListItem>Khác</asp:ListItem>
                                                </asp:DropDownList>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                    <br />

                                    <asp:Table ID="Table25" runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell Width="100px">
                                                <asp:Label ID="Label29" runat="server" Text="<b>Nhóm hàng</b>"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell Width="100px">
                                                <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control" Width="280px">
                                                    <asp:ListItem>---Lựa chọn---</asp:ListItem>
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem></asp:ListItem>
                                                </asp:DropDownList>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                    <br />

                                    <asp:Table ID="Table26" runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell Width="100px">
                                                <asp:Label ID="Label30" runat="server" Text="<b>Giá vốn</b>"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell Width="100px">
                                                <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" Width="330px"></asp:TextBox>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                    <br />

                                    <asp:Table ID="Table31" runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell Width="100px">
                                                <asp:Label ID="Label36" runat="server" Text="<b>Giá bán</b>"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell Width="100px">
                                                <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control" Width="280px"></asp:TextBox>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                    <br />

                                </div>
                                <div id="menu1-DV" class="container tab-pane fade">
                                    <CKEditor:CKEditorControl ID="CKEditorControl2" BasePath="/ckeditor/" runat="server"></CKEditor:CKEditorControl>
                                </div>
                                <div id="menu2-DV" class="container tab-pane fade">
                                    <asp:Table ID="Table27" runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell Width="150px">
                                                <asp:Label ID="Label31" runat="server" Text="<b>Hàng hóa món thêm</b>"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell Width="20px"></asp:TableCell>
                                            <asp:TableCell Width="200px">
                                                <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control" Width="400px"
                                                    placeholder="Tìm hàng hóa theo mã hoặc tên (F3)"></asp:TextBox>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                    <br />

                                    <asp:Table ID="Table28" runat="server">
                                        <asp:TableRow BorderStyle="Solid" BorderColor="Silver" style="background: #dcf5fc" BorderWidth="1">
                                            <asp:TableCell Width="180px" Height="50px">
                                                <asp:Label ID="Label37" runat="server" Text="<b>Mã hàng hóa</b>"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell Width="650px" Height="50px">
                                                <asp:Label ID="Label38" runat="server" Text="<b>Tên hàng</b>"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell Width="100px" Height="50px">
                                                <asp:Label ID="Label39" runat="server" Text="<b>Giá bán</b>"></asp:Label>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                    <br />
                                    <br />
                                </div>
                            </div>
                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal" style=" background:#00CC33">Lưu</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal" style=" background:#00CC33">Lưu & Thêm mới</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal" style=" background:#AAAAAA">Bỏ qua</button>
                        </div>

                    </div>
                </div>
            </div>




            <div style="position: absolute;left:930px">
                <button class="btn btn-success">
                    <i class="fa fa-sign-in"></i>&nbsp;Import</button>
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
                        <asp:TableCell>Mã hàng hóa</asp:TableCell>
                        <asp:TableCell>Tên hàng</asp:TableCell>
                        <asp:TableCell>Loại thực đơn</asp:TableCell>
                        <asp:TableCell>Giá bán</asp:TableCell>
                        <asp:TableCell>Giá vốn</asp:TableCell>
                        <asp:TableCell>Tồn kho</asp:TableCell>
                        <asp:TableCell>Đặt hàng</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Height="30px">
                        <asp:TableCell>Duy</asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Height="30px">
                        <asp:TableCell>Hoa</asp:TableCell>
                        <asp:TableCell></asp:TableCell>
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
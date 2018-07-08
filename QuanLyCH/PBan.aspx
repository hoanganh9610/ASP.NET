<%@ Page Title="" Language="C#" MasterPageFile="~/Trangchu.Master" AutoEventWireup="true" CodeBehind="PBan.aspx.cs" Inherits="QuanLyCH.PBan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta name="viewport" content="wid =device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/mhozital.css"/>
    <div class="row" style="width: 100%">
        <div class="col-sm-3">
            <div class="mdoc" style="width: 210px; margin-top: 30px">
                <label>Nhóm</label>
                <i class="fa fa-plus-circle" aria-hidden="true" style="margin-left: 120px" data-toggle="modal" data-target="#addGroup"></i>
            </div>
            <select class="form-control" style="margin-top: 10px; margin-left: 40px; width: 180px; height: 30px; font-size: 11pt; padding-top: 2px">
                <option>--- Tất cả ---</option>
            </select>
            <div class="mdoc" style="width: 210px; margin-top: 10px">
                <label>Tìm kiếm</label>
            </div>
            <div style="margin-top: 10px">
                <input type="text" class="form-control" style="margin-left: 40px; width: 180px; height: 30px; font-size: 11pt; padding-top: 2px"/>
            </div>

            <div class="mdoc" style="width: 210px; margin-top: 10px">
                <label>Lựa chọn hiển thị</label>
            </div>
            <div class="row" style="margin-top: 10px">
                <label style="margin-left: 60px; font-size: 11pt; margin-top: 5px">Số bản ghi: </label>
                <div class="col-md-6">
                    <select class="form-control" style="width: 70px; height: 35px; font-size: 11pt">
                        <option>15</option>
                    </select>
                </div>
            </div>
            <div class="mdoc" style="width: 210px; margin-top: 10px">
                <label>Trạng thái</label>
            </div>
            <div style="margin-left: 40px; margin-top: 10px; font-size: 11pt">
                <div class="radio">
                    <label>
                        <input type="radio" name="optradio"/>&nbsp;Đang hoạt động</label>
                </div>
                <div class="radio">
                    <label>
                        <input type="radio" name="optradio"/>&nbsp;Ngừng hoạt động</label>
                </div>
                <div class="radio disabled">
                    <label>
                        <input type="radio" name="optradio"/>&nbsp;Tất cả</label>
                </div>
            </div>
            <div class="modal" id="addGroup">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h6 class="modal-title">
                                <b>Thêm nhóm phòng/ bàn</b>
                            </h6>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <div class="modal-body" style="font-size: 11pt">
                            <div class="row">
                                <label style="margin-left: 20px" class="col-md-3">
                                    <b>Tên nhóm *</b>
                                </label>&nbsp;
                                <input type="text" class="col-md-8 form-control"/>
                            </div>
                            <br/>
                            <div class="row">
                                <label style="margin-left: 20px" class="col-md-3">
                                    <b>Ghi chú</b>
                                </label>&nbsp;
                                <textarea name="" id="" cols="30" rows="5" class="col-md-8"></textarea>
                            </div>
                            <br/>
                            <div class="row">
                                <button class="btn btn-success" style="margin-left: 300px">
                                    <i class="fa fa-floppy-o"></i>&nbsp;Lưu</button>
                                <button class="btn btn-dark" style="margin-left: 10px">
                                    <i class="fa fa-ban"></i>&nbsp;Bỏ qua</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="col-sm-9">
            <div class="row" style="margin-top: 20px;position: relative">
                <h3 style="position: absolute; left: -40px">
                    <b>Phòng/Bàn</b>
                </h3>
                <div class="col-md-8"></div>
                <div class="col-md-2">
                    <button class="btn btn-success" data-toggle="modal" data-target="#themPB">
                        <i class="fa fa-plus"></i>&nbsp;Thêm phòng/bàn</button>
                </div>
                <div class="col-md-2" style="position: absolute;right: -20px">
                    <button class="btn btn-success">
                        <i class="fa fa-sign-out"></i>&nbsp;Xuất file</button>
                </div>
            </div>
            <div class="modal" id="themPB">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h6 class="modal-title">
                                <b>Thêm phòng/ bàn</b>
                            </h6>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <div class="modal-body" style="font-size: 11pt">
                            <div class="row">
                                <label style="margin-left: 20px" class="col-md-4">
                                    <b>Tên phòng/bàn *</b>
                                </label>&nbsp;
                                <input type="text" class="col-md-7 form-control"/>
                            </div>
                            <br/>
                            <div class="row">
                                <label style="margin-left: 20px" class="col-md-4">
                                    <b>Nhóm</b>
                                </label>
                                <select class="col-md-7 form-control" style="font-size: 11pt">
                                    <option>----Lựa chọn ----</option>
                                </select>
                            </div>
                            <br/>
                            <div class="row">
                                <label style="margin-left: 20px" class="col-md-4">
                                    <b>Số ghế</b>
                                </label>&nbsp;
                                <input type="text" class="col-md-7 form-control"/>
                            </div>
                            <br/>
                            <div class="row">
                                <label style="margin-left: 20px" class="col-md-4">
                                    <b>Ghi chú</b>
                                </label>&nbsp;
                                <textarea name="" id="" cols="30" rows="5" class="col-md-7"></textarea>
                            </div>

                            <br/>
                            <div class="row">
                                <button class="btn btn-success" style="margin-left: 300px">
                                    <i class="fa fa-floppy-o"></i>&nbsp;Lưu</button>
                                <button class="btn btn-dark" style="margin-left: 10px">
                                    <i class="fa fa-ban"></i>&nbsp;Bỏ qua</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <br/>
            <div class="row">

                <table style="margin-left: -40px; text-align: center; border: 2px solid #2196f3" class="table table-hover">
                    <tr style="background-color: #2196f3; color: white">
                        <th style="width: 150px">Tên phòng/bàn</th>
                        <th style="width: 150px">Ghi chú</th>
                        <th style="width: 150px">Nhóm</th>
                        <th style="width: 150px">Số ghế</th>
                        <th style="width: 150px">Trạng thái</th>
                        <th style="width: 150px">Số thứ tự</th>
                    </tr>
                    <tr data-toggle="modal" data-target="#myModal">
                        <td style="width: 150px">Hoa</td>
                        <td style="width: 150px">Không</td>
                        <td style="width: 150px">VIP</td>
                        <td style="width: 150px">4</td>
                        <td style="width: 150px">Đang hoạt động</td>
                        <td style="width: 150px">1</td>
                    </tr>

                    <tr>
                        <td style="width: 150px">Nhân</td>
                        <td style="width: 150px">Không</td>
                        <td style="width: 150px">VIP</td>
                        <td style="width: 150px">4</td>
                        <td style="width: 150px">Đang hoạt động</td>
                        <td style="width: 150px">2</td>
                    </tr>
                </table>
            </div>
            <div class="modal" id="myModal">
                <div class="modal-dialog">
                    <div class="modal-content" style="width: 800px; position: absolute; left:-100px; height: 300px">
                        <div class="modal-body">
                            <ul class="nav nav-tabs">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#info">Thông tin</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#history">Lịch sử giao dịch</a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane container active" id="info" style="margin-top: 25px; font-size: 11pt">
                                    <label>Tên phòng/bàn:</label>
                                    <br/>
                                    <label>Số ghế: </label>
                                    <br/>
                                    <label>Ghi chú: </label>
                                    <br/>
                                    <label>Nhóm: </label>
                                    <br/>
                                    <br/>
                                    <div class="row">
                                        <button class="btn btn-success" style="margin-left: 400px">
                                            <i class="fa fa-check-square"></i>&nbsp;Cập nhật</button>
                                        <button class="btn btn-danger" style="margin-left: 10px">
                                            <i class="fa fa-lock"></i>&nbsp;Ngừng hoạt động</button>
                                        <button class="btn btn-danger" style="margin-left: 10px">
                                            <i class="fa fa-trash"></i>&nbsp;Xóa</button>
                                    </div>
                                </div>
                                <div class="tab-pane container fade" id="history" style="margin-top: 35px; ">
                                    <table class="table table-hover" style="border: 2px solid #2196f3;">
                                        <tr style="background-color: #2196f3; color: white">
                                            <th style="width: 200px">Mã hóa đơn</th>
                                            <th style="width: 200px">Thời gian</th>
                                            <th style="width: 300px">Người tạo</th>
                                            <th style="width: 200px">Tổng cộng</th>
                                        </tr>
                                    </table>
                                    <div style="text-align: center; margin-top: 50px">Không tìm thấy kết quả phù hợp</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div></div>
</asp:Content>

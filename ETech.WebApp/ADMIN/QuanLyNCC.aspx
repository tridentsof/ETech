<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/MasterPage.Master" AutoEventWireup="true" CodeBehind="QuanLyNCC.aspx.cs" Inherits="ETech.WebApp.ADMIN.QuanLyNCC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
:root {
  --primary-color: #3e67b9;
  --text-color: #333
}

body {
  font-size: 16px;
  font-family: 'Roboto', sans-serif;
  background-color: #eee;
}

#container {
  max-width: 1150px;
  margin: 180px 0 0 300px;
  padding: 40px;
}

.title {
  text-align: center;
  margin-bottom: 70px;
}

.nav-tabs {
  display: flex;
  justify-content: space-between;
  list-style: none;
  margin: 0;
  padding: 0;
  border-bottom: 3px solid #ddd;
}

.nav-tabs li {
  margin-right: 10px;
}

.nav-tabs li a {
  display: block;
  padding: 6px 10px;
  text-decoration: none;
  position: relative;
  color: var(--text-color);
}

.nav-tabs li a:active {
  color: var(--primary-color);
}

.nav-tabs li a::after {
  content: "";
  height: 3px;
  width: 100%;
  position: absolute;
  left: 0px;
  bottom: -3px;
  background: transparent;
}

.nav-tabs li.active a::after,
.nav-tabs li:hover a::after {
  background: var(--primary-color);
}

.active a {
  font-weight: bold;
}

.dangki_ncc {
  flex-grow: 1;
  text-align: right;
  color: var(--text-color);
  font-size: 17px;
  text-decoration: none;
  transition: .3s;
}

.dangki_ncc:hover {
  color: var(--primary-color);
}

.dangki_ncc .fas {
  margin-right: 5px;
}

/* Tab style */
.table {
  width: 100%;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
  display: table;
}

.row {
  display: table-row;
  background: #f6f6f6;
}

.row:nth-of-type(odd) {
  background: #e9e9e9;
}

.row.header {
  font-weight: 900;
  color: #ffffff;
  background: var(--primary-color);
}

.cell {
  text-align: center;
  padding: 6px 12px;
  display: table-cell;
}

.cell_xem {
  text-decoration: none;
  color: var(--text-color);
  margin: 5px;
  font-weight: bold;
}

.cell_xem:hover {
  color: var(--primary-color);
}

.tab-content {
  margin-top: 30px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <h2 class="title">QUẢN LÝ NHÀ CUNG CẤP</h2>
        <div class="tabs">
          <ul class="nav-tabs">
            <li class="active"><a href="#menu_1">NCC CHỜ DUYỆT</a></li>
            <li><a href="#menu_2">NCC ĐANG TỒN TẠI</a></li>
            <li><a href="#menu_3">NCC ĐÃ HUỶ</a></li>
            <a class="dangki_ncc" href="QuanLyNCCChiTiet.aspx">
              <i class="fas fa-user-plus"></i>Đăng kí nhà cung cấp
            </a>
          </ul>
          <div class="tab-content">
            <div id="menu_1" class="tab-content-item">
              <div class="table">

                <div class="row header">
                  <div class="cell">
                    ID
                  </div>
                  <div class="cell">
                    Tên đăng nhập
                  </div>
                  <div class="cell">
                    Mật khẩu
                  </div>
                  <div class="cell">
                    Họ tên
                  </div>
                  <div class="cell">
                    Email
                  </div>
                  <div class="cell">
                    Địa chỉ
                  </div>
                  <div class="cell">
                    SĐT
                  </div>
                  <div class="cell">
                    Tính năng
                  </div>
                </div>

                <div class="row">
                  <div class="cell" data-title="ID">
                    09
                  </div>
                  <div class="cell" data-title="Username">
                    vynguyen
                  </div>
                  <div class="cell" data-title="Password">
                    123
                  </div>
                  <div class="cell" data-title="Fullname">
                    Thảo Vy
                  </div>
                  <div class="cell" data-title="Email">
                    thaovy@gmail.com
                  </div>
                  <div class="cell" data-title="Location">
                    500 Tôn Đản
                  </div>
                  <div class="cell" data-title="Phone-number">
                    09746483
                  </div>
                  <div class="cell" data-title="Tinh-nang">
                    <a class="cell_xem" href="#">Duyệt</a>
                    <a class="cell_xem" href="#">Huỷ</a>
                  </div>
                </div>
              </div>

            </div>
            <div id="menu_2" class="tab-content-item">
              <div class="table">

                <div class="row header">
                  <div class="cell">
                    ID
                  </div>
                  <div class="cell">
                    Tên đăng nhập
                  </div>
                  <div class="cell">
                    Mật khẩu
                  </div>
                  <div class="cell">
                    Họ tên
                  </div>
                  <div class="cell">
                    Email
                  </div>
                  <div class="cell">
                    Địa chỉ
                  </div>
                  <div class="cell">
                    SĐT
                  </div>
                  <div class="cell">
                    Trạng thái
                  </div>
                  <div class="cell">
                    Tính năng
                  </div>
                </div>

                <div class="row">
                  <div class="cell" data-title="ID">
                    09
                  </div>
                  <div class="cell" data-title="Username">
                    vynguyen
                  </div>
                  <div class="cell" data-title="Password">
                    123
                  </div>
                  <div class="cell" data-title="Fullname">
                    Thảo Vy
                  </div>
                  <div class="cell" data-title="Email">
                    thaovy@gmail.com
                  </div>
                  <div class="cell" data-title="Location">
                    500 Tôn Đản
                  </div>
                  <div class="cell" data-title="Phone-number">
                    09746483
                  </div>
                  <div class="cell" data-title="Status">
                    Mở
                  </div>
                  <div class="cell" data-title="Tinh-nang">
                    <a class="cell_xem" href="QuanLyNCCChiTiet.aspx">Sửa</a>
                    <a class="cell_xem" href="#">Huỷ</a>
                  </div>
                </div>
              </div>
            </div>
            <div id="menu_3" class="tab-content-item">
              <div class="table">

                <div class="row header">
                  <div class="cell">
                    ID
                  </div>
                  <div class="cell">
                    Tên đăng nhập
                  </div>
                  <div class="cell">
                    Mật khẩu
                  </div>
                  <div class="cell">
                    Họ tên
                  </div>
                  <div class="cell">
                    Email
                  </div>
                  <div class="cell">
                    Địa chỉ
                  </div>
                  <div class="cell">
                    SĐT
                  </div>
                  <div class="cell">
                    Tính năng
                  </div>
                </div>

                <div class="row">
                  <div class="cell" data-title="ID">
                    09
                  </div>
                  <div class="cell" data-title="Username">
                    vynguyen
                  </div>
                  <div class="cell" data-title="Password">
                    123
                  </div>
                  <div class="cell" data-title="Fullname">
                    Thảo Vy
                  </div>
                  <div class="cell" data-title="Email">
                    thaovy@gmail.com
                  </div>
                  <div class="cell" data-title="Location">
                    500 Tôn Đản
                  </div>
                  <div class="cell" data-title="Phone-number">
                    09746483
                  </div>
                  <div class="cell" data-title="Tinh-nang">
                    <a class="cell_xem" href="#">Duyệt</a>
                    <a class="cell_xem" href="#">Xoá</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

    </div>

    <script>
      $(document).ready(function () {
        $('.tab-content-item').hide();
        $('.tab-content-item:first-child').fadeIn();
        $('.nav-tabs li').click(function () {
          $('.nav-tabs li').removeClass('active')
          $(this).addClass('active');

          let id_tab_content = $(this).children('a').attr('href');
          $('.tab-content-item').hide();
          $(id_tab_content).fadeIn();

          return false;
        });
      });
    </script>
</asp:Content>

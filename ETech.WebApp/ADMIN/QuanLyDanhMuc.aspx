<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/MasterPage.Master" AutoEventWireup="true" CodeBehind="QuanLyDanhMuc.aspx.cs" Inherits="ETech.WebApp.ADMIN.QuanLyDanhMuc" %>
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
  max-width: 900px;
  margin: 170px 0 0 450px;
  padding: 40px;
}

.title {
  text-align: center;
  margin-bottom: 30px;
}

.nav-tabs {
  display: flex;
  list-style: none;
  margin: 0;
  padding: 0;
  border-bottom: 3px solid #ddd;
  justify-content: space-between;
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

.dangki_danhmuc {
  flex-grow: 1;
  color: var(--text-color);
  font-size: 17px;
  text-decoration: none;
  transition: .3s;
  text-align: right;
  padding: 3px;
}

.dangki_danhmuc:hover {
  color: var(--primary-color);
}

.dangki_danhmuc .fas {
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
    <h2 class="title">QUẢN LÝ DANH MỤC</h2>
    <div class="tabs">
      <ul class="nav-tabs">
        <li class="active"><a href="#menu_1">DANH MỤC CHỜ DUYỆT</a></li>
        <li><a href="#menu_2">DANH MỤC CÓ SẴN</a></li>
        <li><a href="#menu_3">DANH MỤC ĐÃ HUỶ</a></li>
        <a class="dangki_danhmuc" href="QuanLyDanhMucChiTiet.aspx">
          <i class="fas fa-plus"></i>Đăng kí danh mục
        </a>
      </ul>
      <div class="tab-content">
        <div id="menu_1" class="tab-content-item">
          <div class="table">
            <div class="row header">
              <div class="cell">
                STT
              </div>
              <div class="cell">
                Tên danh mục
              </div>
              <div class="cell">
                Tính năng
              </div>
            </div>

            <div class="row">
              <div class="cell">
                1
              </div>
              <div class="cell">
                Apple
              </div>
              <div class="cell">
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
                STT
              </div>
              <div class="cell">
                Tên danh mục
              </div>
              <div class="cell">
                Tính năng
              </div>
            </div>

            <div class="row">
              <div class="cell">
                1
              </div>
              <div class="cell">
                Apple
              </div>
              <div class="cell">
                <a class="cell_xem" href="QuanLyDanhMucChiTiet.aspx">Sửa</a>
                <a class="cell_xem" href="#">Xoá</a>
              </div>
            </div>
          </div>
        </div>

        <div id="menu_3" class="tab-content-item">
          <div class="table">
            <div class="row header">
              <div class="cell">
                STT
              </div>
              <div class="cell">
                Tên danh mục
              </div>
              <div class="cell">
                Tính năng
              </div>
            </div>

            <div class="row">
              <div class="cell">
                1
              </div>
              <div class="cell" data-title="Username">
                Apple
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

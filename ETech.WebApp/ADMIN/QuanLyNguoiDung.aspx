<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/MasterPage.Master" AutoEventWireup="true" CodeBehind="QuanLyNguoiDung.aspx.cs" Inherits="ETech.WebApp.ADMIN.QuanLyNguoiDung" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
:root {
  --text-color: #333;
  --primary-color: #3e67b9;
}

body {
  font-family: 'Roboto', sans-serif;
  font-size: 14px;
  line-height: 20px;
  font-weight: 400;
  color: #3b3b3b;
  -webkit-font-smoothing: antialiased;
  font-smoothing: antialiased;
  background-color: #eee;
}

h2 {
  text-align: center;
  padding: 20px;
}

@media screen and (max-width: 580px) {
  body {
    font-size: 16px;
    line-height: 22px;
  }
}

.wrapper {
  margin: 200px 0 0 450px;
  padding: 0;
  max-width: 950px;
}

.table {
  width: 100%;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
  display: table;
}

@media screen and (max-width: 580px) {
  .table {
    display: block;
  }
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

@media screen and (max-width: 580px) {
  .row {
    padding: 14px 0 7px;
    display: block;
  }

  .row.header {
    padding: 0;
    height: 6px;
  }

  .row.header .cell {
    display: none;
  }

  .row .cell {
    margin-bottom: 10px;
  }

  .row .cell:before {
    margin-bottom: 3px;
    content: attr(data-title);
    min-width: 98px;
    font-size: 10px;
    line-height: 10px;
    font-weight: bold;
    text-transform: uppercase;
    color: #969696;
    display: block;
  }
}

.cell {
  text-align: center;
  padding: 6px 12px;
  display: table-cell;
}

@media screen and (max-width: 580px) {
  .cell {
    padding: 2px 16px;
    display: block;
  }
}

.cell_xem {
  text-decoration: none;
  color: var(--text-color);
}

.cell_xem:hover {
  color: var(--primary-color);
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <h2>QUẢN LÝ NGƯỜI DÙNG</h2>
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
            <div class="cell">
              09
            </div>
            <div class="cell">
              vynguyen
            </div>
            <div class="cell">
              123
            </div>
            <div class="cell">
              Thảo Vy
            </div>
            <div class="cell">
              thaovy@gmail.com
            </div>
            <div class="cell">
              500 Tôn Đản
            </div>
            <div class="cell">
              09746483
            </div>
            <div class="cell">
              <a class="cell_xem" href="QuanLyNguoiDungChiTiet.aspx">Sửa</a>
              <a class="cell_xem" href="#">Xoá</a>
            </div>
          </div>

        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/MasterPage.Master" AutoEventWireup="true" CodeBehind="QuanLyDVVC.aspx.cs" Inherits="ETech.WebApp.ADMIN.QuanLyDVVC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
:root {
  --primary-color: #3e67b9;
  --text-color: #333
}

body {
  font-size: 16px;
  background-color: #eee;
  font-family: 'Roboto', sans-serif;
}

#container {
  max-width: 800px;
  margin: 200px 0 0 550px;
  padding: 40px;
  background-color: white;
  border-radius: 20px;
  box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
}

.title {
  text-align: center;
  margin-bottom: 30px;
}
.nav-tabs {
  display: flex;
  list-style: none;
  margin: 0;
  margin-bottom: 20px;
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
  margin-top: 10px;
}

.input-enter-shipping {
  padding: 0;
  text-align: center;
  font-size: 16px;
}

.menu2-wrapper {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.container-add {
  width: 100%;
  display: flex;
  justify-content: space-around;
  margin-bottom: 20px;
}

.add-shippingfee {
  margin-bottom: 20px;
  height: 30px;
  border: none;
  border-radius: 5px;
  background-color: white;
  font-size: 16px;
  box-shadow: rgba(0, 0, 0, 0.05) 0px 6px 24px 0px, rgba(0, 0, 0, 0.08) 0px 0px 0px 1px;
  transition: .3s;
}

.add-shippingfee:hover {
  cursor: pointer;
  background-color: var(--primary-color);
  color: white;
}

.fa-plus {
  margin-right: 3px;
}

.add-shippingfee:active {
  transform: scale(.8);
}

hr {
  width: 100%;
  border: 1px solid #ddd;
  background-color: #ddd;
}

.enter_shipping-fee,
.selectdiv select {
  padding: 5px;
}

.container-add-item_text {
  font-size: 15px;
  text-align: center;
  margin: 5px 0;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div id="container">
    <h2 class="title">PHÍ VẬN CHUYỂN</h2>
    <div class="tabs">
      <ul class="nav-tabs">
        <li class="active"><a href="#menu_1">PHÍ VẬN CHUYỂN CHỜ DUYỆT</a></li>
        <li><a href="#menu_2">PHÍ VẬN CHUYỂN CÓ SẴN</a></li>
      </ul>
      <div class="tab-content">
        <div id="menu_1" class="tab-content-item">
          <div class="table">
            <div class="row header">
              <div class="cell">
                STT
              </div>
              <div class="cell">
                Nơi đi
              </div>
              <div class="cell">
                Nơi đến
              </div>
              <div class="cell">
                Loại sản phẩm
              </div>
              <div class="cell">
                Phí vận chuyển
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
                Đà Nẵng
              </div>
              <div class="cell">
                HCM
              </div>
              <div class="cell">
                Tính theo km
              </div>
              <div class="cell">
                <input type="text" placeholder="Nhập phí vận chuyển" class="input-enter-shipping">
              </div>
              <div class="cell">
                <a class="cell_xem" href="#">Duyệt</a>
                <a class="cell_xem" href="#">Huỷ</a>
              </div>
            </div>
          </div>
        </div>

        <div id="menu_2" class="tab-content-item menu2-wrapper">
          <div class="container-add">
            <div class="container-add_item">
              <h4 class="container-add-item_text">Chọn nơi đi</h4>
              <div class="selectdiv">
                <select>
                  <option></option>
                  <option>Đà Nẵng</option>
                  <option>HCM</option>
                </select>
              </div>
            </div>
            <div class="container-add_item">
              <h4 class="container-add-item_text">Chọn nơi đến</h4>
              <div class="selectdiv">
                <select>
                  <option></option>
                  <option>Đà Nẵng</option>
                  <option>HCM</option>
                </select>
              </div>
            </div>
            <div class="container-add_item">
              <h4 class="container-add-item_text">Chọn loại sản phẩm</h4>
              <div class="selectdiv">
                <select>
                  <option></option>
                  <option>Tính theo Km</option>
                  <option>Tính theo Kg</option>
                </select>
              </div>
            </div>
            <div class="container-add_item">
              <h4 class="container-add-item_text">Phí vận chuyển(VNĐ)</h4>
              <input class="enter_shipping-fee" type="text">
            </div>
          </div>
          <button class="add-shippingfee"><i class="fas fa-plus"></i>Thêm phí vận chuyển</button>
          <hr>
          <div class="table">
            <div class="row header">
              <div class="cell">
                STT
              </div>
              <div class="cell">
                Nơi đi
              </div>
              <div class="cell">
                Nơi đến
              </div>
              <div class="cell">
                Loại sản phẩm
              </div>
              <div class="cell">
                Phí vận chuyển
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
                Đà Nẵng
              </div>
              <div class="cell">
                HCM
              </div>
              <div class="cell">
                Tính theo km
              </div>
              <div class="cell">
                30000
              </div>
              <div class="cell">
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

<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/MasterPage.Master" AutoEventWireup="true" CodeBehind="QuanLyDanhMucChiTiet.aspx.cs" Inherits="ETech.WebApp.ADMIN.QuanLyDanhMucChiTiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
:root {
  --primary-color: #3e67b9;
}

body {
  margin: 0;
  padding: 0;
  background-color: #eee;
}

.container {
  background-color: white;
  border-radius: 20px;
  box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
  font-family: 'Roboto', sans-serif;
  max-width: 450px;
  height: 300px;
  text-align: center;
  margin: 120px 0 0 600px;
  padding: 40px;
}

.head-container {
  position: relative;
  top: -20px;
  left: -180px;
  text-decoration: none;
  color: #333;
}

.title{
  margin-bottom: 30px;
}

.name_input {
  display: flex;
  justify-content: space-evenly;
  align-items: center;
}

:focus {
  outline: none;
}

.input {
  float: left;
  width: 200px;
  position: relative;
  font-size: 18px;
}

input[type="text"] {
  color: #333;
  width: 100%;
  box-sizing: border-box;
  font-size: 18px;
}

.effect {
  height: 30px;
  border: 1px solid ccc;
}

.effect~.focus-border {
  position: absolute;
  bottom: 0;
  left: 0;
  width: 0;
  height: 2px;
  background-color: var(--primary-color);
  transition: 0.3s;
}

.effect:focus~.focus-border {
  width: 100%;
  transition: 0.4s;
}

.btn-item {
  font-size: 16px;
  margin: 50px 20px 0 ;
  padding: 10px 18px;
  border: none;
  border-radius: 10px;
  background: white;
  box-shadow: rgba(0, 0, 0, 0.05) 0px 6px 24px 0px, rgba(0, 0, 0, 0.08) 0px 0px 0px 1px;
  transition: .3s;
}

.btn-item:active {
  transform: scale(.8);
}

.btn-item:hover {
  cursor: pointer;
  background-color: #F8333C;
  color: white;
}

.update:hover {
  background-color: var(--primary-color);
}

.add:hover {
  background-color: #06BCC1;

}

.name_input h4{
    margin: 0;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="container">
    <div class="title">
      <a href="QuanLyDanhMuc.aspx" class="head-container"><i class="fas fa-long-arrow-alt-left"></i>Back</a>
      <h2>QUẢN LÝ DANH MỤC CHI TIẾT</h2>
    </div>
    <div class="name_input">
      <h4>Tên danh mục</h4>
      <div class="input">
        <input class="effect" type="text">
        <span class="focus-border"></span>
      </div>
    </div>
    <div class="btn">
      <button class="btn-item update">Cập nhật</button>
      <button class="btn-item add">Thêm</button>
      <button class="btn-item">Xoá</button>
    </div>
  </div>
</asp:Content>

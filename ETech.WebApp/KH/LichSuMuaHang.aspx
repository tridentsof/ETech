<%@ Page Title="" Language="C#" MasterPageFile="~/KH/MasterPage.Master" AutoEventWireup="true" CodeBehind="LichSuMuaHang.aspx.cs" Inherits="ETech.WebApp.KH.LichSuMuaHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lịch Sử Mua Hàng</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">
    <style>
        :root {
            --black-color: #000;
            --white-color: #fff;
            --gray-color: #ddd;
            --primary-color: #3e67b9;
        }

        * {
            margin: 0;
            padding: 0;
        }

        body {
            background-color: var(--gray-color);
            font-family: 'Roboto', sans-serif;
        }

        .LSMuaHang__container {
            width: 700px;
            height: auto;
            margin: 50px auto;
            padding: 40px;
            border-radius: 20px;
            background-color: var(--white-color);
        }

            .LSMuaHang__container h2 {
                text-align: center;
                color: var(--primary-color);
            }

        .LSMuaHang__layout {
            width: 680px;
            margin: 30px auto;
            color: var(--black-color);
            border-bottom: 2px solid var(--black-color);
            padding-bottom: 30px;
        }

        .LSMuaHang__layout-header {
            display: grid;
            align-items: center;
            grid-template-columns: 75% 25%;
            grid-auto-rows: 40px;
            border-bottom: 2px solid var(--gray-color);
        }

        .LSMuaHang__layout-footer {
            display: grid;
            align-items: center;
            justify-items: flex-start;
            grid-template-columns: 85% 15%;
            grid-auto-rows: 40px;
        }

        .LSMuaHang__layout-title,
        .LSMuaHang__layout-items {
            display: grid;
            align-items: center;
            grid-template-columns: 10% 25% 20% 25% 20%;
            background-color: var(--white-color);
            grid-auto-rows: 50px;
        }

        .LSMuaHang__layout-items {
            background-color: var(--gray-color);
        }

        .LSMuaHang__layout-item{}

        .LSMuaHang__layout-title {
            grid-auto-rows: 30px;
            font-weight: bold;
        }

        .LSMuaHang__layout-header-item1 {
            padding-left: 20px;
            justify-self: flex-start;
        }

        .LSMuaHang__layout-footer-item1 {
            font-weight: bold;
            justify-self: flex-end;
            padding-right: 10px;
        }

        .LSMuaHang__layout-header-item2 a {
            text-decoration: none;
            color: inherit;
            font-weight: bold;
            transition: .3s;
        }

        .LSMuaHang__layout-header-item2:hover {
            color: var(--primary-color);
        }

        .LSMuaHang__layout-footer-item2 {
            background-color: var(--gray-color);
            align-self: center;
            padding: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="LSMuaHang__container">
        <h2>LỊCH SỬ MUA HÀNG</h2>
        <div class="LSMuaHang__layout">

            <div class="LSMuaHang__layout-header">
                <div class="LSMuaHang__layout-header-item1">
                    Nhà cung cấp : ABC_123
                </div>
                <div class="LSMuaHang__layout-header-item2">
                    <a href="#">Xem chi tiết đơn hàng</a>
                </div>
            </div>

            <div class="LSMuaHang__layout-title">
                <div class="LSMuaHang__layout-item">ID</div>
                <div class="LSMuaHang__layout-item">Tên sản phẩm</div>
                <div class="LSMuaHang__layout-item">SL</div>
                <div class="LSMuaHang__layout-item">Giá(VNĐ)</div>
                <div class="LSMuaHang__layout-item">Tiền vận chuyển</div>
            </div>

            <div class="LSMuaHang__layout-items">
                <div class="LSMuaHang__layout-item">2</div>
                <div class="LSMuaHang__layout-item">Iphone 13</div>
                <div class="LSMuaHang__layout-item">1</div>
                <div class="LSMuaHang__layout-item">20.000.000</div>
                <div class="LSMuaHang__layout-item">50.000</div>
            </div>

            <div class="LSMuaHang__layout-footer">
                <div class="LSMuaHang__layout-footer-item1">Tổng số tiền:</div>
                <div class="LSMuaHang__layout-footer-item2">20.050.000</div>
            </div>

        </div>
        <div class="LSMuaHang__layout">

            <div class="LSMuaHang__layout-header">
                <div class="LSMuaHang__layout-header-item1">
                    Nhà cung cấp : ABC_123
                </div>
                <div class="LSMuaHang__layout-header-item2">
                    <a href="#">Xem chi tiết đơn hàng</a>
                </div>
            </div>

            <div class="LSMuaHang__layout-title">
                <div class="LSMuaHang__layout-item">ID</div>
                <div class="LSMuaHang__layout-item">Tên sản phẩm</div>
                <div class="LSMuaHang__layout-item">SL</div>
                <div class="LSMuaHang__layout-item">Giá(VNĐ)</div>
                <div class="LSMuaHang__layout-item">Tiền vận chuyển</div>
            </div>

            <div class="LSMuaHang__layout-items">
                <div class="LSMuaHang__layout-item">2</div>
                <div class="LSMuaHang__layout-item">Iphone 13</div>
                <div class="LSMuaHang__layout-item">1</div>
                <div class="LSMuaHang__layout-item">20.000.000</div>
                <div class="LSMuaHang__layout-item">50.000</div>
            </div>

            <div class="LSMuaHang__layout-footer">
                <div class="LSMuaHang__layout-footer-item1">Tổng số tiền:</div>
                <div class="LSMuaHang__layout-footer-item2">20.050.000</div>
            </div>

        </div>
    </div>

</asp:Content>

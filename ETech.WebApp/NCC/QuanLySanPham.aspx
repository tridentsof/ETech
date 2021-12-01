<%@ Page Title="" Language="C#" MasterPageFile="~/NCC/MasterPage.Master" AutoEventWireup="true" CodeBehind="QuanLySanPham.aspx.cs" Inherits="ETech.WebApp.NCC.QuanLySanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        :root {
            --text-color: #333;
            --primary-color: #f15f1b;
        }

        body {
            font-family: 'Roboto', sans-serif;
            font-size: 18px;
            line-height: 20px;
            font-weight: 400;
            color: #3b3b3b;
            background-color: #eee;
        }

        .QLSP__title {
            text-align: center;
            padding: 10px;
            margin-bottom: 0;
        }

        .QLSP__btn-add {
            float: right;
            margin-bottom: 10px;
            padding: 5px;
            border-radius: 8px;
            border: none;
            box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
            cursor: pointer;
            transition: .3s;
            font-size: 15px;
        }

            .QLSP__btn-add:hover {
                background-color: var(--primary-color);
                color: #eee;
            }

            .QLSP__btn-add:active {
                transform: scale(0.8);
            }

            .QLSP__btn-add i {
                margin-right: 5px;
            }

        .QLSP__container {
            margin: 180px 0 0 450px;
            padding: 0;
            max-width: 950px;
        }

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

        .QLSP__link {
            font-weight: bold;
            text-decoration: none;
            color: var(--text-color);
        }

            .QLSP__link:hover {
                color: var(--primary-color);
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="QLSP__container">
        <div>
            <h2 class="QLSP__title">QUẢN LÝ SẢN PHẨM</h2>
            <button class="QLSP__btn-add"><i class="fas fa-plus"></i>Thêm sản phẩm</button>
        </div>
        <div class="table">

            <div class="row header">
                <div class="cell">
                    STT
                </div>
                <div class="cell">
                    Tên sản phẩm
                </div>
                <div class="cell">
                    Giá
                </div>
                <div class="cell">
                    Số lượng
                </div>
                <div class="cell">
                    Thương hiệu
                </div>
                <div class="cell">
                    Nổi bật
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
                    Iphone 11
                </div>
                <div class="cell">
                    15.000.000
                </div>
                <div class="cell">
                    5
                </div>
                <div class="cell">
                    Apple
                </div>
                <div class="cell">
                    Nổi bật
                </div>
                <div class="cell">
                    <a class="QLSP__link" href="#">Sửa</a>
                    <a class="QLSP__link" href="#">Xoá</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

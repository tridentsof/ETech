<%@ Page Title="" Language="C#" MasterPageFile="~/NCC/MasterPage.Master" AutoEventWireup="true" CodeBehind="QuanLyKhuyenMai.aspx.cs" Inherits="ETech.WebApp.NCC.QuanLyKhuyenMai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        :root {
            --text-color: #333;
            --primary-color: #f15f1b;
        }

        body {
            margin: 0;
            padding: 0;
            background-color: #eee;
        }

        .QLKM__container {
            margin: 170px 0 0 500px;
            font-family: 'Roboto', sans-serif;
            max-width: 850px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: space-between;
        }

            .QLKM__container h2 {
                margin-bottom: 30px;
            }

        .QLKM__container-item {
            width: 100%;
            display: flex;
            justify-content: space-around;
            align-items: center;
        }

        .QLKM__select-date {
            display: flex;
            align-items: center;
        }

        input[type="date"i] {
            margin: 8px 0 0 10px;
            height: 35px;
            padding: 0;
            font-size: 16px;
            text-align: right;
        }

        .QLKMchitiet__box-input {
            margin-left: 10px;
        }

            .QLKMchitiet__box-input input {
                width: 150px;
                height: 31px;
                font-size: 17px;
            }

        .QLKM__box {
            display: flex;
            align-items: center;
        }

        .QLKM__btn {
            font-size: 16px;
            margin: 40px 20px;
            height: 30px;
            width: 80px;
            border: none;
            border-radius: 5px;
            background-color: white;
            transition: .3s;
            box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
        }

            .QLKM__btn:hover {
                cursor: pointer;
                background-color: var(--primary-color);
                color: white;
            }

            .QLKM__btn:active {
                transform: scale(0.8);
            }

        /* TABLE */
        .table {
            width: 100%;
            box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
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
            padding: 6px 10px;
            display: table-cell;
        }

        .QLKM__details {
            font-size: 15px;
            font-weight: bold;
            text-decoration: none;
            color: var(--text-color);
        }

            .QLKM__details:hover {
                color: var(--primary-color);
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="QLKM__container">
        <h2>QUẢN LÝ KHUYẾN MÃI</h2>
        <div class="QLKM__container-item">
            <div class="QLKM__box">
                <p>Tên khuyến mãi</p>
                <div class="QLKMchitiet__box-input">
                    <input type="text">
                </div>
            </div>
            <div class="QLKM__select-date">
                <p>Từ ngày</p>
                <input type="date">
            </div>
            <div class="QLKM__select-date">
                <p>Đến ngày</p>
                <input type="date">
            </div>
        </div>
        <div class="QLKM__divbtn">
            <button class="QLKM__btn">Thêm</button>
            <button class="QLKM__btn">Sửa</button>
        </div>
        <div class="table">
            <div class="row header">
                <div class="cell">
                    Mã khuyến mãi
                </div>
                <div class="cell">
                    Tên khuyến mãi
                </div>
                <div class="cell">
                    Từ ngày
                </div>
                <div class="cell">
                    Đến ngày
                </div>
                <div class="cell">
                    Tình trạng
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
                    Sale cuối năm
                </div>
                <div class="cell">
                    12/11/2021 24:00
                </div>
                <div class="cell">
                    31/12/2021 12:00
                </div>
                <div class="cell">
                    Đang khuyến mãi
                </div>
                <div class="cell">
                    <a class="QLKM__details" href="#">Xem chi tiết</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

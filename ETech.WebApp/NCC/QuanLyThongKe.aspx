<%@ Page Title="" Language="C#" MasterPageFile="~/NCC/MasterPage.Master" AutoEventWireup="true" CodeBehind="QuanLyThongKe.aspx.cs" Inherits="ETech.WebApp.NCC.QuanLyThongKe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .QLTKe__container {
            margin: 230px 0 0 500px;
            font-family: 'Roboto', sans-serif;
            max-width: 800px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: space-between;
        }

            .QLTKe__container h2 {
                margin-bottom: 30px;
            }

        .QLTKe__container-item {
            width: 100%;
            display: flex;
            justify-content: space-around;
            align-items: center;
        }

        .QLTKe__select-date {
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

        .QLTKe__selectdiv select {
            margin-top: 2px;
            height: 39px;
            padding: 5px;
            font-size: 16px;
        }

        .QLTKe__btn {
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

            .QLTKe__btn:hover {
                cursor: pointer;
                background-color: var(--primary-color);
                color: white;
            }

            .QLTKe__btn:active {
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="QLTKe__container">
        <h2>THỐNG KÊ</h2>
        <div class="QLTKe__container-item">
            <div class="QLTKe__select-date">
                <p>Từ ngày</p>
                <input type="date">
            </div>
            <div class="QLTKe__select-date">
                <p>Đến ngày</p>
                <input type="date">
            </div>
            <div class="QLTKe__selectdiv">
                <select>
                    <option selected disabled>Chọn nhà cung cấp</option>
                    <option>ABC</option>
                    <option>XYZ</option>
                </select>
            </div>
        </div>
        <div class="QLTKe__divbtn">
            <button class="QLTKe__btn">Tìm kiếm</button>
            <button class="QLTKe__btn">Hủy</button>
        </div>
        <div class="table">
            <div class="row header">
                <div class="cell">
                    Mã sản phẩm
                </div>
                <div class="cell">
                    Tên sản phẩm
                </div>
                <div class="cell">
                    Giá bán
                </div>
                <div class="cell">
                    SL bán ra
                </div>
                <div class="cell">
                    SL tồn kho
                </div>
                <div class="cell">
                    Doanh thu
                </div>
            </div>
            <div class="row">
                <div class="cell">
                    01
                </div>
                <div class="cell">
                    Iphone 12
                </div>
                <div class="cell">
                    2.000.000
                </div>
                <div class="cell">
                    3
                </div>
                <div class="cell">
                    5
                </div>
                <div class="cell">
                    14.000.000
                </div>
            </div>
        </div>
    </div>
</asp:Content>

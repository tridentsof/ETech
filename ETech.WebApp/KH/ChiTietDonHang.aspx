<%@ Page Title="" Language="C#" MasterPageFile="~/KH/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChiTietDonHang.aspx.cs" Inherits="ETech.WebApp.KH.ChiTietDonHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết đơn hàng</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="../wwwroot/font-awsome/css/all.css">
    <style>
        :root {
            --primary-color: #3e67b9;
            --orange-color: #f15f1b;
            --background-color: #c5d4fc;
            --black-color: #333;
            --white-color: #fff;
            --gray-color: #808080;
            --lightgray: rgb(231, 231, 231);
            --box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px 6px;
        }

        body {
            font-family: 'Roboto', sans-serif;
            font-size: 16px;
        }

        * {
            margin: 0;
            padding: 0;
        }

        .ChiTietDH__container {
            width: 35%;
            margin: 30px auto;
            border-radius: 6px;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
            padding: 20px;
        }

        .ChiTietDH_header1,
        .ChiTietDH_header2,
        .ChiTietDH_header3,
        .ChiTietDH_header4 {
            display: flex;
            justify-content: space-between;
            line-height: 30px;
            border-bottom: 1.5px solid #ddd;
        }

        .ChiTietDH_header1-img img {
            width: 100px;
            height: 120px;
            object-fit: cover;
        }

        .ChiTietDH_header1-title {
            padding: 10px;
            flex-grow: 1;
        }

        .ChiTietDH_header1-cash {
            padding: 10px 5px;
            display: flex;
            flex-direction: column;
            align-items: flex-end;
        }

            .ChiTietDH_header1-cash h3 {
                color: var(--primary-color);
            }

        .ChiTietDH_header2 {
            flex-direction: column;
            padding: 10px 5px;
        }

        .ChiTietDH_header2-discount a {
            color: var(--primary-color);
            text-decoration: none;
        }

            .ChiTietDH_header2-discount a:hover {
                color: var(--orange-color);
            }

        .ChiTietDH_header2-democash,
        .ChiTietDH_header2-cash {
            display: flex;
            justify-content: space-between;
        }

        .ChiTietDH_header2-cash {
            font-weight: bold;
            color: var(--orange-color);
        }

        .ChiTietDH_header3 {
            padding: 10px 5px;
            font-weight: 500;
            font-size: 18px;
        }

        .ChiTietDH_header4 {
            flex-direction: column;
        }

        .ChiTietDH_header4-input,
        .ChiTietDH_header4-payment,
        .ChiTietDH_header4-cash {
            border-bottom: 1px solid #ddd;
            display: flex;
            justify-content: space-between;
            padding: 10px 5px;
        }

            .ChiTietDH_header4-input input,
            .ChiTietDH_header4-input textarea {
                width: 50%;
                border: 1.5px solid #b1b1b1;
                border-radius: 5px;
                position: relative;
                background: transparent;
            }

                .ChiTietDH_header4-input input[type=text]:focus,
                .ChiTietDH_header4-input textarea:focus {
                    background: #c5d4fc7c;
                }

            .ChiTietDH_header4-input textarea {
                overflow: auto;
            }

            .ChiTietDH_header4-input select {
                width: 50.5%;
            }

        .ChiTietDH_header4-paymentitems {
            margin-right: 80px;
        }

            .ChiTietDH_header4-paymentitems input {
                margin-right: -20px;
            }

        .ChiTietDH_header5-btn {
            background-color: var(--primary-color);
            color: #fff;
            width: 100%;
            padding: 12px;
            margin-top: 5px;
            border: none;
            border-radius: 5px;
            font-size: 20px;
        }

            .ChiTietDH_header5-btn:hover {
                background-color: var(--orange-color);
                cursor: pointer;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="ChiTietDH__container">
        <div class="ChiTietDH_header1">
            <div class="ChiTietDH_header1-img">
                <img
                    src="https://lh3.googleusercontent.com/y1kb5s8xKp6cl4UnZc68VD_mMHl5xvtUOZohoyReKE8O1nf-psdQUqwDU6uQN1T7r1zBRIGQ7wfSgMlZhQ=rw-w300"
                    alt="">
            </div>
            <div class="ChiTietDH_header1-title">
                <h3>Điện thoại Iphone 11 Pro</h3>
                <p>Thông tin khuyến mãi</p>
            </div>
            <div class="ChiTietDH_header1-cash">
                <h3>15,980,000đ</h3>
                <p>x1</p>
            </div>
        </div>

        <div class="ChiTietDH_header2">
            <div class="ChiTietDH_header2-discount">
                <a href="#"><i class="fas fa-tag fa-fw"></i>Sử dụng mã giảm giá</a>
            </div>
            <div class="ChiTietDH_header2-democash">
                <p>Tạm tính :</p>
                <p>15,980,000đ</p>
            </div>
            <div class="ChiTietDH_header2-cash">
                <p>Tổng tiền :</p>
                <p>15,980,000đ</p>
            </div>
        </div>

        <div class="ChiTietDH_header3">
            <p>THÔNG TIN KHÁCH HÀNG </p>
        </div>

        <div class="ChiTietDH_header4">
            <div class="ChiTietDH_header4-input">
                <p>Họ tên (*)</p>
                <input type="text">
            </div>
            <div class="ChiTietDH_header4-input">
                <p>Email</p>
                <input type="text">
            </div>
            <div class="ChiTietDH_header4-input">
                <p>Số điện thoại (*)</p>
                <input type="text">
            </div>
            <div class="ChiTietDH_header4-input">
                <p>Địa chỉ (*)</p>
                <textarea rows="5"></textarea>
            </div>
            <div class="ChiTietDH_header4-input">
                <p>Phương thức thanh toán (*)</p>
                <div class="ChiTietDH_header4-paymentitems">
                    <input name="cash" type="radio">Tiền mặt
                    <input name="cash" type="radio">Thẻ nội địa
                    <input name="cash" type="radio">Thẻ quốc tế
                </div>
            </div>
            <div class="ChiTietDH_header4-cash">
                <h3>Tổng tiền :</h3>
                <h3>15,980,000đ</h3>
            </div>
        </div>

        <div class="ChiTietDH_header5">
            <button class="ChiTietDH_header5-btn">THANH TOÁN VÀ MUA HÀNG</button>
        </div>
    </div>

</asp:Content>

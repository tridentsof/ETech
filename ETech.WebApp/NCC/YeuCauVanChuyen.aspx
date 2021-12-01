<%@ Page Title="" Language="C#" MasterPageFile="~/NCC/MasterPage.Master" AutoEventWireup="true" CodeBehind="YeuCauVanChuyen.aspx.cs" Inherits="ETech.WebApp.NCC.YeuCauVanChuyen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        :root {
            --text-color: #333;
            --primary-color: #f15f1b;
            --white-color: #fff;
            --box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px 6px;
        }

        body {
            margin: 0;
            padding: 0;
            background-color: #eee;
        }

        .YCVC__container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin: 230px 0 0 600px;
            font-family: 'Roboto', sans-serif;
            max-width: 620px;
            background-color: white;
            border-radius: 20px;
            box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
            padding: 50px;
        }

            .YCVC__container h2 {
                margin-bottom: 30px;
            }

        .YCVC__select-wrap {
            width: 100%;
            display: flex;
            justify-content: space-between;
        }

        .YCVC__select select {
            width: 140px;
            height: 25px;
        }

        .YCVC__select h5 {
            margin: 10px;
            text-align: center;
        }

        .YCVC__btn {
            background-color: var(--white-color);
            width: auto;
            height: 30px;
            margin: 40px 0 0;
            border: none;
            border-radius: 5px;
            transition: .3s;
            cursor: pointer;
            box-shadow: var(--box-shadow);
            font-size: 18px;
            padding: 5px;
        }

            .YCVC__btn:hover {
                background-color: var(--primary-color);
                color: var(--white-color);
            }

            .YCVC__btn:active {
                transform: scale(.8);
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="YCVC__container">
        <h2>YÊU CẦU PHÍ VẬN CHUYỂN</h2>
        <div class="YCVC__select-wrap">
            <div class="YCVC__select">
                <h5>Nơi đi</h5>
                <select name="" id="">
                    <option>HCM</option>
                    <option>HÀ NỘI</option>
                    <option>ĐÀ NẴNG</option>
                </select>
            </div>
            <div class="YCVC__select">
                <h5>Nơi đến</h5>
                <select name="" id="">
                    <option>HCM</option>
                    <option>HÀ NỘI</option>
                    <option>ĐÀ NẴNG</option>
                </select>
            </div>
            <div class="YCVC__select">
                <h5>Chọn loại sản phẩm</h5>
                <select name="" id="">
                    <option>Tính theo km</option>
                    <option>Tính theo kg</option>
                </select>
            </div>
        </div>
        <button class="YCVC__btn">Gửi yêu cầu</button>
    </div>
</asp:Content>

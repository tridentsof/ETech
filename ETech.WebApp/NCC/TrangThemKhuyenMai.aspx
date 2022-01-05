<%@ Page Title="" Language="C#" MasterPageFile="~/NCC/MasterPage.Master" AutoEventWireup="true" CodeBehind="TrangThemKhuyenMai.aspx.cs" Inherits="ETech.WebApp.NCC.TrangThemKhuyenMai" %>
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
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="QLTKe__container-item">
            <div class="QLTKe__select-date">
                <p>Từ ngày</p>
                 <asp:TextBox ID="txtNgayBD"  TextMode="Date" runat="server"></asp:TextBox>
            </div>
            <div class="QLTKe__select-date">
                <p>Đến ngày</p>
                <asp:TextBox ID="txtNgayKT"  TextMode="Date" runat="server"></asp:TextBox>
            </div>
        </div>
</asp:Content>

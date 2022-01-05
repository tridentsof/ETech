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
            display:flex;
            justify-content: center;
            align-items: center;
            margin-top: 50px;
        }

        .QLTKe__select-date {
            display: flex;
            align-items: center;
        }

        input[type="date"i] {
            margin: 0px 0 0 0px;
            height: 35px;
            padding: 0;
            font-size: 16px;
            text-align: left;
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
            .QLTKe__title {
            margin-top: 30px;
            margin-bottom: 30px;
        }
        .discount-wrapper{
            background-color: white;
       
            height: 450px;
            justify-content:center;
            width: 700px;
            margin-left: 30px;
            margin-top: 4%;
            box-shadow: 0 3px 10px 0 rgb(0 0 0 / 14%);
            border-radius: 3px;
            border: none;
            transition: 0.25s;      
            cursor: pointer;          
        }
        .discount-wrapper:hover{
            box-shadow: 2px 4px 10px #B2D426;
        }
        .input-percent{
            height: 30px;
            width: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
        <div class="QLTKe__container-item">
        <h3 class="header-discount">Thêm mới khuyến mãi</h3>
            
        <div class="discount-wrapper">
            <div class="quang1">
                <p class="p-discount p-type">Nhập tên khuyến mãi:</p>
                <asp:TextBox ID="txtTenKM" CssClass="input-percent" runat="server"></asp:TextBox>
            </div>
            <div>
                <p class="p-discount p-percent">Chọn ngày bắt đầu</p>
            <asp:TextBox ID="txtNgayBD" CssClass="input-percent" TextMode="Date" runat="server"></asp:TextBox>
            </div>
            <div >
                <p class="p-discount p-percent">Chọn ngày kết thúc</p>
            <asp:TextBox ID="txtNgayKT" CssClass="input-percent" TextMode="Date" runat="server"></asp:TextBox>
            </div>
            <%--<div class="quang1">
                <p class="p-discount p-type">Nhà Cung Cấp ID:</p>
                <asp:TextBox ID="txtncc" CssClass="input-percent" runat="server"></asp:TextBox>
            </div>--%>
            <div class="quang1">
                <p class="p-discount p-type">Tỷ Lệ Khuyến Mãi:</p>
                <asp:TextBox ID="txttl" CssClass="input-percent" runat="server"></asp:TextBox>
            </div>
            <div class="quang1">
                <p class="p-discount p-type">Loại Sản Phẩm ID:</p>
                <asp:TextBox ID="txtlsp" CssClass="input-percent" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="Button1" CssClass="btn btn_update" runat="server" OnClick="Button1_Click" Text="Cập nhật" />
          
          
            <asp:Button ID="Button2" CssClass="btn" runat="server" OnClick="Button2_Click" Text="Hủy" />
            
            
            <br />
            <asp:Label ID="Label1" CssClass="lbSuccess" runat="server" Text=""></asp:Label>
        </div>
        </div>
</asp:Content>

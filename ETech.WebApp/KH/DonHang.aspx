<%@ Page Title="" Language="C#" MasterPageFile="~/KH/MasterPage.Master" AutoEventWireup="true" CodeBehind="DonHang.aspx.cs" Inherits="ETech.WebApp.KH.DonHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Đơn hàng</title>
    <link rel="stylesheet" href="../wwwroot/css/kh_donhang.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="dhNotLogin" runat="server" class="dh-notLogin">
        <h3>Đăng nhập để xem đơn hàng của bạn</h3>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/KH/dangnhap_dangky.aspx">Đăng nhập</asp:HyperLink>
    </div>

    <div class="head-lead">Trang chủ > <span id="lead-text">Đơn hàng</span></div>
    <div class="donhang-cover">
        <table class="donhang-table">
            <tr>
                <th>Mã đơn hàng</th>
                <th>Tên</th>
                <th>Thời gian</th>  
                <th>Trạng thái</th>
                <th>Tên shop</th>
                <th>Số lượng</th>
                <th>Tổng tiền</th>
                <th>Tiện ích</th>    
            </tr>
        </table>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/KH/MasterPage.Master" AutoEventWireup="true" CodeFile="ThemGioHangThanhCong.aspx.cs" Inherits="ETech.WebApp.KH.ThemGioHangThanhCong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style>
        a:hover{
            text-decoration: none;
        }
        .container {
            padding-top: 35px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            width:100%;
        }
        
        h4 {
            text-align: center;
            margin-bottom: 50px;
         }
        .tenNSX{
            text-align: center;
            font-size: 25px;
            text-transform: uppercase;
        }
        .list-product {
            display: flex;
            flex-wrap: wrap;
            margin: auto;
            width:80%;
            justify-content: flex-start;
        }
        .listsp-item {
            width: 20%;
            border: 1px solid #ececec;
            height:400px;
            border-radius:15px;
            background-color:#f1f1f1;
            margin:auto;
            margin-top:10px;
            padding:10px;
        }
        .listsp-item a {
            cursor: pointer;
        }

        .listsp-item:hover img {
            transform: scale(1.1);
            transition: all 0.2s ease-in;
        }

        .listsp-item img {
            height: 230px;
            width: 100%;
            object-fit: cover;
            margin: 15px 0;
        }
        .item-ten {
            white-space: nowrap; 
            font-weight: bold;
            font-size: 16px;
            color: #3e67b9;
             overflow: hidden;
            text-overflow: ellipsis;
        }
        .listsp-gia-container {
            display: flex;
            justify-content: space-between
        }
         .item-gia {
             font-style: oblique;
             font-size: 16px;
             font-weight: bold;
             color: goldenrod;
         }
        .btnXemThem {
            margin: 35px auto;
            text-align: center;
            border: none;
            background: #102a80;
            padding: 10px 20px;
            color: white;
            border-radius: 5px;
        }
        .btnXemThem:hover {
            background: #0f58c4;
            text-decoration: none;
            color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
           <h4><b><asp:Label ID="lbThongBao" runat="server" Text="Thêm giỏ hàng thành công!" CssClass="lbThongBao"></asp:Label></b></h4>
        <div class="list-product">
            <asp:Repeater ID="rptItem" runat="server">
                <ItemTemplate>
                    <div class="listsp-item">
                       <a href="TrangChiTietSanPham.aspx?idSP=<%# Eval("SANPHAMID") %>">
                        <img alt="phone-img" src="../wwwroot/img/sp/<%# Eval("HINHANH") %>" class="listsp-img" />
                        <p class="item-ten">
                         <%# Eval("TENSANPHAM") %>
                        </p>

                    <div class="listsp-gia-container">
                        <div>
                            <p class="item-gia">
                                <%# Eval("DONGIA","{0:n0}") %> VNĐ  
                            </p>
                        </div>
                    </div>
                  </a>
                </div>
                </ItemTemplate>
            </asp:Repeater>
            
      
        </div>
    </div>
</asp:Content>

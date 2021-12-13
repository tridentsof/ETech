<%@ Page Title="" Language="C#" MasterPageFile="~/KH/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="ETech.WebApp.KH.ChiTietSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CHI TIẾT SẢN PHẨM</title>

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
        }

        * {
            margin: 0;
            padding: 0;
        }

        .ChiTietSP__header {
            margin-top: 50px;
        }

        .card-wrapper {
            max-width: 1100px;
            margin: 0 auto;
        }

        img {
            width: 100%;
            display: block;
            object-fit: cover;
        }

        .img-display {
            overflow: hidden;
        }

        .img-showcase {
            margin-bottom: 30px;
            display: flex;
            width: 100%;
            transition: all 0.5s ease;
        }

            .img-showcase img {
                min-width: 100%;
            }

        .img-select {
            display: flex;
            margin-left: 20px;
        }

        .img-item {
            margin: 0.3rem;
            width: 80px;
            height: 80px;
        }

        .img-cover {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .img-item:nth-child(1),
        .img-item:nth-child(2),
        .img-item:nth-child(3) {
            margin-right: 0;
        }

        .img-item:hover {
            opacity: 0.8;
        }

        .product-title {
            font-size: 25px;
            color: var(--primary-color);
            margin: 1rem 0;
        }

        .product-link {
            text-decoration: none;
            text-transform: uppercase;
            font-weight: 400;
            font-size: 20px;
            display: inline-block;
            margin-bottom: 0.5rem;
            background: #256eff;
            color: #fff;
            padding: 0 0.3rem;
            transition: all 0.5s ease;
        }

            .product-link:hover {
                opacity: 0.9;
            }

        .product-rating {
            color: var(--orange-color);
        }

            .product-rating span {
                font-weight: 600;
                color: #252525;
            }

        .product-price {
            margin: 1rem 0;
            font-size: 20px;
            font-weight: 700;
        }

            .product-price span {
                font-weight: 400;
            }

        .last-price span {
            color: var(--orange-color);
            text-decoration: line-through;
        }

        .new-price span {
            color: var(--primary-color);
        }

        .product-detail h4 {
            font-size: 20px;
            text-transform: capitalize;
            color: #12263a;
            padding-top: 20px;
        }

        .product-detail li {
            font-size: 16px;
            padding: 3px;
            opacity: 0.8;
        }

        .product-detail ul {
            font-size: 16px;
        }

            .product-detail ul li {
                margin: 0;
                list-style: none;
                background-size: 18px;
                padding-left: 1.7rem;
                font-weight: 600;
                opacity: 0.9;
            }

                .product-detail ul li span {
                    font-weight: 400;
                }

        .purchase-info {
            margin: 1.5rem 0;
            display: flex;
            align-items: center;
        }

            .purchase-info input,
            .purchase-info .btn {
                height: 40px;
                border: 1.5px solid #ddd;
                border-radius: 25px;
                text-align: center;
                outline: 0;
                margin-right: 10px;
                padding: 5px;
            }

            .purchase-info input {
                font-size: 20px;
                width: 75px;
                height: 25px;
            }

            .purchase-info .btn {
                display: flex;
                align-items: center;
                font-size: 24px;
                cursor: pointer;
                color: #fff;
                padding: 10px;
            }

                .purchase-info .btn:first-of-type {
                    background: var(--primary-color);
                }

                .purchase-info .btn:last-of-type {
                    background: var(--gray-color);
                }

                .purchase-info .btn:hover {
                    opacity: 0.9;
                }

        @media screen and (min-width: 992px) {
            .card {
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                grid-gap: 1.5rem;
            }

            .card-wrapper {
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .product-imgs {
                display: flex;
                flex-direction: column;
                justify-content: center;
            }

            .product-content {
                margin-left: 50px;
                padding-top: 0;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="ChiTietSP__header">
        <div class="card-wrapper">
            <div class="card">
                <!-- card left -->
                <div class="product-imgs">
                    <div class="img-display">
                        <div class="img-showcase">
                            <img
                                src="https://lh3.googleusercontent.com/tOYCSroTrxfUVxKyLAmKy6udhNGz9lbC5tPbiLebb8xpj33FcedR70TtvUIny9B9pghemh0TWFQscyIsvZzE=w500-rw">
                            <img src="https://phuckhangmobile.com/file/iphone-11-pro-xam-3-13303f.jpg">
                            <img src="https://hitechworld.vn/media/product/859_0_iphone_11_pro_max_select_2019_600x600.jpg">
                        </div>
                    </div>
                    <div class="img-select">
                        <div class="img-item">
                            <a href="#" data-id="1">
                                <img class="img-cover"
                                    src="https://lh3.googleusercontent.com/tOYCSroTrxfUVxKyLAmKy6udhNGz9lbC5tPbiLebb8xpj33FcedR70TtvUIny9B9pghemh0TWFQscyIsvZzE=w500-rw">
                            </a>
                        </div>
                        <div class="img-item">
                            <a href="#" data-id="2">
                                <img class="img-cover" src="https://phuckhangmobile.com/file/iphone-11-pro-xam-3-13303f.jpg">
                            </a>
                        </div>
                        <div class="img-item">
                            <a href="#" data-id="3">
                                <img class="img-cover"
                                    src="https://hitechworld.vn/media/product/859_0_iphone_11_pro_max_select_2019_600x600.jpg">
                            </a>
                        </div>
                    </div>
                </div>
                <!-- card right -->
                <div class="product-content">
                    <h2 class="product-title">Điện Thoại Di Động iPhone 11 Pro Max 64GB (Space gray)</h2>
                    <a href="#" class="product-link">visit Etech shop</a>
                    <div class="product-rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                        <span>4.7(21)</span>
                    </div>

                    <div class="product-price">
                        <p class="last-price">Giá cũ: <span>25,450,000đ</span></p>
                        <p class="new-price">Giá mới: <span>20,230,000đ (5%)</span></p>
                    </div>

                    <div class="product-detail">
                        <h4>Thông số kỹ thuật</h4>
                        <ul>
                            <li>Màu: <span>Space Gray (Xám)</span></li>
                            <li>Màn hình: <span>6.5"</span></li>
                            <li>Camera sau: <span>3x 12MP</span></li>
                            <li>Camera trước: <span>12MP</span></li>
                            <li>CPU: <span>A13 Bionic</span></li>
                            <li>RAM: <span>4GB</span></li>
                            <li>Hệ điều hành: <span>IOS</span></li>
                        </ul>
                        <h4>Khuyến mãi liên quan</h4>
                        <li>Nhập mã PV300 giảm thêm 3% tối đa 300.000đ khi thanh toán qua VNPAY-QR.</li>
                        <li>Nhập mã APPLE800 giảm thêm % tối đa 800.000đ. Áp dụng cho một số sản phẩm Apple trên 20.000.000đ khi
                thanh toán qua VNPAY-QR</li>
                    </div>

                    <div class="purchase-info">
                        <input type="number" min="0" value="1">
                        <button type="button" class="btn">
                            Mua ngay <i class="fas fa-shopping-cart"></i>
                        </button>
                        <button type="button" class="btn">Xem sau</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        const imgs = document.querySelectorAll('.img-select a');
        const imgBtns = [...imgs];
        let imgId = 1;

        imgBtns.forEach((imgItem) => {
            imgItem.addEventListener('click', (event) => {
                event.preventDefault();
                imgId = imgItem.dataset.id;
                slideImage();
            });
        });

        function slideImage() {
            const displayWidth = document.querySelector('.img-showcase img:first-child').clientWidth;

            document.querySelector('.img-showcase').style.transform = `translateX(${- (imgId - 1) * displayWidth}px)`;
        }

        window.addEventListener('resize', slideImage);
    </script>
</asp:Content>

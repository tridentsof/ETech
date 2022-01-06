<%@ Page Title="" Language="C#" MasterPageFile="~/KH/MasterPage.Master" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="ETech.WebApp.KH.TrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TRANG CHỦ</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="../wwwroot/font-awsome/css/all.css">
    <style>
        :root {
            --orange-color: #f15f1b;
            --primary-color: #3e67b9;
            --text-color: rgb(36, 36, 36);
            --text-shadown: rgb(138, 138, 138);
            --gray-color: #808080;
            --lightgray: rgb(243, 243, 243);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: sans-serif;
        }

        body {
            font-family: 'Roboto', sans-serif;
            font-size: 15px;
            background-color: var(--lightgray);
        }

        /* BTN GO TO TOP */
        #back-to-top-btn {
            display: none;
            position: fixed;
            bottom: 30px;
            right: 30px;
            font-size: 23px;
            width: 40px;
            height: 40px;
            background-color: #fff;
            color: var(--primary-color);
            cursor: pointer;
            outline: none;
            border: 2px solid var(--primary-color);
            border-radius: 50%;
            transition-duration: 0.2s;
            transition-timing-function: ease-in-out;
            transition-property: background-color, color;
            z-index: 1000;
            text-align: center;
        }

            #back-to-top-btn i {
                margin-top: 5px;
            }

            #back-to-top-btn:hover,
            #back-to-top-btn:focus {
                border: 2px solid #fff;
                background-color: var(--primary-color);
                color: #fff;
            }

        /* Animations */
        .btnEntrance {
            animation-duration: 0.5s;
            animation-fill-mode: both;
            animation-name: btnEntrance;
        }

        @keyframes btnEntrance {
            from {
                opacity: 0;
                transform: translate3d(0, 100%, 0);
            }

            to {
                opacity: 1;
                transform: translate3d(0, 0, 0);
            }
        }

        .btnExit {
            animation-duration: 0.25s;
            animation-fill-mode: both;
            animation-name: btnExit;
        }

        @keyframes btnExit {
            from {
                opacity: 1;
            }

            to {
                opacity: 0;
                transform: translate3d(0, 100%, 0);
            }
        }

        /* MAIN - CAROUSEL */
        .content-width {
            width: 90%;
            margin: 30px auto 0;
        }

        .slideshow {
            position: relative;
            width: 100%;
            height: 400px;
            display: flex;
            flex-direction: column;
            justify-content: space-around;
        }

        .slideshow-items {
            position: relative;
            width: 100%;
            height: 400px;
        }

        .item {
            position: absolute;
            width: 100%;
            height: auto;
        }

        .item-image {
            position: relative;
            width: 100%;
            height: 400px;
            opacity: 0;
            object-fit: cover;
            transition: opacity .8s ease-out;
            box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
            border-radius: 5px;
        }

        .item.active .item-image {
            opacity: 1;
        }

        .item.active .item-image-container::before {
            opacity: .8;
        }

        .item-description {
            position: absolute;
            top: 182px;
            right: 0;
            width: 50%;
            padding-right: 4%;
            line-height: 1.8;
        }

        /* Controls*/
        .controls {
            position: relative;
            text-align: center;
            z-index: 1000;
        }

            .controls ul {
                list-style: none;
            }

                .controls ul li {
                    display: inline-block;
                    width: 10px;
                    height: 10px;
                    margin: 3px;
                    background: #bdbdd5;
                    cursor: pointer;
                }

                    .controls ul li.active {
                        background: #6a6a77;
                    }

        /* CAROUSEL */
        .carousel {
            width: 815px;
            margin: 30px auto 0;
        }

            .carousel h2 {
                font-weight: 300;
                margin-bottom: 1rem;
            }

        .carousel--container {
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            width: 100%;
            height: 150px;
            background: var(--primary-color);
            border-radius: 0.2rem;
            box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
            overflow: hidden;
        }

        .carousel--content {
            display: flex;
            align-items: center;
            justify-content: center;
            position: absolute;
            top: 50%;
            left: 0.1rem;
            transform: translateY(-50%);
            transition: all 0.3s ease;
        }

            .carousel--content .box {
                width: 296px;
                height: 140px;
                background: #ffffff;
                margin-right: 5px;
                border-radius: 0.2rem;
                box-shadow: 3px 15px 15px rgba(0, 0, 0, 0.2);
                display: flex;
                align-items: center;
                justify-content: space-between;
            }

                .carousel--content .box:hover {
                    background-color: #ffffff;
                    transform-style: preserve-3d;
                    transform: scale(1.02);
                    transition: all ease 0.5s;
                }

                .carousel--content .box img {
                    width: 100%;
                    height: 100%;
                    object-fit: cover;
                }

        .carousel_btn {
            position: absolute;
            top: 50%;
            width: 30px;
            height: 30px;
            border-radius: 50%;
            outline: none;
            border: none;
            background: rgba(255, 255, 255, 0);
            cursor: pointer;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.5);
            transform: translateY(-50%) scale(0.5);
            opacity: 0;
            visibility: hidden;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: 1s;
        }

            .carousel_btn:hover {
                background: var(--primary-color);
            }

        .show {
            transform: translateY(-50%) scale(1);
            opacity: 1;
            visibility: visible;
        }

        .left {
            left: -25rem;
        }

        .right {
            right: -25rem;
        }

        /* HOT BRAND */
        .hot-brand {
            border-radius: 5px;
            width: 98%;
            margin: 30px auto;
            background: #fff;
            padding-bottom: 30px;
        }

            .hot-brand h2 {
                padding: 10px 20px;
            }

        .hot-brand_items {
            display: flex;
            justify-content: space-around;
            height: 150px;
        }

        .hot-brand_item {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

            .hot-brand_item img {
                width: 100%;
                height: 100%;
                object-fit: cover;
                border-radius: 15px;
                transition: .3s;
                margin-bottom: 10px;
                box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
            }

                .hot-brand_item img:hover {
                    transform: scale(1.05);
                    cursor: pointer;
                }

        /* CONTENT */
        .content {
            margin-top: 30px;
        }

        .content_title {
            height: auto;
            max-width: 68%;
            margin: 0 auto;
            text-align: center;
            color: #ffffff;
            background-color: var(--primary-color);
        }

        .content_items {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            padding: 0 5px;
            max-width: 1100px;
            margin: 0 auto;
        }

        .content_item {
            position: relative;
            overflow: hidden;
            border: 3px solid var(--lightgray);
            border-bottom: 0;
            background-color: #fff;
            border-radius: 10px;
            min-width: 230px;
            max-width: 252.5px;
            width: 100%;
            color: #000000;
            text-align: center;
            -webkit-perspective: 50em;
            perspective: 50em;
            margin: 3px 0px 0;
        }

            .content_item:hover {
                cursor: pointer;
            }

            .content_item * {
                -webkit-box-sizing: padding-box;
                box-sizing: padding-box;
                -webkit-transition: all 0.2s ease-out;
                transition: all 0.2s ease-out;
            }

            .content_item h5 {
                padding: 0 5px;
                color: var(--primary-color);
                height: 30px;
                overflow: hidden;
            }

            .content_item img {
                max-width: 95%;
                max-height: 95%;
                object-fit: contain;
            }

            .content_item .content_item-upload {
                top: 50%;
                height: 100%;
                width: 100%;
                background: #fff;
                position: absolute;
                opacity: 0;
                z-index: 1;
            }

            .content_item:after {
                background-color: #ffffff;
                position: absolute;
                content: "";
                display: block;
                top: 20px;
                left: 20px;
                right: 20px;
                bottom: 20px;
                -webkit-transition: all 0.4s ease-in-out;
                transition: all 0.4s ease-in-out;
                -webkit-transform: rotateX(-90deg);
                transform: rotateX(-90deg);
                -webkit-transform-origin: 50% 50%;
                -ms-transform-origin: 50% 50%;
                transform-origin: 50% 50%;
                opacity: 0;
            }

            .content_item:hover .content_item-upload,
            .content_item.uploadhover .content_item-upload {
                -webkit-transform: translateY(-50%);
                transform: translateY(-50%);
                opacity: 1;
                -webkit-transition-delay: 0.2s;
                transition-delay: 0.2s;
            }

            .content_item:hover:after,
            .content_item.uploadhover:after {
                -webkit-transform: rotateX(0);
                transform: rotateX(0);
                opacity: 0.9;
            }

        .content_item-info {
            display: flex;
            justify-content: space-around;
            align-items: center;
        }

        .content_item-cash p,
        .content_item-btnprepay p {
            margin: 5px 0;
        }

            .content_item-btnprepay p:first-child {
                background: #e0ebff;
                border-radius: 6px;
                display: flex;
                padding: 5px;
                align-items: center;
            }

        .content_item-cash {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }

            .content_item-cash p:first-child {
                color: var(--orange-color);
            }

            .content_item-cash p:last-child {
                text-decoration-line: line-through;
            }

        .content_item-upload img {
            width: 80%;
            height: 80%;
            object-fit: cover;
        }

        .content_item-upload a {
            box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
            font-size: 18px;
            border-radius: 5px;
            padding: 5px;
            text-decoration: none;
            color: #ffffff;
            background-image: linear-gradient(180deg, #439cfb, #1a6fc9);
        }

        .content_item-star {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            height: 50px;
            color: var(--orange-color);
        }

            .content_item-star i {
                width: 30px;
                height: 30px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="back-to-top-btn"><i class="fas fa-angle-double-up"></i></div>
    <div class="content-width">
        <div class="slideshow">
            <!-- Slideshow Items -->
            <div class="slideshow-items">
                <div class="item">
                    <div class="item-image-container">
                        <img class="item-image"
                            src="https://lh3.googleusercontent.com/PDM4so5H-xsYY5HSJBsHSsyA8NDmyNvTJC6UErdWzI8MeC7qRfc1GkAfTTMLKZWdEmO5vvGz2E8X4GiGtpGkAyZNlVDMhdiV=rw-w1920" />
                    </div>
                </div>
                <div class="item">
                    <div class="item-image-container">
                        <img class="item-image"
                            src="https://lh3.googleusercontent.com/FisZinZH1JdynKDtl8bylPUgZb1xKYHlsY7V78_b_ofMmm4lO49R9FID8G1cNvS0-k093H-iASJ9R3-4V2OSe7S7p3ROtNTe=rw-w1920" />
                    </div>
                </div>
                <div class="item">
                    <div class="item-image-container">
                        <img class="item-image"
                            src="https://lh3.googleusercontent.com/Z_pCcB6RzTgtxi5bCR3f0OXUDia196eV3oWsY0sjOYMdcAD7uDONgvgFM4SQ468BUNmYmyi2p2SsN6o28qBvCeuGp_NgVjj4=rw-w1920" />
                    </div>
                </div>
            </div>
            <div class="controls">
                <ul>
                    <li class="control" data-index="0"></li>
                    <li class="control" data-index="1"></li>
                    <li class="control" data-index="2"></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="carousel">
        <div class="carousel--container">
            <div class="carousel--content" id="carouselContent">
                <div class="box">
                    <img src="https://lh3.googleusercontent.com/tuIfLvEzr9GCn1IeXLnybr1CBjqcoJXWA5-ggATP3ADEDy8J04o3ftlZM71UWsS98DlGEzJUZUmoJJRQi64OFTMS6zCaows=rw-w308" alt="">
                </div>
                <div class="box">
                    <img src="https://lh3.googleusercontent.com/SHfVYa1aVhLLhWUmMY5aayWwmHm9qn8mjGbArFwyQdqBP6NI_9hU6WwHyLrGRNphJkb57Q7PcEhYpFPMXsIsCk0zo0qXxyrf8g=rw-w308" alt="">
                </div>
                <div class="box">
                    <img src="https://lh3.googleusercontent.com/hVCI6AK6CwPkXh8SwBJZaW-qAiEjsNd9rYNhimE-H6pXyt8mG3Ojc0Hicwv4mq49GhzBY3gHonVHiFf0qDT9M8uX5sUjCGmqlg=rw-w308" alt="">
                </div>
                <div class="box">
                    <img src="https://lh3.googleusercontent.com/V5loyhVBRzCe0B78MJlOXixhjktN1k525gPP_zkLgSkuoM7yp0jt_kv8VY6MDRcOv8ViobsGEo2DCsB3WsEXLnfZ6zX2XbEy=rw-w308" alt="">
                </div>
                <div class="box">
                    <img src="https://lh3.googleusercontent.com/tuIfLvEzr9GCn1IeXLnybr1CBjqcoJXWA5-ggATP3ADEDy8J04o3ftlZM71UWsS98DlGEzJUZUmoJJRQi64OFTMS6zCaows=rw-w308" alt="">
                </div>
                <div class="box">
                    <img src="https://lh3.googleusercontent.com/SHfVYa1aVhLLhWUmMY5aayWwmHm9qn8mjGbArFwyQdqBP6NI_9hU6WwHyLrGRNphJkb57Q7PcEhYpFPMXsIsCk0zo0qXxyrf8g=rw-w308" alt="">
                </div>
                <div class="box">
                    <img src="https://lh3.googleusercontent.com/hVCI6AK6CwPkXh8SwBJZaW-qAiEjsNd9rYNhimE-H6pXyt8mG3Ojc0Hicwv4mq49GhzBY3gHonVHiFf0qDT9M8uX5sUjCGmqlg=rw-w308" alt="">
                </div>
                <div class="box">
                    <img src="https://lh3.googleusercontent.com/V5loyhVBRzCe0B78MJlOXixhjktN1k525gPP_zkLgSkuoM7yp0jt_kv8VY6MDRcOv8ViobsGEo2DCsB3WsEXLnfZ6zX2XbEy=rw-w308" alt="">
                </div>
            </div>
            <div class="controls">
                <div class="carousel_btn left" id="carouselLeftBtn">
                    <i class="fas fa-arrow-left"></i>
                </div>
                <div class="carousel_btn right show" id="carouselRightBtn">
                    <i class="fas fa-arrow-right"></i>
                </div>
            </div>
        </div>
    </div>

    <div class="content">
        <h2 class="content_title">SẢN PHẨM NỔI BẬT</h2>
        <div class="content_items">
            <asp:Repeater ID="repeaterItem" runat="server">
                <ItemTemplate>
                    <div class="content_item">
                        <img
                            src="../wwwroot/img/sp/<%# Eval("HINHANH") %>"
                            alt="sq-sample26" />
                        <h5><%# Eval("TENSANPHAM") %></h5>
                        <div class="content_item-info">
                            <div class="content_item-cash">
                                <p><%# Eval("DONGIA","{0:n0}") %></p>
                                <p><%# Eval("DONGIA2", "{0:n0}") %></p>
                            </div>
                            <div class="content_item-btnprepay">
                                <p>Hoặc trả trước</p>
                                <p><%# Eval("DONGIA3","{0:n0}") %></p>
                            </div>
                        </div>
                        <div class="content_item-star">
                            <i class="fas fa-star fa-lg"></i>
                            <i class="fas fa-star fa-lg"></i>
                            <i class="fas fa-star fa-lg"></i>
                            <i class="fas fa-star fa-lg"></i>
                            <i class="far fa-star fa-lg"></i>
                        </div>
                        <div class="content_item-upload">
                            <img
                                src="../wwwroot/img/sp/<%# Eval("HINHANH") %>"
                                alt="">
                            <div><a href="TrangChiTietSanPham.aspx?idSP=<%# Eval("SANPHAMID") %>">Xem chi tiết</a></div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

    <div class="hot-brand">
        <h2>Thương hiệu nổi bật</h2>
        <div class="hot-brand_items">
            <div class="hot-brand_item">
                <img
                    src="https://lh3.googleusercontent.com/IqFtu_Hq7dQkOuTjKwVTjKV5Z1qK3FsuX3yX6Ab30i_yXZ2B1dFs8uQwQ9zgTt3UZts3RnuYx-ujvQW0i5Ox2UDhrqxeehI=rw-w400"
                    alt="">
                <p>ASUS</p>
            </div>
            <div class="hot-brand_item">
                <img
                    src="https://lh3.googleusercontent.com/ETtSZQbBz7e40KCab6Xx1u7Qb_OZFAMb9Z56pLQ_kzy1GeWM0HIlq85hK_2RND8lVGLRN6NErAnxwZrr2A=rw-w400"
                    alt="">
                <p>MSI</p>
            </div>
            <div class="hot-brand_item">
                <img
                    src="https://lh3.googleusercontent.com/4YXRxEqxqmoY8EPliJtNkbcqQCUe4TPTJyAZ_MIsb8JStdwwf3PInwC0SABKuoZiHJC7dJY6Ex1JqS4bpKo=rw-w400"
                    alt="">
                <p>HP</p>
            </div>
            <div class="hot-brand_item">
                <img
                    src="https://lh3.googleusercontent.com/hd3DEc6n0S93NOfh_4jQNnKkDk6D9fv2FPMSCuh-iaZRpn-yIddeGg6Gtff_ma6GE99XFaTsdPfSR_lg4w=rw-w400"
                    alt="">
                <p>LENOVO</p>
            </div>
        </div>
    </div>

    <div class="content">
        <h2 class="content_title">SẢN PHẨM MỚI</h2>
        <div class="content_items">
            <div class="content_item">
                <img
                    src="https://lh3.googleusercontent.com/nrYOo1LSoCcHmqx5RaEfbGxo3eOnrnCulYrJSC5QrY9uB729Vf27fmM1MHwFkuwQuMbvGKe-9mwZdqvaNVXXfdMkpp-UgN4=rw-w300"
                    alt="sq-sample26" />
                <h5>Điện Thoại Di Động iPhone 11 64GB (YELLOW) (MHDE3VN/A)</h5>
                <div class="content_item-info">
                    <div class="content_item-cash">
                        <p>17,890,000 đ</p>
                        <p>25,900,000 đ</p>
                    </div>
                    <div class="content_item-btnprepay">
                        <p>Hoặc trả trước</p>
                        <p>2,580,000 đ</p>
                    </div>
                </div>
                <div class="content_item-star">
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="far fa-star fa-lg"></i>
                </div>
                <div class="content_item-upload">
                    <img
                        src="https://lh3.googleusercontent.com/nrYOo1LSoCcHmqx5RaEfbGxo3eOnrnCulYrJSC5QrY9uB729Vf27fmM1MHwFkuwQuMbvGKe-9mwZdqvaNVXXfdMkpp-UgN4=rw-w300"
                        alt="">
                    <div><a href="#">Xem chi tiết</a></div>
                </div>
            </div>
            <div class="content_item">
                <img
                    src="https://lh3.googleusercontent.com/0u7SrJvZl4ny-KmM4c_jALU9P4pQCLwRV_HEJzJYhWdleAnpEW_bX7QnA4fNnUfPxUeJwtmgl8CKVfsHTRKE9dvB2sWM7cRU=rw-w300"
                    alt="sq-sample26" />
                <h5>Điện thoại di động Samsung Galaxy S21 Ultra 5G (12+128GB) SM-G998BZSDXXV (Silver)</h5>
                <div class="content_item-info">
                    <div class="content_item-cash">
                        <p>12,890,000 đ</p>
                        <p>24,760,000 đ</p>
                    </div>
                    <div class="content_item-btnprepay">
                        <p>Hoặc trả trước</p>
                        <p>4,280,000 đ</p>
                    </div>
                </div>
                <div class="content_item-star">
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star-half-alt fa-lg"></i>
                    <i class="far fa-star fa-lg"></i>
                </div>
                <div class="content_item-upload">
                    <img
                        src="https://lh3.googleusercontent.com/0u7SrJvZl4ny-KmM4c_jALU9P4pQCLwRV_HEJzJYhWdleAnpEW_bX7QnA4fNnUfPxUeJwtmgl8CKVfsHTRKE9dvB2sWM7cRU=rw-w300"
                        alt="">
                    <div><a href="#">Xem chi tiết</a></div>
                </div>
            </div>
            <div class="content_item">
                <img
                    src="https://lh3.googleusercontent.com/VLThRMTuJib3m6gUbhLW09FCHO_c6wQoHpRBqck6T7z72iVHX639frPuDtdj6e4dHD8AzVJM8fRtZGucCY-cb1p1_dzlHrHI_w=rw-w300"
                    alt="sq-sample26" />
                <h5>Điện thoại di động Xiaomi Redmi 10 (4GB/128GB) (Xanh dương) (Blue)</h5>
                <div class="content_item-info">
                    <div class="content_item-cash">
                        <p>19,890,000 đ</p>
                        <p>23,578,000 đ</p>
                    </div>
                    <div class="content_item-btnprepay">
                        <p>Hoặc trả trước</p>
                        <p>3,590,000 đ</p>
                    </div>
                </div>
                <div class="content_item-star">
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="far fa-star fa-lg"></i>
                </div>
                <div class="content_item-upload">
                    <img
                        src="https://lh3.googleusercontent.com/VLThRMTuJib3m6gUbhLW09FCHO_c6wQoHpRBqck6T7z72iVHX639frPuDtdj6e4dHD8AzVJM8fRtZGucCY-cb1p1_dzlHrHI_w=rw-w300"
                        alt="">
                    <div><a href="#">Xem chi tiết</a></div>
                </div>
            </div>
            <div class="content_item">
                <img
                    src="https://lh3.googleusercontent.com/sL3QCe77PBRGp6yamZGSAdwzaK73Jca6jo86U0aIrexUAWAqZhc-qjdNpyl7cubUh2DGqU_6Yhu70g9OZkE=rw-w300" />
                <h5>Điện Thoại Di Động iPhone 11 Pro Max 64GB (Silver)</h5>
                <div class="content_item-info">
                    <div class="content_item-cash">
                        <p>12,890,000 đ</p>
                        <p>18,178,000 đ</p>
                    </div>
                    <div class="content_item-btnprepay">
                        <p>Hoặc trả trước</p>
                        <p>2,580,000 đ</p>
                    </div>
                </div>
                <div class="content_item-star">
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                </div>
                <div class="content_item-upload">
                    <img
                        src="https://lh3.googleusercontent.com/sL3QCe77PBRGp6yamZGSAdwzaK73Jca6jo86U0aIrexUAWAqZhc-qjdNpyl7cubUh2DGqU_6Yhu70g9OZkE=rw-w300"
                        alt="">
                    <div><a href="#">Xem chi tiết</a></div>
                </div>
            </div>
        </div>
    </div>

    <div class="content">
        <h2 class="content_title">DÀNH CHO BẠN</h2>
        <div class="content_items">
            <div class="content_item">
                <img
                    src="https://lh3.googleusercontent.com/g1K1zNStrA7chN3zbeRX-uJD0-zCaeCnpd4ZuYn9SmM2NMXMfySMpI9D0IqP5uYG1Q0GrDXuqzNMWd6taY8h=rw-w300"
                    alt="sq-sample26" />
                <h5>Điện Thoại Di Động iPhone 11 Pro Max 512GB (Midnight Green)</h5>
                <div class="content_item-info">
                    <div class="content_item-cash">
                        <p>17,890,000 đ</p>
                        <p>25,900,000 đ</p>
                    </div>
                    <div class="content_item-btnprepay">
                        <p>Hoặc trả trước</p>
                        <p>2,580,000 đ</p>
                    </div>
                </div>
                <div class="content_item-star">
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="far fa-star fa-lg"></i>
                </div>
                <div class="content_item-upload">
                    <img
                        src="https://lh3.googleusercontent.com/g1K1zNStrA7chN3zbeRX-uJD0-zCaeCnpd4ZuYn9SmM2NMXMfySMpI9D0IqP5uYG1Q0GrDXuqzNMWd6taY8h=rw-w300"
                        alt="">
                    <div><a href="#">Xem chi tiết</a></div>
                </div>
            </div>
            <div class="content_item">
                <img
                    src="https://lh3.googleusercontent.com/nlNWdqQ6aV2m3sg081DJdY4AXO5t0JIxkMQL3-3zKXrCFpUburLSGSjsl0nO8B61wxFfAkWi1zdLISNjUoU=rw-w300"
                    alt="sq-sample26" />
                <h5>Điện Thoại Di Động Samsung Galaxy Z Flip, 256GB (SM-F700FZKDXEV) (Đen)</h5>
                <div class="content_item-info">
                    <div class="content_item-cash">
                        <p>17,890,000 đ</p>
                        <p>25,900,000 đ</p>
                    </div>
                    <div class="content_item-btnprepay">
                        <p>Hoặc trả trước</p>
                        <p>2,580,000 đ</p>
                    </div>
                </div>
                <div class="content_item-star">
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="far fa-star fa-lg"></i>
                </div>
                <div class="content_item-upload">
                    <img
                        src="https://lh3.googleusercontent.com/nlNWdqQ6aV2m3sg081DJdY4AXO5t0JIxkMQL3-3zKXrCFpUburLSGSjsl0nO8B61wxFfAkWi1zdLISNjUoU=rw-w300"
                        alt="">
                    <div><a href="#">Xem chi tiết</a></div>
                </div>
            </div>
            <div class="content_item">
                <img
                    src="https://lh3.googleusercontent.com/u1QKIvDUVTjpUp70egzO_UCNtwZTtQOV3jdaTSr_xe8h36pXxGBlPypF6o00d6JGD-wpYrxK79gvxieYxE7hbotc-N-uhYUT=rw-w300"
                    alt="sq-sample26" />
                <h5>Điện thoại di động Samsung Galaxy S21+ 5G (8+128GB) SM-G996BZVDXXV (Phantom Violet)</h5>
                <div class="content_item-info">
                    <div class="content_item-cash">
                        <p>17,890,000 đ</p>
                        <p>25,900,000 đ</p>
                    </div>
                    <div class="content_item-btnprepay">
                        <p>Hoặc trả trước</p>
                        <p>2,580,000 đ</p>
                    </div>
                </div>
                <div class="content_item-star">
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="far fa-star fa-lg"></i>
                </div>
                <div class="content_item-upload">
                    <img
                        src="https://lh3.googleusercontent.com/u1QKIvDUVTjpUp70egzO_UCNtwZTtQOV3jdaTSr_xe8h36pXxGBlPypF6o00d6JGD-wpYrxK79gvxieYxE7hbotc-N-uhYUT=rw-w300"
                        alt="">
                    <div><a href="#">Xem chi tiết</a></div>
                </div>
            </div>
            <div class="content_item">
                <img
                    src="https://lh3.googleusercontent.com/o8FLozSpltnqAzG8OhICmFD-HoP4bRrJoGgw5LTWr1pn27mcYYkHg1MN4ja_h_1EPL03AX2t612sMgLdwQ=rw-w300"
                    alt="sq-sample26" />
                <h5>Điện Thoại Di Động Samsung Galaxy Z Flip, 256GB (SM-F700FZPDXEV) (Tím)</h5>
                <div class="content_item-info">
                    <div class="content_item-cash">
                        <p>19,890,000 đ</p>
                        <p>23,578,000 đ</p>
                    </div>
                    <div class="content_item-btnprepay">
                        <p>Hoặc trả trước</p>
                        <p>3,590,000 đ</p>
                    </div>
                </div>
                <div class="content_item-star">
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="far fa-star fa-lg"></i>
                </div>
                <div class="content_item-upload">
                    <img
                        src="https://lh3.googleusercontent.com/o8FLozSpltnqAzG8OhICmFD-HoP4bRrJoGgw5LTWr1pn27mcYYkHg1MN4ja_h_1EPL03AX2t612sMgLdwQ=rw-w300"
                        alt="">
                    <div><a href="#">Xem chi tiết</a></div>
                </div>
            </div>
            <div class="content_item">
                <img
                    src="https://lh3.googleusercontent.com/oHrawfIEEvx9mZumGbLQOvayQxdO6-QtER1kGFpu7IIscw4wn8HN2Kee5g8J0VvaKW71kOnb8o1JMBAmG_iy=rw-w300"
                    alt="sq-sample26" />
                <h5>Điện Thoại Di Động iPhone 11 Pro Max 64GB (Gold)</h5>
                <div class="content_item-info">
                    <div class="content_item-cash">
                        <p>12,890,000 đ</p>
                        <p>24,760,000 đ</p>
                    </div>
                    <div class="content_item-btnprepay">
                        <p>Hoặc trả trước</p>
                        <p>4,280,000 đ</p>
                    </div>
                </div>
                <div class="content_item-star">
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star-half-alt fa-lg"></i>
                    <i class="far fa-star fa-lg"></i>
                </div>
                <div class="content_item-upload">
                    <img
                        src="https://lh3.googleusercontent.com/oHrawfIEEvx9mZumGbLQOvayQxdO6-QtER1kGFpu7IIscw4wn8HN2Kee5g8J0VvaKW71kOnb8o1JMBAmG_iy=rw-w300"
                        alt="">
                    <div><a href="#">Xem chi tiết</a></div>
                </div>
            </div>
            <div class="content_item">
                <img
                    src="https://lh3.googleusercontent.com/mfZs3jIDpSFV9z9glX4774Rn8ZUxtkxvm_HZpZzg3hh1L9QeVmCvEnJxPjlnDS0sIF-wZsAhRDVPxguqkes=rw-w300"
                    alt="sq-sample26" />
                <h5>Điện Thoại Di Động Samsung Galaxy Note 10 (Aura Glow)</h5>
                <div class="content_item-info">
                    <div class="content_item-cash">
                        <p>17,890,000 đ</p>
                        <p>25,900,000 đ</p>
                    </div>
                    <div class="content_item-btnprepay">
                        <p>Hoặc trả trước</p>
                        <p>2,580,000 đ</p>
                    </div>
                </div>
                <div class="content_item-star">
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="far fa-star fa-lg"></i>
                </div>
                <div class="content_item-upload">
                    <img
                        src="https://lh3.googleusercontent.com/mfZs3jIDpSFV9z9glX4774Rn8ZUxtkxvm_HZpZzg3hh1L9QeVmCvEnJxPjlnDS0sIF-wZsAhRDVPxguqkes=rw-w300"
                        alt="">
                    <div><a href="#">Xem chi tiết</a></div>
                </div>
            </div>
            <div class="content_item">
                <img
                    src="https://lh3.googleusercontent.com/nrYOo1LSoCcHmqx5RaEfbGxo3eOnrnCulYrJSC5QrY9uB729Vf27fmM1MHwFkuwQuMbvGKe-9mwZdqvaNVXXfdMkpp-UgN4=rw-w300"
                    alt="sq-sample26" />
                <h5>Điện Thoại Di Động iPhone 11 64GB (YELLOW) (MHDE3VN/A)</h5>
                <div class="content_item-info">
                    <div class="content_item-cash">
                        <p>17,890,000 đ</p>
                        <p>25,900,000 đ</p>
                    </div>
                    <div class="content_item-btnprepay">
                        <p>Hoặc trả trước</p>
                        <p>2,580,000 đ</p>
                    </div>
                </div>
                <div class="content_item-star">
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="far fa-star fa-lg"></i>
                </div>
                <div class="content_item-upload">
                    <img
                        src="https://lh3.googleusercontent.com/nrYOo1LSoCcHmqx5RaEfbGxo3eOnrnCulYrJSC5QrY9uB729Vf27fmM1MHwFkuwQuMbvGKe-9mwZdqvaNVXXfdMkpp-UgN4=rw-w300"
                        alt="">
                    <div><a href="#">Xem chi tiết</a></div>
                </div>
            </div>
            <div class="content_item">
                <img
                    src="https://lh3.googleusercontent.com/0u7SrJvZl4ny-KmM4c_jALU9P4pQCLwRV_HEJzJYhWdleAnpEW_bX7QnA4fNnUfPxUeJwtmgl8CKVfsHTRKE9dvB2sWM7cRU=rw-w300"
                    alt="sq-sample26" />
                <h5>Điện thoại di động Samsung Galaxy S21 Ultra 5G (12+128GB) SM-G998BZSDXXV (Silver)</h5>
                <div class="content_item-info">
                    <div class="content_item-cash">
                        <p>12,890,000 đ</p>
                        <p>24,760,000 đ</p>
                    </div>
                    <div class="content_item-btnprepay">
                        <p>Hoặc trả trước</p>
                        <p>4,280,000 đ</p>
                    </div>
                </div>
                <div class="content_item-star">
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star-half-alt fa-lg"></i>
                    <i class="far fa-star fa-lg"></i>
                </div>
                <div class="content_item-upload">
                    <img
                        src="https://lh3.googleusercontent.com/0u7SrJvZl4ny-KmM4c_jALU9P4pQCLwRV_HEJzJYhWdleAnpEW_bX7QnA4fNnUfPxUeJwtmgl8CKVfsHTRKE9dvB2sWM7cRU=rw-w300"
                        alt="">
                    <div><a href="#">Xem chi tiết</a></div>
                </div>
            </div>
            <div class="content_item">
                <img
                    src="https://lh3.googleusercontent.com/tOYCSroTrxfUVxKyLAmKy6udhNGz9lbC5tPbiLebb8xpj33FcedR70TtvUIny9B9pghemh0TWFQscyIsvZzE=rw-w300"
                    alt="sq-sample26" />
                <h5>Điện Thoại Di Động iPhone 12 Pro 256GB Graphite MGMP3VN/A</h5>
                <div class="content_item-info">
                    <div class="content_item-cash">
                        <p>17,890,000 đ</p>
                        <p>25,900,000 đ</p>
                    </div>
                    <div class="content_item-btnprepay">
                        <p>Hoặc trả trước</p>
                        <p>2,580,000 đ</p>
                    </div>
                </div>
                <div class="content_item-star">
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="far fa-star fa-lg"></i>
                </div>
                <div class="content_item-upload">
                    <img
                        src="https://lh3.googleusercontent.com/tOYCSroTrxfUVxKyLAmKy6udhNGz9lbC5tPbiLebb8xpj33FcedR70TtvUIny9B9pghemh0TWFQscyIsvZzE=rw-w300"
                        alt="">
                    <div><a href="#">Xem chi tiết</a></div>
                </div>
            </div>
            <div class="content_item">
                <img
                    src="https://lh3.googleusercontent.com/VLThRMTuJib3m6gUbhLW09FCHO_c6wQoHpRBqck6T7z72iVHX639frPuDtdj6e4dHD8AzVJM8fRtZGucCY-cb1p1_dzlHrHI_w=rw-w300"
                    alt="sq-sample26" />
                <h5>Điện thoại di động Xiaomi Redmi 10 (4GB/128GB) (Xanh dương) (Blue)</h5>
                <div class="content_item-info">
                    <div class="content_item-cash">
                        <p>19,890,000 đ</p>
                        <p>23,578,000 đ</p>
                    </div>
                    <div class="content_item-btnprepay">
                        <p>Hoặc trả trước</p>
                        <p>3,590,000 đ</p>
                    </div>
                </div>
                <div class="content_item-star">
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="far fa-star fa-lg"></i>
                </div>
                <div class="content_item-upload">
                    <img
                        src="https://lh3.googleusercontent.com/VLThRMTuJib3m6gUbhLW09FCHO_c6wQoHpRBqck6T7z72iVHX639frPuDtdj6e4dHD8AzVJM8fRtZGucCY-cb1p1_dzlHrHI_w=rw-w300"
                        alt="">
                    <div><a href="#">Xem chi tiết</a></div>
                </div>
            </div>
            <div class="content_item">
                <img
                    src="https://lh3.googleusercontent.com/sL3QCe77PBRGp6yamZGSAdwzaK73Jca6jo86U0aIrexUAWAqZhc-qjdNpyl7cubUh2DGqU_6Yhu70g9OZkE=rw-w300" />
                <h5>Điện Thoại Di Động iPhone 11 Pro Max 64GB (Silver)</h5>
                <div class="content_item-info">
                    <div class="content_item-cash">
                        <p>12,890,000 đ</p>
                        <p>18,178,000 đ</p>
                    </div>
                    <div class="content_item-btnprepay">
                        <p>Hoặc trả trước</p>
                        <p>2,580,000 đ</p>
                    </div>
                </div>
                <div class="content_item-star">
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                </div>
                <div class="content_item-upload">
                    <img
                        src="https://lh3.googleusercontent.com/sL3QCe77PBRGp6yamZGSAdwzaK73Jca6jo86U0aIrexUAWAqZhc-qjdNpyl7cubUh2DGqU_6Yhu70g9OZkE=rw-w300"
                        alt="">
                    <div><a href="#">Xem chi tiết</a></div>
                </div>
            </div>
            <div class="content_item">
                <img
                    src="https://lh3.googleusercontent.com/2FmiObbgk0SWsh-K9qXcDyqX5JI8VLZyQsp49m4t7BWePqPD-lrz0zxBeR7NkO3BJ5S0SB76FMk29A16MAtAL38ErN9yOzc=rw-w300"
                    alt="sq-sample26" />
                <h5>Điện thoại di động Samsung Galaxy A12 (2021) (4GB/128GB) (Xanh)</h5>
                <div class="content_item-info">
                    <div class="content_item-cash">
                        <p>17,890,000 đ</p>
                        <p>25,900,000 đ</p>
                    </div>
                    <div class="content_item-btnprepay">
                        <p>Hoặc trả trước</p>
                        <p>2,580,000 đ</p>
                    </div>
                </div>
                <div class="content_item-star">
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star fa-lg"></i>
                    <i class="fas fa-star-half-alt fa-lg"></i>
                    <i class="far fa-star fa-lg"></i>
                </div>
                <div class="content_item-upload">
                    <img
                        src="https://lh3.googleusercontent.com/2FmiObbgk0SWsh-K9qXcDyqX5JI8VLZyQsp49m4t7BWePqPD-lrz0zxBeR7NkO3BJ5S0SB76FMk29A16MAtAL38ErN9yOzc=rw-w300"
                        alt="">
                    <div><a href="#">Xem chi tiết</a></div>
                </div>
            </div>
        </div>
    </div>




    <script type="text/javascript">
        const backToTopButton = document.querySelector("#back-to-top-btn");
        window.addEventListener("scroll", scrollFunction);

        function scrollFunction() {
            if (window.pageYOffset > 300) {
                if (!backToTopButton.classList.contains("btnEntrance")) {
                    backToTopButton.classList.remove("btnExit");
                    backToTopButton.classList.add("btnEntrance");
                    backToTopButton.style.display = "block";
                }
            } else {
                if (backToTopButton.classList.contains("btnEntrance")) {
                    backToTopButton.classList.remove("btnEntrance");
                    backToTopButton.classList.add("btnExit");
                    setTimeout(function () {
                        backToTopButton.style.display = "none";
                    }, 250);
                }
            }
        }
        backToTopButton.addEventListener("click", smoothScrollBackToTop);

        function smoothScrollBackToTop() {
            const targetPosition = 0;
            const startPosition = window.pageYOffset;
            const distance = targetPosition - startPosition;
            const duration = 750;
            let start = null;
            window.requestAnimationFrame(step);

            function step(timestamp) {
                if (!start) start = timestamp;
                const progress = timestamp - start;
                window.scrollTo(0, easeInOutCubic(progress, startPosition, distance, duration));
                if (progress < duration) window.requestAnimationFrame(step);
            }
        }

        function easeInOutCubic(t, b, c, d) {
            t /= d / 2;
            if (t < 1) return c / 2 * t * t * t + b;
            t -= 2;
            return c / 2 * (t * t * t + 2) + b;
        };

        (function () {
            var carouselContent = document.querySelector('#carouselContent');
            var carouselLeftBtn = document.querySelector('#carouselLeftBtn');
            var carouselRightBtn = document.querySelector('#carouselRightBtn');
            var carouselLeftValue = 0;
            var totalWidth = carouselContent.getBoundingClientRect().width;
            var widthToMove = 180 + 16 + 180 + 16;
            var arrowBtnWidth = 50;
            var noOfSlide = totalWidth / widthToMove;
            var currentSlide = 1;
            carouselLeftBtn.addEventListener('click', moveCarouselRight);
            carouselRightBtn.addEventListener('click', moveCarouselLeft);
            manageButtons();

            function moveCarouselLeft() {
                if (currentSlide == 1) carouselLeftValue -= widthToMove - arrowBtnWidth;
                else carouselLeftValue -= widthToMove;
                currentSlide++;
                manageButtons();
                carouselContent.style.left = `${carouselLeftValue}px`;
            }

            function moveCarouselRight() {
                if (currentSlide == 2) carouselLeftValue = 8;
                else carouselLeftValue += widthToMove;
                currentSlide--;
                manageButtons();
                carouselContent.style.left = `${carouselLeftValue}px`;
            }

            function manageButtons() {
                if (currentSlide == noOfSlide - 1)
                    carouselRightBtn.classList.remove("show");
                else
                    carouselRightBtn.classList.add("show");
                if (currentSlide == 1)
                    carouselLeftBtn.classList.remove("show");
                else
                    carouselLeftBtn.classList.add("show");
            }
        })();

        // MAIN-CAROUSEL
        const items = document.querySelectorAll('.item'),
            controls = document.querySelectorAll('.control'),
            activeDelay = .76,
            interval = 6000;

        let current = 0;

        const slider = {
            init: () => {
                controls.forEach(control => control.addEventListener('click', (e) => {
                    slider.clickedControl(e)
                }));
                controls[current].classList.add('active');
                items[current].classList.add('active');
            },
            nextSlide: () => { // Increment current slide and add active class
                slider.reset();
                if (current === items.length - 1) current = -1; // Check if current slide is last in array
                current++;
                controls[current].classList.add('active');
                items[current].classList.add('active');
            },
            clickedControl: (e) => {
                slider.reset();
                clearInterval(intervalF);

                const control = e.target,
                    dataIndex = Number(control.dataset.index);

                control.classList.add('active');
                items.forEach((item, index) => {
                    if (index === dataIndex) {
                        item.classList.add('active');
                    }
                })
                current = dataIndex;
                intervalF = setInterval(slider.nextSlide, interval);
            },
            reset: () => { // Remove active classes
                items.forEach(item => item.classList.remove('active'));
                controls.forEach(control => control.classList.remove('active'));
            }
        }
        let intervalF = setInterval(slider.nextSlide, interval);
        slider.init();
    </script>

</asp:Content>

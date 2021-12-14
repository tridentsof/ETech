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
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
        crossorigin="anonymous"></script>
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
            font-size: 20px;
        }

        * {
            margin: 0;
            padding: 0;
        }

        .ChiTietSP__header {
            margin-top: 50px;
        }

        .card-wrapper {
            box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
            max-width: 90%;
            margin: 0 auto;
            border: 1.5px solid #ddd;
            border-radius: 5px;
            padding: 30px 0;
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
            margin-bottom: 5px;
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
            font-size: 28px;
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
            font-size: 22px;
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
            text-transform: capitalize;
            color: #12263a;
            padding-top: 20px;
            font-size: 22px;
        }

        .product-detail li {
            font-size: 20px;
            padding: 3px;
            opacity: 0.8;
        }

        .product-detail ul {
            font-size: 15px;
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
        }

            .purchase-info input,
            .purchase-info .btn {
                border: 1.5px solid #ddd;
                border-radius: 25px;
                text-align: center;
                padding: 0.45rem 0.8rem;
                outline: 0;
                margin-right: 0.2rem;
                margin-bottom: 1rem;
            }

            .purchase-info input {
                width: 60px;
                font-size: 20px;
            }

            .purchase-info .btn {
                cursor: pointer;
                color: #fff;
                font-size: 20px;
                padding: 5px;
                height: 40px;
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
                width: 80%;
                height: 90%;
                object-fit: cover;
                padding-left: 40px;
            }

            .product-content {
                padding-top: 0;
                padding-right: 30px;
            }
        }

        .tabs {
            max-width: 90%;
            margin: 50px auto;
        }

        .nav-tabs {
            display: flex;
            list-style: none;
            margin: 0;
            padding: 0;
            justify-content: space-around;
            font-size: 26px;
        }

            .nav-tabs li {
                margin-right: 10px;
            }

                .nav-tabs li a {
                    display: block;
                    padding: 6px 10px;
                    text-decoration: none;
                    position: relative;
                    color: var(--text-color);
                }

                    .nav-tabs li a:focus {
                        color: var(--primary-color);
                    }

                    .nav-tabs li a::after {
                        content: "";
                        height: 5px;
                        width: 100%;
                        position: absolute;
                        left: 0px;
                        bottom: -3px;
                        background: transparent;
                    }

                .nav-tabs li.ChiTietSP__active a::after,
                .nav-tabs li:hover a::after {
                    background: var(--primary-color);
                }

        .ChiTietSP__active a {
            font-weight: bolder;
        }

        .tab-detail {
            display: flex;
        }

        .ChiTietSP__body-detail,
        .ChiTietSP__body-comment {
            border: 1.5px solid #ddd;
            border-radius: 5px;
            padding: 30px 120px;
            box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
        }

            .ChiTietSP__body-detail h3,
            .ChiTietSP__body-detail h4,
            .ChiTietSP__body-detail img,
            .ChiTietSP__body-detail p {
                margin: 20px;
            }

            .ChiTietSP__body-detail img {
                width: 790px;
                height: 500px;
                object-fit: cover;
            }

            .ChiTietSP__body-detail p {
                font-size: 18px;
            }

        .ChiTietSP__body-comment-1 {
            margin: 20px 0;
            width: 85%;
            display: flex;
            justify-content: space-between;
            border-bottom: 1.5px solid #ddd;
        }

            .ChiTietSP__body-comment-1 b,
            .body-comment-select {
                padding-bottom: 20px;
            }

        .body-comment-select {
            display: flex;
        }

            .body-comment-select h5 {
                margin-right: 5px;
            }

        .ChiTietSP__body-comment-2 {
            display: flex;
            flex-direction: column;
            width: 80%;
            border: 1.5px solid #ddd;
            padding: 20px;
        }

        .ChiTietSP__body-comment-2-p {
            border-bottom: 1.5px solid #ddd;
            padding-bottom: 10px;
        }

        .ChiTietSP__body-comment-2 textarea {
            font-size: 20px;
            width: 100%;
            border: 1.5px solid #ddd;
        }

        .ChiTietSP__body-comment-2-star {
            padding: 10px 0;
        }

        .ChiTietSP__body-comment-2-btn {
            text-align: right;
        }

        .btn-comment {
            background: var(--primary-color);
            color: #fff;
        }

        .btn-comment,
        .btn-cancel {
            font-size: 18px;
            width: 10%;
        }

        .ChiTietSP__body-comment-2-star div,
        .ChiTietSP__body-comment-3-star {
            color: var(--orange-color);
        }

        .ChiTietSP__body-comment-3 {
            width: 79%;
            margin-top: 30px;
            padding: 30px;
            border-top: 1.5px solid #ddd;
            display: flex;
        }

            .ChiTietSP__body-comment-3 img {
                margin-right: 10px;
                width: 8%;
                height: 8%;
                object-fit: cover;
            }

        .ChiTietSP__body-comment-3-star {
            padding: 10px 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="ChiTietSP__header">
        <!-- <div class="ChiTietSP__img"></div> -->
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

    <div class="ChiTietSP__body">
        <div class="tabs">
            <ul class="nav-tabs">
                <li class="ChiTietSP__active"><a href="#menu_1">MÔ TẢ</a></li>
                <li><a href="#menu_2">BÌNH LUẬN</a></li>
            </ul>
            <div class="tab-content">
                <div id="menu_1" class="tab-content-item tab-detail">
                    <div class="ChiTietSP__body-detail">
                        <h3>Đánh giá Điện thoại Iphone 11 Pro Max siêu phẩm cuối năm 2019</h3>
                        <p>
                            Apple chính thức ra mắt điện thoại Iphone 11 Pro Max vào ngày 11/9 với nhiều điểm nhấn đến từ thiết kế.
              Cụm camera mới, bên cạnh đó Apple ra mắt phiên bản chip nhanh nhất hiện nay A13, tích hợp IOS 13 giúp nâng
              cao trải nghiệm người dùng.
                        </p>
                        <img src="https://tmp.phongvu.vn/wp-content/uploads/2019/09/Iphone-11-Pro-Max-51.jpg">
                        <h4>Màn hình tràn viền Super Retina XDR 6.5 inch</h4>
                        <p>
                            Với thiết kế kiểu dáng màn hình mới này có kết cấu không khác Iphone X với hình ảnh tượng trưng "tai thỏ"
              quen thuộc.
                        </p>
                        <p>
                            Thiết kế màn hình OLED Super Retina bên cạnh kiểu dáng tràn viền cao cấp mang đến hình ảnh chân thực hơn
              làm cho mọi thứ trông thật tuyệt vời, trải nghiệm thật thú vị.
                        </p>
                        <p>
                            Một điểm nâng cấp đến từ Iphone 11 Pro và Pro max so với Iphone 11 chính là màn hình tích hợp HDR mang
              đến hình ảnh sắc nét, chân thực vô cùng.
              Tông màu chuẩn xác với khả năng điều chỉnh cân bằng trắng để phù hợp với biên độ màu của ánh sáng xung
              quanh bạn. Lựa chọn phù hợp giúp người dùng có thể dễ nhìn hơn, dễ dùng hơn.
                        </p>
                        <img src="https://tmp.phongvu.vn/wp-content/uploads/2019/09/Iphone-11-Pro-Max-30.jpg">
                        <p>
                            Nhấn hoặc nâng thiết bị lên để đánh thức IPhone của bạn đã sẵn sàng ngay lập tức. Tính năng này giúp
              người dùng sử dụng dễ dàng hơn, tiện lợi hơn và mở máy nhanh hơn tận dụng được những khoảnh khắc chớp
              nhoáng trong cuộc sống.
              Cảm ứng xúc giác mang đến tốc độ phản hồi nhanh hơn. Với các nút chức năng giúp người dùng dễ dàng sử
              dụng, thao tác nhanh và gọn hơn.
                        </p>
                        <h4>Bộ 3 Camera - độc đáo thiết kế mới</h4>
                        <p>
                            Cùng Iphone 11 Pro Max chụp những bức ảnh sắc nét hơn cùng camera 12MP bên cạnh các tinh chỉnh về hình
              ảnh. Kết hợp camera chụp góc siêu rộng Ultra wide mang đến những bức ảnh chụp góc rộng được rõ nét hơn,
              đầy đủ hơn.
                        </p>
                        <p>
                            Camera góc siêu rộng mang đến ống kính với khả năng chụp ảnh góc rộng gấp 4 lần mang đến trải nghiệm chụp
              những bức ảnh phong cảnh tinh tế hơn, góc nhìn rộng hơn. Lưu lại những bức ảnh của những chuyến đi xa đẹp
              hơn, tinh tế hơn nhiều bên cạnh camera Ultra Wide cao cấp.
                        </p>
                        <img src="https://tmp.phongvu.vn/wp-content/uploads/2019/09/Iphone-11-Pro-Max-50.jpg" alt="">
                        <p>
                            Được nâng cấp hơn so với Iphone 11, Iphone 11 Pro và Iphone 11 Pro max được tích hợp thêm 1 camera tele
              có chức năng thu phóng, zoom quang học x2 giúp người dùng có thể dễ dàng tìm hiểu "cuộc sống tí hon" cũng
              như có những bức ảnh chụp khoảng cách xa nét hơn bởi chức năng zoom không làm giảm chất lượng hình ảnh của
              camera tele.
                        </p>
                        <p>
                            Bên cạnh đó khả năng zoom kĩ thuật số trên chiếc camera chụp ảnh của Iphone 11 Pro và Iphone 11 Pro max
              lên tới x5 mang đến những bức ảnh được chụp từ khoảng cách xa nhưng cũng vô cùng chất lượng.
                        </p>
                        <p>
                            Chế độ chụp ảnh ban đêm cao cấp mới mang đến cho người dùng trải nghiệm những bức ảnh trong môi trường
              thiếu sáng 1 cách tinh tế nhất mà không cần sử dụng đèn Flash với màu sắc tự nhiên hơn, chất lượng đẹp
              hơn.
                        </p>
                        <p>
                            Hiệu ứng chụp ảnh chân dung mới kết hợp cùng khả năng chụp xóa phông cao cấp mang đến những bức ảnh chân
              dung hoàn hảo. Cảm nhận rõ ràng qua những bức ảnh chụp chân dung từ 2 đến 4 người bên cạnh khả năng xóa
              phông cao cấp.
                        </p>
                    </div>
                </div>

                <div id="menu_2" class="tab-content-item">
                    <div class="ChiTietSP__body-comment">
                        <div class="ChiTietSP__body-comment-1">
                            <b>1 bình luận</b>
                            <div class="body-comment-select">
                                <h5>Sắp xếp theo</h5>
                                <select>
                                    <option>Cũ nhất</option>
                                    <option>Mới nhất</option>
                                </select>
                            </div>
                        </div>
                        <div class="ChiTietSP__body-comment-2">
                            <p class="ChiTietSP__body-comment-2-p">
                                Sản phẩm:<br>
                                Điện thoại Iphone 11 Pro Max
                            </p>
                            <div class="ChiTietSP__body-comment-2-star">
                                <p>Đánh giá</p>
                                <div>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                            <textarea name="" id="" cols="30" rows="10" placeholder="để lại bình luận..."></textarea>
                            <div class="ChiTietSP__body-comment-2-btn">
                                <button class="btn-comment">Bình luận</button>
                                <button class="btn-cancel">Huỷ</button>
                            </div>
                        </div>
                        <div class="ChiTietSP__body-comment-3">
                            <img
                                src="https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60">
                            <div>
                                <h5>ABC123</h5>
                                <div class="ChiTietSP__body-comment-3-star">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                                <p>Đóng gói cẩn thận. Giao hàng nhanh chóng. Hàng đúng mẫu như hình. Có hỗ trợ bảo hành.</p>
                            </div>
                        </div>
                        <div class="ChiTietSP__body-comment-3">
                            <img
                                src="https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60">
                            <div>
                                <h5>ABC123</h5>
                                <div class="ChiTietSP__body-comment-3-star">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                                <p>Đóng gói cẩn thận. Giao hàng nhanh chóng. Hàng đúng mẫu như hình. Có hỗ trợ bảo hành.</p>
                            </div>
                        </div>
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

        $(document).ready(function () {
            $('.tab-content-item').hide();
            $('.tab-content-item:first-child').fadeIn();
            $('.nav-tabs li').click(function () {
                $('.nav-tabs li').removeClass('ChiTietSP__active')
                $(this).addClass('ChiTietSP__active');
                let id_tab_content = $(this).children('a').attr('href');
                $('.tab-content-item').hide();
                $(id_tab_content).fadeIn();
                return false;
            });
        });
    </script>

</asp:Content>

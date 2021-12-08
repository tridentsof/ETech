<%@ Page Title="" Language="C#" MasterPageFile="~/NCC/MasterPage.Master" AutoEventWireup="true" CodeBehind="YeuCauDanhMuc.aspx.cs" Inherits="ETech.WebApp.NCC.YeuCauDanhMuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        :root {
            --text-color: #333;
            --primary-color: #f15f1b;
            --white-color: #fff;
            --box-shadow: rgba(0, 0, 0, 0.16) 0px 0px 7px;
        }

        body {
            font-size: 16px;
            font-family: 'Roboto', sans-serif;
            background-color: #eee;
        }

        .YCDM__container {
            max-width: 700px;
            margin: 100px 0 0 500px;
            padding: 40px;
        }

        .YCDM__title {
            text-align: center;
            margin-bottom: 50px;
        }

        input[type="text"] {
            color: #333;
            width: 60%;
            box-sizing: border-box;
            font-size: 18px;
        }

        .nav-tabs {
            display: flex;
            list-style: none;
            margin: 0;
            padding: 0;
            border-bottom: 3px solid #ddd;
            justify-content: space-around;
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

                    .nav-tabs li a:active {
                        color: var(--primary-color);
                    }

                    .nav-tabs li a::after {
                        content: "";
                        height: 3px;
                        width: 100%;
                        position: absolute;
                        left: 0px;
                        bottom: -3px;
                        background: transparent;
                    }

                .nav-tabs li.YCDM__active a::after,
                .nav-tabs li:hover a::after {
                    background: var(--primary-color);
                }

        .YCDM__active a {
            font-weight: bold;
        }

        .dangki_danhmuc {
            flex-grow: 1;
            color: var(--text-color);
            font-size: 17px;
            text-decoration: none;
            transition: .3s;
            text-align: right;
        }

            .dangki_danhmuc:hover {
                color: var(--primary-color);
            }

            .dangki_danhmuc .fas {
                margin-right: 5px;
            }

        /* Tab style */
        .table {
            width: 100%;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
            display: table;
            text-align: center;
        }

        .YCDM__row {
            display: table-row;
            background: #f6f6f6;
        }

            .YCDM__row:nth-of-type(odd) {
                background: #e9e9e9;
            }

            .YCDM__row.header {
                font-weight: 900;
                color: #ffffff;
                background: var(--primary-color);
            }

        .cell {
            display: table-cell;
            padding: 6px 12px;
        }

        .YCDM__link {
            text-decoration: none;
            color: var(--text-color);
            margin: 5px;
            font-weight: bold;
        }

            .YCDM__link:hover {
                color: var(--primary-color);
            }

        .tab-content-item {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .tab-content {
            margin-top: 10px;
        }

        .YCDM__box {
            width: 400px;
            display: flex;
            justify-content: space-around;
            align-items: center;
            font-size: 18px;
            margin-bottom: 30px;
        }

            .YCDM__box input {
                height: 35px;
            }

        .YCDM__btn {
            background-color: var(--primary-color);
            width: auto;
            height: auto;
            border: none;
            border-radius: 8px;
            transition: .3s;
            cursor: pointer;
            box-shadow: var(--box-shadow);
            font-size: 15px;
            padding: 10px 20px;
            margin: 0px 0 20px;
            font-weight: 600;
            color: var(--white-color);
        }

            .YCDM__btn:active {
                transform: scale(.8);
            }

        .YCDM__img {
            width: 50px;
            height: 50px;
        }

        .YCDM__wrapper-chooseimg {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 230px;
            margin: 0 0 20px;
        }

        #file-input1 {
            display: none;
        }

        #file-input2 {
            display: none;
        }

        .preview {
            display: flex;
            align-items: center;
            justify-content: space-around;
            flex-direction: column;
            width: 100%;
            max-width: 250px;
            height: 200px;
            margin: 0 30px;
        }

            .preview img {
                width: 200px;
                height: 170px;
                object-fit: fill;
            }

            .preview label {
                font-size: 15px;
                font-weight: 600;
                cursor: pointer;
                color: var(--text-color);
                border-radius: 8px;
                padding: 10px 20px;
                background-color: var(--white-color);
                box-shadow: var(--box-shadow);
                margin-top: 20px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="YCDM__container">
        <h2 class="YCDM__title">DANH SÁCH DANH MỤC</h2>
        <div class="tabs">
            <ul class="nav-tabs">
                <li class="YCDM__active"><a href="#menu_1">YÊU CẦU XOÁ</a></li>
                <li><a href="#menu_2">YÊU CẦU SỬA</a></li>
                <li><a href="#menu_3">YÊU CẦU THÊM</a></li>
            </ul>
            <div class="tab-content">
                <div id="menu_1" class="tab-content-item">
                    <div class="YCDM__box">
                        <p>Tên danh mục</p>
                        <input type="text">
                    </div>
                    <button class="YCDM__btn">Gửi yêu cầu xoá</button>
                    <div class="table">
                        <div class="YCDM__row header">
                            <div class="cell">
                                ID
                            </div>
                            <div class="cell">
                                Tên danh mục
                            </div>
                            <div class="cell">
                                Hình ảnh
                            </div>
                            <div class="cell">
                                Tính năng
                            </div>
                        </div>

                        <div class="YCDM__row">
                            <div class="cell">
                                1
                            </div>
                            <div class="cell">
                                Apple
                            </div>
                            <div class="cell">
                                <img class="YCDM__img" src="../wwwroot/img/icon/apple.png">
                            </div>
                            <div class="cell">
                                <a class="YCDM__link" href="#">Xem chi tiết</a>
                            </div>
                        </div>
                        <div class="YCDM__row">
                            <div class="cell">
                                123
                            </div>
                            <div class="cell">
                                Apple
                            </div>
                            <div class="cell">
                                <img class="YCDM__img" src="../wwwroot/img/icon/apple.png">
                            </div>
                            <div class="cell">
                                <a class="YCDM__link" href="#">Xem chi tiết</a>
                            </div>
                        </div>
                        <div class="YCDM__row">
                            <div class="cell">
                                1
                            </div>
                            <div class="cell">
                                Apple
                            </div>
                            <div class="cell">
                                <img class="YCDM__img" src="../wwwroot/img/icon/apple.png">
                            </div>
                            <div class="cell">
                                <a class="YCDM__link" href="#">Xem chi tiết</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="menu_2" class="tab-content-item">
                    <div class="YCDM__wrapper-chooseimg">
                        <div class="YCDM__box">
                            <p>Tên danh mục</p>
                            <input type="text">
                        </div>
                        <div class="preview">
                            <img id="img-preview1" />
                            <label for="file-input1">Choose Image</label>
                            <input accept="image/*" type="file" id="file-input1" />
                        </div>
                    </div>
                    <button class="YCDM__btn">Gửi yêu cầu sửa</button>
                    <div class="table">
                        <div class="YCDM__row header">
                            <div class="cell">
                                ID
                            </div>
                            <div class="cell">
                                Tên danh mục
                            </div>
                            <div class="cell">
                                Hình ảnh
                            </div>
                            <div class="cell">
                                Tính năng
                            </div>
                        </div>

                        <div class="YCDM__row">
                            <div class="cell">
                                1
                            </div>
                            <div class="cell">
                                Apple
                            </div>
                            <div class="cell">
                                <img class="YCDM__img" src="../wwwroot/img/icon/apple.png">
                            </div>
                            <div class="cell">
                                <a class="YCDM__link" href="#">Xem chi tiết</a>
                            </div>
                        </div>
                        <div class="YCDM__row">
                            <div class="cell">
                                123
                            </div>
                            <div class="cell">
                                Apple
                            </div>
                            <div class="cell">
                                <img class="YCDM__img" src="../wwwroot/img/icon/apple.png">
                            </div>
                            <div class="cell">
                                <a class="YCDM__link" href="#">Xem chi tiết</a>
                            </div>
                        </div>
                        <div class="YCDM__row">
                            <div class="cell">
                                1
                            </div>
                            <div class="cell">
                                Apple
                            </div>
                            <div class="cell">
                                <img class="YCDM__img" src="../wwwroot/img/icon/apple.png">
                            </div>
                            <div class="cell">
                                <a class="YCDM__link" href="#">Xem chi tiết</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="menu_3" class="tab-content-item">

                    <div class="YCDM__wrapper-chooseimg">
                        <div class="YCDM__box">
                            <p>Tên danh mục</p>
                            <input type="text">
                        </div>
                        <div class="preview">
                            <img id="img-preview2" />
                            <label for="file-input2">Choose Image</label>
                            <input accept="image/*" type="file" id="file-input2" />
                        </div>
                    </div>
                    <button class="YCDM__btn">Gửi yêu cầu thêm</button>
                    <div class="table">
                        <div class="YCDM__row header">
                            <div class="cell">
                                ID
                            </div>
                            <div class="cell">
                                Tên danh mục
                            </div>
                            <div class="cell">
                                Hình ảnh
                            </div>
                            <div class="cell">
                                Tính năng
                            </div>
                        </div>

                        <div class="YCDM__row">
                            <div class="cell">
                                1
                            </div>
                            <div class="cell">
                                Apple
                            </div>
                            <div class="cell">
                                <img class="YCDM__img" src="../wwwroot/img/icon/apple.png">
                            </div>
                            <div class="cell">
                                <a class="YCDM__link" href="#">Xem chi tiết</a>
                            </div>
                        </div>
                        <div class="YCDM__row">
                            <div class="cell">
                                123
                            </div>
                            <div class="cell">
                                Apple
                            </div>
                            <div class="cell">
                                <img class="YCDM__img" src="../wwwroot/img/icon/apple.png">
                            </div>
                            <div class="cell">
                                <a class="YCDM__link" href="#">Xem chi tiết</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        const input1 = document.getElementById('file-input1');
        const image1 = document.getElementById('img-preview1');
        const input2 = document.getElementById('file-input2');
        const image2 = document.getElementById('img-preview2');

        input1.addEventListener('change', (e) => {
            if (e.target.files.length) {
                const src = URL.createObjectURL(e.target.files[0]);
                image1.src = src;
            }
        });

        input2.addEventListener('change', (e) => {
            if (e.target.files.length) {
                const src = URL.createObjectURL(e.target.files[0]);
                image2.src = src;
            }
        });

        $(document).ready(function () {
            $('.tab-content-item').hide();
            $('.tab-content-item:first-child').fadeIn();
            $('.nav-tabs li').click(function () {
                $('.nav-tabs li').removeClass('YCDM__active')
                $(this).addClass('YCDM__active');

                let id_tab_content = $(this).children('a').attr('href');
                $('.tab-content-item').hide();
                $(id_tab_content).fadeIn();

                return false;
            });
        });
    </script>
</asp:Content>

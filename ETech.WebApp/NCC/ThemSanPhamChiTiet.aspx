<%@ Page Title="" Language="C#" MasterPageFile="~/NCC/MasterPage.Master" AutoEventWireup="true" CodeBehind="ThemSanPhamChiTiet.aspx.cs" Inherits="ETech.WebApp.NCC.ThemSanPhamChiTiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        :root {
            --primary-color: #f15f1b;
            --background-color: #FFEEE6;
            --BG-sidebar: #fff;
            --black-color: #333;
            --white-color: #fff;
            --gray-color: #808080;
            --box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px 6px;
        }

        * {
            font-family: 'Roboto', sans-serif;
            font-size: 16px;
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        .QLSPchitiet__container {
            border-radius: 10px;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
            width: 45%;
            margin: 100px 0 20px 550px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            padding: 30px;
            background-color: #fff;
        }

            .QLSPchitiet__container h2 {
                padding: 10px;
                font-size: 20px;
            }

        .QLSPchitiet__input,
        .QLSPchitiet__img,
        .QLSPchitiet__title,
        .QLSPchitiet__description {
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1.5px solid #ddd;
            padding: 5px;
        }

            .QLSPchitiet__input p,
            .QLSPchitiet__img p,
            .QLSPchitiet__description p {
                padding: 5px;
                margin: 5px;
            }

            .QLSPchitiet__input input,
            .QLSPchitiet__description textarea,
            .QLSPchitiet__input select {
                width: 50%;
                border: 1.5px solid #ddd;
                border-radius: 5px;
                overflow: auto;
                margin: 10px 0;
                font-size: 18px;
            }

            .QLSPchitiet__input input,
            .QLSPchitiet__input select {
                height: 35px;
            }

        #file-input {
            display: none;
        }

        .preview {
            display: flex;
            align-items: center;
            justify-content: space-between;
            width: 50%;
        }

            .preview img {
                width: 112.05px;
                height: 100px;
                object-fit: fill;
            }

            .preview label {
                font-size: 15px;
                font-weight: 600;
                cursor: pointer;
                color: var(--text-color);
                border-radius: 5px;
                padding: 5px 10px;
                background-color: var(--white-color);
                box-shadow: rgba(0, 0, 0, 0.16) 0px 1px 4px;
            }

        .QLSPchitiet__btn {
            margin-top: 10px;
            padding: 10px;
        }

            .QLSPchitiet__btn button {
                padding: 5px 10px;
                background-color: var(--primary-color);
                color: #fff;
                border: none;
                border-radius: 5px;
                box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
                transition: .3s;
            }

                .QLSPchitiet__btn button:hover {
                    cursor: pointer;
                }

                .QLSPchitiet__btn button:active {
                    transform: scale(.8);
                }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="QLSPchitiet__container">
        <h2>THÊM SẢN PHẨM</h2>
        <div class="QLSPchitiet__input">
            <p>Tên sản phẩm</p>
            <input type="text">
        </div>
        <div class="QLSPchitiet__input">
            <p>Giá tiền</p>
            <input type="text">
        </div>
        <div class="QLSPchitiet__input">
            <p>Số lượng</p>
            <input type="text">
        </div>
        <div class="QLSPchitiet__input">
            <p>Danh mục</p>
            <select name="" id="">
                <option value="">Điện thoại</option>
                <option value="">Máy tính</option>
                <option value="">Khác</option>
            </select>
        </div>
        <div class="QLSPchitiet__description">
            <p>Thông số kỹ thuật</p>
            <textarea name="" id="" rows="3"></textarea>
        </div>
        <div class="QLSPchitiet__description">
            <p>Khuyến mãi liên quan</p>
            <textarea name="" id="" rows="3"></textarea>
        </div>
        <div class="QLSPchitiet__description">
            <p>Mô tả</p>
            <textarea name="" id="" rows="3"></textarea>
        </div>
        <div class="QLSPchitiet__img">
            <p>Thêm hình ảnh</p>
            <div class="preview">
                <label for="file-input">Choose Image</label>
                <img src="#" id="img-preview" />
                <input accept="image/*" type="file" id="file-input" />
            </div>
        </div>
        <div class="QLSPchitiet__btn">
            <button>THÊM SẢN PHẨM</button>
        </div>
    </div>

    <script type="text/javascript">
        const input = document.getElementById('file-input');
        const image = document.getElementById('img-preview');

        input.addEventListener('change', (e) => {
            if (e.target.files.length) {
                const src = URL.createObjectURL(e.target.files[0]);
                image.src = src;
            }
        });
    </script>

</asp:Content>

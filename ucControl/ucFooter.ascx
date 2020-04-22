<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucFooter.ascx.cs" Inherits="FlodaStore.ucControl.ucFooter" %>

<footer>
    <div class="contact">
        <h3>liên hệ
        </h3>
        <ul>
            <li class="contact-items">
                <a href="#">
                    <i class="fa fa-map-marker"></i>
                    <span>Địa chỉ : 201 Đường 30/4 , Phú Hòa , Thủ Dầu Một, Bình Dương
                    </span>
                </a>
            </li>
            <li class="contact-items">
                <a href="#">
                    <i class="fa fa-phone"></i>
                    <span>Điện thoại : (+84) 900 135 791
                    </span>
                </a>
            </li>
            <li class="contact-items">
                <a href="#">
                    <i class="fa fa-envelope"></i>
                    <span>Email : flodastore@gmail.com
                    </span>
                </a>
            </li>
        </ul>
    </div>
    <div class="category">
        <h3>danh mục
        </h3>
        <ul>
            <li class="category-items">
                <a href="#">
                    Hoa cưới
                </a>
            </li>
            <li class="category-items">
                <a href="#">
                    Hoa Sale
                </a>
            </li>
            <li class="category-items">
                <a href="#">
                    Hoa Tựu Trường
                </a>
            </li>
            <li class="category-items">
                <a href="#">
                    Hoa Valentine
                </a>
            </li>
            <li class="category-items">
                <a href="#">
                    Hoa 8/3
                </a>
            </li>
        </ul>
    </div>
    <div class="tabble-of-content">
        <h3>mục lục
        </h3>
        <ul>
            <li class="tabble-of-content-items">
                <a href="#">
                    trang chủ
                </a>
            </li>
            <li class="tabble-of-content-items">
                <a href="#">
                    giới thiệu
                </a>
            </li>
            <li class="tabble-of-content-items">
                <a href="#">
                    liên hệ
                </a>
            </li>
            <li class="tabble-of-content-items">
                <a href="#">
                    giao dịch
                </a>
            </li>
            <li class="tabble-of-content-items">
                <a href="#">
                    vận chuyển
                </a>
            </li>
        </ul>
    </div>
    <div class="link">
        <h3>liên kết
        </h3>
        <ul>
            <li class="link-items">
                <a href="#">
                    tài khoản
                </a>
            </li>
            <li class="link-items">
                <a href="">
                    địa chỉ cửa hàng
                </a>
            </li>
            <li class="link-items">
                <a href="">
                    theo dõi đơn hàng
                </a>
            </li>
            <li class="link-items">
                <a href="">
                    hướng dẫn
                </a>
            </li>
            <li class="link-items">
                <a href="">
                    liên hệ
                </a>
            </li>
        </ul>
    </div>
    <!-- Hiệu ứng thời tiết -->
    <div class="snowflakes" aria-hidden="true">
        <div class="snowflake">
            ❅
        </div>
        <div class="snowflake">
            ❆
        </div>
        <div class="snowflake">
            ❅
        </div>
        <div class="snowflake">
            ❆
        </div>
        <div class="snowflake">
            ❅
        </div>
        <div class="snowflake">
            ❆
        </div>
        <div class="snowflake">
            ❅
        </div>
        <div class="snowflake">
            ❆
        </div>
        <div class="snowflake">
            ❅
        </div>
        <div class="snowflake">
            ❆
        </div>
        <div class="snowflake">
            ❅
        </div>
        <div class="snowflake">
            ❆
        </div>
    </div>
</footer>
<div id="finally">
    <span>coppy right &copy all right reserved
    </span>
</div>
<script type="text/javascript">
            $(document).ready(function () {
                $("#carousel").slick({
                    fade: true,
                    autoplay: true,
                    autoplaySpeed: 2500,
                    swipeToSlide: true,
                    speed: 2000,
                    pauseOnHover: false
                });

                $("#for-you").slick({
                    autoplay: true,
                    autoplaySpeed: 3000,
                    speed: 3000,
                    swipeToSlide: true,
                    pauseOnHover: false
                });
            });
</script>
<script src="../js/Script.js"></script>

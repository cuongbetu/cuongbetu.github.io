<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="FlodaStore.ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <main>
        <div id="barClose">
            <button title="Close (Esc)" id="closeNav" type="button" class="mfp-close">×</button>
        </div>
        <div class="page-title">
            <div class="page-title-sub">
                <div class="left-title">
                    <a href="">Trang Chủ</a>
                    <span class="b">/</span>
                    <span>Hoa Của Mẹ</span>
                </div>
                <div class="right-select">
                    <div id="animation-sidebar" class="navbar-icon">
                        <i class="fa fa-bars"></i>
                        <strong>Lọc</strong>
                    </div>
                </div>
                <div class="filter">
                    <span>Hiển thị một kết quả duy nhất
                    </span>
                    <select name="" id="">
                        <option value="">Thứ Tự Mặc Định</option>
                        <option value="">Thứ Tự Mặc Định 2</option>
                        <option value="">Thứ Tự Mặc Định 3</option>
                        <option value="">Thứ Tự Mặc Định 4</option>
                        <option value="">Thứ Tự Mặc Định 5</option>
                    </select>
                </div>
            </div>
            <div class="product-akali">
                <div id="mySidenav" class="sidenav">
                    <div class="wraper">
                        <aside class="first-aside">
                            <span class="title-bar">Danh Mục Sản Phẩm</span>
                            <a href="#">Hoa Cưới</a>
                            <a href="#">Hoa Valentine</a>
                            <a href="#">Hoa Tựu Trường</a>
                            <a href="#">Hoa Của Mẹ</a>
                        </aside>
                        <aside>
                            <span class="title-bar">Sản Phẩm</span>
                            <ul>
                                <li class="table">
                                    <img src="./Images/product/hinh-san-pham (1).jpg" alt="">
                                    <a class="flex-li" href="">
                                        <span class="aa">Hoa tu líp</span>
                                        <div class="price-side">
                                            <del><span>250.000đ</span></del>
                                            <ins><span>150.000đ</span></ins>
                                        </div>
                                    </a>
                                </li>
                                <li class="table">
                                    <img src="./Images/product/hinh-san-pham (10).jpg" alt="">
                                    <a class="flex-li" href="">
                                        <span class="aa">Hoa tu líp</span>
                                        <div class="price-side">
                                            <del><span>250.000đ</span></del>
                                            <ins><span>150.000đ</span></ins>
                                        </div>
                                    </a>
                                </li>
                                <li class="table">
                                    <img src="./Images/product/hinh-san-pham (11).jpg" alt="">
                                    <a class="flex-li" href="">
                                        <span class="aa">Hoa tu líp</span>
                                        <div class="price-side">
                                            <del><span>250.000đ</span></del>
                                            <ins><span>150.000đ</span></ins>
                                        </div>
                                    </a>
                                </li>
                                <li class="table">
                                    <img src="./Images/product/hinh-san-pham (12).jpg" alt="">
                                    <a class="flex-li" href="">
                                        <span class="aa">Hoa tu líp</span>
                                        <div class="price-side">
                                            <del><span>250.000đ</span></del>
                                            <ins><span>150.000đ</span></ins>
                                        </div>
                                    </a>
                                </li>
                                <li class="table">
                                    <img src="./Images/product/hinh-san-pham (14).jpg" alt="">
                                    <a class="flex-li" href="">
                                        <span class="aa">Hoa tu líp</span>
                                        <div class="price-side">
                                            <del><span>250.000đ</span></del>
                                            <ins><span>150.000đ</span></ins>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </aside>
                    </div>
                </div>
                <div id="product">
                    <div class="title">
                        <h1 class="text-divider">danh sách sản phẩm
                        </h1>
                    </div>
                    <div class="product-list">
                        <div class="product-items">
                            <a href="#" class="image">
                                <img src="./Images/product/hinh-san-pham (1).jpg" alt="">
                            </a>
                            <div class="product-infor">
                                <h3 class="title">Have A Nice Day
                                </h3>
                                <span class="old-price">240.000 VNĐ
                                </span>
                                <span class="new-price">200.000 VNĐ
                                </span>
                            </div>
                        </div>
                        <div class="product-items">
                            <a href="#" class="image">
                                <img src="./Images/product/hinh-san-pham (2).jpg" alt="">
                            </a>
                            <div class="product-infor">
                                <h3 class="title">Have A Nice Day
                                </h3>
                                <span class="old-price">240.000 VNĐ
                                </span>
                                <span class="new-price">200.000 VNĐ
                                </span>
                            </div>
                        </div>
                        <div class="product-items">
                            <a href="#" class="image">
                                <img src="./Images/product/hinh-san-pham (3).jpg" alt="">
                            </a>
                            <div class="product-infor">
                                <h3 class="title">Have A Nice Day
                                </h3>
                                <span class="old-price">240.000 VNĐ
                                </span>
                                <span class="new-price">200.000 VNĐ
                                </span>
                            </div>
                        </div>
                        <div class="product-items">
                            <a href="#" class="image">
                                <img src="./Images/product/hinh-san-pham (4).jpg" alt="">
                            </a>
                            <div class="product-infor">
                                <h3 class="title">Have A Nice Day
                                </h3>
                                <span class="old-price">240.000 VNĐ
                                </span>
                                <span class="new-price">200.000 VNĐ
                                </span>
                            </div>
                        </div>
                        <div class="product-items">
                            <a href="#" class="image">
                                <img src="./Images/product/hinh-san-pham (5).jpg" alt="">
                            </a>
                            <div class="product-infor">
                                <h3 class="title">Have A Nice Day
                                </h3>
                                <span class="old-price">240.000 VNĐ
                                </span>
                                <span class="new-price">200.000 VNĐ
                                </span>
                            </div>
                        </div>
                        <div class="product-items">
                            <a href="#" class="image">
                                <img src="./Images/product/hinh-san-pham (6).jpg" alt="">
                            </a>
                            <div class="product-infor">
                                <h3 class="title">Have A Nice Day
                                </h3>
                                <span class="old-price">240.000 VNĐ
                                </span>
                                <span class="new-price">200.000 VNĐ
                                </span>
                            </div>
                        </div>
                        <div class="product-items">
                            <a href="#" class="image">
                                <img src="./Images/product/hinh-san-pham (7).jpg" alt="">
                            </a>
                            <div class="product-infor">
                                <h3 class="title">Have A Nice Day
                                </h3>
                                <span class="old-price">240.000 VNĐ
                                </span>
                                <span class="new-price">200.000 VNĐ
                                </span>
                            </div>
                        </div>
                        <div class="product-items">
                            <a href="#" class="image">
                                <img src="./Images/product/hinh-san-pham (8).jpg" alt="">
                            </a>
                            <div class="product-infor">
                                <h3>Have A Nice Day
                                </h3>
                                <div class="price">
                                    <span class="old-price">240.000 VNĐ
                                    </span>
                                    <span class="new-price">200.000 VNĐ
                                    </span>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="see-more-product">
                        <a href="#">
                            xem thêm sản phẩm
                        </a>
                    </div>
                </div>
            </div>
        </div>

    </main>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>

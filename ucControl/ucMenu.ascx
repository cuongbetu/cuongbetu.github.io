<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucMenu.ascx.cs" Inherits="FlodaStore.ucControl.ucMenu" %>

<div id="top">
    <span>Welcome to Floda online store
    </span>
    <div class="language">
        <a href="#">
            Languages<i class="fa fa-angle-down"></i>
        </a>
    </div>
    <div class="fb-insta-skype">
        <a href="#" class="fb-insta-skype-item">
            <i class="fa fa-facebook-f"></i>
        </a>
        <a href="#" class="fb-insta-skype-item">
            <i class="fa fa-instagram"></i>
        </a>
        <a href="#" class="fb-insta-skype-item">
            <i class="fa fa-twitter"></i>
        </a>
    </div>
</div>
<hr>
<header>
    <div class="logo">
        <a href="Default.aspx">Floda</a>
    </div>
    <div class="menu">
        <div class="menu-item">
            <a href="Default.aspx">TRANG CHỦ</a>
        </div>
        <div class="menu-item">
            <a href="#">GIỚI THIỆU</a>
        </div>
        <asp:Repeater ID="Repeater_Main" runat="server">
            <ItemTemplate>
                <div class="dropdown">
                    <div class="menu-item">
                        <%# Eval("Title") %> <i class="fa fa-angle-down"></i>
                    </div>
                    <div class="dropdown-content">
                        <asp:Repeater ID="Repeater_Sub" DataSource='<%#Eval("subMenu") %>' runat="server">
                            <ItemTemplate>
                                <a href='ProductList.aspx?id={0},<%#Eval("ProductCategoryID") %>'>
                                    <%# Eval("Title") %>
                                </a>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <div class="menu-item">
            <a href="Contact.aspx">LIÊN HỆ</a>
        </div>
    </div>
    <div class="icon">
        <div class="icont-item search-dropdown">
            <a class="search" href="#"><i class="fa fa-search"></i></a>
            <div class="search-dropdown-content">
                <div class="input">
                    <input runat="server" id="input_Search" type="text" placeholder="Tìm kiếm...">
                </div>
                <div class="search-icon">
                    <asp:LinkButton runat="server" id="LinkButton_Search" OnClick="LinkButton_Search_Click">
                        <i class="fa fa-search"></i>
                        </asp:LinkButton>
                </div>
            </div>
        </div>
        <div class="icon-item">
            <a href="#"><i class="fa fa-heart"></i></a>
        </div>
        <div class="icon-item">
            <a href="#"><i class="fa fa-user"></i></a>
        </div>
        <div class="icon-item shopping-cart-dropdown">
            <a href="#"><i class="fa fa-shopping-cart"></i></a>
            <div class="shopping-cart-dropdown-content">
                <span>Chưa có sản phẩm nào trong giỏ hàng.</span>
            </div>
        </div>
    </div>
</header>
<div id="header-respon">
    <div class="logo" onclick="showNav()">
        <i class="fa fa-bars"></i>
    </div>
    <div class="brand">
        <span>Floda
        </span>
    </div>
    <div class="shopping-cart">
        <i class="fa fa-shopping-cart" onclick="showShoppingCart()"></i>
    </div>
</div>
<div id="nav">
    <ul class="nav-container">
        <li class="close" onclick="closeNav()">
            <i class="fa fa-times">
            </i>
        </li>
        <li class="nav-item search-container">
            <input type="text">
            <div class="search-icon"><i class="fa fa-search"></i></div>
        </li>
        <li class="nav-item">
            <span>TRANG CHỦ</span>
        </li>
        <li class="nav-item nav-dropdown">
            <span>CỬA HÀNG</span>
            <div class="angle-down" onclick="navFunction()">
                <i class="fa fa-angle-down"></i>
            </div>
            <ul class="nav-dropdown-content" id="jsDropdown">
                <li>
                    <a href="#">
                        Hoa của mẹ
                    </a>
                </li>
                <li>
                    <a href="#">
                        Hoa cưới
                    </a>
                </li>
                <li>
                    <a href="#">
                        Hoa Sale
                    </a>
                </li>
                <li>
                    <a href="#">
                        Hoa Valentine
                    </a>
                </li>
            </ul>
        </li>
        <li class="nav-item">
            <span>
                <a href="#">
                    TIN TỨC
                </a>
            </span>
        </li>
        <li class="nav-item">
            <span>
                <a href="contact.html">
                    LIÊN HỆ
                </a>
            </span>
        </li>
    </ul>
</div>
<div id="shopping-cart">
    <div class="shopping-cart-container">
        <div class="close">
            <i class="fa fa-times" onclick="closeShoppingCart()"></i>
        </div>
        <div class="title">
            <h2>GIỎ HÀNG</h2>
        </div>
        <hr>
        <div class="shopping-cart-list">
            <ul>
            </ul>
        </div>
    </div>
</div>

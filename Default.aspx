<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FlodaStore.Default" %>

<%@ Register Src="~/ucControl/ucCarousel.ascx" TagPrefix="uc1" TagName="ucCarousel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <main>
        <uc1:ucCarousel runat="server" id="ucCarousel" />

        <div id="introduce">
            <div class="introduce-sale">
                <div class="introduce-sale-items">
                    <img src="../Images/Flower Love.jpg" alt="">
                    <div class="introduce-sale-items-cover">
                        <label>
                            valentine day
                        </label>
                        <br>
                        <span>xanh sea
                        </span>
                        <div class="get-it-now">
                            mua ngay
                            <hr color="brown">
                        </div>
                    </div>
                </div>
                <div class="introduce-sale-items">
                    <img src="../Images/Hottest 7 Spring Wedding Flowers to Rock Your Big Day.jpg" alt="">
                    <div class="introduce-sale-items-cover">
                        <label>
                            teacher's day
                        </label>
                        <br>
                        <span>vàng yellow
                        </span>
                        <div class="get-it-now">
                            mua ngay
                            <hr color="brown">
                        </div>
                    </div>
                </div>
                <div class="introduce-sale-items">
                    <img src="../Images/Casar durante a primavera é muito conveniente se….jpg" alt="">
                    <div class="introduce-sale-items-cover">
                        <label>
                            women's day
                        </label>
                        <br>
                        <span>hồng pinky
                        </span>
                        <div class="get-it-now">
                            mua ngay
                            <hr color="brown">
                        </div>
                    </div>
                </div>
            </div>
            <div class="introduce-method">
                <div class="introduce-method-items">
                    <div class="icon">
                        <img src="https://img.icons8.com/ultraviolet/45/000000/free-shipping.png" />
                    </div>
                    <div class="content">
                        <label>
                            miễn phí vận chuyển
                        </label>
                        <span>miễn phí tất cả đơn hàng
                        </span>
                    </div>
                </div>
                <div class="introduce-method-items">
                    <div class="icon">
                        <img src="https://img.icons8.com/bubbles/45/000000/online-support.png" />
                    </div>
                    <div class="content">
                        <label>
                            hỗ trợ 24/7
                        </label>
                        <span>hỗ trợ 24 giờ một ngày
                        </span>
                    </div>
                </div>
                <div class="introduce-method-items">
                    <div class="icon">
                        <img src="https://img.icons8.com/cotton/40/000000/receive-change.png" />
                    </div>
                    <div class="content">
                        <label>
                            hoàn tiền
                        </label>
                        <span>hoàn tiền trong 30 ngày
                        </span>
                    </div>
                </div>
                <div class="introduce-method-items">
                    <div class="icon">
                        <img src="https://img.icons8.com/clouds/45/000000/sales-performance.png" />
                    </div>
                    <div class="content">
                        <label>
                            giảm giá
                        </label>
                        <span>với đơn hàng trên 1 triệu
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <div id="product-main">
            <div class="title">
                <h1 class="text-divider">sản phẩm mới
                </h1>
                <span>sản phẩm mới, ý tưởng mới, phong cách mới, vẻ đẹp mới
                </span>
            </div>
            <div class="product-list">
                <asp:Repeater ID="Repeater_ProductList" runat="server">
                    <ItemTemplate>
                        <div class="product-items">
                            <a href='<%# Eval("ProductID","/ProductDetail.aspx?id={0}")%>' class="image">
                                <img runat="server" src='<%# Eval("Avatar") %>' alt="">
                            </a>
                            <div class="product-infor">
                                <h3 class="title">
                                    <%# Eval("Title") %>
                                </h3>
                                <span class="old-price"><%# Eval("OldPrice","{0:0,00}") %> VNĐ
                                </span>
                                <span class="new-price"><%# Eval("Price","{0:0,00}") %> VNĐ
                                </span>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <%--<div class="product-items">
                    <a href="#" class="image">
                        <img src="../Images/product/hinh-san-pham (2).jpg" alt="">
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
                        <img src="../Images/product/hinh-san-pham (3).jpg" alt="">
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
                        <img src="../Images/product/hinh-san-pham (4).jpg" alt="">
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
                        <img src="../Images/product/hinh-san-pham (5).jpg" alt="">
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
                        <img src="../Images/product/hinh-san-pham (6).jpg" alt="">
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
                        <img src="../Images/product/hinh-san-pham (7).jpg" alt="">
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
                        <img src="../Images/product/hinh-san-pham (8).jpg" alt="">
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
                </div>--%>
            </div>
            <div class="see-more-product">
                <a href="/ProductList.aspx">
                    xem thêm sản phẩm
                </a>
            </div>
        </div>
        <div id="for-you">
            <div class="items" alt="">
                <h1>floda store xin chào quí khách !
                </h1>
            </div>
            <div class="items" alt="">
                <h1>floda store nơi xứng đáng để bạn đặt niềm tin
                </h1>
            </div>
            <div class="items">
                <h1>hãy gửi tặng đến cô gái của mình những bó hoa đẹp nhất
                </h1>
            </div>
        </div>
        <div id="product-best-seller">
            <div class="title">
                <h1 class="text-divider">sản phẩm bán chạy nhất
                </h1>
                <span>những sản phẩm hàng đầu của cửa hàng
                </span>
            </div>
            <div class="product-list">
                <asp:Repeater ID="Repeater_Best_Seller" runat="server">
                    <ItemTemplate>
                        <div class="product-items">
                            <a href='<%# Eval("ProductID","/ProductDetail.aspx?id={0}") %>' class="image">
                                <img runat="server" src='<%# Eval("Avatar") %>' alt="">
                            </a>
                            <div class="product-infor">
                                <h3 class="title"><%# Eval("Title") %>
                                </h3>
                                <span class="old-price"><%# Eval("OldPrice","{0:0,00}") %> VNĐ
                                </span>
                                <span class="new-price"><%# Eval("OldPrice","{0:0,00}") %> VNĐ
                                </span>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
               
            </div>
        </div>
    </main>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>

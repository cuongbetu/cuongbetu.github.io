<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="FlodaStore.ProductDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <main>
        <div class="detail-container">
            <div class="container">
                <asp:Repeater ID="Repeater_Detail" runat="server">
                    <ItemTemplate>
                        <div class="col-image">
                            <img runat="server" src='<%# Eval("Avatar") %>' alt="">
                        </div>
                        <div class="detail-product">
                            <div class="left-title">
                                <a href="">Trang Chủ</a>
                                <span class="b">/</span>
                                <a href="">Dịp Tặng Hoa</a>
                                <span class="b">/</span>
                                <a href="">Hoa Tỏ Tình</a>
                            </div>
                            <div class="title-product">
                                <h2>
                                    <%# Eval("Title") %>
                                </h2>
                            </div>
                            <div class="line"></div>
                            <div class="rating">
                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
                            </div>
                            <div class="price-wrapper">
                                <span class="price-detail"><%# Eval("Price","{0:0,000}") %>&nbsp;</span>
                                <span class="currency">VNĐ</span>
                            </div>
                    </ItemTemplate>
                </asp:Repeater>
                    <ul>
                        <li class="bullet-checkmark">Đặt Hoa Nhanh: <span>034 827 87 22</span> (Zalo - Viber)</li>
                        <li class="bullet-checkmark">Nhận cắm hoa theo mẫu yêu cầu của quý khách</li>
                        <li class="bullet-checkmark">Có xuất hóa đơn theo yêu cầu</li>
                        <li class="bullet-checkmark">Giao hoa siêu tốc trong 60 phút</li>
                    </ul>
                    <div class="button-detail">
                        <button>Đặt Hàng</button>
                    </div>
                    <div class="product-meta">
                        <span>Mã:B209</span>
                        <span>Từ khóa:
                            <a href="">Bó hoa</a>
                            <a href="">Bó hoa tươi</a>
                            <a href="">Hoa đẹp</a>
                        </span>
                    </div>
                    <div class="detail-social">
                        <a href="">
                            <img src="Images/product/hinh-san-pham (20).jpg" alt=""></a>
                        <a href="">
                            <img src="Images/product/hinh-san-pham (18).jpg" alt=""></a>
                        <a href="">
                            <img src="Images/product/hinh-san-pham (19).jpg" alt=""></a>
                        <a href="">
                            <img src="Images/product/hinh-san-pham (21).jpg" alt=""></a>
                    </div>

                </div>
                <div class="rating-product">
                    <h3>Mẫu Hoa Bán Chạy</h3>
                    <div class="line"></div>
                    <ul class="capability">
                        <li>
                            <a href="">
                                <img src="Images/product/hinh-san-pham (22).jpg" alt="">
                                <span>Tự Hào</span>
                            </a>
                            <div class="block-content">
                                <div class="rating">
                                    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
                                </div>
                                <div class="price-wrapper">
                                    <span class="price-detail-2">500,000&nbsp;</span>
                                    <span class="currency-2">VNĐ</span>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="">
                                <img src="Images/product/hinh-san-pham (23).jpg" alt="">
                                <span>Giản Đơn</span>
                            </a>
                            <div class="block-content">
                                <div class="rating">
                                    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
                                </div>
                                <div class="price-wrapper">
                                    <span class="price-detail-2">500,000&nbsp;</span>
                                    <span class="currency-2">VNĐ</span>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="">
                                <img src="Images/product/hinh-san-pham (24).jpg" alt="">
                                <span>Tin Yêu</span>
                            </a>
                            <div class="block-content">
                                <div class="rating">
                                    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
                                </div>
                                <div class="price-wrapper">
                                    <span class="price-detail-2">500,000&nbsp;</span>
                                    <span class="currency-2">VNĐ</span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
            <div class="detail-tabs">
                <ul class="tab-this">
                    <li data-tab-target="#description" class="active tab-detail">Mô Tả </li>
                    <li data-tab-target="#payment" class="tab-detail">Thông Tin Thanh Toán</li>
                    <li data-tab-target="#info" class="tab-detail">Thông Tin Bổ Sung</li>
                    <li data-tab-target="#rating" class="tab-detail">Đánh Giá <span>(2)</span></li>
                </ul>
                <div class="tabs-panel">
                    <div id="description" data-tab-content class="active tab-that">
                        <h3>Những thông tin khi đặt hoa</h3>
                        <ul>
                            <li>Giảm ngay 50,000đ cho đơn hàng đầu tiên trên 600,000đ</li>
                            <li>Miễn phí giao hoa nội thành toàn quốc 63/63 tỉnh thành phố</li>
                            <li>Miễn phí các phụ kiện tặng kèm (thiệp, băng rôn, bảng tên, thông điệp,…)</li>
                            <li>Chụp ảnh hoa thật trước khi giao để đảm bảo hài lòng khách hàng</li>
                            <li>Giao hoa tươi gấp trong vòng 2 giờ kể từ khi đặt hàng.</li>
                            <li>Nhiều ưu đãi giảm giá cho khách hàng thành viên, đặt hoa thường xuyên tại Trạm Hoa</li>
                        </ul>
                        <h3>Lưu Ý</h3>
                        <ul>
                            <li>Tùy khu vực, tùy mùa hoa, thời tiết nên sẽ có thay đổi đối với mẫu hoa, trước khi thực hiện thay đổi sẽ báo trước cho khách hàng.</li>
                            <li>Hoa tươi vào những ngày lễ: Valentine, Quốc tế phụ nữ, Phụ nữ Việt Nam, Giáng sinh, Tết,… giá hoa sẽ tăng dao động từ 20-30%. Thời điểm tăng giá hoa sẽ được tính từ 3 ngày trước khi lễ.</li>
                        </ul>
                    </div>
                    <div id="payment" data-tab-content class="tab-that payment">
                        <div class="span">
                            <span>
                                <a href="">Trạm Hoa</a>
                                cung cấp cho quý khách nhiều phương thức thanh toán khác nhau để dễ dàng lựa chọn phương thức phù hợp nhất:</span>
                        </div>
                        <p>Đối với khách hàng trong nước:</p>
                        <ul>
                            <li><strong>Chuyển khoản ngân hàng:</strong> Quý khách có thể lựa chọn một trong những tài khoản ngân hàng công ty hỗ trợ để thanh toán cho đơn hàng của mình.</li>
                            <li><strong>Ví điện tử MoMo – Zalo Pay:</strong> Quý khách vui lòng thanh toán đơn hàng thông qua ví 035 514 51 51 – Vương Đình Hiếu</li>
                            <li><strong>Thu tiền mặt:</strong> Quý khách thanh toán đơn hàng của mình trực tiếp cho nhân viên giao hàng khi đơn hàng được giao đến nơi. Hiện tại phương thức này chỉ hỗ trợ cho khu vực TP. Hồ Chí Minh</li>
                        </ul>
                        <p>Đối với khách hàng ở nước ngoài:</p>
                        <ul>
                            <li>
                                Chuyển tiền qua Western Union - Money Gram: Quý khách ở nước ngoài có thể sử dụng dịch vụ chuyển tiền nhanh của Western Union / Money Gram để thanh toán với thông tin nguời nhận là: <strong>Vương Đình Hiếu, 179/6 Nguyễn Chí Thanh,
                                    Phường 12, Quận 5, TP.HCM
                                </strong>
                            </li>
                            <li>Chuyển tiền qua Paypal: Quý khách có thể thanh toán đơn hàng của mình thông qua tài khoản <strong>Paypal: tramhoavn@gmail.com</strong></li>
                        </ul>
                        <p>Với phương thức thanh toán chuyển khoản (Ngân hàng / Ví điện tử / Paypal), quý khách vui lòng chụp màn hình giao dịch, gửi ảnh lại cho Trạm Hoa qua các kênh liên lạc hoặc thông qua email: tramhoavn@gmail.com</p>
                        <h3>Ngân hàng hỗ trợ:</h3>
                        <div class="bank-detail">
                            <div class="bank">
                                <span class="bank-lone">VietComBank</span>
                                <p class="p">
                                    Số tài khoản: <strong>006 100 103 9972</strong><br>
                                    Chủ tài khoản: Vương Đình Hiếu<br>
                                    Chi Nhánh: CN Khánh Hòa
                                </p>
                            </div>
                            <div class="bank">
                                <span class="bank-lone">VPBank (NH VN Thịnh Vượng)</span>
                                <p class="p">
                                    Số tài khoản: <strong>145 234 103 9972</strong><br>
                                    Chủ tài khoản: Cường Nè<br>
                                    Chi Nhánh: CN LA
                                </p>
                            </div>
                        </div>
                    </div>
                    <div id="info" data-tab-content class="tab-that">
                        <h3>Những thông tin khi đặt hoa</h3>
                        <ul>
                            <li>Giảm ngay 50,000đ cho đơn hàng đầu tiên trên 600,000đ</li>
                            <li>Miễn phí giao hoa nội thành toàn quốc 63/63 tỉnh thành phố</li>
                            <li>Miễn phí các phụ kiện tặng kèm (thiệp, băng rôn, bảng tên, thông điệp,…)</li>
                            <li>Chụp ảnh hoa thật trước khi giao để đảm bảo hài lòng khách hàng</li>
                            <li>Giao hoa tươi gấp trong vòng 2 giờ kể từ khi đặt hàng.</li>
                            <li>Nhiều ưu đãi giảm giá cho khách hàng thành viên, đặt hoa thường xuyên tại Trạm Hoa</li>
                        </ul>
                        <h3>Lưu Ý 3</h3>
                        <ul>
                            <li>Tùy khu vực, tùy mùa hoa, thời tiết nên sẽ có thay đổi đối với mẫu hoa, trước khi thực hiện thay đổi sẽ báo trước cho khách hàng.</li>
                            <li>Hoa tươi vào những ngày lễ: Valentine, Quốc tế phụ nữ, Phụ nữ Việt Nam, Giáng sinh, Tết,… giá hoa sẽ tăng dao động từ 20-30%. Thời điểm tăng giá hoa sẽ được tính từ 3 ngày trước khi lễ.</li>
                        </ul>
                    </div>
                    <div id="rating" data-tab-content class="tab-that">
                        <h3>Những thông tin khi đặt hoa</h3>
                        <ul>
                            <li>Giảm ngay 50,000đ cho đơn hàng đầu tiên trên 600,000đ</li>
                            <li>Miễn phí giao hoa nội thành toàn quốc 63/63 tỉnh thành phố</li>
                            <li>Miễn phí các phụ kiện tặng kèm (thiệp, băng rôn, bảng tên, thông điệp,…)</li>
                            <li>Chụp ảnh hoa thật trước khi giao để đảm bảo hài lòng khách hàng</li>
                            <li>Giao hoa tươi gấp trong vòng 2 giờ kể từ khi đặt hàng.</li>
                            <li>Nhiều ưu đãi giảm giá cho khách hàng thành viên, đặt hoa thường xuyên tại Trạm Hoa</li>
                        </ul>
                        <h3>Lưu Ý 4</h3>
                        <ul>
                            <li>Tùy khu vực, tùy mùa hoa, thời tiết nên sẽ có thay đổi đối với mẫu hoa, trước khi thực hiện thay đổi sẽ báo trước cho khách hàng.</li>
                            <li>Hoa tươi vào những ngày lễ: Valentine, Quốc tế phụ nữ, Phụ nữ Việt Nam, Giáng sinh, Tết,… giá hoa sẽ tăng dao động từ 20-30%. Thời điểm tăng giá hoa sẽ được tính từ 3 ngày trước khi lễ.</li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
        <div id="product-related">
            <div class="title">
                <h1 class="text-divider">một số mẫu hoa khác
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
        </div>
    </main>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>

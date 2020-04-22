<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="FlodaStore.Contact1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div id="main">
        <div id="title">
            <h1>liên hệ
            </h1>
            <ul class="bread-cum">
                <li>
                    <a href="index.html">
                        trang chủ
                    </a>
                </li>
                <li>
                    <a href="">
                        liên hệ
                    </a>
                </li>
            </ul>
        </div>
        <div id="contact">
            <div class="map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3917.0870801081032!2d106.70935761405835!3d10.956794592199294!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3174d751e024b99d%3A0x20b3f9b4c8fdc732!2sBinh%20Duong%20Economics%20and%20Technology%20University!5e0!3m2!1svi!2s!4v1585934646232!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
            </div>
            <div class="form">
                <div class="title">
                    liên hệ với chúng tôi
                </div>
                <span class="text-divider">Floda</span>
                <ul class="information">
                    <li>
                        <input type="text" placeholder="Họ tên">
                    </li>
                    <li>
                        <input type="text" placeholder="Email">
                    </li>
                    <li>
                        <input type="text" placeholder="Số điện thoại">
                    </li>
                    <li>
                        <input type="text" placeholder="Địa chỉ">
                    </li>
                </ul>
                <div class="text-area-button">
                    <textarea name="" placeholder="Nội dung..."></textarea>
                    <button>Gửi</button>
                </div>
                <iframe class="iframe" src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fdhktktbinhduong%2F&tabs=timeline&width=340&height=500&small_header=true&adapt_container_width=true&hide_cover=true&show_facepile=false&appId"
                    width="300"
                    height="300"
                    style="border: none; overflow: hidden";
                    scrolling="no"; frameborder="0";
                    allowtransparency="false";
                    allow="encrypted-media">

                </iframe>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>

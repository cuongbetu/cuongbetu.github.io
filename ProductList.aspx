<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="FlodaStore.ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <asp:ScriptManager runat="server" />
    <main>
         <asp:UpdatePanel ID="UpdatePanel" runat="server">
             <ContentTemplate>
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

                             <span>Tìm kiếm sản phẩm theo mức giá
                             </span>
                             <asp:DropDownList ID="DropDownList_Option" OnSelectedIndexChanged="DropDownList_Option_SelectedIndexChanged" AutoPostBack="true" runat="server">
                                 <asp:ListItem Enabled="true" Value="0" Text="Bộ lọc sản phẩm" />
                                 <asp:ListItem Text="Sản phẩm giá thấp nhất" Value="1" />
                                 <asp:ListItem Text="Sản phẩm giá cao nhất" Value="2" />
                                 <asp:ListItem Text="Sản phẩm có nhiều lượt xem nhất " Value="3" />
                             </asp:DropDownList>
                         </div>
                     </div>
                     <div class="product-akali">
                         <div id="mySidenav" class="sidenav">
                             <div class="wraper">
                                 <aside class="first-aside">
                                     <span class="title-bar">Danh Mục Sản Phẩm</span>
                                     <asp:Repeater ID="Repeater_Category" runat="server">
                                         <ItemTemplate>
                                             <a href='<%# Eval("ProductCategoryID","/ProductList.aspx?sid={0}") %>'>
                                                 <%# Eval("Title") %>
                                             </a>
                                         </ItemTemplate>
                                     </asp:Repeater>
                                 </aside>
                                 <aside>
                                     <span class="title-bar">Sản Phẩm</span>
                                     <ul>
                                         <asp:Repeater ID="Repeater_leftData" runat="server">
                                             <ItemTemplate>
                                                 <li class="table">
                                                     <img src='<%# Eval("Avatar") %>' alt="">
                                                     <a class="flex-li" href='<%# Eval("ProductID","/ProductDetail.aspx?id={0}") %>'>
                                                         <span class="aa"><%#Eval("Title") %></span>
                                                         <div class="price-side">
                                                             <del><span><%# Eval("OldPrice") %></span></del>
                                                             <ins><span><%# Eval("Price") %></span></ins>
                                                         </div>
                                                     </a>
                                                 </li>
                                             </ItemTemplate>
                                         </asp:Repeater>

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
                                 <asp:Repeater ID="Repeater_ProductList" runat="server">
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
                                                 <span class="new-price"><%# Eval("Price", "{0:0,00}") %> VNĐ
                                                 </span>
                                             </div>
                                         </div>
                                     </ItemTemplate>
                                 </asp:Repeater>
                             </div>

                             <div runat="server" id="SeeMore" class="see-more-product">
                                 <asp:LinkButton Text="xem thêm sản phẩm" class="see-more-product" runat="server" ID="LinkButton_SeeMore" OnClick="LinkButton_SeeMore_Click">
                             
                                 </asp:LinkButton>
                             </div>
             </ContentTemplate>
         </asp:UpdatePanel>
                </div>
        </div>
        </div>

    </main>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>

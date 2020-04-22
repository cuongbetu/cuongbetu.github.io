<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucCarousel.ascx.cs" Inherits="FlodaStore.ucControl.ucCarousel" %>

<div id="carousel">
    <asp:Repeater ID="Repeater_Carousel" runat="server">
        <ItemTemplate>
            <div class="items">
                <img runat="server" src='<%#Eval("Avatar") %>' />
            </div>

        </ItemTemplate>
    </asp:Repeater>
</div>

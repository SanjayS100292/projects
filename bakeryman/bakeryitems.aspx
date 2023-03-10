<%@ Page Title="" Language="C#" MasterPageFile="~/bakery.Master" AutoEventWireup="true" CodeBehind="bakeryitems.aspx.cs" Inherits="bakeryman.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 521px; text-align: center">


        <span style="font-size: xx-large"><strong>ITEMS</strong></span><br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" OnClick="LinkButton1_Click" PostBackUrl="~/bakeryadditem.aspx">ADD ITEMS</asp:LinkButton>
        <br />
        <br />
        <br />
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Underline="False" OnClick="LinkButton2_Click" PostBackUrl="~/bakeryviewitems.aspx">VIEW ITEMS</asp:LinkButton>


    </div>
</asp:Content>

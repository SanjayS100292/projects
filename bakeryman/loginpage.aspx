<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="bakeryman.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="text-align: center; height: 464px">
    <asp:LinkButton ID="LinkButton1" runat="server" BorderColor="#000099" BorderStyle="Solid" Font-Overline="False" Font-Size="XX-Large" Font-Underline="False" OnClick="LinkButton1_Click" Width="240px" PostBackUrl="~/adminlogin.aspx">ADMIN</asp:LinkButton>
    <br />
    <br />
    <br />
    <asp:LinkButton ID="LinkButton2" runat="server" BorderColor="#000099" BorderStyle="Solid" Font-Size="XX-Large" Font-Underline="False" Width="240px" PostBackUrl="~/shoplogin.aspx">SHOP</asp:LinkButton>
    <br />
    <br />
    <br />
    <asp:LinkButton ID="LinkButton3" runat="server" BorderColor="#000099" BorderStyle="Solid" Font-Size="XX-Large" Font-Underline="False" Width="240px" PostBackUrl="~/bakerylogin.aspx">BAKERY</asp:LinkButton>
</div>

</asp:Content>

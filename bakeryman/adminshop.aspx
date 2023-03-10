<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminshop.aspx.cs" Inherits="bakeryman.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="text-align: center; height: 657px">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="SHOP"></asp:Label>
    <br />
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="False" PostBackUrl="~/adminshopreg.aspx">REGISTRATION</asp:LinkButton>
    <br />
    <br />
    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="False" PostBackUrl="~/adminshopdetails.aspx">SHOP DETAILS</asp:LinkButton>
    <br />
    <br />
        <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="False" PostBackUrl="~/adminshopdateorder.aspx">SHOP ORDERS</asp:LinkButton>
    <br />
    <br />
</div>

</asp:Content>

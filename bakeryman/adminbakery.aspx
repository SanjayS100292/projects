<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminbakery.aspx.cs" Inherits="bakeryman.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div style="text-align: center; height: 657px">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="BAKERY" Font-Underline="True"></asp:Label>
    <br />
         <br />
         <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="False" PostBackUrl="~/adminbakeryreg.aspx">REGISTRIATION</asp:LinkButton>
         <br />
         <br />
         <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="False" PostBackUrl="~/adminbakerydetails.aspx">BAKERY DETAILS</asp:LinkButton>
         <br />
         <br />
         <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="False" PostBackUrl="~/adminbakeryreport.aspx" OnClick="LinkButton3_Click">REPORT</asp:LinkButton>
         <br />
         <br />
         

</asp:Content>

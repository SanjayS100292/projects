<%@ Page Title="" Language="C#" MasterPageFile="~/shop.Master" AutoEventWireup="true" CodeBehind="shopcart.aspx.cs" Inherits="bakeryman.WebForm23" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="background-color:#fd6d6d" class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:label runat="server" text="Cart" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>
&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Product You have added to your Cart"></asp:Label>
    <asp:Label ID="lblcart" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" Font-Bold="True" Font-Size="Large" ForeColor="Black" ShowFooter="True" Width="1301px" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="quantity" OnRowCommand="GridView1_RowCommand" style="margin-top: 0px">
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="S.No" />
            <asp:BoundField DataField="id" HeaderText="Product Id" />
            <asp:BoundField DataField="name" HeaderText="Product Name" />
            <asp:BoundField DataField="type" HeaderText="Type" />
            <asp:BoundField DataField="price" HeaderText="Price" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
            <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" HeaderText="Remove" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" Height="50px" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="50px" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
    <br />
<asp:Button ID="Button1" runat="server" BackColor="#FF66FF" BorderColor="#FF99FF" Font-Bold="True" Font-Size="Medium" OnClick="Button1_Click" Text="Buy Now" />
<br />
<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
    <br />
    <br />
</asp:Content>

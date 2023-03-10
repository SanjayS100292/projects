<%@ Page Title="" Language="C#" MasterPageFile="~/bakery.Master" AutoEventWireup="true" CodeBehind="bakeryorder.aspx.cs" Inherits="bakeryman.WebForm29" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="background-color:#fd6d6d" class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:label runat="server" text="Order Information" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="id,odrid" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Size="Medium" ForeColor="Black" GridLines="Vertical" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="id" HeaderText="PRODUCT ID" InsertVisible="False" ReadOnly="True" SortExpression="id">
        </asp:BoundField>
        <asp:BoundField DataField="name" HeaderText="PRODUCT NAME" SortExpression="type" />
        <asp:BoundField DataField="shopuser" HeaderText="shopuser" SortExpression="type" />
        <asp:BoundField DataField="odrid" HeaderText="order id" SortExpression="odrid" InsertVisible="False" ReadOnly="True" />
        <asp:BoundField DataField="deldate" HeaderText="delivry date" SortExpression="deldate">
        </asp:BoundField>
        <asp:BoundField DataField="odrdate" HeaderText="orderdate" SortExpression="odrdate">
        </asp:BoundField>
        <asp:BoundField DataField="paytype" HeaderText="payament type" SortExpression="paytype">
        </asp:BoundField>
        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price">
        </asp:BoundField>
        
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="Gray" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bakeryConnectionString %>" SelectCommand="SELECT odrid, odrdate,deldate,name,quantity,price,paytype,id,shopuser FROM ordertbl ORDER BY odrid DESC, odrdate DESC" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:bakeryConnectionString.ProviderName %>"></asp:SqlDataSource>
</asp:Content>

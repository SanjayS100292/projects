<%@ Page Title="" Language="C#" MasterPageFile="~/shop.Master" AutoEventWireup="true" CodeBehind="shoporder.aspx.cs" Inherits="bakeryman.WebForm31" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="background-color:#fd6d6d" class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:label runat="server" text="Order Information" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="id,odrid" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Size="Medium" ForeColor="Black" GridLines="Vertical" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView1_RowDeleting" OnRowDataBound="GridView1_RowDataBound">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
         <asp:BoundField DataField="id" HeaderText="PRODUCT ID" InsertVisible="False" ReadOnly="True" SortExpression="id">
        </asp:BoundField>
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
         <asp:CommandField DeleteText="DELETE" ShowDeleteButton="True" ButtonType="Button" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bakeryConnectionString %>" SelectCommand="SELECT odrid, odrdate, deldate, quantity, price, paytype,id,shopuser FROM ordertbl WHERE (shopuser = ?)" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:bakeryConnectionString.ProviderName %>" DeleteCommand="DELETE FROM ordertbl WHERE odrid = @odrid">
        <SelectParameters>
            <asp:SessionParameter Name="shopuser" SessionField="username" Type="String" />
        </SelectParameters>
        
<DeleteParameters>
    <asp:Parameter Name="odrid" Type="Int32" />
</DeleteParameters>

    </asp:SqlDataSource>
<br />
</asp:Content>

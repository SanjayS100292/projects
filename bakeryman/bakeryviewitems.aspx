<%@ Page Title="" Language="C#" MasterPageFile="~/bakery.Master" AutoEventWireup="true" CodeBehind="bakeryviewitems.aspx.cs" Inherits="bakeryman.WebForm22" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>



        <br />
        
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" Font-Bold="True" Font-Size="Large" ForeColor="Black" ShowFooter="True" Width="1301px" OnRowDeleting="GridView1_RowDeleting" OnRowCommand="GridView1_RowCommand" style="margin-top: 0px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataSourceID="SqlDataSource1">
        <Columns>
            
            <asp:BoundField DataField="id" HeaderText="Product Id" />
            <asp:BoundField DataField="name" HeaderText="Product Name" />
            <asp:BoundField DataField="type" HeaderText="Type" />
            <asp:BoundField DataField="price" HeaderText="Price" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bakeryConnectionString %>" ProviderName="<%$ ConnectionStrings:bakeryConnectionString.ProviderName %>" SelectCommand="SELECT * FROM item ORDER BY id" DeleteCommand="DELETE FROM item WHERE id = ?" >
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32"  />
            </DeleteParameters>
                 
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />



    </div>
</asp:Content>

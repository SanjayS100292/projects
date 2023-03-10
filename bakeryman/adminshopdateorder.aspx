<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminshopdateorder.aspx.cs" Inherits="bakeryman.WebForm35" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: center">


        <br />
        <span style="text-decoration: underline; font-size: x-large"><strong>SHOP ORDER DETAILS</strong></span><br />
        <br />
        &nbsp;&nbsp;
        DATE: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp; 
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SUBMIT" BackColor="#00CC00" BorderColor="#00CC00" Height="33px" Width="113px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div style="text-align: left">
            <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="618px" AutoGenerateColumns="False">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
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
     
    </Columns>
            </asp:GridView>
        </div>
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

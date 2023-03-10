<%@ Page Title="" Language="C#" MasterPageFile="~/bakery.Master" AutoEventWireup="true" CodeBehind="bakeryadditem.aspx.cs" Inherits="bakeryman.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="background-color:#fd6d6d; text-align: center;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:label runat="server" text="Add Items" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>

    <table class="auto-style2">
        <tr>
            <td class="auto-style3" style="text-align: right; width: 692px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Name:-"></asp:Label>
            </td>
            <td style="width: 273px">
                <asp:TextBox ID="txtboxName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right; width: 692px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Type:-"></asp:Label>
            </td>
            <td style="text-align: left; width: 273px">
                <asp:DropDownList ID="DropDownType" runat="server" AutoPostBack="True" Width="87px">
                    <asp:ListItem Value="-1">Select Type</asp:ListItem>
                    <asp:ListItem >Cake</asp:ListItem>
                    <asp:ListItem >Breads</asp:ListItem>
                    <asp:ListItem >Pastries</asp:ListItem>
                    <asp:ListItem >Snacks</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownType" ErrorMessage="Select Type" ForeColor="Red" style="font-size: medium" InitialValue="-1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right; width: 692px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Price:-"></asp:Label>
            </td>
            <td style="width: 273px">
                <asp:TextBox ID="txtboxPrice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="text-align: right; width: 692px">&nbsp;</td>
            <td style="width: 273px">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="#33CC33" BorderColor="#33CC33" OnClick="btnSubmit_Click" Height="38px" Width="92px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="text-align: right; width: 692px; height: 73px"></td>
            <td style="text-align: center; width: 273px; height: 73px">
                <asp:Label ID="lblStatus" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="shoplogin.aspx.cs" Inherits="bakeryman.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h1 style="background-color:#fd6d6d; text-align: center;">
         Shop
        <asp:label runat="server" text="Login" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>
    
     <table class="auto-style2" style="height: 617px">
         
         
         
         <tr>
             <td class="auto-style6" style="width: 610px"></td>
             <td style="width: 306px"></td>
         </tr>
         <tr>
             <td class="auto-style3" style="width: 610px; text-align: right; height: 31px;">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="UserName:-"></asp:Label>
             </td>
             <td style="width: 306px; height: 31px;">
                 <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style3" style="width: 610px; text-align: right; height: 19px;">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Password:-"></asp:Label>
             </td>
             <td style="height: 19px; width: 306px">
                 <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style5" TextMode="Password"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style7" style="width: 610px"></td>
             <td class="auto-style4" style="width: 306px">
                 </td>
         </tr>
         <tr>
             <td class="auto-style6" style="width: 610px"></td>
             <td style="width: 306px">
                 <asp:Button ID="Button2" runat="server" BackColor="#33CC33" BorderColor="#33CC33" Height="39px" OnClick="Button2_Click" Text="SUBMIT" Width="88px" />

             </td>
         </tr>
         <tr>
             <td class="auto-style6" style="width: 610px">&nbsp;</td>
             <td style="width: 306px">
                <asp:Label ID="lblstatus" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
             </td>
         </tr>
         <tr>
             <td class="auto-style6" style="width: 610px">&nbsp;</td>
             <td style="width: 306px">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style6" style="width: 610px">&nbsp;</td>
             <td style="width: 306px">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style7" style="width: 610px; height: 23px;"></td>
             <td class="auto-style4" style="width: 306px; height: 23px;"></td>
         </tr>
     </table>

</asp:Content>

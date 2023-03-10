<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bakerylogin.aspx.cs" Inherits="bakeryman.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h1 style="background-color:#fd6d6d; text-align: center;" class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bakery
        <asp:label runat="server" text="Login" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>
    
     <table class="auto-style2" style="height: 617px">
         
         
         
         <tr>
             <td class="auto-style6" style="width: 657px"></td>
             <td style="width: 306px"></td>
         </tr>
         <tr>
             <td class="auto-style3" style="width: 657px; text-align: right; height: 31px;">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="UserName:-"></asp:Label>
             </td>
             <td style="width: 306px; height: 31px;">
                 <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style3" style="width: 657px; text-align: right; height: 19px;">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Password:-"></asp:Label>
             </td>
             <td style="height: 19px; width: 306px">
                 <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style5" TextMode="Password"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style7" style="width: 657px"></td>
             <td class="auto-style4" style="width: 306px">
                 </td>
         </tr>
         <tr>
             <td class="auto-style6" style="width: 657px"></td>
             <td style="width: 306px">
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SUBMIT" BackColor="#00CC00" BorderColor="#00CC00" Height="33px" Width="113px" />

             </td>
         </tr>
         <tr>
             <td class="auto-style6" style="width: 657px">&nbsp;</td>
             <td style="width: 306px">
                <asp:Label ID="lblstatus" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
             </td>
         </tr>
         <tr>
             <td class="auto-style6" style="width: 657px">&nbsp;</td>
             <td style="width: 306px">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style6" style="width: 657px">&nbsp;</td>
             <td style="width: 306px">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style7" style="width: 657px; height: 23px;"></td>
             <td class="auto-style4" style="width: 306px; height: 23px;"></td>
         </tr>
     </table>
</asp:Content>

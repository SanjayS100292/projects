<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminshopreg.aspx.cs" Inherits="bakeryman.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="height: 18px; font-size: xx-large; text-align: center">&nbsp;</h1>
    <h1 style="background-color:#fd6d6d; text-align: center;">
         Shop Registration</h1>
    
     <table class="auto-style2" style="height: 617px">
         
         
         
         <tr>
             <td class="auto-style6" style="width: 610px; height: 16px;"></td>
             <td style="width: 306px; height: 16px;"></td>
         </tr>
         <tr>
             <td class="auto-style6" style="width: 610px; height: 16px;"></td>
             <td style="width: 306px; height: 16px;"></td>
         </tr>
         <tr>
             <td class="auto-style6" style="width: 610px; height: 16px; text-align: right;">
                 <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="Mobile No."></asp:Label>
             </td>
             <td style="width: 306px; height: 16px;">
                 <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style3" style="width: 610px; text-align: right; height: 31px;">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="UserName:-"></asp:Label>
             </td>
             <td style="width: 306px; height: 31px;">
                 <asp:TextBox ID="txtUname" runat="server" Width="150px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style3" style="width: 610px; text-align: right; height: 19px;">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Password:-"></asp:Label>
             </td>
             <td style="height: 19px; width: 306px">
                 <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style5" TextMode="Password" Width="150px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style7" style="width: 610px; text-align: right; height: 23px;">
                 <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Confirm Password"></asp:Label>
             </td>
             <td class="auto-style4" style="width: 306px; height: 23px;">
                 <asp:TextBox ID="TextBox1" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
                 </td>
         </tr>
         <tr>
             <td class="auto-style6" style="width: 610px; height: 16px; text-align: right;">
                 <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="Address"></asp:Label>
             </td>
             <td style="width: 306px; height: 16px;">
                 <asp:TextBox ID="TextBox3" runat="server" Height="74px" Width="149px" TextMode="MultiLine"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style6" style="width: 610px; height: 16px;"></td>
             <td style="width: 306px; height: 16px;"></td>
         </tr>
         <tr>
             <td class="auto-style6" style="width: 610px"></td>
             <td style="width: 306px">
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SUBMIT" BackColor="#00CC00" BorderColor="#00CC00" Height="33px" Width="113px" />

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

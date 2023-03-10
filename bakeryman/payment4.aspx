<%@ Page Title="" Language="C#" MasterPageFile="~/payment.Master" AutoEventWireup="true" CodeBehind="payment4.aspx.cs" Inherits="bakeryman.WebForm28" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: center">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="PAYMENT SUCCESSFULLY COMPLETED......" Font-Size="XX-Large" Font-Italic="True" Font-Bold="True" Font-Names="Mistral" ForeColor="#33CC33"></asp:Label>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Will be redirected to the homepage soon"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Timer ID="Timer1" runat="server" Interval="1000"
                                OnTick="Timer1_Tick">
                            </asp:Timer>
                        </ContentTemplate>
                    </asp:UpdatePanel>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </>
</asp:Content>

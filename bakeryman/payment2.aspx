<%@ Page Title="" Language="C#" MasterPageFile="~/payment.Master" AutoEventWireup="true" CodeBehind="payment2.aspx.cs" Inherits="bakeryman.WebForm26" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style20 {
            width: 158px;
        }
        .auto-style22 {
            width: 869px;
        }
        .auto-style25 {
            height: 33px;
            width: 145px;
        }
        .auto-style26 {
            height: 33px;
        }
        .auto-style27 {
            height: 36px;
            width: 145px;
        }
        .auto-style28 {
            height: 36px;
        }
        .auto-style32 {
            height: 31px;
        }
        .auto-style33 {
            height: 31px;
            width: 143px;
        }
        .auto-style34 {
            height: 33px;
            width: 143px;
        }
        .auto-style35 {
            height: 98px;
            width: 158px;
        }
        .auto-style36 {
            height: 98px;
            width: 869px;
        }
        .auto-style37 {
            height: 98px;
        }
        .auto-style38 {
            width: 158px;
            height: 49px;
        }
        .auto-style39 {
            width: 869px;
            height: 49px;
        }
        .auto-style40 {
            height: 49px;
        }
        .auto-style41 {
            height: 59px;
        }
        .auto-style45 {
            width: 190px;
            height: 32px;
        }
        .auto-style47 {
            height: 36px;
            text-align: center;
        }
        .auto-style50 {
            width: 694px;
        }
        .auto-style51 {
            width: 190px;
            height: 26px;
        }
        .auto-style52 {
            height: 26px;
        }
        .auto-style53 {
            height: 32px;
        }
        .auto-style55 {
            height: 27px;
        }
        .auto-style56 {
            height: 30px;
        }
        .auto-style57 {
            height: 82px;
            width: 158px;
        }
        .auto-style58 {
            height: 82px;
            width: 869px;
        }
        .auto-style59 {
            height: 82px;
        }
        .auto-style60 {
            height: 20px;
            text-align: center;
        }
        .style2
        {
            color: #FF3300;
            height: 16px;
        }
        .auto-style61 {
            height: 46px;
            text-align: center;
        }
        .auto-style62 {
            color: #00FF00;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset><legend style="font-weight: 700; text-align: center; font-size: large">Transaction Details</legend>
    <table class="auto-style1">
        <tr>
            <td class="auto-style57"></td>
            <td class="auto-style58"><fieldset>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style27">Pay To:</td>
                        <td class="auto-style28">
                            <asp:Label ID="lbl_Payto" runat="server" ForeColor="#33CC33" style="font-weight: 700"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style25">Total Payable Amount:</td>
                        <td class="auto-style26">
                            <span class="auto-style62">Rs.</span><asp:Label ID="lbl_Amount" runat="server" ForeColor="#33CC33" style="font-weight: 700" CssClass="auto-style62"></asp:Label>
                            <span class="auto-style62">/-</span></td>
                    </tr>
                </table>
                </fieldset></td>
            <td class="auto-style59"></td>
        </tr>
        <tr>
            <td class="auto-style35"></td>
            <td class="auto-style36"><fieldset><legend>Card Details</legend>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style33">Payment Method:</td>
                        <td class="auto-style32">CARD Payment </td>
                    </tr>
                    <tr>
                        <td class="auto-style34">Card Number:</td>
                        <td class="auto-style26">
                            <asp:Label ID="lblCardNumber" runat="server" style="font-weight: 700"></asp:Label>
                        </td>
                    </tr>
                </table>
                </fieldset></td>
            <td class="auto-style37"></td>
        </tr>
        <tr>
            <td class="auto-style38"></td>
            
            <td class="auto-style40"></td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style22">
                                        <asp:Button ID="Button1" runat="server" Text="Make Pyment" Width="144px" OnClick="Button1_Click" style="font-weight: 700" />
                                    </td>
            <td>&nbsp;</td>
        </tr>
    </table></fieldset>
</asp:Content>

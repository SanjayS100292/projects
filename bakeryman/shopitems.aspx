<%@ Page Title="" Language="C#" MasterPageFile="~/shop.Master" AutoEventWireup="true" CodeBehind="shopitems.aspx.cs" Inherits="bakeryman.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="background-color:#fd6d6d; text-align: center;" class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:label runat="server" text="ITEMS" ForeColor="Black" Font-Bold="True" Font-Size="XX-Large"></asp:label>
    </h1>

    <div style="text-align: center">

    <asp:DataList ID="DataList1" runat="server" Height="603px" style="margin-right: 192px" Width="1279px" CellPadding="10" GridLines="Both" RepeatColumns="4" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" >
        <AlternatingItemStyle Wrap="True" />
        <ItemTemplate>
            <div class="col-md-5">
            <div class="col-md-8">
             <div class="bs-callout" id="callout-inputgroup-form-labels" style="border-left-color: purple !important;">
                  <table>
                      <td><p>

                                <strong>ITEM</strong>:<%# Eval("id") %></p>

                            <p><strong>NAME</strong>:<%# Eval("name") %></p>

                            <p><strong>TYPE</strong>:<%#Eval("type") %></p>
                          <asp:Label ID="Label4" runat="server" Text="QUANTITY:-" Font-Bold="True"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                          <asp:Label ID="Label5" runat="server" Text="in Kgs"></asp:Label>
                            <p><strong>PRICE</strong>:<%# Eval("price") %></p>
                 <asp:Button ID="Button1" runat="server" BackColor="#FFFF66" BorderColor="#FFFF99" CommandArgument='<%# Eval("id")%>' CommandName="addtocart" Font-Bold="True" Font-Size="Medium" Text="Add To Cart " />
                </td> </table>
                        </div>

                    </div>

                </div>

            </ItemTemplate>
        <SeparatorStyle BorderColor="White" Wrap="True" />
    </asp:DataList>

    </div>

<br />
<br />
    <br />
    <br />

    </asp:Content>

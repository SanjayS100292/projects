<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="mainpage.aspx.cs" Inherits="bakeryman.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <<asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile1.xml" Height="650px" Width="1500px" OnAdCreated="AdRotator1_AdCreated" />
                <asp:Timer ID="Timer1" runat="server" Interval="500">
                </asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>


    </div>

</asp:Content>

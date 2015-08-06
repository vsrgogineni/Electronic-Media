<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmRoomsAvailable.aspx.cs" Inherits="Admin_Search_frmRoomsAvailable" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 16pt; color:red">Rooms Available</span></strong></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                Room Code:</td>
            <td style="width: 100px">
                <asp:DropDownList ID="ddlRoomCode" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlRoomCode_SelectedIndexChanged" Width="169px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: Verdana; height: 21px;">
                Status:</td>
            <td style="width: 100px; height: 21px;">
                <asp:Label ID="lblStatus" runat="server" Font-Bold="True" Width="167px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="font-weight: bolder; font-size: 8pt; font-family: Verdana;
                text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" EmptyDataText="Room Not Alloted To Any Patient" Height="78px" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5" Width="63px">
                    <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="Red" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>


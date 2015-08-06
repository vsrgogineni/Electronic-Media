<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmPatientInRoom.aspx.cs" Inherits="Admin_Search_frmPatientInRoom" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 16pt; color: red">Patient In Room</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0" Width="291px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Room Code:</td>
            <td style="width: 100px">
                <asp:DropDownList ID="ddlRoomCode" runat="server" Width="141px" AutoPostBack="True" OnSelectedIndexChanged="ddlRoomCode_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Room Name:</td>
            <td style="width: 100px">
                <asp:Label ID="lblName" runat="server" Font-Bold="True" Width="228px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="font-weight: bolder; font-size: 8pt; font-family: verdana;
                text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:GridView ID="GridView1" runat="server" Width="4px" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>


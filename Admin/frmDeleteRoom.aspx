<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmDeleteRoom.aspx.cs" Inherits="Admin_frmDeleteRoom" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <table align="center">
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana">Room Deletion</span></strong></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="293px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                Room Code:<br />
                <br />
                Room Name:<br />
                <br />
                Description:</td>
            <td style="width: 156px">
                &nbsp;<asp:UpdatePanel id="UpdatePanel1" runat="server"><contenttemplate>
                <asp:DropDownList ID="ddlRoom" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlRoom_SelectedIndexChanged" Width="181px">
                </asp:DropDownList>
                <asp:TextBox ID="txtCode" runat="server" Width="173px"></asp:TextBox><BR />
                <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
</contenttemplate>
                </asp:UpdatePanel></td>
        </tr>
        <tr>
            <td colspan="2" style="font-weight: bolder; font-size: 8pt; font-family: Verdana">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" /></td>
        </tr>
    </table>
</asp:Content>


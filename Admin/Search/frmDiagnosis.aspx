<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmDiagnosis.aspx.cs" Inherits="Admin_Search_frmDiagnosis" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 16pt; color: #ff0066">Dignosis</span></strong></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Code:</td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="163px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;<asp:Repeater ID="Repeater1" runat="server">
                </asp:Repeater>
            </td>
        </tr>
    </table>
</asp:Content>


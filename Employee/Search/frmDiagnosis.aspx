<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmDiagnosis.aspx.cs" Inherits="Admin_Search_frmDiagnosis" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 16pt; color: red">Dignosis</span></strong></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <span style="font-size: 8pt; font-family: Verdana">
                Patient
                Code:</span></td>
            <td style="width: 100px">
                <asp:DropDownList ID="ddlCode" runat="server" Width="144px" AutoPostBack="True" OnSelectedIndexChanged="ddlCode_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:DataList ID="DataList1" runat="server">
                </asp:DataList>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>


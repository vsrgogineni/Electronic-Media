<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmTestonTwoDates.aspx.cs" Inherits="Admin_Search_frmTestonTwoDates" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table align="center">
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                <strong><span style="font-size: 16pt; color: red">Test on Two Dates</span></strong></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="font-weight: bolder; font-size: 8pt; font-family: verdana">
                From Date:</td>
            <td>
                <cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                </cc1:GMDatePicker>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bolder; font-size: 8pt; font-family: verdana">
                To Date:</td>
            <td>
                <cc1:GMDatePicker ID="GMDatePicker2" runat="server">
                </cc1:GMDatePicker>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnShow" runat="server" OnClick="btnShow_Click" Text="Show Test "
                    Width="104px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" /></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                &nbsp;<asp:UpdatePanel id="UpdatePanel1" runat="server"><contenttemplate>
<asp:GridView id="GridView1" runat="server" Width="17px" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging" Height="83px" EmptyDataText="No Test Happened" AllowPaging="True">
<EmptyDataRowStyle ForeColor="Red" Font-Size="14pt" Font-Bold="True"></EmptyDataRowStyle>
</asp:GridView>
</contenttemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
</asp:Content>


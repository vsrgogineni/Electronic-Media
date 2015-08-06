<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmMedicineBetweenDates.aspx.cs" Inherits="Admin_Search_frmMedicineBetweenDates" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                <strong><span style="font-size: 16pt; color: red">Medicine Between Dates</span></strong></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 131px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                Manufacturing Date</td>
            <td style="width: 212px">
                <cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                </cc1:GMDatePicker>
            </td>
        </tr>
        <tr>
            <td style="width: 131px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                Expiry Date:</td>
            <td style="width: 212px">
                <cc1:GMDatePicker ID="GMDatePicker2" runat="server">
                </cc1:GMDatePicker>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnShow" runat="server" Text="Show" Width="92px" OnClick="btnShow_Click" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:GridView ID="GridView1" runat="server" Width="76px" EmptyDataText="No Data Found" Height="98px">
                    <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="Red" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>


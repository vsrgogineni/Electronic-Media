<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmPatientBettwoDates.aspx.cs" Inherits="Admin_Search_frmPatientBettwoDates" Title="Untitled Page" %>

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
                <strong><span style="font-size: 16pt; color: red">Patient Between Dates</span></strong></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                From Date:</td>
            <td>
                <cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                </cc1:GMDatePicker>
            </td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                To Date:</td>
            <td>
                <cc1:GMDatePicker ID="GMDatePicker2" runat="server">
                </cc1:GMDatePicker>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="font-weight: bolder; font-size: 8pt; font-family: verdana;
                text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnShow" runat="server" OnClick="btnShow_Click" Text="Show Patient"
                    Width="129px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" /></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" EmptyDataText="No Patient Admitted" Height="114px" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5" Width="87px">
                    <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="Red" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>


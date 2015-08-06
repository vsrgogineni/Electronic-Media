<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmMedicineonDate.aspx.cs" Inherits="Admin_Search_frmMedicineonDate" Title="Untitled Page" %>

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
                <strong><span style="font-size: 16pt; color: red">Medicine on Date</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="304px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                Date:</td>
            <td style="width: 239px">
                <cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                </cc1:GMDatePicker>
            </td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                Patient Code:</td>
            <td style="width: 239px">
                <asp:DropDownList ID="ddlCode" runat="server" Width="180px" AutoPostBack="True" OnSelectedIndexChanged="ddlCode_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                Patient Name:</td>
            <td style="width: 239px">
                <asp:Label ID="lblName" runat="server" Width="205px" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="font-weight: bolder; font-size: 8pt; font-family: Verdana;
                text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:GridView ID="GridView1" runat="server" Width="1px" AllowPaging="True" EmptyDataText="No Data Found" Height="27px" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>


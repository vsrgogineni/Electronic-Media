<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmMedicineonPatient.aspx.cs" Inherits="Admin_Search_frmMedicineonPatient" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                <strong><span style="font-size: 16pt; color: red">Medicine on Patient</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="1px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Patient Code:</td>
            <td style="width: 100px">
                <asp:DropDownList ID="ddlCode" runat="server" Width="175px" AutoPostBack="True" OnSelectedIndexChanged="ddlCode_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Medicine Code:</td>
            <td style="width: 100px">
                <asp:DropDownList ID="ddlMedicineCode" runat="server" Width="175px" AutoPostBack="True" OnSelectedIndexChanged="ddlMedicineCode_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Patient Name:</td>
            <td style="width: 100px">
                <asp:Label ID="lblName" runat="server" Font-Bold="True" Width="148px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="font-weight: bolder; font-size: 8pt; font-family: verdana">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:GridView ID="GridView1" runat="server" Width="67px" Height="75px">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>


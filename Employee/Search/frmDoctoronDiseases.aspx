<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmDoctoronDiseases.aspx.cs" Inherits="Admin_Search_frmDoctoronDiseases" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                <strong><span style="font-size: 16pt; color: red">Doctor on Diseases</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="257px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Disease Code:</strong></span></td>
            <td style="width: 100px">
                <asp:DropDownList ID="ddlDiseaseCode" runat="server" Width="175px" AutoPostBack="True" OnSelectedIndexChanged="ddlDiseaseCode_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" Width="11px">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>


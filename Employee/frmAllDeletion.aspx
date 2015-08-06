<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmAllDeletion.aspx.cs" Inherits="Employee_frmAllDeletion" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table align="center" style="width: 141px">
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                <strong><span style="font-size: 16pt; color: red">Patient Deletion</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="234px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                <strong><span style="font-size: 8pt; font-family: Verdana">
                Patient Code:</span></strong></td>
            <td style="width: 100px">
                <asp:DropDownList ID="ddlPatientCode" runat="server" Width="156px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" />
                <cc1:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" ConfirmText="Are U Sure"
                    TargetControlID="btnDelete">
                </cc1:ConfirmButtonExtender>
            </td>
        </tr>
    </table>
</asp:Content>


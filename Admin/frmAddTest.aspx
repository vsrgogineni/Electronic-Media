<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmAddTest.aspx.cs" Inherits="Admin_frmAddTest" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<asp:ScriptManager id="ScriptManager1" runat="server"></asp:ScriptManager>
    <table align="center" style="width: 325px">
        <tr>
            <td colspan="3" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana">Test Addition</span></strong></td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="73px"></asp:Label><br />
                <span style="color: #ff3300"></span></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <span style="color: #ff3300">Please Enter The * Value</span></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 71px" >
                <span style="font-size: 8pt; font-family: Verdana"><strong>Test Code</strong></span>:</td>
            <td >
                <asp:TextBox ID="txtCode" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCode" ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 71px" >
                <strong><span style="font-size: 8pt; font-family: Verdana">Test Name</span></strong>:</td>
            <td >
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 71px" >
                <strong><span style="font-size: 8pt; font-family: Verdana">Description</span></strong>:</td>
            <td >
                <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" Height="55px"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 71px" >
                <strong><span style="font-size: 8pt; font-family: Verdana">
                Charges:</span></strong></td>
            <td >
                <asp:TextBox ID="txtCharge" runat="server"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers"
                    TargetControlID="txtCharge">
                </cc1:FilteredTextBoxExtender>
            </td>
            <td>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCharge" ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: right">
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" Width="53px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" />
                <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" /></td>
            <td colspan="1" style="text-align: center">
            </td>
        </tr>
    </table>
</asp:Content>


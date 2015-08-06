<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmAddRoom.aspx.cs" Inherits="Admin_frmAddRoom" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<asp:ScriptManager id="ScriptManager1" runat="server"></asp:ScriptManager>
    <table align="center">
        <tr>
            <td colspan="3" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <strong><span style="font-size: 16pt; color:red; font-family: Verdana">Room Addition</span></strong></td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="59px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <span style="color: #ff3300; font-size: 8pt; font-family: Verdana;">Please Enter The * Value</span></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 21px" align="center">
                <span style="color: #ff3300">&nbsp;&nbsp; </span></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Room Code.:</strong></span></td>
            <td>
                <asp:TextBox ID="txtNo" runat="server" Width="174px"></asp:TextBox>
                </td>
            <td style="width: 19px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNo"
                    ErrorMessage="*" Width="15px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 100px">
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Room Name</strong></span></td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="174px"></asp:TextBox>
                </td>
            <td style="width: 19px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Description:</strong></span></td>
            <td>
                <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            <td style="width: 19px">
            </td>
        </tr>
        <tr>
            <td style="width: 100; height: 26">
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Charges:</strong></span></td>
            <td>
                <asp:TextBox ID="txtCharge" runat="server" Width="175px"></asp:TextBox>&nbsp;
                <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers"
                    TargetControlID="txtCharge">
                </cc1:FilteredTextBoxExtender>
            </td>
            <td style="width: 19px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCharge"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 26px; text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: right">
                <asp:Button ID="btnAdd" runat="server" Text="Add" Width="57px" OnClick="btnAdd_Click" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" />
                <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" /></td>
            <td colspan="1" style="width: 19px; text-align: center">
            </td>
        </tr>
    </table>
</asp:Content>


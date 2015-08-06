<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmChangePassword.aspx.cs" Inherits="Employee_frmChangePassword" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana">Change Password</span></strong></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="font-weight: bolder; font-size: 8pt; width: 126px; font-family: Verdana">
                User Name:</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtUname" runat="server" ReadOnly="True" Width="139px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 126px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                Current Password:</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtPwd" runat="server" Width="139px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 126px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                New Password:</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 126px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                Confirm Password:</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPwd"
                    ControlToValidate="txtConfirm" ErrorMessage="Password Mismatch" Width="146px"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnChange" runat="server" Text="Change" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" OnClick="btnChange_Click" />
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="#0000C0" Width="138px"></asp:Label>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


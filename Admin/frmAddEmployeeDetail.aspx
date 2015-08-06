<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmAddEmployeeDetail.aspx.cs" Inherits="Admin_frmAddEmployeeDetail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="color: #ff3300">
        <tr>
            <td colspan="2" style="font-size: 16pt; color: red; font-family: Verdana;" align="center">
                Employee Addition</td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 21px">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="353px"></asp:Label><br />
                <span style="color: #ff3300"><strong><span style="color: #ff3300">Please Enter</span> The *
                    Value</strong></span></td>
        </tr>
        <tr style="color: #000000">
            <td>
                <span style="color: #ff3300">Employ</span>ee Name<span style="color: #ff3300">*</span>:</td>
            <td style="width: 240px">
                <asp:TextBox ID="txtName" runat="server" Width="174px"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td>
                <span style="color: #ff3300">Addres</span>s<span style="color: #000000">*</span>:</td>
            <td style="width: 240px">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="174px"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAddress" ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td>
                <span style="color: #ff3300">Phone</span><span style="color: #000000">*</span>:</td>
            <td style="width: 240px">
                <asp:TextBox ID="txtPhone" runat="server" Width="174px"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPhone" ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #ff3300">
            <td>
                Email:</td>
            <td style="width: 240px">
                <asp:TextBox ID="txtMail" runat="server" Width="174px"></asp:TextBox></td>
        </tr>
        <tr style="color: #000000">
            <td>
                Duty Time:</td>
            <td style="width: 240px">
                <asp:DropDownList ID="ddlDutyTime" runat="server" Width="91px">
                    <asp:ListItem>Day</asp:ListItem>
                    <asp:ListItem>Night</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr style="color: #000000">
            <td>
                User Name<span style="color: #ff3300">*</span>:</td>
            <td style="width: 240px">
                <asp:TextBox ID="txtUname" runat="server" Width="174px"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtName" ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td>
                Password<span style="color: #ff3300">*</span>:</td>
            <td style="width: 240px">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="174px"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td>
                Confirm Password<span style="color: #ff3300">*</span>:</td>
            <td>
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" Width="174px"></asp:TextBox><asp:CompareValidator
                    ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirm"
                    ErrorMessage="Password Mismatch"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="57px" />
                <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" /></td>
        </tr>
    </table>
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmAddSpecialist.aspx.cs" Inherits="Admin_frmAddSpecialist" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 408px">
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 16pt; color:red; font-family: Verdana">Specialist
                    Addition</span></strong></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 43px">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="40px"></asp:Label><br />
                <span style="color: #ff3300">Please Enter The * Value</span></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 23px">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <strong><span style="font-size: 8pt; font-family: Verdana">
                Specialist Name:</span></strong></td>
            <td style="width: 276px">
                <asp:TextBox ID="txtName" runat="server" Width="184px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Description:</strong></span></td>
            <td style="width: 276px">
                <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" Width="184px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="76px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" />
                <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" Width="64px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" /></td>
        </tr>
    </table>
</asp:Content>


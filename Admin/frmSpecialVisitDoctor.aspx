<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmSpecialVisitDoctor.aspx.cs" Inherits="Admin_frmSpecialVisitDoctor" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana">Special
                    Visit Doctor Addition</span></strong></td>
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
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                Doctor Code:</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtCode" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                Doctor Name:</td>
            <td style="width: 100px; height: 26px">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                Specialist:</td>
            <td style="width: 100px">
                <asp:DropDownList ID="ddlSpecialist" runat="server" Width="155px">
                    <asp:ListItem>---Select---</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                Description:</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                Charges:</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtCharges" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="76px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" />
                <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" Width="64px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" /></td>
        </tr>
    </table>
</asp:Content>


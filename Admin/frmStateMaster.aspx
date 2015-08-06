<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmStateMaster.aspx.cs" Inherits="Admin_frmStateMaster" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 28%" align="center" >
        <tr>
            <td align="center" colspan="3">
                <table width="100%">
                    <tr>
                        <td align="center" colspan="3" style="height: 27px; text-align: center">
                            &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3" style="height: 27px; text-align: center">
                            <strong><span style="font-size: 16pt; color: red; font-family: Verdana">State Master</span></strong></td>
                    </tr>
                </table>
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="367px"></asp:Label><br />
                <span style="color: #ff3300">Please Enter The * Value</span></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 314px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                Country:</td>
            <td>
                <asp:DropDownList ID="DdlCountry" runat="server" Width="155px">
                </asp:DropDownList></td>
            <td align="left" style="width: 414px">
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 314px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                State Name:</td>
            <td>
                <asp:TextBox ID="txtName" runat="server" MaxLength="150"></asp:TextBox></td>
            <td align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td align="left" style="width: 314px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                State Description:</td>
            <td>
                <asp:TextBox ID="txtDesc" runat="server" MaxLength="1000"></asp:TextBox></td>
            <td align="left">
                </td>
        </tr>
        <tr style="color: #000000">
            <td align="left" colspan="3" style="font-weight: bolder; font-size: 8pt; font-family: Verdana;
                text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr style="color: #000000">
            <td align="left" colspan="2" style="font-weight: bolder; font-size: 8pt; font-family: Verdana;
                text-align: right">
                <asp:Button ID="BtnAdd" runat="server" OnClick="BtnAdd_Click" Text="Save" Width="67px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" /><asp:Button ID="BtnClear" runat="server" OnClick="BtnClear_Click" Text="Clear" Width="67px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" /></td>
            <td align="left">
            </td>
        </tr>
    </table>
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmAddMedicine.aspx.cs" Inherits="Admin_frmAddMedicine" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <asp:ScriptManager id="ScriptManager1" runat="server"></asp:ScriptManager>
    <table align="center" style="width: 440px">
        <tr>
            <td colspan="3" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <strong><span style="font-size: 16pt; color:red; font-family: Verdana">Medicine
                    Addition</span></strong></td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="38px"></asp:Label><br />
                <span style="color: #ff3300"></span></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <span style="color: #ff3300; font-size: 8pt; font-family: Verdana;"><strong>Please Enter The * Value</strong></span></td>
        </tr>
        <tr>
            <td style="width: 123px" >
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Medicine Code:</strong></span></td>
            <td style="width: 294px" >
                <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
                </td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCode"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 123px" >
                <span style="font-size: 8pt; font-family: Verdana"><strong>Medicine Name:</strong></span></td>
            <td style="width: 294px" >
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 123px" >
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Prices:</strong></span></td>
            <td style="width: 294px" >
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>&nbsp;
                <cc2:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers"
                    TargetControlID="txtPrice">
                </cc2:FilteredTextBoxExtender>
            </td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPrice"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 123px" >
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Manufacture Date:</strong></span></td>
            <td style="width: 294px">
                <cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                </cc1:GMDatePicker>
            </td>
            <td >
            </td>
        </tr>
        <tr>
            <td style="width: 123px" >
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Expiry Date:</strong></span></td>
            <td style="width: 294px" >
                <cc1:GMDatePicker ID="GMDatePicker2" runat="server">
                </cc1:GMDatePicker>
            </td>
            <td >
            </td>
        </tr>
        <tr>
            <td style="width: 123px" >
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Company Name:</strong></span></td>
            <td style="width: 294px" >
                <asp:TextBox ID="txtCmpName" runat="server"></asp:TextBox>
                </td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCmpName"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 123px" >
                <strong><span style="font-size: 8pt; font-family: Verdana">
                Batch No.:</span></strong></td>
            <td style="width: 294px" >
                <asp:TextBox ID="txtBatch" runat="server"></asp:TextBox>
                </td>
            <td >
            </td>
        </tr>
        <tr>
            <td style="width: 123px" >
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Quantity:</strong></span></td>
            <td style="width: 294px" >
                <asp:TextBox ID="txtQty" runat="server"></asp:TextBox>&nbsp;
                <cc2:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="Numbers"
                    TargetControlID="txtQty">
                </cc2:FilteredTextBoxExtender>
            </td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtBatch"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: right">
                <asp:Button ID="btnAdd" runat="server" Text="Add" Width="46px" OnClick="btnAdd_Click" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" />
                <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" /></td>
            <td colspan="1" style="text-align: center">
            </td>
        </tr>
    </table>
</asp:Content>


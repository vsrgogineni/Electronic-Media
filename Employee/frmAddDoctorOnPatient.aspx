<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmAddDoctorOnPatient.aspx.cs" Inherits="Employee_frmAddDoctorOnPatient" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table align="center" style="width: 360px">
        <tr>
            <td colspan="3" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana">Doctor Addition
                    on Patient</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="297px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="left" colspan="1" style="font-weight: bolder; font-size: 8pt; font-family: verdana">
                Patient Code:</td>
            <td align="left" colspan="2">
                <asp:DropDownList ID="ddlCode" runat="server" Width="112px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="left" colspan="1" style="font-weight: bolder; font-size: 8pt; font-family: verdana">
                Doctor Code:</td>
            <td align="left" colspan="2">
                <asp:DropDownList ID="ddlDrCode" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlDrCode_SelectedIndexChanged"
                    Width="169px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="left" colspan="1" style="font-weight: bolder; font-size: 8pt; font-family: verdana">
                Doctor Name:</td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtName" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" colspan="1" style="font-weight: bolder; font-size: 8pt; font-family: verdana">
                Specialist:</td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtSpecialist" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" colspan="1" style="font-weight: bolder; font-size: 8pt; font-family: verdana">
                Charges:</td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtCharge" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" colspan="1" style="font-weight: bolder; font-size: 8pt; font-family: verdana">
                Date:</td>
            <td align="left" colspan="2">
                <cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                </cc1:GMDatePicker>
            </td>
        </tr>
        <tr>
            <td align="left" colspan="1" style="font-weight: bolder; font-size: 8pt; font-family: verdana">
                Time:</td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtTime" runat="server" Width="90px"></asp:TextBox><asp:DropDownList
                    ID="ddlTime" runat="server" Width="47px">
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>PM</asp:ListItem>
                </asp:DropDownList><cc2:MaskedEditExtender ID="MaskedEditExtender1" runat="server"
                    ClearMaskOnLostFocus="False" Mask="99:99" MaskType="Time" TargetControlID="txtTime">
                </cc2:MaskedEditExtender>
            </td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <asp:Button ID="btnAdd" runat="server" Text="Add" Width="84px" OnClick="btnAdd_Click" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" /></td>
        </tr>
    </table>
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmTestCharge.aspx.cs" Inherits="Employee_frmAddTestOnPatient" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <table align="center" style="width: 389px">
        <tr>
            <td colspan="4" style="width: 712px; text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center; width: 712px;">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana">Test on
                    Patient</span></strong></td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="318px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="font-weight: bolder; font-size: 8pt; width: 149px; font-family: verdana; height: 26px">
                Patient Code:</td>
            <td style="width: 292px">
                <asp:DropDownList ID="ddlCode" runat="server" Width="171px">
                    <asp:ListItem>---Select---</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 149px; height: 26px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Test Code:</td>
            <td style="width: 292px; height: 26px">
                <asp:DropDownList ID="ddlTestCode" runat="server" Width="172px" AutoPostBack="True" OnSelectedIndexChanged="ddlTestCode_SelectedIndexChanged">
                 <asp:ListItem>---Select---</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 149px; height: 26px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Test Name:</td>
            <td style="width: 292px; height: 26px">
                <asp:TextBox ID="txtName" runat="server" Width="161px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 149px; height: 26px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Charges:</td>
            <td style="width: 292px; height: 26px">
                <asp:TextBox ID="txtCharge" runat="server" Width="165px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 149px; height: 26px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Date:</td>
            <td style="width: 292px; height: 26px">
                <cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                </cc1:GMDatePicker>
            </td>
        </tr>
        <tr>
            <td style="width: 149px; height: 26px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Time:</td>
            <td style="width: 292px; height: 26px">
                <asp:TextBox ID="txttime" runat="server" Width="120px"></asp:TextBox><asp:DropDownList ID="ddlTime" runat="server" Width="68px">
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>PM</asp:ListItem>
                </asp:DropDownList>
                <cc2:MaskedEditExtender ID="MaskedEditExtender1" runat="server" Mask="99:99" MaskType="Time"
                    TargetControlID="txttime">
                </cc2:MaskedEditExtender>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnAdd" runat="server" Text="Add" Width="75px" OnClick="btnAdd_Click" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" /></td>
        </tr>
    </table>
</asp:Content>


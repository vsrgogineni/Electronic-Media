<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmRoomCharge.aspx.cs" Inherits="Employee_frmRoomCharge" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 377px">
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana;">Room Charges</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="270px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 154px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Patient Code:</td>
            <td style="width: 217px">
                <asp:DropDownList ID="ddlPatientCode" runat="server" Width="156px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 154px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Room Code:</td>
            <td style="width: 217px">
                <asp:DropDownList ID="ddlRoomCode" runat="server" Width="156px" AutoPostBack="True" OnSelectedIndexChanged="ddlRoomCode_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 154px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Room Name:</td>
            <td style="width: 217px">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 154px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Room Charge:</td>
            <td style="width: 217px">
                <asp:TextBox ID="txtCharge" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 154px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Date On Room Given:</td>
            <td style="width: 217px">
                <cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                </cc1:GMDatePicker>
            </td>
        </tr>
        <tr>
            <td style="width: 154px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Time On Room Given:</td>
            <td style="width: 217px">
                <asp:TextBox ID="txtTime" runat="server" Width="126px"></asp:TextBox><asp:DropDownList ID="ddlTime" runat="server">
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>PM</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;<asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" />
                </td>
        </tr>
    </table>
</asp:Content>


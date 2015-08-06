<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmAddSpecialDoctorVisitOnpatient.aspx.cs" Inherits="Employee_frmAddSpecialDoctorVisitOnpatient" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <table align="center" style="width: 485px">
        <tr>
            <td colspan="4" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana">Doctor Special
                    Visit Addition On Patient</span></strong></td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="326px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 232px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 26px;">
                Patient Code:</td>
            <td style="width: 264px">
                <asp:DropDownList ID="ddlPateintCode" runat="server" Width="156px">
                                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 232px; height: 26px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Special Visit
                Doctor Code:</td>
            <td style="width: 264px; height: 26px">
                <asp:DropDownList ID="ddlDocCode" runat="server" Width="155px" AutoPostBack="True" OnSelectedIndexChanged="ddlDocCode_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 232px; height: 26px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Doctor Name:</td>
            <td style="width: 264px; height: 26px">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 232px; height: 26px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Specialist:</td>
            <td style="width: 264px; height: 26px">
                <asp:TextBox ID="txtSpecialist" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 232px; height: 26px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Charges:</td>
            <td style="width: 264px; height: 26px">
                <asp:TextBox ID="txtCharge" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 232px; height: 26px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Date:</td>
            <td style="width: 264px; height: 26px">
                <cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                </cc1:GMDatePicker>
            </td>
        </tr>
        <tr>
            <td style="width: 232px; height: 26px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Time:</td>
            <td style="width: 264px; height: 26px">
                <asp:TextBox ID="txtTime" runat="server" Width="82px"></asp:TextBox><asp:DropDownList
                    ID="ddlTime" runat="server">
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>PM</asp:ListItem>
                </asp:DropDownList>
                <cc2:MaskedEditExtender ID="MaskedEditExtender1" runat="server" Mask="99:99" MaskType="Time"
                    TargetControlID="txtTime">
                </cc2:MaskedEditExtender>
            </td>
        </tr>
        <tr>
            <td colspan="2" align= "center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnAdd" runat="server" Text="Add" Width="74px" OnClick="btnAdd_Click" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" /></td>
        </tr>
    </table>
</asp:Content>


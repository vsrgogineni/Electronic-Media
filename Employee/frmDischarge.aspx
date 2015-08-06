<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmDischarge.aspx.cs" Inherits="Employee_frmDischarge" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <table align="center" style="width: 688px">
        <tr>
            <td colspan="4" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana">Patient
                    Discharge</span></strong></td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="359px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 210px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Patient Code:</td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                <asp:DropDownList ID="ddlCode" runat="server" Width="157px" AutoPostBack="True" OnSelectedIndexChanged="ddlCode_SelectedIndexChanged">
                </asp:DropDownList></td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                In/Out Patient</td>
            <td style="width: 237px">
                <asp:DropDownList ID="ddlInOut" runat="server" Width="151px">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>In</asp:ListItem>
                    <asp:ListItem>Out</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 210px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Patient Name:</td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Date of Admit:</td>
            <td style="width: 237px">
                <asp:TextBox ID="txtAdmitDate" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style=" font-weight: bolder; font-size: 8pt; font-family: verdana; width: 210px;">
                Father/Husband Name:</td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 28px;">
                <asp:TextBox ID="txtHname" runat="server"></asp:TextBox></td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 28px;">
                Time of Admit:</td>
            <td style="width: 237px; height: 28px;">
                <asp:TextBox ID="txtAdmitTime" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 210px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Chief Complain:</td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                <asp:TextBox ID="txtComplaint" runat="server"></asp:TextBox></td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Date of Discharge:</td>
            <td style="width: 237px">
                <cc1:gmdatepicker id="GMDatePicker1" runat="server"></cc1:gmdatepicker>
            </td>
        </tr>
        <tr>
            <td style="width: 210px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Sex:</td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                <asp:TextBox ID="txtSex" runat="server"></asp:TextBox></td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Time of Discharge:</td>
            <td style="width: 237px; height: 24px;">
                <asp:TextBox ID="txtDischargeTime" runat="server" Width="78px"></asp:TextBox><asp:DropDownList ID="ddlTime" runat="server">
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>PM</asp:ListItem>
                </asp:DropDownList>
                <cc2:MaskedEditExtender ID="MaskedEditExtender1" runat="server" Mask="99:99" MaskType="Time"
                    TargetControlID="txtDischargeTime" ClearMaskOnLostFocus="False" UserTimeFormat="TwentyFourHour">
                </cc2:MaskedEditExtender>
            </td>
        </tr>
        <tr>
            <td style="width: 210px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Address:</td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Day Stayed:</td>
            <td style="width: 237px; height: 14px;">
                <asp:TextBox ID="txtDayStay" runat="server" Height="21px" Width="147px" ReadOnly="True">0</asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 210px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Age:</td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox></td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Advance:</td>
            <td style="width: 237px">
                <asp:TextBox ID="txtAdvance" runat="server" ReadOnly="True">0</asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 210px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Country:</td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox></td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Doctor Charges:</td>
            <td style="width: 237px">
                <asp:TextBox ID="txtDrCharge" runat="server" ReadOnly="True">0</asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 210px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                State:</td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                <asp:TextBox ID="txtState" runat="server"></asp:TextBox></td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Test Charges:</td>
            <td style="width: 237px">
                <asp:TextBox ID="txtTestCharge" runat="server" ReadOnly="True">0</asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 210px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                City:</td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Room Charges:</td>
            <td style="width: 237px; height: 26px;">
                <asp:TextBox ID="txtRoomCharge" runat="server" ReadOnly="True">0</asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 210px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Doctor Name:</td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                <asp:TextBox ID="txtDrName" runat="server"></asp:TextBox></td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Medicine Charges:</td>
            <td style="width: 237px">
                <asp:TextBox ID="txtMedicineCharge" runat="server" ReadOnly="True">0</asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 210px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Room Name:</td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                <asp:TextBox ID="txtRoomCode" runat="server" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Extra Charges:</td>
            <td style="width: 237px">
                <asp:TextBox ID="txtExtraCharge" runat="server">0</asp:TextBox>
                <cc2:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers"
                    TargetControlID="txtExtraCharge">
                </cc2:FilteredTextBoxExtender>
            </td>
        </tr>
        <tr>
            <td style="width: 210px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Patient Condition:</td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                <asp:TextBox ID="txtCondition" runat="server"></asp:TextBox></td>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Total Charges:</td>
            <td style="width: 237px">
                <asp:TextBox ID="txtTotalCharge" runat="server" ReadOnly="True">0</asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center" >
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center" >                <asp:Button ID="btnAdd" runat="server" Text="Discharge" Width="66px" OnClick="btnAdd_Click" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" />
                </td>
        </tr>
    </table>
</asp:Content>


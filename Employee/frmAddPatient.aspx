<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmAddPatient.aspx.cs" Inherits="Employee_frmAddInPatient" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
      <table align="center" style="width: 757px">
          <tr>
              <td colspan="4" style="text-align: center">
                  &nbsp;&nbsp;
              </td>
          </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana">Patient
                    Addition</span></strong></td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="358px"></asp:Label><br />
                <span style="color: #ff3300; font-size: 8pt; font-family: Verdana;"><strong>Please Enter The * Value</strong></span></td>
        </tr>
          <tr>
              <td align="center" colspan="4">
                  &nbsp;&nbsp;
              </td>
          </tr>
        <tr>
            <td style="height: 5px; font-weight: bolder; font-size: 8pt; width: 184px; font-family: verdana;">
                Patient Code:</td>
            <td style="height: 5px; width: 184px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                <asp:TextBox ID="txtCode1" runat="server" Width="26px">PTN</asp:TextBox><asp:TextBox ID="txtCode2" runat="server" Width="115px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCode2"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
            <td style="height: 5px; width: 184px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                In/Out Patient</td>
            <td style="width: 259px; height: 26px;">
                <asp:DropDownList ID="ddlInOut" runat="server" Width="136px">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>In</asp:ListItem>
                    <asp:ListItem>Out</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="height: 5px; font-weight: bolder; font-size: 8pt; width: 184px; font-family: verdana;">
                Patient Name:</td>
            <td style="height: 5px; width: 184px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                <asp:TextBox ID="txtPname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPname"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
            <td style="width: 184px; height: 5px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Time of Admit:</td>
            <td style="height: 5px">
                <asp:TextBox ID="txtTime" runat="server" Width="68px"></asp:TextBox><asp:DropDownList ID="ddlTime" runat="server">
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>PM</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtTime"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <cc1:MaskedEditExtender ID="MaskedEditExtender1" runat="server" Mask="99:99" MaskType="Time"
                    TargetControlID="txtTime">
                </cc1:MaskedEditExtender>
            </td>
        </tr>
        <tr>
            <td style="width: 184px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 5px;">
                Father/Husband Name:</td>
            <td style="width: 184px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 5px;">
                <asp:TextBox ID="txtHname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtHname"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
            <td style="width: 184px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 5px;">
                Date of Admit:</td>
            <td>
                <cc2:GMDatePicker ID="GMDatePicker1" runat="server">
                    <CalendarOtherMonthDayStyle BackColor="#C0C0FF" ForeColor="#C000C0" />
                </cc2:GMDatePicker>
            </td>
        </tr>
        <tr>
            <td style="width: 184px; height: 5px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Chief Complain:</td>
            <td style="height: 5px; width: 184px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                <asp:TextBox ID="txtComplain" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtComplain"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
            <td style="width: 184px; height: 5px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Doctor Code:</td>
            <td style="height: 11px">
                <asp:DropDownList ID="ddlDrCode" runat="server" Width="169px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 184px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 5px;">
                Sex:</td>
            <td style="width: 184px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 5px;">
                <asp:DropDownList ID="ddlSex" runat="server" Width="156px">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 184px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 5px;">
                Test Code:</td>
            <td>
                <asp:DropDownList ID="ddlTestCode" runat="server" Width="169px" Enabled="False">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="font-weight: bolder; font-size: 8pt; width: 184px; font-family: verdana; height: 5px">
                Address:</td>
            <td style="width: 184px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 5px;">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Height="50px" Width="186px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAddress"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
            <td style="width: 184px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 5px;">
                Room Code:</td>
            <td>
                <asp:DropDownList ID="ddlRoomCode" runat="server" Width="169px" Enabled="False">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="font-weight: bolder; font-size: 8pt; width: 184px; font-family: verdana; height: 5px">
                Country:</td>
            <td style="font-weight: bolder; font-size: 8pt; width: 184px; font-family: verdana; height: 5px">
                &nbsp;<asp:UpdatePanel id="UpdatePanel1" runat="server"><contenttemplate>
                <asp:DropDownList ID="ddlCountry" runat="server" Width="185px" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
                </asp:DropDownList>
</contenttemplate>
                </asp:UpdatePanel></td>
            <td style="width: 184px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 5px;">
                Advance:</td>
            <td>
                <asp:TextBox ID="txtAdvance" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAdvance"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="font-weight: bolder; font-size: 8pt; width: 184px; font-family: verdana; height: 5px">
                State:</td>
            <td style="font-weight: bolder; font-size: 8pt; width: 184px; font-family: verdana; height: 5px">
                &nbsp;<asp:UpdatePanel id="UpdatePanel2" runat="server"><contenttemplate>
                <asp:DropDownList ID="ddlState" runat="server" Width="186px" AutoPostBack="True" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                 
                </asp:DropDownList>
</contenttemplate>
                </asp:UpdatePanel></td>
            <td style="width: 184px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 5px;">
                Condition:</td>
            <td>
                <asp:TextBox ID="txtCondition" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtCondition"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="font-weight: bolder; font-size: 8pt; width: 184px; font-family: verdana; height: 5px">
                City:</td>
            <td style="font-weight: bolder; font-size: 8pt; width: 184px; font-family: verdana; height: 5px">
                &nbsp;<asp:UpdatePanel id="UpdatePanel3" runat="server"><contenttemplate>
                <asp:DropDownList ID="ddlCity" runat="server" Width="186px">
                   
                </asp:DropDownList>
</contenttemplate>
                </asp:UpdatePanel></td>
            <td style="width: 184px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 5px;">
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bolder; font-size: 8pt; width: 184px; font-family: verdana; height: 5px">
                Age:</td>
            <td style="font-weight: bolder; font-size: 8pt; width: 184px; font-family: verdana; height: 5px">
                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAge"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
            <td style="width: 184px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 5px;">
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td colspan="4">
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" Width="53px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" />
                </td>
        </tr>
    </table>
</asp:Content>


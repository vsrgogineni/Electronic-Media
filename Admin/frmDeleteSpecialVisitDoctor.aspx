<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmDeleteSpecialVisitDoctor.aspx.cs" Inherits="Admin_frmDeleteSpecialVisitDoctor" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table align="center">
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana">
                    Special Visit Doctor Deletion</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="17px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 12px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                Doctor Id:<br />
                <br />
                Doctor Code:<br />
                <br />
                Doctor Name:<br />
                <br />
                Specialist:</td>
            <td style="height: 12px;">
                &nbsp;
                <asp:UpdatePanel id="UpdatePanel1" runat="server">
                    <contenttemplate><asp:DropDownList ID="ddlId" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlId_SelectedIndexChanged"
                    Width="223px">
                </asp:DropDownList><BR />
                <asp:TextBox ID="txtCode" runat="server" ReadOnly="True" Width="225px"></asp:TextBox><BR />
                <asp:TextBox ID="txtName" runat="server" ReadOnly="True" Width="225px"></asp:TextBox><BR />
                <asp:TextBox ID="txtSpecialist" runat="server" ReadOnly="True" Width="225px"></asp:TextBox><BR />
</contenttemplate>
                </asp:UpdatePanel></td>
        </tr>
        <tr>
            <td colspan="2" style="font-weight: bolder; font-size: 8pt; font-family: Verdana;
                height: 12px">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" />
                <cc1:confirmbuttonextender id="ConfirmButtonExtender1" runat="server" confirmtext="Are U Sure ?"
                    targetcontrolid="btnDelete"></cc1:confirmbuttonextender>
            </td>
        </tr>
    </table>
</asp:Content>


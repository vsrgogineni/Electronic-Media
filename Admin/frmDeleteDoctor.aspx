<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmDeleteDoctor.aspx.cs" Inherits="Admin_frmDeleteDoctor" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table align="center" style="width: 370px">
        <tr>
            <td colspan="1" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="1" style="text-align: center">
                <strong><span style="font-size: 16pt; color:red; font-family: Verdana">
                    Doctor Deletion</span></strong></td>
        </tr>
        <tr>
            <td colspan="1" align="center">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="457px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                &nbsp;<asp:UpdatePanel id="UpdatePanel1" runat="server"><contenttemplate>
<TABLE cellSpacing=0 cellPadding=0 width="100%"><TBODY><TR><TD style="WIDTH: 507%">Doctor Id: </TD><TD style="WIDTH: 130%"><asp:DropDownList id="ddlId" runat="server" Width="165px" AutoPostBack="True" OnSelectedIndexChanged="ddlId_SelectedIndexChanged"></asp:DropDownList></TD></TR><TR><TD style="WIDTH: 507%">Doctor Code:</TD><TD style="WIDTH: 130%"><asp:TextBox id="txtCode" runat="server" Width="225px" ReadOnly="True"></asp:TextBox> </TD></TR><TR><TD style="WIDTH: 507%">Doctor Name: </TD><TD style="WIDTH: 130%"><asp:TextBox id="txtName" runat="server" Width="225px" ReadOnly="True">
</asp:TextBox></TD></TR><TR><TD style="WIDTH: 507%">Specialist: </TD><TD style="WIDTH: 130%"><asp:TextBox id="txtSpecialist" runat="server" Width="224px" ReadOnly="True"></asp:TextBox> </TD></TR></TBODY></TABLE>
</contenttemplate>
                </asp:UpdatePanel></td>
        </tr>
        <tr>
            <td colspan="1" style="text-align: center">
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                <cc1:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" ConfirmText="Are U Sure ?"
                    TargetControlID="btnDelete">
                </cc1:ConfirmButtonExtender>
            </td>
        </tr>
    </table>
</asp:Content>


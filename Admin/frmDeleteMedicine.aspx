<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmDeleteMedicine.aspx.cs" Inherits="Admin_frmDeleteMedicine" Title="Untitled Page" %>

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
                    Medicine
                    Deletion</span></strong></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="315px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 106px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                <br />
                Medicine Id:<br />
                <br />
                Medicine Code:<br />
                <br />
                Medicine Name:</td>
            <td style="width: 100px">
                &nbsp;<asp:UpdatePanel id="UpdatePanel1" runat="server" UpdateMode="Conditional"><contenttemplate>
                <asp:DropDownList ID="ddlId" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlId_SelectedIndexChanged" Width="154px">
                </asp:DropDownList>
                <asp:TextBox ID="txtCode" runat="server" ReadOnly="True" Width="188px"></asp:TextBox><BR />
                <asp:TextBox ID="txtName" runat="server" ReadOnly="True" Width="188px"></asp:TextBox>
</contenttemplate>
                </asp:UpdatePanel></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                <cc1:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" ConfirmText="Are U Sure ?"
                    TargetControlID="btnDelete">
                </cc1:ConfirmButtonExtender>
            </td>
        </tr>
    </table>
</asp:Content>


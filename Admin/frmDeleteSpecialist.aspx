<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmDeleteSpecialist.aspx.cs" Inherits="Admin_frmDeleteSpecialist" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table align="center" style="width: 490px">
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana">
                    Specialist Deletion</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="272px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 210px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                Specialist Id:<br />
                <br />
                Specialist Name:<br />
                <br />
                Description</td>
            <td style="width: 100px">
                &nbsp;<asp:UpdatePanel id="UpdatePanel1" runat="server"><contenttemplate>
                <asp:DropDownList ID="ddlId" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlId_SelectedIndexChanged"
                    Width="188px">
                </asp:DropDownList><BR />
                <asp:TextBox ID="txtName" runat="server" ReadOnly="True" Width="213px"></asp:TextBox><BR />
                <asp:TextBox ID="txtDesc" runat="server" ReadOnly="True" TextMode="MultiLine" Width="213px"></asp:TextBox>
</contenttemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete"
                    Width="61px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" />
                <cc1:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" ConfirmText="Are U Sure ?"
                    TargetControlID="btnDelete">
                </cc1:ConfirmButtonExtender>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmDeleteTest.aspx.cs" Inherits="Admin_frmDeleteTest" Title="Untitled Page" %>

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
                <strong><span style="font-size: 16pt; color:red; font-family: Verdana">
                    Test Deletion</span></strong></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="289px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 203px; font-weight: bolder; font-size: 8pt; font-family: Verdana;">
                Test Code:<br />
                <br />
                Test Name:<br />
                <br />
                Test Description:</td>
            <td style="width: 100px">
                &nbsp;<asp:UpdatePanel id="UpdatePanel1" runat="server"><contenttemplate>
                <asp:DropDownList ID="ddlCode" runat="server" Width="155px" AutoPostBack="True" OnSelectedIndexChanged="ddlCode_SelectedIndexChanged">
                </asp:DropDownList><BR />
                <asp:TextBox ID="txtName" runat="server" ReadOnly="True"></asp:TextBox><BR />
                <asp:TextBox ID="txtDesc" runat="server" Height="55px" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
</contenttemplate>
                </asp:UpdatePanel></td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" />
                <cc1:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" ConfirmText="Are U Sure ?"
                    TargetControlID="btnDelete">
                </cc1:ConfirmButtonExtender>
                </td>
        </tr>
    </table>
</asp:Content>


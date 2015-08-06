<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmTestCharges.aspx.cs" Inherits="Admin_Search_frmTestCharges" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="text-align: center; height: 26px;">
                <strong><span style="font-size: 16pt; color: #ff0066">
                    <asp:ScriptManager id="ScriptManager1" runat="server">
                    </asp:ScriptManager>Test Charges</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="308px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:UpdatePanel id="UpdatePanel1" runat="server">
                    <contenttemplate>
<table><tbody><tr><td style="WIDTH: 100px" align="right"><strong>Select Date:</strong>
</td><td width="70%" align="left">
<cc1:GMDatePicker id="GMDatePicker1" runat="server" >
</cc1:GMDatePicker></td></tr><tr><td colSpan=2>
<asp:Button id="btnShow" onclick="btnShow_Click" runat="server" Width="152px" Text="Show Test Charges">
</asp:Button>
</td></tr></tbody></table>
<asp:GridView id="GridView1" runat="server" Width="722px" AllowPaging="True" EmptyDataText="No Test Happened Today" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5"
 BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
<FooterStyle BackColor="Navy" ForeColor="Snow"></FooterStyle>
<EmptyDataRowStyle ForeColor="Red" Font-Size="14pt" Font-Bold="True"></EmptyDataRowStyle>
<RowStyle BackColor="White" ForeColor="#003399"></RowStyle>
<SelectedRowStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True"></SelectedRowStyle>
<PagerStyle BackColor="White" ForeColor="Navy" HorizontalAlign="Left"></PagerStyle>
<HeaderStyle BackColor="#003399" ForeColor="#CCCCFF" Font-Bold="True"></HeaderStyle>
</asp:GridView> 
</contenttemplate>
</asp:UpdatePanel>
</td>
        </tr>
    </table>
</asp:Content>


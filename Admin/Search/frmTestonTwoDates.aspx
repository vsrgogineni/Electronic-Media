<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmTestonTwoDates.aspx.cs" Inherits="Admin_Search_frmTestonTwoDates" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                <strong><span style="font-size: 16pt; color: #ff0066">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
    Test on Two Dates</span></strong></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:UpdatePanel id="UpdatePanel1" runat="server"><contenttemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 176px" align=right><STRONG>From Date:</STRONG></TD><TD style="WIDTH: 383px" align=left><cc1:GMDatePicker id="GMDatePicker1" runat="server" __designer:dtid="16044073672507404" __designer:wfdid="w84">
                </cc1:GMDatePicker></TD></TR><TR><TD style="WIDTH: 176px" align=right><STRONG>To Date:</STRONG></TD><TD style="WIDTH: 383px" align=left><cc1:GMDatePicker id="GMDatePicker2" runat="server" __designer:dtid="16044073672507409" __designer:wfdid="w83">
                </cc1:GMDatePicker></TD></TR><TR><TD align=center colSpan=2><asp:Button id="btnShow" onclick="btnShow_Click" runat="server" __designer:dtid="14636698788954130" __designer:wfdid="w74" Text="Show Test " Width="104px"></asp:Button></TD></TR></TBODY></TABLE> <asp:GridView id="GridView1" runat="server" __designer:wfdid="w72" Width="899px" CellPadding="4" BorderWidth="1px" BorderStyle="None" BorderColor="#3366CC" BackColor="White" AllowPaging="True" EmptyDataText="No Test Happened" Height="83px" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5">
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


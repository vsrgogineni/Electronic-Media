<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmMedicineBetweenDates.aspx.cs" Inherits="Admin_Search_frmMedicineBetweenDates" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                <strong><span style="font-size: 16pt; color: #ff0066">
                    <asp:ScriptManager id="ScriptManager1" runat="server">
                    </asp:ScriptManager>Medicine Between Dates</span></strong></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:UpdatePanel id="UpdatePanel1" runat="server"><contenttemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 183px" align=right><STRONG>Manufacturing Date:</STRONG></TD><TD style="WIDTH: 445px" align=left><cc1:GMDatePicker id="GMDatePicker1" runat="server" __designer:dtid="18858823439613961" __designer:wfdid="w95">
                </cc1:GMDatePicker></TD></TR><TR><TD style="WIDTH: 183px" align=right><STRONG>Expiry Date:</STRONG></TD><TD style="WIDTH: 445px" align=left><cc1:GMDatePicker id="GMDatePicker2" runat="server" __designer:dtid="18858823439613965" __designer:wfdid="w96">
                </cc1:GMDatePicker></TD></TR><TR><TD align=center colSpan=2><asp:Button id="btnShow" onclick="btnShow_Click" runat="server" Width="92px" Text="Show"></asp:Button></TD></TR></TBODY></TABLE> <BR /><asp:GridView id="GridView1" runat="server" Width="820px" CellPadding="4" BorderWidth="1px" BorderStyle="None" BorderColor="#3366CC" BackColor="White" Height="28px" EmptyDataText="No Data Found">
                    <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="Red" /><FooterStyle BackColor="#99CCCC" ForeColor="#003399"></FooterStyle>

<RowStyle BackColor="White" ForeColor="#003399"></RowStyle>

<SelectedRowStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True"></SelectedRowStyle>

<PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left"></PagerStyle>

<HeaderStyle BackColor="#003399" ForeColor="#CCCCFF" Font-Bold="True"></HeaderStyle>
                </asp:GridView>
</contenttemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
</asp:Content>


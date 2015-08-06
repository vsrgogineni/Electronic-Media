<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmPatientBettwoDates.aspx.cs" Inherits="Admin_Search_frmPatientBettwoDates" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                <strong><span style="font-size: 16pt; color: #ff0066">
                    <asp:ScriptManager id="ScriptManager1" runat="server">
                    </asp:ScriptManager>Patient Between Dates</span></strong></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:UpdatePanel id="UpdatePanel1" runat="server">
                    <contenttemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 111px" align=right><STRONG>From Date:</STRONG></TD><TD style="WIDTH: 334px" align=left><cc1:GMDatePicker id="GMDatePicker1" runat="server" __designer:dtid="17732923532771338" __designer:wfdid="w91">
                </cc1:GMDatePicker></TD></TR><TR><TD style="WIDTH: 111px; HEIGHT: 21px" align=right><STRONG>To Date:</STRONG></TD><TD style="WIDTH: 334px; HEIGHT: 21px" align=left><cc1:GMDatePicker id="GMDatePicker2" runat="server" __designer:dtid="17732923532771343" __designer:wfdid="w92">
                </cc1:GMDatePicker></TD></TR><TR><TD align=center colSpan=2><asp:Button id="btnShow" onclick="btnShow_Click" runat="server" Width="129px" Text="Show Patient"></asp:Button></TD></TR></TBODY></TABLE> <asp:GridView id="GridView1" runat="server" Width="900px" CellPadding="4" BorderWidth="1px" BorderStyle="None" BorderColor="#3366CC" BackColor="White" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging" Height="114px" EmptyDataText="No Patient Admitted" AllowPaging="True">
<FooterStyle BackColor="Navy" ForeColor="Snow"></FooterStyle>

<EmptyDataRowStyle ForeColor="Red" Font-Size="14pt" Font-Bold="True"></EmptyDataRowStyle>

<RowStyle BackColor="White" ForeColor="#003399"></RowStyle>

<SelectedRowStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True"></SelectedRowStyle>

<PagerStyle BackColor="White" ForeColor="#003399" HorizontalAlign="Left" Font-Bold="True"></PagerStyle>

<HeaderStyle BackColor="#003399" ForeColor="#CCCCFF" Font-Bold="True"></HeaderStyle>
</asp:GridView>
</contenttemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
</asp:Content>


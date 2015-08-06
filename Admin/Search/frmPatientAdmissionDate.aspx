<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmPatientAdmissionDate.aspx.cs" Inherits="Admin_Search_frmPatientAdmissionDate" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 16pt; color: #ff0066">
                    <asp:ScriptManager id="ScriptManager1" runat="server">
                    </asp:ScriptManager>Patient Admission Date</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="288px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:UpdatePanel id="UpdatePanel1" runat="server">
                    <contenttemplate>
<TABLE><TBODY><TR><TD style="WIDTH: 100px" align=right><STRONG>Select Date:</STRONG></TD><TD style="WIDTH: 239px" align=left><cc1:GMDatePicker id="GMDatePicker1" runat="server" __designer:dtid="18014398509481997" __designer:wfdid="w93">
                </cc1:GMDatePicker></TD></TR><TR><TD align=center colSpan=2><asp:Button id="btnShow" onclick="btnShow_Click" runat="server" Width="94px" Text="Show Patient"></asp:Button></TD></TR></TBODY></TABLE> <asp:GridView id="GridView1" runat="server" Width="828px" CellPadding="4" BorderWidth="1px" BorderStyle="None" BorderColor="#3366CC" BackColor="White" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging" EmptyDataText="No Pateint Admitted" AllowPaging="True">
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


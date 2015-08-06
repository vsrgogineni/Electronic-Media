<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmAllTests.aspx.cs" Inherits="Admin_Search_frmSingleTestS" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 16pt; color: #ff0066">
                    <asp:ScriptManager id="ScriptManager1" runat="server">
                    </asp:ScriptManager>Single Test Charges</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="235px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:UpdatePanel id="UpdatePanel1" runat="server"><contenttemplate>
<asp:Button id="btnShow" onclick="btnShow_Click" runat="server" Text="Show All Test"></asp:Button><BR /><BR /><asp:GridView id="GridView1" runat="server" Width="816px" Height="202px" CellPadding="4" BorderWidth="1px" BorderStyle="None" BorderColor="#3366CC" BackColor="White" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="True">
<FooterStyle BackColor="Navy" ForeColor="Snow"></FooterStyle>

<RowStyle BackColor="White" ForeColor="#003399"></RowStyle>

<SelectedRowStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True"></SelectedRowStyle>

<PagerStyle BackColor="White" ForeColor="#003399" HorizontalAlign="Left" Font-Bold="True"></PagerStyle>

<HeaderStyle BackColor="#003399" ForeColor="#CCCCFF" Font-Bold="True"></HeaderStyle>
</asp:GridView><BR />
</contenttemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmAllDoctor.aspx.cs" Inherits="Admin_Search_frmAllDoctor" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 16pt; color:red">
                    <asp:ScriptManager id="ScriptManager1" runat="server">
                    </asp:ScriptManager>List of Doctors</span></strong></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; height: 24px;">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="6px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 24px; text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:UpdatePanel id="UpdatePanel1" runat="server">
                    <contenttemplate>
<asp:Button id="btnShow" onclick="btnShow_Click" runat="server" Width="124px" Font-Size="X-Small" Font-Bold="True" Text="Show All Doctor" Font-Names="Verdana"></asp:Button>&nbsp; <BR /><BR /><asp:GridView id="GridView1" runat="server" Width="18px" CellPadding="4" BorderWidth="1px" BorderStyle="None" BorderColor="#3366CC" BackColor="White" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="True">
<FooterStyle BackColor="#99CCCC" ForeColor="#003399"></FooterStyle>

<RowStyle BackColor="White" ForeColor="#003399"></RowStyle>

<SelectedRowStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True"></SelectedRowStyle>

<PagerStyle BackColor="White" ForeColor="Navy" HorizontalAlign="Left" Font-Bold="True"></PagerStyle>

<HeaderStyle BackColor="#003399" ForeColor="#CCCCFF" Font-Bold="True"></HeaderStyle>
</asp:GridView> 
</contenttemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
</asp:Content>


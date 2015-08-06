<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmMedicineonPatient.aspx.cs" Inherits="Admin_Search_frmMedicineonPatient" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                <strong><span style="font-size: 16pt; color: #ff0066">
                    <asp:ScriptManager id="ScriptManager1" runat="server">
                    </asp:ScriptManager>Medicine on Patient</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="383px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:UpdatePanel id="UpdatePanel1" runat="server">
                    <contenttemplate>
<STRONG>Patient Code: &nbsp;&nbsp; <asp:DropDownList id="ddlCode" runat="server" Width="175px" OnSelectedIndexChanged="ddlCode_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList><BR />Medicine Code:<asp:DropDownList id="ddlMedicineCode" runat="server" Width="175px" OnSelectedIndexChanged="ddlMedicineCode_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList><BR />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Patient Name: &nbsp; <asp:Label id="lblName" runat="server" Width="212px" Font-Bold="True"></asp:Label><BR /><BR /><asp:GridView id="GridView1" runat="server" Width="760px" CellPadding="4" BorderWidth="1px" BorderStyle="None" BorderColor="#3366CC" BackColor="White" Height="75px"><FooterStyle BackColor="#99CCCC" ForeColor="#003399"></FooterStyle>

<RowStyle BackColor="White" ForeColor="#003399"></RowStyle>

<SelectedRowStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True"></SelectedRowStyle>

<PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left"></PagerStyle>

<HeaderStyle BackColor="#003399" ForeColor="#CCCCFF" Font-Bold="True"></HeaderStyle>
                </asp:GridView></STRONG> 
</contenttemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
</asp:Content>


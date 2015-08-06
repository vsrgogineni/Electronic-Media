<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmPatientBlgsDoctor.aspx.cs" Inherits="Admin_Search_frmPatientBlgsDoctor" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 16pt; color: #ff0066">
                    <asp:ScriptManager id="ScriptManager1" runat="server">
                    </asp:ScriptManager>Patient on Particular Doctor</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="274px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:UpdatePanel id="UpdatePanel1" runat="server">
                    <contenttemplate>
<STRONG><TABLE><TBODY><TR><TD style="WIDTH: 100px" align=right>Doctor Name:</TD><TD style="WIDTH: 3px" align=left><asp:Label id="lblName" runat="server" __designer:dtid="17451448556060685" Width="189px" Font-Bold="True" __designer:wfdid="w90"></asp:Label></TD></TR><TR><TD style="WIDTH: 100px" align=right>Doctor Code:</TD><TD style="WIDTH: 3px" align=left><asp:DropDownList id="ddlDrCode" runat="server" Width="162px" OnSelectedIndexChanged="ddlDrCode_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList></TD></TR></TBODY></TABLE><asp:GridView id="GridView1" runat="server" Width="849px" CellPadding="4" BorderWidth="1px" BorderStyle="None" BorderColor="#3366CC" BackColor="White" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5" Height="82px" AllowPaging="True" EmptyDataText="No Pateint Found">
<FooterStyle BackColor="Navy" ForeColor="Snow"></FooterStyle>

<EmptyDataRowStyle ForeColor="Red" Font-Size="14pt" Font-Bold="True"></EmptyDataRowStyle>

<RowStyle BackColor="White" ForeColor="#003399"></RowStyle>

<SelectedRowStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True"></SelectedRowStyle>

<PagerStyle BackColor="White" ForeColor="#003399" HorizontalAlign="Left"></PagerStyle>

<HeaderStyle BackColor="#003399" ForeColor="#CCCCFF" Font-Bold="True"></HeaderStyle>
</asp:GridView></STRONG> 
</contenttemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
</asp:Content>


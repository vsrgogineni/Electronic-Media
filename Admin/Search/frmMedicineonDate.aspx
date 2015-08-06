<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmMedicineonDate.aspx.cs" Inherits="Admin_Search_frmMedicineonDate" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                <strong><span style="font-size: 16pt; color: #ff0066">
                    <asp:ScriptManager id="ScriptManager1" runat="server">
                    </asp:ScriptManager>Medicine on Date</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="304px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:UpdatePanel id="UpdatePanel1" runat="server">
                    <contenttemplate>
<STRONG><TABLE><TBODY><TR><TD style="WIDTH: 100px" align=right>Date:</TD><TD style="WIDTH: 277px" align=left><cc1:GMDatePicker id="GMDatePicker1" runat="server" __designer:dtid="18577348462903309" __designer:wfdid="w94">
                </cc1:GMDatePicker></TD></TR><TR><TD style="WIDTH: 100px" align=right>&nbsp;Patient Code:</TD><TD style="WIDTH: 277px" align=left><asp:DropDownList id="ddlCode" runat="server" Width="180px" AutoPostBack="True" OnSelectedIndexChanged="ddlCode_SelectedIndexChanged">
                </asp:DropDownList></TD></TR><TR><TD style="WIDTH: 100px" align=right>Patient Name:</TD><TD style="WIDTH: 277px" align=left><asp:Label id="lblName" runat="server" __designer:dtid="15199648742375442" Width="198px" Font-Bold="True" __designer:wfdid="w76"></asp:Label></TD></TR></TBODY></TABLE>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</STRONG><STRONG><asp:GridView id="GridView1" runat="server" Width="796px" AllowPaging="True" EmptyDataText="No Data Found" Height="10px" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
<FooterStyle BackColor="Navy" ForeColor="Snow"></FooterStyle>

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


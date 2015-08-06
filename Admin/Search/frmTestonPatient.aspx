<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmTestonPatient.aspx.cs" Inherits="Admin_Search_frmTestonPatient" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                <strong><span style="font-size: 16pt; color: #ff0066">
                    <asp:ScriptManager id="ScriptManager1" runat="server">
                    </asp:ScriptManager>Test on Patient</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 21px">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="292px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                &nbsp;<asp:UpdatePanel id="UpdatePanel1" runat="server"><contenttemplate>
<STRONG><TABLE style="WIDTH: 395px"><TBODY><TR><TD align=right>Patient Code:</TD><TD align=left><asp:DropDownList id="ddlPatient" runat="server" Width="132px" AutoPostBack="True" OnSelectedIndexChanged="ddlPatient_SelectedIndexChanged">
                </asp:DropDownList></TD></TR><TR><TD align=right>Test Code:&nbsp;</TD><TD align=left><asp:DropDownList id="ddlTest" runat="server" Width="132px" AutoPostBack="True" OnSelectedIndexChanged="ddlTest_SelectedIndexChanged">
                </asp:DropDownList></TD></TR><TR><TD align=right>Test Name:</TD><TD align=left><asp:Label id="lblName" runat="server" __designer:dtid="15481123719086093" Width="162px" Font-Bold="True" __designer:wfdid="w77"></asp:Label></TD></TR></TBODY></TABLE><asp:GridView id="GridView1" runat="server" Width="820px" Height="74px" AllowPaging="True" EmptyDataText="No Data Found" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
<FooterStyle BackColor="Navy" ForeColor="Snow"></FooterStyle>

<EmptyDataRowStyle ForeColor="Red" Font-Size="14pt" Font-Bold="True"></EmptyDataRowStyle>

<RowStyle BackColor="White" ForeColor="#003399"></RowStyle>

<SelectedRowStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True"></SelectedRowStyle>

<PagerStyle BackColor="White" ForeColor="Navy" HorizontalAlign="Left"></PagerStyle>

<HeaderStyle BackColor="#003399" ForeColor="#CCCCFF" Font-Bold="True"></HeaderStyle>
</asp:GridView></STRONG> 
</contenttemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
</asp:Content>


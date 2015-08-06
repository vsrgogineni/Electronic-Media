<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmRoomsAvailable.aspx.cs" Inherits="Admin_Search_frmRoomsAvailable" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 16pt; color: #ff0066">
                    <asp:ScriptManager id="ScriptManager1" runat="server">
                    </asp:ScriptManager>Rooms Available</span></strong></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:UpdatePanel id="UpdatePanel1" runat="server">
                    <contenttemplate>
<STRONG><TABLE><TBODY><TR><TD style="WIDTH: 100px" align=right>Status:</TD><TD style="WIDTH: 100px" align=left><asp:Label id="lblStatus" runat="server" __designer:dtid="16888498602639370" Width="167px" Font-Bold="True" __designer:wfdid="w88"></asp:Label></TD></TR><TR><TD style="WIDTH: 100px" align=right>Room Code:</TD><TD style="WIDTH: 100px" align=left><asp:DropDownList id="ddlRoomCode" runat="server" Width="169px" OnSelectedIndexChanged="ddlRoomCode_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList></TD></TR></TBODY></TABLE><asp:GridView id="GridView1" runat="server" Width="904px" CellPadding="4" BorderWidth="1px" BorderStyle="None" BorderColor="#3366CC" BackColor="White" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging" Height="78px" EmptyDataText="Room Not Alloted To Any Patient" AllowPaging="True">
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


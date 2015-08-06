<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmPatientInRoom.aspx.cs" Inherits="Admin_Search_frmPatientInRoom" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 16pt; color: #ff0066">
                    <asp:ScriptManager id="ScriptManager1" runat="server">
                    </asp:ScriptManager>Patient In Room</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0" Width="291px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:UpdatePanel id="UpdatePanel1" runat="server">
                    <contenttemplate>
<STRONG><TABLE><TBODY><TR><TD style="WIDTH: 100px" align=right>Room Name:</TD><TD style="WIDTH: 100px" align=left><asp:Label id="lblName" runat="server" __designer:dtid="17169973579350029" Width="228px" Font-Bold="True" __designer:wfdid="w89"></asp:Label></TD></TR><TR><TD style="WIDTH: 100px" align=right>Room Code:</TD><TD style="WIDTH: 100px" align=left><asp:DropDownList id="ddlRoomCode" runat="server" Width="153px" OnSelectedIndexChanged="ddlRoomCode_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList></TD></TR></TBODY></TABLE></STRONG><asp:GridView id="GridView1" runat="server" Width="760px" CellPadding="4" BorderWidth="1px" BorderStyle="None" BorderColor="#3366CC" BackColor="White" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="True">
<FooterStyle BackColor="Navy" ForeColor="Snow"></FooterStyle>

<RowStyle BackColor="White" ForeColor="#003399"></RowStyle>

<SelectedRowStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True"></SelectedRowStyle>

<PagerStyle BackColor="White" ForeColor="Navy" HorizontalAlign="Left"></PagerStyle>

<HeaderStyle BackColor="#003399" ForeColor="#CCCCFF" Font-Bold="True"></HeaderStyle>
</asp:GridView>
</contenttemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
</asp:Content>


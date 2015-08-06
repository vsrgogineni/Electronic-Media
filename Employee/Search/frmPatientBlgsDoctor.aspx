<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmPatientBlgsDoctor.aspx.cs" Inherits="Admin_Search_frmPatientBlgsDoctor" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 16pt; color: red">Patient on Particular Doctor</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="274px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Doctor Code:</td>
            <td style="width: 100px"><asp:DropDownList ID="ddlDrCode" runat="server" Width="151px" AutoPostBack="True" OnSelectedIndexChanged="ddlDrCode_SelectedIndexChanged">
            </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Doctor Name:</td>
            <td style="width: 100px">
                <asp:Label ID="lblName" runat="server" Font-Bold="True" Width="189px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="font-weight: bolder; font-size: 8pt; font-family: verdana;
                text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:GridView ID="GridView1" runat="server" EmptyDataText="No Pateint Found" Width="44px" AllowPaging="True" Height="82px" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging">
                    <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="Red" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>


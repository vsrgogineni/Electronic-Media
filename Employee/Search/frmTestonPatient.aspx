<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmTestonPatient.aspx.cs" Inherits="Admin_Search_frmTestonPatient" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                <strong><span style="font-size: 16pt; color: red">Test on Patient</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 21px">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="292px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 21px">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Patient Code:</td>
            <td style="width: 100px">
                <asp:DropDownList ID="ddlPatient" runat="server" Width="132px" AutoPostBack="True" OnSelectedIndexChanged="ddlPatient_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Test Code:</td>
            <td style="width: 100px">
                <asp:DropDownList ID="ddlTest" runat="server" Width="132px" AutoPostBack="True" OnSelectedIndexChanged="ddlTest_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Test Name:</td>
            <td style="width: 100px">
                <asp:Label ID="lblName" runat="server" Font-Bold="True" Width="162px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="font-weight: bolder; font-size: 8pt; font-family: verdana;
                text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" Width="577px" AllowPaging="True" EmptyDataText="No Data Found" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5">
                    <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="Red" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>


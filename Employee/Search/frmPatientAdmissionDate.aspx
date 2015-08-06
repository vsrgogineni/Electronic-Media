<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmPatientAdmissionDate.aspx.cs" Inherits="Admin_Search_frmPatientAdmissionDate" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 16pt; color: red">Patient Admission Date</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="288px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Select
                Date:</strong></span></td>
            <td>
                <cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                </cc1:GMDatePicker>
                <asp:Button ID="btnShow" runat="server" Text="Show Patient" Width="94px" OnClick="btnShow_Click" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" /></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:GridView ID="GridView1" runat="server" Width="100px" AllowPaging="True" EmptyDataText="No Pateint Admitted" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5">
                    <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="Red" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>


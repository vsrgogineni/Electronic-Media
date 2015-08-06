<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmMedicineCharges.aspx.cs" Inherits="Employee_frmMedicineCharges" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table align="center" >
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 26px; text-align: center">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana;">Medicine Charges</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="250px" CssClass="label"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 154px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 21px;">
                Patient Code:</td>
            <td style="width: 217px">
                <asp:DropDownList ID="ddlPatientCode" runat="server" Width="153px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 154px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 21px;">
                Medicine Code:</td>
            <td style="width: 217px">
                <asp:DropDownList ID="ddlMedicineCode" runat="server" Width="153px" AutoPostBack="True" OnSelectedIndexChanged="ddlMedicineCode_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 154px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 21px;">
                Medicine Name:</td>
            <td style="width: 217px">
                <asp:TextBox ID="txtName" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 154px; height: 21px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Medicine Price:</td>
            <td style="width: 217px; height: 21px">
                <asp:TextBox ID="txtPrice" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 154px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 21px;">
                Quantity:</td>
            <td style="width: 217px">
                <asp:TextBox ID="txtQty" runat="server" ></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 154px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 21px;">
                Charges:</td>
            <td style="width: 217px">
                <asp:TextBox ID="txtCharge" runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 154px; font-weight: bolder; font-size: 8pt; font-family: verdana; height: 21px;">
                Date on Medicine Given:</td>
            <td style="width: 217px">
                <cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                </cc1:GMDatePicker>
            </td>
        </tr>
        <tr>
            <td style="text-align: center;" colspan="2">
                &nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;<asp:Button ID="btnAdd" runat="server" Text="Add" Width="66px" OnClick="btnAdd_Click" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" />
                </td>
        </tr>
    </table>
</asp:Content>


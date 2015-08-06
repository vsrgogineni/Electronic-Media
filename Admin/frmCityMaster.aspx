<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmCityMaster.aspx.cs" Inherits="Admin_frmCityMaster" Title="Untitled Page" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 226px">
        <tr>
            <td align="center" colspan="4" >
                &nbsp;&nbsp;
                <br />
                <span style="color: #ff3300"></span></td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana">City Master</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="4" >
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="55px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="4" >
                <span style="color: #ff3300">Please Enter The * Value</span></td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="left"  >
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                State:</strong></span></td>
            <td >
                <asp:DropDownList ID="DdlState" runat="server" Width="154px">
                </asp:DropDownList></td>
            <td >
            </td>
        </tr>
        <tr>
            <td align="left" >
                <span style="font-size: 8pt; font-family: Verdana"><strong>City Name</strong></span>:</td>
            <td >
                <asp:TextBox ID="txtName" runat="server" MaxLength="150"></asp:TextBox></td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td  >
                <span style="font-size: 8pt; font-family: Verdana"><strong>City Description</strong></span>:</td>
            <td >
                <asp:TextBox ID="txtDesc" runat="server" MaxLength="1000"></asp:TextBox></td>
            <td style="width: 44px; text-align: left">
            </td>
        </tr>
        <tr style="color: #000000">
            <td align="left" colspan="3" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr style="color: #000000">
            <td align="left" colspan="2" style="text-align: right">
                <asp:Button ID="BtnAdd" runat="server" OnClick="BtnAdd_Click" Text="Save" Width="66px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" /><asp:Button ID="BtnClear" runat="server" OnClick="BtnClear_Click" Text="Clear" Width="66px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" /></td>
            <td style="width: 44px; text-align: left">
            </td>
        </tr>
    </table>
</asp:Content>


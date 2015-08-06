<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmLogin.aspx.cs" Inherits="frmLogin" Title="Untitled Page" %>
<%-- Add content controls here --%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<div style="text-align:center">
    <div style="border:1px solid Red; margin-top:130px; width:329px; height:150px">
    <table border="0" cellpadding="0" cellspacing="0" align="center" style="width: 325px">
        <tr style="background-color:red">
            <td align="center" colspan="2">
                <strong><span style="font-size: 16pt; color: white">LOGIN</span></strong></td>
        </tr>
        <tr >
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="font-weight: bolder; font-size: 8pt; font-family: verdana; text-align: left;">
                User Name:</td>
            <td style="text-align: left">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="font-weight: bolder; font-size: 8pt; font-family: verdana; text-align: left;">
                Password:</td>
            <td style="text-align: left">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="148px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="2" valign="top">
                &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/Images/alertIconWin.gif" />
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="Red"
                    Width="290px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" /></td>
        </tr>
    </table>
    </div> 
</asp:Content>

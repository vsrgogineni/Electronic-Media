<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AdminHeaderUserControl.ascx.cs" Inherits="Admin_AdminUserControl_AdminHeaderUserControl" %>

<table width="100%" topmargin="0" leftmargin="0" rightmargin="0" >
<tr>
<td align="right" style="width: 62px">
    <asp:Label ID="lblDate" runat="server" Font-Bold="True" ForeColor="Silver" Width="49px"></asp:Label></td>
</tr>   
    <tr>
        <td align="center" style="width: 62px" > 
            <span style="font-size: 48pt; color: red"><span style="font-size: 72pt; font-family: Arial">
                <strong>+</strong></span> </span>
        </td>
        <td align="center" style="width: 944px" valign="top">
            <asp:Image ID="Image1" runat="server" Height="108px" ImageUrl="~/Admin/AdminImages/mybanner.jpg"  
                Width="805px" /></td>
                <td> 
                    <span style="font-size: 72pt; color: red; font-family: Arial"><strong>+</strong></span>
                </td>
    </tr>
</table>

<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LoginLogoutWebUserControl.ascx.cs" Inherits="User_Control_LoginLogoutWebUserControl" %>
<table>
    <tr>
        <td style="width: 59px; height: 21px">
            <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="Blue"
                Width="113px"></asp:Label></td>
        <td style="width: 59px; height: 21px">
            <asp:LoginStatus ID="LoginStatus1" runat="server" Font-Bold="True" Font-Size="12pt"
                ForeColor="Blue" OnLoggingOut="LoginStatus1_LoggingOut" Width="82px" 
                LogoutPageUrl=" " />
        </td>
    </tr>
</table>

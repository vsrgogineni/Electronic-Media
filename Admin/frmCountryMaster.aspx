<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmCountryMaster.aspx.cs" Inherits="Admin_frmCountryMaster" %>

<%-- Add content controls here --%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
  <table align="center">
        <tr>
            <td align="center" colspan="3">
                &nbsp;&nbsp;
               </td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="height: 21px">
                <strong><span style="font-size: 16pt; color:red; font-family: Verdana">Country Master</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="height: 21px">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="41px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="height: 21px">
                <span style="color: #ff3300; font-size: 8pt; font-family: Verdana;"><strong>Please Enter The * Value</strong></span></td>
        </tr>
        <tr>
            <td align="left" style="width: 136px; height: 21px">
                <strong><span style="font-size: 8pt; font-family: Verdana">
                Country Name:</span></strong></td>
            <td>
                <asp:TextBox ID="txtName" runat="server" MaxLength="150"></asp:TextBox></td>
            <td align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left" style="width: 136px">
                <strong><span style="font-size: 8pt; font-family: Verdana">
                Country Description:</span></strong></td>
            <td>
                <asp:TextBox ID="txtDesc" runat="server" MaxLength="1000"></asp:TextBox></td>
            <td align="left">
                </td>
        </tr>
      <tr>
          <td align="left" colspan="3" style="text-align: center">
              &nbsp;&nbsp;
          </td>
      </tr>
        <tr>
            <td align="left" colspan="3" style="height: 24px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button ID="BtnAdd" runat="server" OnClick="BtnAdd_Click" Text="Save" Width="61px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" />&nbsp;
                <asp:Button ID="BtnClear" runat="server" OnClick="BtnClear_Click" Text="Clear" Width="61px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" />
                </td>
        </tr>
    </table>

</asp:Content>

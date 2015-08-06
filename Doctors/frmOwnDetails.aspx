<%@ Page Language="C#" MasterPageFile="~/Doctors/MasterPage.master" AutoEventWireup="true" CodeFile="frmOwnDetails.aspx.cs" Inherits="Doctors_frmOwnDetails" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager id="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table align="center">
        <tr>
            <td colspan="1" style="text-align: center; width: 540px; height: 27px;">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana">Doctor's
                    Details</span></strong></td>
        </tr>
        <tr>
            <td colspan="1" style="width: 540px; height: 27px; text-align: center">
                <asp:DetailsView ID="DetailsView1" runat="server" Height="98px" Width="382px">
                </asp:DetailsView>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="1">
                <asp:Button ID="btnDetail" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                    OnClick="btnDetail_Click" Text="Detail" Width="76px" /></td>
        </tr>
        <tr>
            <td colspan="1" style="width: 540px; height: 27px; text-align: center">
                <asp:Panel ID="Panel1" runat="server" Height="50px" Width="125px">
                    <table align="center" style="font-weight: bold; font-size: 8pt; width: 593px; color: #ff3300;
                        font-family: Verdana">
                        <tr>
                            <td align="left" colspan="2" style="height: 27px; text-align: center">
                                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                                    Width="317px"></asp:Label><span style="font-size: 12pt"><span style="font-family: Times New Roman">
                                        <br />
                                        <span style="color: #ff3300"></span></span></span>
                            </td>
                        </tr>
                        <tr style="font-size: 12pt; font-family: Times New Roman">
                            <td align="left" colspan="2" style="text-align: center">
                                <span style="color: #000000">Please Enter The * Value</span></td>
                        </tr>
                        <tr style="font-size: 8pt; color: #000000; font-family: Verdana">
                            <td align="left" style="width: 156px">
                                <span>Doctor Code:</span></td>
                            <td align="left" style="font-size: 12pt; width: 389px; font-family: Times New Roman;
                                height: 26px">
                                <asp:TextBox ID="txtCode" runat="server" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="font-size: 8pt; color: #000000; font-family: Verdana">
                            <td align="left" style="width: 156px">
                                <span>Doctor Name:</span></td>
                            <td align="left" style="font-size: 12pt; width: 389px; font-family: Times New Roman">
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="color: #000000">
                            <td align="left" style="width: 156px">
                                <span>Specialist:</span></td>
                            <td align="left" style="width: 389px">
                                <asp:DropDownList ID="ddlSpecialist" runat="server" Width="155px">
                                    <asp:ListItem>---Select---</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr style="color: #000000">
                            <td align="left" style="width: 156px">
                                Available Timing:</td>
                            <td align="left" style="width: 389px">
                                From
                                <asp:TextBox ID="txtTime1" runat="server" Width="58px"></asp:TextBox><asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTime1" ErrorMessage="*"></asp:RequiredFieldValidator>
                                To<asp:TextBox ID="txtTime2" runat="server" Width="58px"></asp:TextBox><asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTime2" ErrorMessage="*"></asp:RequiredFieldValidator>
                                &nbsp; &nbsp;
                            </td>
                        </tr>
                        <tr style="color: #000000">
                            <td align="left" style="width: 156px">
                                Contact No.:</td>
                            <td align="left" style="width: 389px">
                                <asp:TextBox ID="txtContact" runat="server" Width="149px"></asp:TextBox><asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContact" ErrorMessage="*"
                                    Width="1px"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="color: #000000">
                            <td align="left" style="width: 156px">
                                <span>Description:</span></td>
                            <td align="left" style="width: 389px">
                                <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr style="color: #000000">
                            <td align="left" style="width: 156px">
                                <span>Charges:</span></td>
                            <td align="left" style="width: 389px">
                                <asp:TextBox ID="txtCharges" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCharges" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr style="color: #000000">
                            <td align="left" colspan="2" style="text-align: right">
                                <asp:Button ID="btnModify" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
                                    OnClick="btnModify_Click" Text="Modify" Width="82px" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>


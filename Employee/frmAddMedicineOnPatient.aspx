<%@ Page Language="C#" MasterPageFile="~/Employee/MasterPage.master" AutoEventWireup="true" CodeFile="frmAddMedicineOnPatient.aspx.cs" Inherits="Employee_frmAddMedicineOnPatient" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 262px">
        <tr>
            <td colspan="4" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana">Medicine
                    Addition</span></strong></td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Date:</td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Patient Code:</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 149px; font-weight: bolder; font-size: 8pt; font-family: verdana;">
                Landing Cost:</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="160px"
                    Width="119px">
                    <Columns>
                        <asp:TemplateField HeaderText="Code"></asp:TemplateField>
                        <asp:TemplateField HeaderText="Description"></asp:TemplateField>
                        <asp:TemplateField HeaderText="Qty"></asp:TemplateField>
                        <asp:TemplateField HeaderText="Sp"></asp:TemplateField>
                        <asp:TemplateField HeaderText="Total"></asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Height="175px"
                    Width="12px">
                    <Columns>
                        <asp:TemplateField HeaderText="Code"></asp:TemplateField>
                        <asp:TemplateField HeaderText="Description"></asp:TemplateField>
                        <asp:TemplateField HeaderText="Qty"></asp:TemplateField>
                        <asp:TemplateField HeaderText="Sp"></asp:TemplateField>
                        <asp:TemplateField HeaderText="Total"></asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                <asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" />
            </td>
        </tr>
    </table>
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/Doctors/MasterPage.master" AutoEventWireup="true" CodeFile="frmShowAppointedPateint.aspx.cs" Inherits="Doctors_frmShowAppointedPateint" Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table align="center">
        <tr>
            <td colspan="2" style="text-align: center">
                <strong><span style="font-size: 16pt; color: #ff0066">&nbsp;Show Appointed Patient</span></strong></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="235px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                Select Date:&nbsp;
                <cc1:GMDatePicker ID="GMDatePicker1" runat="server">
                </cc1:GMDatePicker>
                <asp:Button ID="btnShow" runat="server" OnClick="btnShow_Click" Text="Show" />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                    BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="72px"
                    PageSize="5" Width="656px" OnRowDataBound="GridView1_RowDataBound" EmptyDataText="No Data Found">
                    <FooterStyle BackColor="Navy" ForeColor="Snow" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <PagerStyle BackColor="White" Font-Bold="True" ForeColor="#003399" HorizontalAlign="Left" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <Columns>
                        <asp:TemplateField HeaderText="Patient Name">
                            <ItemTemplate>
                                <asp:Label ID="lblname" runat="server" Text='<%#Eval("Patient_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Disease">
                            <ItemTemplate>
                                <asp:Label ID="lbldisease" runat="server" Text='<%#Eval("Complaint") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Charges">
                            <ItemTemplate>
                                <asp:Label ID="lblcharge" runat="server" Text='<%#Eval("Charge") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                                                
                                                        
                    </Columns>
                    <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="Red" />
                </asp:GridView>
            </td>
        </tr>
         </table>
</asp:Content>


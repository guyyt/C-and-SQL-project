<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" Title="HAMUMLAZIM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>
    <span style="font-size: 16pt; font-family: Arial (Hebrew)"></span>
    <h5>
        &nbsp;</h5>
    <span></span><span style="font-size: 16pt; font-family: Arial Black" title="HAMUMLAZIM" dir="rtl">



    ���� ������� ����� ���� �������� !<br />
    ���� �� ����� ����� �� ������� ����,
    <br />
    �� ������� �������� ���� �����,
    <br />
    ���� ��� ������� ��������: ���� 2 ����� 10<br />
    </span>
    <br />
    <br />
    <span style="font-size: 16pt; font-family: Arial (Hebrew)">
    ��� ����� �� �������, 
        <br />
        ��� ��� ��� ����� ������� ���� ��� �������� �������� ��:<br />
    </span>
    <asp:Button ID="btmSend" runat="server" Text="���" Font-Bold="True" Font-Size="12pt" OnClick="btmSend_Click" />&nbsp;
    
    <asp:DropDownList
        ID="DropDownDays" runat="server" Font-Bold="True" Font-Names="Arial (Hebrew)" Font-Size="11pt">
                   <asp:ListItem Value="null">--��� ���--</asp:ListItem>
        <asp:ListItem Value="sunMon">�����-���</asp:ListItem>
        <asp:ListItem Value="thuWen">��� �����-�����</asp:ListItem>
        <asp:ListItem Value="firFri">��� �����-����</asp:ListItem>
        <asp:ListItem Value="satarday">��� ���</asp:ListItem>
    </asp:DropDownList><br />
    <br />
    <br />
    <asp:Label ID="lblmessege" runat="server" Height="21px" Text="���� ����� ���� !! ��� ����� �������� ������ �� ����� ���� ���� ����� ����� !!*" BackColor="White" Font-Bold="True" Font-Size="14pt" ForeColor="#FF3333" Visible="False" Width="757px"></asp:Label><br />

</center>
    
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="servey.aspx.cs" Inherits="servey" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span style="font-size: 16pt; font-family: Arial Black"><span style="font-size: 24pt;
        font-family: Arial (Hebrew)"><strong>��� ��� ��� ������� ����<br />
            <br />
        <asp:Label ID="lblResult" runat="server" Text="����, �������� ������ !" Visible="False" BackColor="#FFFFFF" ForeColor="#FF3300"></asp:Label><br />
            </strong>
            <table>
                <tr>
                    <td style="width: 79px; height: 89px;">
                    </td>
                    <td style="height: 89px;">
                        <asp:RadioButtonList ID="servey1" runat="server" Font-Size="11pt">
                            <asp:ListItem Value="10">���� 10</asp:ListItem>
                            <asp:ListItem Value="22">���� 22</asp:ListItem>
                        </asp:RadioButtonList>
                        <hr />
                    </td>
                    <td style="width: 254px; height: 89px;">
                        <span style="font-size: 12pt">��� ����� ������ ����?</span></td>
                </tr>
                <tr>
                    <td style="width: 79px">
                    </td>
                    <td>
                        <asp:RadioButtonList ID="servey2" runat="server" Font-Size="11pt">
                            <asp:ListItem Value="comedy">������</asp:ListItem>
                            <asp:ListItem Value="drama">����</asp:ListItem>
                            <asp:ListItem Value="action">����</asp:ListItem>
                            <asp:ListItem Value="horrow">����</asp:ListItem>
                            <asp:ListItem Value="roman">������</asp:ListItem>
                            <asp:ListItem Value="tens">���</asp:ListItem>
                        </asp:RadioButtonList>
                        <hr />
                    </td>
                    <td style="width: 254px">
                        <span style="font-size: 12pt">��� �'��� �������� ������ ����?</span></td>
                </tr>
                <tr>
                    <td style="width: 79px">
                    </td>
                    <td>
                        <asp:RadioButtonList ID="servey3" runat="server" Font-Size="11pt">
                            <asp:ListItem Value="love+">���� ���</asp:ListItem>
                            <asp:ListItem Value="love">����</asp:ListItem>
                            <asp:ListItem Value="midium">�� �����</asp:ListItem>
                            <asp:ListItem Value="notlove">�� ����</asp:ListItem>
                            <asp:ListItem Value="hate">����</asp:ListItem>
                        </asp:RadioButtonList>
                        <hr />
                    </td>
                    <td style="width: 254px">
                        <span style="font-size: 12pt">�� ��� ���� �� ����� �������� �������� ���������?</span></td>
                </tr>
                <tr>
                    <td style="width: 79px">
                    </td>
                    <td>
                        <asp:RadioButtonList ID="servey4" runat="server" Font-Size="11pt">
                            <asp:ListItem Value="veraity">�����</asp:ListItem>
                            <asp:ListItem Value="midium">�� �� �� �����</asp:ListItem>
                            <asp:ListItem Value="notverayaty">�� �����</asp:ListItem>
                        </asp:RadioButtonList>
                        <hr />
                    </td>
                    <td style="width: 254px">
                        <span style="font-size: 12pt">�� ��� ���� �� ����� �������� �������� ����?</span></td>
                </tr>

                <tr>
                    <td style="width: 79px">
                    </td>
                    <td>
                        <asp:RadioButtonList ID="servey5" runat="server" Font-Size="11pt">
                            <asp:ListItem Value="agree+">����� ���</asp:ListItem>
                            <asp:ListItem Value="agree">�����</asp:ListItem>
                            <asp:ListItem Value="midium">�� ���� ��</asp:ListItem>
                            <asp:ListItem Value="notagree">�� �����</asp:ListItem>
                            <asp:ListItem Value="notagree+">�� ����� ����</asp:ListItem>
                        </asp:RadioButtonList>
                        <hr />
                    </td>
                    <td style="width: 254px">
                        <span style="font-size: 12pt">�� ��� ��� ����� �� �������� �������� ����?</span></td>
                </tr>
                <tr>
                    <td style="width: 79px">
                    </td>
                    <td>
                        <asp:RadioButtonList ID="servey6" runat="server" Font-Size="11pt">
                            <asp:ListItem Value="nehederet">��� �����</asp:ListItem>
                            <asp:ListItem Value="mitbah">�����</asp:ListItem>
                            <asp:ListItem Value="masa">��� �����</asp:ListItem>
                            <asp:ListItem Value="krav">��� ������</asp:ListItem>
                            <asp:ListItem Value="alufim">������ �� �����</asp:ListItem>
                            <asp:ListItem Value="mea">��� ��� ���</asp:ListItem>
                            <asp:ListItem Value="news">�����</asp:ListItem>
                            <asp:ListItem Value="hisardut">�������</asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td style="width: 254px">
                        <span style="font-size: 12pt">��� ������� ��� ��������� ��� ���� ����</span></td>
                </tr>
     

            </table>
            <asp:Button ID="���" runat="server" OnClick="Button1_Click" Text="���" Font-Bold="True" Font-Size="24pt" Height="49px" Width="111px" /><br />
        </span>
        <br />
    </span>
</asp:Content>


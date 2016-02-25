<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="id" Width="756px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True"
                SortExpression="id" />
            <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
            <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
            <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
            <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="birth" HeaderText="birth" SortExpression="birth" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DByomtovConnectionString2 %>"
        DeleteCommand="DELETE FROM [usersInfo] WHERE [id] = @id" InsertCommand="INSERT INTO [usersInfo] ([firstName], [lastName], [pass], [userName], [email], [gender], [phone], [birth]) VALUES (@firstName, @lastName, @pass, @userName, @email, @gender, @phone, @birth)"
        SelectCommand="SELECT * FROM [usersInfo]" UpdateCommand="UPDATE [usersInfo] SET [firstName] = @firstName, [lastName] = @lastName, [pass] = @pass, [userName] = @userName, [email] = @email, [gender] = @gender, [phone] = @phone, [birth] = @birth WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="firstName" Type="String" />
            <asp:Parameter Name="lastName" Type="String" />
            <asp:Parameter Name="pass" Type="String" />
            <asp:Parameter Name="userName" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="birth" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="firstName" Type="String" />
            <asp:Parameter Name="lastName" Type="String" />
            <asp:Parameter Name="pass" Type="String" />
            <asp:Parameter Name="userName" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="birth" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <br />
    &nbsp;<table>
        <tr>
            <td style="width: 41px">
                <asp:TextBox ID="txtSrcName" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:Label ID="Label1" runat="server" Text="��� ����� �� �� �� ����"></asp:Label></td>
            <td style="width: 41px">
                <asp:Button ID="btnSrcName" runat="server" OnClick="btnSrcName_Click" Text="���" /></td>
        </tr>
        <tr>
            <td style="width: 41px">
                <asp:TextBox ID="txtSrcGender" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" Text="��� ����� �� �� ���"></asp:Label></td>
            <td style="width: 41px">
                <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" /></td>
        </tr>
        <tr>
        </tr>
    </table>
    <asp:Label ID="txtsearch" runat="server"></asp:Label><br />
    <br />
    &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<br />


            <table>
                <tr>
                    <td style="width: 79px; height: 89px;">
                        <asp:Label ID="Label11" runat="server" Text="0"></asp:Label>
                        <br />
                        <asp:Label ID="Label12" runat="server" Text="0"></asp:Label></td>
                    <td style="height: 89px;">
                        <asp:RadioButtonList ID="servey1" runat="server" Font-Size="11pt">
                            <asp:ListItem Value="10">���� 10</asp:ListItem>
                            <asp:ListItem Value="22">���� 22</asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td style="width: 254px; height: 89px;">
                        <span style="font-size: 12pt">��� ����� ������ ����?</span></td>
                </tr>
                <tr>
                    <td style="width: 79px">
                        <asp:Label ID="Label21" runat="server" Text="0"></asp:Label>
                        <br />
                        <asp:Label ID="Label22" runat="server" Text="0"></asp:Label><br />
                        <asp:Label ID="Label23" runat="server" Text="0"></asp:Label><br />
                        <asp:Label ID="Label24" runat="server" Text="0"></asp:Label><br />
                        <asp:Label ID="Label25" runat="server" Text="0"></asp:Label><br />
                        <asp:Label ID="Label26" runat="server" Text="0"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="servey2" runat="server" Font-Size="11pt">
                            <asp:ListItem Value="comedy">������</asp:ListItem>
                            <asp:ListItem Value="drama">����</asp:ListItem>
                            <asp:ListItem Value="action">����</asp:ListItem>
                            <asp:ListItem Value="horrow">����</asp:ListItem>
                            <asp:ListItem Value="roman">������</asp:ListItem>
                            <asp:ListItem Value="tens">���</asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td style="width: 254px">
                        <span style="font-size: 12pt">��� �'��� �������� ������ ����?</span></td>
                </tr>
                <tr>
                    <td style="width: 79px">
                        <asp:Label ID="Label31" runat="server" Text="0"></asp:Label><br />
                        <asp:Label ID="Label32" runat="server" Text="0"></asp:Label><br />
                        <asp:Label ID="Label33" runat="server" Text="0"></asp:Label><br />
                        <asp:Label ID="Label34" runat="server" Text="0"></asp:Label><br />
                        <asp:Label ID="Label35" runat="server" Text="0"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="servey3" runat="server" Font-Size="11pt">
                            <asp:ListItem Value="love+">���� ���</asp:ListItem>
                            <asp:ListItem Value="love">����</asp:ListItem>
                            <asp:ListItem Value="midium">�� �����</asp:ListItem>
                            <asp:ListItem Value="notlove">�� ����</asp:ListItem>
                            <asp:ListItem Value="hate">����</asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td style="width: 254px">
                        <span style="font-size: 12pt">�� ��� ���� �� ����� �������� �������� ���������?</span></td>
                </tr>
                <tr>
                    <td style="width: 79px">
                        <asp:Label ID="Label41" runat="server" Text="0"></asp:Label><br />
                        <asp:Label ID="Label42" runat="server" Text="0"></asp:Label><br />
                        <asp:Label ID="Label43" runat="server" Text="0"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="servey4" runat="server" Font-Size="11pt">
                            <asp:ListItem Value="veraity">�����</asp:ListItem>
                            <asp:ListItem Value="midium">�� �� �� �����</asp:ListItem>
                            <asp:ListItem Value="notverayaty">�� �����</asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td style="width: 254px">
                        <span style="font-size: 12pt">�� ��� ���� �� ����� �������� �������� ����?</span></td>
                </tr>

                <tr>
                    <td style="width: 79px">
                        <asp:Label ID="Label51" runat="server" Text="0"></asp:Label><br />
                        <asp:Label ID="Label52" runat="server" Text="0"></asp:Label><br />
                        <asp:Label ID="Label53" runat="server" Text="0"></asp:Label><br />
                        <asp:Label ID="Label54" runat="server" Text="0"></asp:Label><br />
                        <asp:Label ID="Label55" runat="server" Text="0"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="servey5" runat="server" Font-Size="11pt">
                            <asp:ListItem Value="agree+">����� ���</asp:ListItem>
                            <asp:ListItem Value="agree">�����</asp:ListItem>
                            <asp:ListItem Value="midium">�� ���� ��</asp:ListItem>
                            <asp:ListItem Value="notagree">�� �����</asp:ListItem>
                            <asp:ListItem Value="notagree+">�� ����� ����</asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td style="width: 254px">
                        <span style="font-size: 12pt">�� ��� ��� ����� �� �������� �������� ����?</span></td>
                </tr>
                <tr>
                    <td style="width: 79px">
                        <asp:Label ID="Label61" runat="server" Text="0"></asp:Label><br />
                        <asp:Label ID="Label62" runat="server" Text="0"></asp:Label><br />
                        <asp:Label ID="Label63" runat="server" Text="0"></asp:Label><br />
                        <asp:Label ID="Label64" runat="server" Text="0"></asp:Label><br />
                        <asp:Label ID="Label65" runat="server" Text="0"></asp:Label><br />
                        <asp:Label ID="Label66" runat="server" Text="0"></asp:Label><br />
                        <asp:Label ID="Label67" runat="server" Text="0"></asp:Label></td>
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


</asp:Content>


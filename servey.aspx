<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="servey.aspx.cs" Inherits="servey" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span style="font-size: 16pt; font-family: Arial Black"><span style="font-size: 24pt;
        font-family: Arial (Hebrew)"><strong>סקר דעת קהל ושביעות רצון<br />
            <br />
        <asp:Label ID="lblResult" runat="server" Text="תודה, תשובותיך התקבלו !" Visible="False" BackColor="#FFFFFF" ForeColor="#FF3300"></asp:Label><br />
            </strong>
            <table>
                <tr>
                    <td style="width: 79px; height: 89px;">
                    </td>
                    <td style="height: 89px;">
                        <asp:RadioButtonList ID="servey1" runat="server" Font-Size="11pt">
                            <asp:ListItem Value="10">ערוץ 10</asp:ListItem>
                            <asp:ListItem Value="22">ערוץ 22</asp:ListItem>
                        </asp:RadioButtonList>
                        <hr />
                    </td>
                    <td style="width: 254px; height: 89px;">
                        <span style="font-size: 12pt">מהו הערוץ המועדף עליך?</span></td>
                </tr>
                <tr>
                    <td style="width: 79px">
                    </td>
                    <td>
                        <asp:RadioButtonList ID="servey2" runat="server" Font-Size="11pt">
                            <asp:ListItem Value="comedy">קומדיה</asp:ListItem>
                            <asp:ListItem Value="drama">דרמה</asp:ListItem>
                            <asp:ListItem Value="action">אקשן</asp:ListItem>
                            <asp:ListItem Value="horrow">אימה</asp:ListItem>
                            <asp:ListItem Value="roman">רומנטי</asp:ListItem>
                            <asp:ListItem Value="tens">מתח</asp:ListItem>
                        </asp:RadioButtonList>
                        <hr />
                    </td>
                    <td style="width: 254px">
                        <span style="font-size: 12pt">מהו ז'אנר התוכניות המועדף עליך?</span></td>
                </tr>
                <tr>
                    <td style="width: 79px">
                    </td>
                    <td>
                        <asp:RadioButtonList ID="servey3" runat="server" Font-Size="11pt">
                            <asp:ListItem Value="love+">אוהב מאד</asp:ListItem>
                            <asp:ListItem Value="love">אוהב</asp:ListItem>
                            <asp:ListItem Value="midium">לא מתלהב</asp:ListItem>
                            <asp:ListItem Value="notlove">לא אוהב</asp:ListItem>
                            <asp:ListItem Value="hate">שונא</asp:ListItem>
                        </asp:RadioButtonList>
                        <hr />
                    </td>
                    <td style="width: 254px">
                        <span style="font-size: 12pt">מה אתה חושב על איכות התוכניות המשודרות בטלוויזיה?</span></td>
                </tr>
                <tr>
                    <td style="width: 79px">
                    </td>
                    <td>
                        <asp:RadioButtonList ID="servey4" runat="server" Font-Size="11pt">
                            <asp:ListItem Value="veraity">מגוון</asp:ListItem>
                            <asp:ListItem Value="midium">לא כל כך מגוון</asp:ListItem>
                            <asp:ListItem Value="notverayaty">לא מגוון</asp:ListItem>
                        </asp:RadioButtonList>
                        <hr />
                    </td>
                    <td style="width: 254px">
                        <span style="font-size: 12pt">מה אתה חושב על מגוון התוכניות המומלצות באתר?</span></td>
                </tr>

                <tr>
                    <td style="width: 79px">
                    </td>
                    <td>
                        <asp:RadioButtonList ID="servey5" runat="server" Font-Size="11pt">
                            <asp:ListItem Value="agree+">מסכים מאד</asp:ListItem>
                            <asp:ListItem Value="agree">מסכים</asp:ListItem>
                            <asp:ListItem Value="midium">לא אכפת לי</asp:ListItem>
                            <asp:ListItem Value="notagree">לא מסכים</asp:ListItem>
                            <asp:ListItem Value="notagree+">לא מסכים בכלל</asp:ListItem>
                        </asp:RadioButtonList>
                        <hr />
                    </td>
                    <td style="width: 254px">
                        <span style="font-size: 12pt">עד כמה אתה מסכים עם התוכניות המומלצות באתר?</span></td>
                </tr>
                <tr>
                    <td style="width: 79px">
                    </td>
                    <td>
                        <asp:RadioButtonList ID="servey6" runat="server" Font-Size="11pt">
                            <asp:ListItem Value="nehederet">ארץ נהדרת</asp:ListItem>
                            <asp:ListItem Value="mitbah">המטבח</asp:ListItem>
                            <asp:ListItem Value="masa">מסע עולמי</asp:ListItem>
                            <asp:ListItem Value="krav">קרב סכינים</asp:ListItem>
                            <asp:ListItem Value="alufim">אלופים של החיים</asp:ListItem>
                            <asp:ListItem Value="mea">אחד נגד מאה</asp:ListItem>
                            <asp:ListItem Value="news">חדשות</asp:ListItem>
                            <asp:ListItem Value="hisardut">הישרדות</asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td style="width: 254px">
                        <span style="font-size: 12pt">בחר תוכניות אחת מהמומלצות שלא היית רואה</span></td>
                </tr>
     

            </table>
            <asp:Button ID="שלח" runat="server" OnClick="Button1_Click" Text="שלח" Font-Bold="True" Font-Size="24pt" Height="49px" Width="111px" /><br />
        </span>
        <br />
    </span>
</asp:Content>


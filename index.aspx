<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" Title="HAMUMLAZIM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>
    <span style="font-size: 16pt; font-family: Arial (Hebrew)"></span>
    <h5>
        &nbsp;</h5>
    <span></span><span style="font-size: 16pt; font-family: Arial Black" title="HAMUMLAZIM" dir="rtl">



    שלום וברוכים הבאים לאתר המומלצים !<br />
    באתר זה תוכלו למצוא את ההמלצות שלנו,
    <br />
    על תוכניות הטלויזיה במשך השבוע,
    <br />
    מבין שני הערוצים המובילים: ערוץ 2 וערוץ 10<br />
    </span>
    <br />
    <br />
    <span style="font-size: 16pt; font-family: Arial (Hebrew)">
    כדי לראות את ההמלצות, 
        <br />
        אנא בחר יום שהינך מעוניין לדעת מהם התוכניות המומלצות בו:<br />
    </span>
    <asp:Button ID="btmSend" runat="server" Text="בצע" Font-Bold="True" Font-Size="12pt" OnClick="btmSend_Click" />&nbsp;
    
    <asp:DropDownList
        ID="DropDownDays" runat="server" Font-Bold="True" Font-Names="Arial (Hebrew)" Font-Size="11pt">
                   <asp:ListItem Value="null">--בחר יום--</asp:ListItem>
        <asp:ListItem Value="sunMon">ראשון-שני</asp:ListItem>
        <asp:ListItem Value="thuWen">יום שלישי-רביעי</asp:ListItem>
        <asp:ListItem Value="firFri">יום חמישי-שישי</asp:ListItem>
        <asp:ListItem Value="satarday">יום שבת</asp:ListItem>
    </asp:DropDownList><br />
    <br />
    <br />
    <asp:Label ID="lblmessege" runat="server" Height="21px" Text="אינך מחובר לאתר !! כדי לצפות במומלצים ולענות על סקרים הינך חייב להיות מחובר !!*" BackColor="White" Font-Bold="True" Font-Size="14pt" ForeColor="#FF3333" Visible="False" Width="757px"></asp:Label><br />

</center>
    
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="regester.aspx.cs" Inherits="regester" Title="HAMUMLAZIM - Regester" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
// <!CDATA[

function btmSubmit_onclick() {

}

// ]]>
</script>
    <asp:Label ID="txtNot" runat="server" BackColor="White" Font-Bold="True" Font-Size="16pt"
        ForeColor="#FF3300" Text="אנא מלא את כל שדות החובה !" Visible="False"></asp:Label><br />
    <asp:Label ID="txtNotUser" runat="server" BackColor="White" Font-Bold="True" Font-Size="16pt"
        ForeColor="#FF3300" Text="שם המשתמש שבחרת תפוס !" Visible="False"></asp:Label><br />
    <asp:Label ID="txtSent" runat="server" BackColor="White" Font-Bold="True" Font-Size="16pt"
        ForeColor="#FF3300" Text="תודה, פרטיך נשלחו בהצלחה !" Visible="False"></asp:Label>

    <table>
        <tr>
            <td colspan="2" style="height: 40px">
                <span style="font-size: 14pt"><strong>--------------פרטי התחברות------------------ </strong>
                </span>
    <br />
            </td>
        </tr>
        <tr>
            <td style="width: 109px; height: 40px">

        <asp:TextBox ID="txtUserNameRG" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 40px">
                (*):שם משתמש</td>
        </tr>
        <tr>
            <td style="width: 109px">

        <asp:TextBox ID="txtPasswordRG" runat="server" TextMode="Password"></asp:TextBox></td>
            <td style="width: 100px">
                &nbsp;&nbsp; (*):סיסמא</td>
        </tr>
        <tr>
            <td colspan="2">
                <strong><span style="font-size: 14pt">-------------------פרטים אישיים--------------------</span></strong>
    <br />
            </td>
        </tr>
        <tr>
            <td style="width: 109px">

        <asp:TextBox ID="txtFirstNameRG" runat="server" ></asp:TextBox></td>
            <td style="width: 100px">
                (*):שם פרטי
            </td>
        </tr>
        <tr>
            <td style="width: 109px">

        <asp:TextBox ID="txtLastNameRG" runat="server" ></asp:TextBox></td>
            <td style="width: 100px">
                (*):שם
    משפחה<br />
            </td>
        </tr>
        <tr>
            <td style="width: 109px; height: 31px">
                &nbsp;
                <asp:DropDownList ID="genderSelect" runat="server">
                    <asp:ListItem Value="null">--בחר--</asp:ListItem>
                    <asp:ListItem Value="male">זכר</asp:ListItem>
                    <asp:ListItem Value="female">נקבה</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 100px; height: 31px">
    :מין</td>
        </tr>
        <tr>
            <td>
                &nbsp; &nbsp;&nbsp;
                שנה&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; חודש &nbsp;&nbsp; יום<br />
                <asp:TextBox ID="txtBDay" runat="server" Height="16px" Width="28px"></asp:TextBox>-
                <asp:TextBox ID="txtBMonth" runat="server" Height="16px" Width="28px"></asp:TextBox>-
                <asp:TextBox ID="txtBYear" runat="server" Height="16px" Width="41px"></asp:TextBox>
                &nbsp;
            </td>
            <td style="width: 100px">
                :תאריך לידה</td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DropDownPhone" runat="server">
                    <asp:ListItem>03</asp:ListItem>
                    <asp:ListItem>02</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem>
                    <asp:ListItem>08</asp:ListItem>
                    <asp:ListItem>09</asp:ListItem>
                    <asp:ListItem>050</asp:ListItem>
                    <asp:ListItem>054</asp:ListItem>
                    <asp:ListItem>052</asp:ListItem>
                    <asp:ListItem>057</asp:ListItem>
                    <asp:ListItem>077</asp:ListItem>
                    <asp:ListItem>072</asp:ListItem>
                    <asp:ListItem>073</asp:ListItem>
                </asp:DropDownList>
                -<asp:TextBox ID="txtPhoneNumRG2" runat="server" Width="83px"></asp:TextBox></td>
            <td>
                &nbsp;:מספר טלפון</td>
        </tr>
        <tr>
            <td style="width: 109px; height: 26px">


    <asp:TextBox ID="txtEmailRG" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 26px">
                *:אימייל
            </td>
        </tr>
    </table>
    * שדות חובה &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;<br />
    (*) מוגבל ל-10 תווים<br />

        <input id="Reset1" type="reset" value="מחק פרטים" />
        <input id="btmSubmit" style="width: 224px; height: 33px" type="submit" value="שלח" onclick="return btmSubmit_onclick()" onserverclick="btmSubmit_ServerClick" runat="server" /><br />
    <br />
    <br />




</asp:Content>


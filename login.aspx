<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="HAMUMLAZIM - LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <asp:Label ID="Label1" runat="server" ForeColor="Black" Height="37px" Text="התחברות:"
        Width="181px" style="font-weight: bold; font-variant: small-caps; text-decoration: underline overline" Font-Bold="True" Font-Size="14pt"></asp:Label>&nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        &nbsp;<asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        &nbsp; &nbsp;
        <asp:Label ID="Label2" runat="server" Text=":שם משתמש"></asp:Label></center>
    <center>
        &nbsp;<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="149px"></asp:TextBox>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text=":סיסמא"></asp:Label></center>
    <center>
        &nbsp;</center>
    <center>
        <asp:Label ID="lblResult" runat="server" BackColor="Red" BorderColor="Black" BorderStyle="None" Font-Bold="True" ForeColor="#FFFFFF"></asp:Label>&nbsp;</center>
    <center>
        &nbsp;</center>
    <center>
        <input id="Reset1" type="reset" value="נקה" />
        &nbsp;<asp:Button ID="Button1" runat="server" Text="התחבר" OnClick="Button1_Click" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    </center>



</asp:Content>


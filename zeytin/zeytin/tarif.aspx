<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="tarif.aspx.cs" Inherits="zeytin.tarif" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <title>Tarifler</title>
    </head>
    <body>
        <h3 style="text-align: center; text-decoration: underline;">Malzemeler</h3>
        <br />

        <form id="tarifForm" runat="server">
            <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" TextMode="MultiLine" Style="overflow: hidden; width:60%; height:300px; margin-left:20%"></asp:TextBox>
            <h3 style="text-align: center; text-decoration: underline;">Yemek Tarifi</h3>
            <asp:TextBox ID="TextBox2" runat="server" BorderStyle="None" TextMode="MultiLine" Style="overflow: hidden; width:60%; height:300px; margin-left:20%"></asp:TextBox>
        </form>
        
    </body>
    </html>

</asp:Content>

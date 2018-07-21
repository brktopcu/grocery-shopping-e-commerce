<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="profilim.aspx.cs" Inherits="zeytin.profilim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <link href="CustomCSS/buttonStyle.css" rel="stylesheet" />
        <link href="CustomCSS/etiket.css" rel="stylesheet" />
    </head>
    <form runat="server" action="#" method="post">
        <h3 style="text-align: center; text-decoration: underline;">Profilim</h3>
        <br />
        <br />
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h6 style="margin-left: 70%">Ad Soyad:</h6>
                </div>
                <div class="col-md-8">
                    <asp:TextBox Style="width: 43.75%" ID="txtad" onfocus="this.value = '' " runat="server" OnTextChanged="txtad_TextChanged"></asp:TextBox>
                </div>
                <br />
                <br />
            </div>
            <div class="row">
                <div class="col-md-4">
                    <h6 style="margin-left: 70%">Parola:</h6>
                </div>
                <div class="col-md-8">
                    <asp:TextBox Style="width: 43.75%" ID="txtparola" onfocus="this.value = '' " runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-4">
                    <h6 style="margin-left: 70%">E-posta:</h6>
                </div>
                <div class="col-md-8">
                    <asp:TextBox Style="width: 43.75%" ID="txteposta" onfocus="this.value = '' " runat="server" TextMode="Email"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-4">
                    <h6 style="margin-left: 70%">Telefon Numarası:</h6>
                </div>
                <div class="col-md-8">
                    <asp:TextBox Style="width: 43.75%" ID="txttel" onfocus="this.value = '' " runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-4">
                    <h6 style="margin-left: 70%">Adres:</h6>
                </div>
                <div class="col-md-8">
                    <asp:TextBox ID="txtadres" runat="server" TextMode="MultiLine" onfocus="this.value = '' " Style="width: 43.75%; height: 150px;"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />



        </div>
        <asp:Button ID="profilDegistir" runat="server" Text="Değişiklikleri Onayla" CssClass="linkbtn" Style="width: 15%; font-family:Arial; margin-left: 41%" BorderStyle="None" OnClick="profilDegistir_Click" />
        <br />
        <br />
        <div style="margin-left:40%">
            <asp:Label ID="lblmesaj" runat="server" Text="Değişiklikler başarıyla kaydedildi." Visible="false"></asp:Label>
        </div>
    </form>


</asp:Content>

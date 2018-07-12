<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="profilim.aspx.cs" Inherits="zeytin.profilim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <link href="CustomCSS/buttonStyle.css" rel="stylesheet" />
    </head>
    <form runat="server" action="#" method="post">
        <h3 style="text-align: center; text-decoration: underline;">Profilim</h3>
        <br /><br />
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h6 style="margin-left:70%">Ad Soyad:</h6>
                </div>
                <div class="col-md-8">
                    <asp:TextBox ID="ad" runat="server"></asp:TextBox>
                </div>
                <br /><br />
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <h6 style="margin-left:70%">Parola:</h6>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="parola" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
            <br /><br />
                <div class="row">
                    <div class="col-md-4">
                        <h6 style="margin-left:70%">E-posta:</h6>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="eposta" runat="server" TextMode="Email"></asp:TextBox>
                    </div>
                </div>
            <br /><br />
                <div class="row">
                    <div class="col-md-4">
                        <h6 style="margin-left:70%">Telefon Numarası:</h6>
                    </div>
                    <div class="col-md-8">
                         <asp:TextBox ID="tel" runat="server"></asp:TextBox>
                    </div>
                </div>
            <br /><br />
                <div class="row">
                    <div class="col-md-4">
                        <h6 style="margin-left:70%">Adres:</h6>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="adres" runat="server" TextMode="MultiLine" Style="width: 320px; height: 150px;"></asp:TextBox>
                    </div>
                </div>
            <br /><br />

         
    
          </div>
        <asp:Button ID="profilDegistir" runat="server" Text="Değişiklikleri Onayla" CssClass="linkbtn" style="width:15%; margin-left:39%"/>
        <br /><br />
    </form>


</asp:Content>

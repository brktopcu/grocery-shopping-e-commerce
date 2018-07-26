<%@ Page MaintainScrollPositionOnPostback="true" Title="Tarif Ekle" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="tarifEkle.aspx.cs" Inherits="zeytin.tarifEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <title>Tarif Ekle</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css">
        <link href="CustomCSS/myStyle.css" rel="stylesheet" />
        <link href="CustomCSS/checkout.css" rel="stylesheet" />

    </head>
    <body>
        <form id="form1" runat="server">
            <div style="margin-top:2%" class="container">
                <div class="row" style="margin-left: 25.8%;">
                    <asp:Label runat="server" Text="Yemek Adı : "></asp:Label>
                    <div class="col-md-6" style="width:250px;">
                        <asp:TextBox ID="txttarifadi" runat="server" Style="margin-left: 15%; width:100%"></asp:TextBox>
                    </div>
                </div>
                <br />
                <br />
                <div class="row" style="margin-left: 25%;">
                    <asp:Label Style="margin-top: 10%" runat="server" Text="Malzemeler : "></asp:Label>
                    <div class="col-md-6" style="height: 200px; width: 250px;">
                        <asp:TextBox ID="txtmalzemeler" runat="server" Style="margin-left: 15%; height: 100%; width: 100%" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                <br />
                <br />
                <div class="row" style="margin-left: 25%;">
                    <asp:Label runat="server" Style="margin-top: 10%" Text="Yapılışı : "></asp:Label>
                    <div class="col-md-6" style="height: 200px; width: 250px;">
                        <asp:TextBox ID="txtyapilisi" runat="server" Style="margin-left: 24.5%; height: 100%; width: 100%" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                <br />
                <br />
                <div class="row" style="margin-left: 25%">
                    <asp:Label runat="server" Text="Yemeğin Resmi : "></asp:Label>
                    <div class="col-md-6">
                        <asp:FileUpload ID="fuptarifresmi" runat="server" Style="margin-left: 10%" BorderStyle="None"></asp:FileUpload>
                    </div>
                </div>
                <br />
                <br />
                <div class="row" style="margin-left: 30%">
                    <div class="col-md-6">
                        <asp:Button ID="btntarifekle" runat="server" Text="Tarifi Kaydet" Style="margin-left: 20%" CssClass="linkbtn" OnClick="btntarifekle_Click" />
                    </div>
                </div>
                <br />
                <br />
                <div style="text-align: center">
                    <asp:Label ID="lblmesaj" runat="server" Text="Tarif sisteme başarıyla kaydedilmiştir." ForeColor="Green" Font-Size="15pt" Visible="false"></asp:Label>
                </div>
            </div>
        </form>
    </body>
    </html>
</asp:Content>

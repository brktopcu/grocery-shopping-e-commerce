<%@ Page MaintainScrollPositionOnPostback="true" Title="Ürün Ekle" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="urunEkle.aspx.cs" Inherits="zeytin.Admin_Sayfalari.urunEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <title>Ürün Ekle</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css">
        <link href="CustomCSS/myStyle.css" rel="stylesheet" />
        <link href="CustomCSS/checkout.css" rel="stylesheet" />

    </head>
    <body>
    <form id="form1" runat="server">
        <div class="container">

            <div class="row" style="margin-left:25%">
                <div class="col-md-6">
                    <asp:label runat="server" text="Ürün Adı : "></asp:label>
                    <asp:textbox id="txturunadi" runat="server" style="margin-left:15%"></asp:textbox>
                </div>
            </div>
            <br />
            <br />
            <div class="row" style="margin-left:25%">
                <div class="col-md-6">
                    <asp:label runat="server" text="Fiyat : "></asp:label>
                    <asp:textbox id="txtfiyat" runat="server" style="margin-left:23%"></asp:textbox>
                </div>
            </div>
            <br />
            <br />
            <div class="row" style="margin-left:25%">
                <div class="col-md-6">
                    <asp:label runat="server" text="Ürün Türü : "></asp:label>
                    <asp:dropdownlist id="ddlurunturu" runat="server" style="margin-left:35%">
                        <asp:ListItem Value="0">Meyve</asp:ListItem>
                        <asp:ListItem Value="1">Sebze</asp:ListItem>
                    </asp:dropdownlist>
                </div>
            </div>
            <br />
            <br />
            <div class="row" style="margin-left:25%">
                <div class="col-md-6">
                    <asp:label runat="server" text="Ürünün Satılma Şekli : "></asp:label>
                    <asp:dropdownlist id="ddlsatilmasekli" runat="server" style="margin-left:18.5%">
                        <asp:ListItem>KG</asp:ListItem>
                        <asp:ListItem>Adet</asp:ListItem>
                        <asp:ListItem>Bağ</asp:ListItem>
                    </asp:dropdownlist>
                </div>
            </div>
            <br />
            <br />
            <div class="row" style="margin-left:25%">
                <div class="col-md-6">
                    <asp:label runat="server" text="Ürün Var Mı : "></asp:label>
                    <asp:dropdownlist id ="ddlvarmi" runat="server" style="margin-left:37.1%">
                        <asp:ListItem Value="1">Var</asp:ListItem>
                        <asp:ListItem Value="0">Yok</asp:ListItem>
                    </asp:dropdownlist>
                </div>
            </div>
            <br />
            <br />
            <div class="row" style="margin-left:25%">
                <div class="col-md-6">
                    <asp:label runat="server" text="Ürün Resmi : "></asp:label>
                    <asp:fileupload id="fupurunresmi" runat="server" style="margin-left:6%" BorderStyle="None"></asp:fileupload>
                </div>
            </div>
            <br />
            <br />
            <div class="row" style="margin-left:25%">
                <div class="col-md-6">
                    <asp:button ID="btnurunekle" runat="server" text="Ürünü Ekle" style="margin-left:3%" CssClass="linkbtn" OnClick="btnurunekle_Click" />
                </div>
            </div>
            <br />
            <br />
            <div style="text-align:center">
                <asp:Label ID="lblmesaj" runat="server" Text="Ürün sisteme başarıyla kaydedilmiştir." ForeColor="Green" Font-Size="15pt" Visible="false"></asp:Label>
            </div>
        </div>
    </form>
        </body>
        </html>

</asp:Content>


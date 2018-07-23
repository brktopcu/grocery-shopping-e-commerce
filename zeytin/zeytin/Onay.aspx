<%@ Page MaintainScrollPositionOnPostback="true" Title="Sepet Onay" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="Onay.aspx.cs" Inherits="zeytin.Onay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <title>Sepet Onay</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Grocery Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

        <!-- //for-mobile-apps -->
        <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="CustomCSS/myStyle.css" rel="stylesheet" type="text/css" media="all" />
        <link href="CustomCSS/checkout.css" rel="stylesheet" type="text/css" media="all" />
        <link href="CustomCSS/buttonStyle.css" rel="stylesheet" />

        <!-- font-awesome icons -->
        <link href="CustomCSS/font.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- //font-awesome icons -->

        <link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    </head>

    <body>
        <form id="form1" runat="server">
            <!-- banner -->
            <div class="banner">
                <div>
                    <!-- about -->
                    <div class="privacy about">
                        <h3>Sepeti<span> Onayla</span></h3>

                        <div class="checkout-right">

                            <table class="timetable_sub">
                                <thead>
                                    <tr>
                                        <th>No.</th>
                                        <th>Ürün</th>
                                        <th>Adedi</th>
                                        <th>Ürün Adı</th>

                                        <th>Birim Fiyatı</th>
                                        <th>Çıkar</th>
                                    </tr>
                                </thead>
                                <asp:Repeater ID="rptsepet" runat="server">
                                    <ItemTemplate>
                                        <tbody>

                                            <tr class="rem1">
                                                <td class="invert">1</td>
                                                <td class="invert-image">
                                                    <a>
                                                        <img style="width: 100px; height: 100px;" src='<%#Eval("resimYolu")%>' alt=" " class="img-responsive"></a>
                                                </td>
                                                <td class="invert">
                                                    <div class="quantity">
                                                        <div class="quantity-select">
                                                            <asp:TextBox ID="txtkackilo" runat="server" Text='<%#Eval("kackilo")%>' BorderStyle="None" Style="width: 10%; font-size: 12pt; text-align: center" ReadOnly="True"></asp:TextBox><i style="font: initial; font-size: 12pt;"><%#Eval("satilmaSekli") %></i>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="invert"><%#Eval("urunAdi")%></td>

                                                <td class="invert"><%#Eval("fiyat")%>&nbsp<i class="fa fa-turkish-lira"></i> </td>
                                                <td class="invert">
                                                    <div class="rem">

                                                        <asp:Button ID="btnCikar" CssClass="close1" runat="server" BorderStyle="None" OnClick="btnCikar_Click" />
                                                        <asp:Label ID="lblid" runat="server" Text='<%#Eval("id")%>' Visible="false"></asp:Label>
                                                    </div>

                                                </td>
                                            </tr>

                                        </tbody>

                                    </ItemTemplate>
                                </asp:Repeater>
                            </table>
                        </div>
                        <div class="checkout-left">
                            <span><i class="fa fa-turkish-lira"></i></span>
                            <div style="margin-left: 65%" class="col-md-4 checkout-left-basket">
                                <ul>
                                    <li style="font-size: 13pt">Toplam :<span id="toplam" runat="server"></span></li>
                                </ul>
                            </div>
                            <div class="col-md-8 address_form_agile">


                                <div class="container">

                                    <div class="row">
                                        <div class="col-md-8">
                                            <asp:Button ID="btngeridon" CssClass="button" Style="display: block; position: relative; padding: 11px 14px; letter-spacing: 2px; font-size: 14pt; margin-left: 63%; background-color: #84c639; border-color: #84c639; font-family: Arial; color: white" runat="server" Text="Alışverişe Dön" BorderStyle="None" OnClick="btngeridon_Click" />
                                        </div>
                                        <div class="col-md-4">
                                            <asp:Button ID="btnsiparis" CssClass="button" Style="display: block; position: relative; padding: 11px 14px; letter-spacing: 1px; font-size: 14pt; margin-left: 26%; background-color: #84c639; border-color: #84c639; font-family: Arial; color: white" runat="server" Text="Siparişi Tamamla" BorderStyle="None" OnClick="btnsiparis_Click" />
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="clearfix"></div>
                        <br />
                        <div id="divmesaj" runat="server">
                            <asp:Label ID="lblmesaj" runat="server" Text="Siparişiniz bize ulaştı.En kısa sürede kapınızda olacaktır." Visible="false" ForeColor="Green" Font-Size="X-Large"></asp:Label>
                        </div>
                    </div>

                </div>
                <!-- //about -->
            </div>
        </form>
        <div class="clearfix"></div>
        <!-- //banner -->
        <!-- js -->
        <script src="CustomJS/jquery-1.11.1.min.js"></script>
        <!--quantity-->
        <script>
            $('.value-plus').on('click', function () {
                var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) + 1;
                divUpd.text(newVal);
            });

            $('.value-minus').on('click', function () {
                var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) - 1;
                if (newVal >= 1) divUpd.text(newVal);
            });
        </script>
        <!--quantity-->
        <script>$(document).ready(function (c) {
                $('.close1').on('click', function (c) {
                    $('.rem1').fadeOut('slow', function (c) {
                        $('.rem1').remove();
                    });
                });
            });
        </script>
        <script>$(document).ready(function (c) {
                $('.close2').on('click', function (c) {
                    $('.rem2').fadeOut('slow', function (c) {
                        $('.rem2').remove();
                    });
                });
            });
        </script>
        <script>$(document).ready(function (c) {
                $('.close3').on('click', function (c) {
                    $('.rem3').fadeOut('slow', function (c) {
                        $('.rem3').remove();
                    });
                });
            });
        </script>

        <!-- //js -->

        <!-- Bootstrap Core JavaScript -->
        <script src="Scripts/bootstrap.min.js"></script>

    </body>
    </html>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="Onay.aspx.cs" Inherits="zeytin.Onay" %>

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
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
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
        <!-- banner -->
        <div class="banner">
            <div>
                <!-- about -->
                <div class="privacy about">
                    <h3>Sepeti<span> Onayla</span></h3>

                    <div class="checkout-right">
                        <asp:Repeater ID="rptsepet" runat="server">
                            <ItemTemplate>
                                <table class="timetable_sub">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Ürün</th>
                                            <th>Adedi</th>
                                            <th>Ürün Adı</th>

                                            <th>Fiyatı</th>
                                            <th>Çıkar</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="rem1">
                                            <td class="invert">1</td>
                                            <td class="invert-image">
                                                <a>
                                                    <img src='<%#Eval("resimYolu")%>' alt=" " class="img-responsive"></a>
                                            </td>
                                            <td class="invert">
                                                <div class="quantity">
                                                    <div class="quantity-select">
                                                        <div class="entry value-minus">&nbsp;</div>
                                                        <div class="entry value"><span>1</span></div>
                                                        <div class="entry value-plus active">&nbsp;</div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="invert"><%#Eval("urunAdi")%></td>

                                            <td class="invert"><%#Eval("fiyat")%></td>
                                            <td class="invert">
                                                <div class="rem">
                                                    <div class="close1"></div>
                                                </div>

                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:ObjectDataSource ID="sepetleDoldur" runat="server"></asp:ObjectDataSource>
                    </div>
                    <div class="checkout-left">
                        <div style="margin-left: 67%" class="col-md-4 checkout-left-basket">
                            <ul>
                                <li>Toplam :<span>$84.00</span></li>
                            </ul>
                        </div>
                        <div class="col-md-8 address_form_agile">
                            <form id="form1" runat="server">

                                <div class="container">

                                    <div class="row">
                                        <div class="col-md-8">
                                            <asp:Button ID="btngeridon" CssClass="button" Style="display: block; position: relative; padding: 11px 14px; letter-spacing: 2px; font-size: 14pt; margin-left: 63%; background-color: #84c639; border-color: #84c639; font-family: Arial; color: white" runat="server" Text="Alışverişe Dön" BorderStyle="Groove" OnClick="btngeridon_Click" />
                                        </div>
                                        <div class="col-md-4">
                                            <asp:Button ID="btnsiparis" CssClass="button" Style="display: block; position: relative; padding: 11px 14px; letter-spacing: 1px; font-size: 14pt; margin-left: 26%; background-color: #84c639; border-color: #84c639; font-family: Arial; color: white" runat="server" Text="Siparişi Tamamla" BorderStyle="Groove" />
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="clearfix"></div>

                </div>

            </div>
            <!-- //about -->
        </div>
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
        <!-- start-smoth-scrolling -->
        <script src="CustomJS/easing.js" type="text/javascript"></script>
        <script src="CustomJS/moveTop.js" type="text/javascript"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
                });
            });
        </script>
        <!-- start-smoth-scrolling -->
        <!-- Bootstrap Core JavaScript -->
        <script src="Scripts/bootstrap.min.js"></script>
        <script>
            $(document).ready(function () {
                $(".dropdown").hover(
                    function () {
                        $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                        $(this).toggleClass('open');
                    },
                    function () {
                        $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                        $(this).toggleClass('open');
                    }
                );
            });
        </script>
        <!-- here stars scrolling icon -->
        <script type="text/javascript">
            $(document).ready(function () {
                /*
                    var defaults = {
                    containerID: 'toTop', // fading element id
                    containerHoverID: 'toTopHover', // fading element hover id
                    scrollSpeed: 1200,
                    easingType: 'linear' 
                    };
                */

                $().UItoTop({ easingType: 'easeOutQuart' });

            });
        </script>
        <!-- //here ends scrolling icon -->
        <script src="CustomJS/minicart.js"></script>
        <script>
            paypal.minicart.render();

            paypal.minicart.cart.on('checkout', function (evt) {
                var items = this.items(),
                    len = items.length,
                    total = 0,
                    i;

                // Count the number of each item in the cart
                for (i = 0; i < len; i++) {
                    total += items[i].get('quantity');
                }

                if (total < 3) {
                    alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
                    evt.preventDefault();
                }
            });

        </script>
    </body>
    </html>

</asp:Content>

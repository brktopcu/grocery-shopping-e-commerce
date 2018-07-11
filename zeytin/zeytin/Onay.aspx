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
                    <h3>Chec<span>kout</span></h3>

                    <div class="checkout-right">
                        <h4>Your shopping cart contains: <span>3 Products</span></h4>
                        <table class="timetable_sub">
                            <thead>
                                <tr>
                                    <th>SL No.</th>
                                    <th>Product</th>
                                    <th>Quantity</th>
                                    <th>Product Name</th>

                                    <th>Price</th>
                                    <th>Remove</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="rem1">
                                    <td class="invert">1</td>
                                    <td class="invert-image"><a href="single.html">
                                        <img src="images/1.png" alt=" " class="img-responsive"></a></td>
                                    <td class="invert">
                                        <div class="quantity">
                                            <div class="quantity-select">
                                                <div class="entry value-minus">&nbsp;</div>
                                                <div class="entry value"><span>1</span></div>
                                                <div class="entry value-plus active">&nbsp;</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="invert">Fortune Sunflower Oil</td>

                                    <td class="invert">$290.00</td>
                                    <td class="invert">
                                        <div class="rem">
                                            <div class="close1"></div>
                                        </div>

                                    </td>
                                </tr>
                                <tr class="rem2">
                                    <td class="invert">2</td>
                                    <td class="invert-image"><a href="single.html">
                                        <img src="images/3.png" alt=" " class="img-responsive"></a></td>
                                    <td class="invert">
                                        <div class="quantity">
                                            <div class="quantity-select">
                                                <div class="entry value-minus">&nbsp;</div>
                                                <div class="entry value"><span>1</span></div>
                                                <div class="entry value-plus active">&nbsp;</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="invert">Basmati Rise (5 Kg)</td>

                                    <td class="invert">$250.00</td>
                                    <td class="invert">
                                        <div class="rem">
                                            <div class="close2"></div>
                                        </div>

                                    </td>
                                </tr>
                                <tr class="rem3">
                                    <td class="invert">3</td>
                                    <td class="invert-image"><a href="single.html">
                                        <img src="images/2.png" alt=" " class="img-responsive"></a></td>
                                    <td class="invert">
                                        <div class="quantity">
                                            <div class="quantity-select">
                                                <div class="entry value-minus">&nbsp;</div>
                                                <div class="entry value"><span>1</span></div>
                                                <div class="entry value-plus active">&nbsp;</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="invert">Pepsi Soft Drink (2 Ltr)</td>

                                    <td class="invert">$15.00</td>
                                    <td class="invert">
                                        <div class="rem">
                                            <div class="close3"></div>
                                        </div>

                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                    <div class="checkout-left">
                        <div style="margin-left: 67%" class="col-md-4 checkout-left-basket">
                            <ul>
                                <li>Total <i>-</i> <span>$84.00</span></li>
                            </ul>
                        </div>
                        <div class="col-md-8 address_form_agile">
                            <button class="submit check_out">Delivery to this Address</button>

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

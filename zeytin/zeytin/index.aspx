<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="zeytin.index" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <title>Manav Sipariş</title>
        <!-- for-mobile-apps -->

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Grocery Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
        <link href="CustomCSS/myStyle.css" rel="stylesheet" type="text/css" media="all" />
        <!-- font-awesome icons -->
        <link href="CustomCSS/font.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- //font-awesome icons -->
        <!-- js -->
        <script src="CustomJS/jquery-1.11.1.min.js"></script>
        <script src="Scripts/jquery-3.0.0.min.js"></script>
        <!-- //js -->
        <link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="CustomJS/moveTop.js"></script>
        <script type="text/javascript" src="CustomJS/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
                });
            });
        </script>
        <!-- start-smoth-scrolling -->
    </head>


    <script src='//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
    <script src="//m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
    <script>
        (function () {
            if (typeof _bsa !== 'undefined' && _bsa) {
                // format, zoneKey, segment:value, options
                _bsa.init('flexbar', 'CKYI627U', 'placement:w3layoutscom');
            }
        })();
    </script>
    <script>
        (function () {
            if (typeof _bsa !== 'undefined' && _bsa) {
                // format, zoneKey, segment:value, options
                _bsa.init('fancybar', 'CKYDL2JN', 'placement:demo');
            }
        })();
    </script>
    <script>
        (function () {
            if (typeof _bsa !== 'undefined' && _bsa) {
                // format, zoneKey, segment:value, options
                _bsa.init('stickybox', 'CKYI653J', 'placement:w3layoutscom');
            }
        })();
    </script>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-30027142-1', 'w3layouts.com');
        ga('send', 'pageview');
    </script>
    <body>
        <!-- header -->

        <!-- script-for sticky-nav -->

        <!-- //script-for sticky-nav -->

        <!-- //header -->
        <!-- banner -->
        <div class="banner">
           

            <div>
                <section class="slider">
                    <div class="flexslider">
                        <ul class="slides">
                            <li>
                                <div class="w3l_banner_nav_right_banner">
                                    <h3>Melih Usta'dan <span>Günün</span> Yemeği.</h3>
                                    <div style="margin-left:80%" class="more">
                                        <a href="products.html" class="button--saqui button--round-l button--text-thick" data-text="Tarifi Gör">Tarifi Gör</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="w3l_banner_nav_right_banner1">
                                    <h3>Melih Usta'dan <span>Günün</span> Yemeği.</h3>
                                    <div style="margin-left:80%" class="more">
                                        <a href="products.html" class="button--saqui button--round-l button--text-thick" data-text="Tarifi Gör">Tarifi Gör</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="w3l_banner_nav_right_banner2">
                                    <h3>Melih Usta'dan <span>Günün</span> Yemeği.</h3>
                                    <div style="margin-left:80%" class="more">
                                        <a href="products.html" class="button--saqui button--round-l button--text-thick" data-text="Tarifi Gör">Tarifi Gör</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </section>
                <!-- flexSlider -->
                <link href="CustomCSS/flexSlider.css" rel="stylesheet" type="text/css" media="screen" property="" />

                <script defer src="CustomJS/flexslider.js"></script>
                <script type="text/javascript">
                    $(window).load(function () {
                        $('.flexslider').flexslider({
                            animation: "slide",
                            start: function (slider) {
                                $('body').removeClass('loading');
                            }
                        });
                    });
                </script>
                <!-- //flexSlider -->
            </div>
        </div>
        <div class="clearfix"></div>
        <!---728x90--->
        <script src='//publisher.eboundservices.com/dynamicAds/dynamicScript.js'></script>
        <div style='margin: 0 auto; text-align: center; margin-top: 5px;'>
            <script>
                var allowedNumberOfEboundDynamicAdds = 4;
                var sizesEboundDynamicAdsDesktop = ['728x90'];
                var sizesEboundDynamicAdsTablet = ['728x90'];
                var sizesEboundDynamicAdsMobile = ['320x100'];
                eboundAdsTagByDevice(sizesEboundDynamicAdsDesktop, sizesEboundDynamicAdsTablet, sizesEboundDynamicAdsMobile, 'ebound_header_tag');

                if (typeof user_tag_config == 'undefined') {
                    var user_tag_config = {};
                }
                user_tag_config['ebound_header_tag'] = {};
                user_tag_config['ebound_header_tag']['desktop'] = {};
                user_tag_config['ebound_header_tag']['desktop']['cpm'] = '';
                user_tag_config['ebound_header_tag']['desktop']['adsCode'] = '';
                user_tag_config['ebound_header_tag']['tablet'] = {};
                user_tag_config['ebound_header_tag']['tablet']['cpm'] = '';
                user_tag_config['ebound_header_tag']['tablet']['adsCode'] = '';
                user_tag_config['ebound_header_tag']['mobile'] = {};
                user_tag_config['ebound_header_tag']['mobile']['cpm'] = '';
                user_tag_config['ebound_header_tag']['mobile']['adsCode'] = '';
            </script>
        </div>
        <!-- banner -->

        <!---728x90--->
        <script src='//publisher.eboundservices.com/dynamicAds/dynamicScript.js'></script>
        <div style='margin: 0 auto; text-align: center; margin-top: 5px;'>
            <script>
                var allowedNumberOfEboundDynamicAdds = 4;
                var sizesEboundDynamicAdsDesktop = ['728x90'];
                var sizesEboundDynamicAdsTablet = ['728x90'];
                var sizesEboundDynamicAdsMobile = ['320x100'];
                eboundAdsTagByDevice(sizesEboundDynamicAdsDesktop, sizesEboundDynamicAdsTablet, sizesEboundDynamicAdsMobile, 'ebound_header_tag');

                if (typeof user_tag_config == 'undefined') {
                    var user_tag_config = {};
                }
                user_tag_config['ebound_header_tag'] = {};
                user_tag_config['ebound_header_tag']['desktop'] = {};
                user_tag_config['ebound_header_tag']['desktop']['cpm'] = '';
                user_tag_config['ebound_header_tag']['desktop']['adsCode'] = '';
                user_tag_config['ebound_header_tag']['tablet'] = {};
                user_tag_config['ebound_header_tag']['tablet']['cpm'] = '';
                user_tag_config['ebound_header_tag']['tablet']['adsCode'] = '';
                user_tag_config['ebound_header_tag']['mobile'] = {};
                user_tag_config['ebound_header_tag']['mobile']['cpm'] = '';
                user_tag_config['ebound_header_tag']['mobile']['adsCode'] = '';
            </script>
        </div>
        <!-- top-brands -->
        <div class="top-brands">
            <div class="container">
                       
                <h3><a ID="sebze">Sebzeler</a> / <a ID="meyve">Meyveler</a></h3>
                
                <!---728x90--->
                <script src='//publisher.eboundservices.com/dynamicAds/dynamicScript.js'></script>
                <div style='margin: 0 auto; text-align: center; margin-top: 5px;'>
                    <script>
                        var allowedNumberOfEboundDynamicAdds = 4;
                        var sizesEboundDynamicAdsDesktop = ['728x90'];
                        var sizesEboundDynamicAdsTablet = ['728x90'];
                        var sizesEboundDynamicAdsMobile = ['320x100'];
                        eboundAdsTagByDevice(sizesEboundDynamicAdsDesktop, sizesEboundDynamicAdsTablet, sizesEboundDynamicAdsMobile, 'ebound_header_tag');

                        if (typeof user_tag_config == 'undefined') {
                            var user_tag_config = {};
                        }
                        user_tag_config['ebound_header_tag'] = {};
                        user_tag_config['ebound_header_tag']['desktop'] = {};
                        user_tag_config['ebound_header_tag']['desktop']['cpm'] = '';
                        user_tag_config['ebound_header_tag']['desktop']['adsCode'] = '';
                        user_tag_config['ebound_header_tag']['tablet'] = {};
                        user_tag_config['ebound_header_tag']['tablet']['cpm'] = '';
                        user_tag_config['ebound_header_tag']['tablet']['adsCode'] = '';
                        user_tag_config['ebound_header_tag']['mobile'] = {};
                        user_tag_config['ebound_header_tag']['mobile']['cpm'] = '';
                        user_tag_config['ebound_header_tag']['mobile']['adsCode'] = '';
                    </script>
                </div>
                <asp:Repeater ID="rpturunler" runat="server">
                    <ItemTemplate>
                        <div class="agile_top_brands_grids">
                            <div class="col-md-3 top_brand_left">
                                <div class="hover14 column">
                                    <div class="agile_top_brand_left_grid">

                                        <div class="agile_top_brand_left_grid1">
                                            <figure>
                                                <div class="snipcart-item block">
                                                    <div class="snipcart-thumb">
                                                        <a href="single.html">
                                                            <img title=" " alt=" " src="images/1.png" /></a>
                                                        <p style="text-align: center">fortune sunflower oil</p>
                                                        <h4 style="text-align: center">$7.99</h4>
                                                    </div>
                                                    <div class="snipcart-details top_brand_home_details">
                                                        <form action="#" method="post">
                                                            <fieldset>
                                                                <input type="hidden" name="cmd" value="_cart" />
                                                                <input type="hidden" name="add" value="1" />
                                                                <input type="hidden" name="business" value=" " />
                                                                <input type="hidden" name="item_name" value="Fortune Sunflower Oil" />
                                                                <input type="hidden" name="amount" value="7.99" />
                                                                <input type="hidden" name="discount_amount" value="1.00" />
                                                                <input type="hidden" name="currency_code" value="USD" />
                                                                <input type="hidden" name="return" value=" " />
                                                                <input type="hidden" name="cancel_return" value=" " />
                                                                <input type="submit" name="submit" value="Add to cart" class="button" />
                                                            </fieldset>
                                                        </form>
                                                    </div>
                                                </div>
                                            </figure>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <!-- //top-brands -->



        <!-- footer -->

        <!-- //footer -->
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
        <script src="js/minicart.min.js"></script>
        <script src="CustomJS/minicart.js"></script>
        <script>
            // Mini Cart
            paypal.minicart.render({
                action: '#'
            });

            if (~window.location.search.indexOf('reset=true')) {
                paypal.minicart.reset();
            }
        </script>
    </body>
    </html>

</asp:Content>

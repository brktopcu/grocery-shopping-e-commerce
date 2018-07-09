<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="zeytin.index" %>

<!DOCTYPE html>
<html>
<head>
    <title>Grocery Store a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
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
        <div class="agileits_header">
            <div class="w3l_offers">
                <a href="products.html">Today's special Offers !</a>
            </div>
            <div class="w3l_search">
                <form action="#" method="post">
                    <input type="text" name="Product" value="Search a product..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search a product...';}" required="">
                    <input type="submit" value=" ">
                </form>
            </div>
            <div class="product_list_header">
                <form action="#" method="post" class="last">
                    <fieldset>
                        <input type="hidden" name="cmd" value="_cart" />
                        <input type="hidden" name="display" value="1" />
                        <input type="submit" name="submit" value="View your cart" class="button" />
                    </fieldset>
                </form>
            </div>
            <div class="w3l_header_right">
                <ul>
                    <li class="dropdown profile_details_drop">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user" aria-hidden="true"></i><span class="caret"></span></a>
                        <div class="mega-dropdown-menu">
                            <div class="w3ls_vegetables">
                                <ul class="dropdown-menu drp-mnu">
                                    <li><a href="login.html">Login</a></li>
                                    <li><a href="login.html">Sign Up</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="w3l_header_right1">
                <h2><a href="mail.html">Contact Us</a></h2>
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- script-for sticky-nav -->
        <script>
            $(document).ready(function () {
                var navoffeset = $(".agileits_header").offset().top;
                $(window).scroll(function () {
                    var scrollpos = $(window).scrollTop();
                    if (scrollpos >= navoffeset) {
                        $(".agileits_header").addClass("fixed");
                    } else {
                        $(".agileits_header").removeClass("fixed");
                    }
                });

            });
        </script>
        <!-- //script-for sticky-nav -->
        <div class="logo_products">
            <div class="container">
                <div class="w3ls_logo_products_left">
                    <h1><a href="index.html"><span>Grocery</span> Store</a></h1>
                </div>
                <div class="w3ls_logo_products_left1">
                    <ul class="special_items">
                        <li><a href="events.html">Events</a><i>/</i></li>
                        <li><a href="about.html">About Us</a><i>/</i></li>
                        <li><a href="products.html">Best Deals</a><i>/</i></li>
                        <li><a href="services.html">Services</a></li>
                    </ul>
                </div>
                <div class="w3ls_logo_products_left1">
                    <ul class="phone_email">
                        <li><i class="fa fa-phone" aria-hidden="true"></i>(+0123) 234 567</li>
                        <li><i class="fa fa-envelope-o" aria-hidden="true"></i><a href="mailto:store@grocery.com">store@grocery.com</a></li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //header -->
        <!-- banner -->
        <div class="banner">
            <div class ="w3l_banner_nav_left">
            <div class="w3l_fresh_vegetables_grid2">
                            <ul>
                                <li><i class="fa fa-check" aria-hidden="true"></i><a href="products.html">All Brands</a></li>
                                <li><i class="fa fa-check" aria-hidden="true"></i><a href="vegetables.html">Vegetables</a></li>
                                <li><i class="fa fa-check" aria-hidden="true"></i><a href="vegetables.html">Fruits</a></li>
                                <li><i class="fa fa-check" aria-hidden="true"></i><a href="drinks.html">Juices</a></li>
                                <li><i class="fa fa-check" aria-hidden="true"></i><a href="pet.html">Pet Food</a></li>
                                <li><i class="fa fa-check" aria-hidden="true"></i><a href="bread.html">Bread & Bakery</a></li>
                                <li><i class="fa fa-check" aria-hidden="true"></i><a href="household.html">Cleaning</a></li>
                                <li><i class="fa fa-check" aria-hidden="true"></i><a href="products.html">Spices</a></li>
                                <li><i class="fa fa-check" aria-hidden="true"></i><a href="products.html">Dry Fruits</a></li>
                                <li><i class="fa fa-check" aria-hidden="true"></i><a href="products.html">Dairy Products</a></li>
                            </ul>
                        </div>
                    </div>
        </div>
            <div class="w3l_banner_nav_right">
                <section class="slider">
                    <div class="flexslider">
                        <ul class="slides">
                            <li>
                                <div class="w3l_banner_nav_right_banner">
                                    <h3>Make your <span>food</span> with Spicy.</h3>
                                    <div class="more">
                                        <a href="products.html" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="w3l_banner_nav_right_banner1">
                                    <h3>Make your <span>food</span> with Spicy.</h3>
                                    <div class="more">
                                        <a href="products.html" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="w3l_banner_nav_right_banner2">
                                    <h3>upto <i>50%</i> off.</h3>
                                    <div class="more">
                                        <a href="products.html" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
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
                <h3>Hot Offers</h3>
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
                                                <p style="text-align:center">fortune sunflower oil</p>
                                                <h4 style="text-align:center">$7.99</h4>
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
            </div>
        </div>
        <!-- //top-brands -->
      
        
       
        <!-- footer -->
        <div class="footer">
            <div class="container">
                <div class="col-md-3 w3_footer_grid">
                    <h3>information</h3>
                    <ul class="w3_footer_grid_list">
                        <li><a href="events.html">Events</a></li>
                        <li><a href="about.html">About Us</a></li>
                        <li><a href="products.html">Best Deals</a></li>
                        <li><a href="services.html">Services</a></li>
                        <li><a href="short-codes.html">Short Codes</a></li>
                    </ul>
                </div>
                <div class="col-md-3 w3_footer_grid">
                    <h3>policy info</h3>
                    <ul class="w3_footer_grid_list">
                        <li><a href="faqs.html">FAQ</a></li>
                        <li><a href="privacy.html">privacy policy</a></li>
                        <li><a href="privacy.html">terms of use</a></li>
                    </ul>
                </div>
                <div class="col-md-3 w3_footer_grid">
                    <h3>what in stores</h3>
                    <ul class="w3_footer_grid_list">
                        <li><a href="pet.html">Pet Food</a></li>
                        <li><a href="frozen.html">Frozen Snacks</a></li>
                        <li><a href="kitchen.html">Kitchen</a></li>
                        <li><a href="products.html">Branded Foods</a></li>
                        <li><a href="household.html">Households</a></li>
                    </ul>
                </div>
                <div class="col-md-3 w3_footer_grid">
                    <h3>twitter posts</h3>
                    <ul class="w3_footer_grid_list1">
                        <li>
                            <label class="fa fa-twitter" aria-hidden="true"></label>
                            <i>01 day ago</i><span>Non numquam <a href="#">http://sd.ds/13jklf#</a>
                                eius modi tempora incidunt ut labore et
						<a href="#">http://sd.ds/1389kjklf#</a>quo nulla.</span></li>
                        <li>
                            <label class="fa fa-twitter" aria-hidden="true"></label>
                            <i>02 day ago</i><span>Con numquam <a href="#">http://fd.uf/56hfg#</a>
                                eius modi tempora incidunt ut labore et
						<a href="#">http://fd.uf/56hfg#</a>quo nulla.</span></li>
                    </ul>
                </div>
                <div class="clearfix"></div>
                <div class="agile_footer_grids">
                    <div class="col-md-3 w3_footer_grid agile_footer_grids_w3_footer">
                        <div class="w3_footer_grid_bottom">
                            <h4>100% secure payments</h4>
                            <img src="images/card.png" alt=" " class="img-responsive" />
                        </div>
                    </div>
                    <div class="col-md-3 w3_footer_grid agile_footer_grids_w3_footer">
                        <div class="w3_footer_grid_bottom">
                            <h5>connect with us</h5>
                            <ul class="agileits_social_icons">
                                <li><a href="#" class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#" class="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#" class="google"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="#" class="instagram"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                <li><a href="#" class="dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="wthree_footer_copy">
                    <p>© 2016 Grocery Store. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
                </div>
            </div>
        </div>
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

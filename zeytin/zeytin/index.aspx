<%@ Page MaintainScrollPositionOnPostback="true" Title="Manav Sipariş" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="zeytin.index" %>

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
                                    <div style="margin-left: 80%" class="more">
                                        <a href="tarif.aspx" class="button--saqui button--round-l button--text-thick" data-text="Tarifi Gör">Tarifi Gör</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="w3l_banner_nav_right_banner1">
                                    <h3>Melih Usta'dan <span>Günün</span> Yemeği.</h3>
                                    <div style="margin-left: 80%" class="more">
                                        <a href="tarif.aspx" class="button--saqui button--round-l button--text-thick" data-text="Tarifi Gör">Tarifi Gör</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="w3l_banner_nav_right_banner2">
                                    <h3>Melih Usta'dan <span>Günün</span> Yemeği.</h3>
                                    <div style="margin-left: 80%" class="more">
                                        <a href="tarif.aspx" class="button--saqui button--round-l button--text-thick" data-text="Tarifi Gör">Tarifi Gör</a>
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
        <form id="formBtn" runat="server" method="post">
            <div class="top-brands">
                <div class="container">

                    <h3>
                        <asp:LinkButton ID="sebze" runat="server" CssClass="sebze" OnClick="sebze_Click">Sebzeler</asp:LinkButton>
                        /
                        <asp:LinkButton ID="meyve" runat="server" CssClass="sebze" OnClick="meyve_Click">Meyveler</asp:LinkButton>
                    </h3>

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
                    
                    <div class="container">
                        <div class="row">
                            <asp:Repeater ID="rpturunler" runat="server" Visible="true">
                                <ItemTemplate>

                                    <div class="agile_top_brands_grids col-md-3">
                                        <div class="top_brand_left">
                                            <div class="hover14 column">
                                                <div class="agile_top_brand_left_grid">

                                                    <div class="agile_top_brand_left_grid1">
                                                        <figure>
                                                            <div class="snipcart-item block">
                                                                <div class="snipcart-thumb">

                                                                    <img style="margin-left: 13%" src='<%#Eval("resimYolu")%>' /></a>
                                                        <p style="text-align: center"><%#Eval("urunAdi")%></p>
                                                                    <h4 style="text-align: center"><%#Eval("fiyat") %> &nbsp<i class="fa fa-turkish-lira"></i> </h4>
                                                                    <asp:TextBox ID="txtkackilo" BorderStyle="None" Style="font-size: 11pt; width: 18%; text-align: center; margin-left: 33%;" runat="server" TextMode="Number" Text="1" ReadOnly="False"></asp:TextBox>&nbsp;<i style="font: initial; font-size: 11pt;">KG</i>
                                                                </div>
                                                                <div class="snipcart-details top_brand_home_details">

                                                                    <fieldset>
                                                                        <asp:Button ID="btnEkle" runat="server" Text="Sepete Ekle" CssClass="button" OnClick="btnEkle_Click" CommandArgument='<%#Eval("id")%>' />
                                                                        <asp:Label ID="lblresimyolu" runat="server" Text='<%#Eval("resimYolu")%>' Visible="false"></asp:Label>
                                                                        <asp:Label ID="lblurunadi" runat="server" Text='<%#Eval("urunAdi")%>' Visible="false"></asp:Label>
                                                                        <asp:Label ID="lblfiyat" runat="server" Text='<%#Eval("fiyat")%>' Visible="false"></asp:Label>
                                                                    </fieldset>

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

                    <div class="container">
                        <div class="row">
                            <asp:Repeater ID="rptMeyveler" runat="server" Visible="false">
                                <ItemTemplate>

                                    <div class="agile_top_brands_grids col-md-3">
                                        <div class="top_brand_left">
                                            <div class="hover14 column">
                                                <div class="agile_top_brand_left_grid">

                                                    <div class="agile_top_brand_left_grid1">
                                                        <figure>
                                                            <div class="snipcart-item block">
                                                                <div class="snipcart-thumb">

                                                                    <img style="margin-left: 13%" src='<%#Eval("resimYolu")%>' /></a>
                                                        <p style="text-align: center"><%#Eval("urunAdi") %></p>
                                                                    <h4 style="text-align: center"><%#Eval("fiyat") %> &nbsp<i class="fa fa-turkish-lira"></i> </h4>
                                                                    <asp:TextBox ID="txtkackilo" BorderStyle="None" Style="font-size: 11pt; width: 18%; text-align: center; margin-left: 33%;" runat="server" TextMode="Number" Text="1"></asp:TextBox>&nbsp;<i style="font: initial; font-size: 11pt;">KG</i>
                                                                </div>
                                                                <div class="snipcart-details top_brand_home_details">
                                                                    <fieldset>
                                                                        <asp:Button ID="btnEkle" runat="server" Text="Sepete Ekle" CssClass="button" OnClick="btnEkle_Click" CommandArgument='<%#Eval("id")%>' />
                                                                        <asp:Label ID="lblresimyolu" runat="server" Text='<%#Eval("resimYolu")%>' Visible="false"></asp:Label>
                                                                        <asp:Label ID="lblurunadi" runat="server" Text='<%#Eval("urunAdi")%>' Visible="false"></asp:Label>
                                                                        <asp:Label ID="lblfiyat" runat="server" Text='<%#Eval("fiyat")%>' Visible="false"></asp:Label>
                                                                    </fieldset>
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
                    <div class="container">
                        <div class="row">
                            <asp:Repeater ID="rptSebzeler" runat="server" Visible="false">
                                <ItemTemplate>

                                    <div class="agile_top_brands_grids col-md-3">
                                        <div class="top_brand_left">
                                            <div class="hover14 column">
                                                <div class="agile_top_brand_left_grid">

                                                    <div class="agile_top_brand_left_grid1">
                                                        <figure>
                                                            <div class="snipcart-item block">
                                                                <div class="snipcart-thumb">

                                                                    <img style="margin-left: 13%" src='<%#Eval("resimYolu")%>' /></a>
                                                        <p style="text-align: center"><%#Eval("urunAdi") %></p>
                                                                    <h4 style="text-align: center"><%#Eval("fiyat") %> &nbsp<i class="fa fa-turkish-lira"></i> </h4>
                                                                    <asp:TextBox ID="txtkackilo" BorderStyle="None" Style="font-size: 11pt; width: 18%; text-align: center; margin-left: 33%;" runat="server" TextMode="Number" Text="1"></asp:TextBox>&nbsp;<i style="font: initial; font-size: 11pt;">KG</i>
                                                                </div>
                                                                <div class="snipcart-details top_brand_home_details">
                                                                    <fieldset>
                                                                        <asp:Button ID="btnEkle" runat="server" Text="Sepete Ekle" CssClass="button" OnClick="btnEkle_Click" CommandArgument='<%#Eval("id")%>' />
                                                                        <asp:Label ID="lblresimyolu" runat="server" Text='<%#Eval("resimYolu")%>' Visible="false"></asp:Label>
                                                                        <asp:Label ID="lblurunadi" runat="server" Text='<%#Eval("urunAdi")%>' Visible="false"></asp:Label>
                                                                        <asp:Label ID="lblfiyat" runat="server" Text='<%#Eval("fiyat")%>' Visible="false"></asp:Label>
                                                                    </fieldset>
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

                </div>
            </div>

        </form>

        <!-- footer -->

        <!-- //footer -->
        <!-- Bootstrap Core JavaScript -->

        <script src="Scripts/bootstrap.min.js"></script>
        <script src="js/minicart.min.js"></script>
        <script src="CustomJS/minicart.js"></script>
      
    </body>
    </html>

</asp:Content>

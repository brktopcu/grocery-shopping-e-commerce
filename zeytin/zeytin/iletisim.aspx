<%@ Page MaintainScrollPositionOnPostback="true" Title="İletişim" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="zeytin.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <!DOCTYPE html>
    <html>
    <head>
        <title>İletişim</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Grocery Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- font-awesome icons -->
        <link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" />
        <!-- //font-awesome icons -->
        <!-- js -->
        <script src="js/jquery-1.11.1.min.js"></script>
        <!-- //js -->
        <link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
       
    </head>

    <body>

        <!-- banner -->
        <div class="banner">

            <div>
                <!-- mail -->
                <div class="mail">
                    <h3>Bize Ulaşın</h3>
                    <div class="agileinfo_mail_grids">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-4 agileinfo_mail_grid_left">
                                    <ul>
                                        <li><i class="fa fa-home" aria-hidden="true"></i></li>
                                        <li>adres<span>868 1st Avenue NYC.</span></li>
                                    </ul>
                                </div>
                                <div class="col-md-4 agileinfo_mail_grid_left">
                                    <ul>
                                        <li><i class="fa fa-envelope" aria-hidden="true"></i></li>
                                        <li>e-posta<span><a href="mailto:info@example.com">info@example.com</a></span></li>
                                    </ul>
                                </div>
                                <div class="col-md-4 agileinfo_mail_grid_left">
                                    <ul>
                                        <li><i class="fa fa-phone" aria-hidden="true"></i></li>
                                        <li>bizi arayın<span>(+123) 233 2362 826</span></li>
                                    </ul>
                                </div>

                            </div>
                            <br />
                            <br />
                            <div style="margin-left: 15%" class="col-md-8 agileinfo_mail_grid_right">
                                <form action="#" method="post">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-6 wthree_contact_left_grid">
                                                <input type="text" name="Name" value="Ad*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name*';}" required="">
                                                <input type="email" name="Email" value="E-posta*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email*';}" required="">
                                            </div>



                                            <div class="col-md-6 wthree_contact_left_grid">
                                                <input type="text" name="Telephone" value="Telefon*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Telephone*';}" required="">
                                                <input type="text" name="Subject" value="Konu*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject*';}" required="">
                                            </div>
                                        </div>

                                        <div class="clearfix"></div>
                                        <textarea name="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Mesajınız...</textarea>
                                        <br />
                                        <br />
                                        <input style="margin-left:0%" type="submit" value="Gönder">
                                        <input style="margin-left:6%" type="reset" value="Sil">
                                    </div>
                                </form>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <!-- //mail -->
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- //banner -->
        <!-- map -->
        <div class="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2995.9149851541547!2d36.26712976531901!3d41.33246197926933!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40887901f1085d8b%3A0x84dd863b59407be8!2sCumhuriyet+Mahallesi%2C+Pazar+Yeri%2C+55200+Atakum%2FSamsun!5e0!3m2!1str!2str!4v1531233919403" width="600" height="450" style="border: 0"></iframe>
        </div>
        <!-- //map -->


      
    </body>
    </html>
</asp:Content>

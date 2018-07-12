<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="girisYap.aspx.cs" Inherits="zeytin.girisYap" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Giriş Yap</title>
    <link href="CustomCSS/loginStyle.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

    <%--login--%>
    <div class="w3_login">
        <h3>Giriş Yap</h3>
        <div class="w3_login_module">
            <div class="module form-module">
                <div class="toggle">
                    <i class="fa fa-times fa-pencil"></i>

                </div>
                <div class="form">
                    <h2>Lütfen hesabınıza giriş yapın.</h2>
                    <form runat="server" action="#" method="post">
                        <asp:TextBox ID="txteposta" runat="server" CssClass="txtGirisKaydol" placeholder="E-posta"></asp:TextBox>
                        <asp:TextBox ID="txtsifre" runat="server" CssClass="txtGirisKaydol" placeholder="Parola"></asp:TextBox>
                        <asp:Button CssClass="btnGirisKaydol" ID="btngiris" runat="server" Text="Giriş Yap" OnClick="btngiris_Click" />
                        <br />
                        <br />
                        <asp:Button CssClass="btnGirisKaydol" ID="btnkaydol" runat="server" Text="Kaydol" />
                        <asp:Label ID="lblmesaj" runat="server" Text="Hatalı giriş yaptınız." Visible="false"></asp:Label>
                    </form>
                </div>
                <div class="form">

                    <form action="#" method="post">
                    </form>
                </div>
                <div class="cta"><a href="#">Parolanızı mı unuttunuz?</a></div>
            </div>
        </div>

    </div>
    <!-- //login -->

</body>
</html>

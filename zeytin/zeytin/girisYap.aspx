<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="girisYap.aspx.cs" Inherits="zeytin.girisYap" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Giriş Yap</title>
    <link href="CustomCSS/loginStyle.css" rel="stylesheet" />
</head>
<body>
    <%--login--%>    <div class="w3_login">
			<h3>Giriş Yap</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
					
				  </div>
				  <div class="form">
					<h2>Lütfen hesabınıza giriş yapın.</h2>
					<form action="#" method="post">
					  <input type="email" name="Eposta" placeholder="E-posta" required=" ">
					  <input type="password" name="Parola" placeholder="Parola" required=" ">
					  <input type="submit" value="Giriş Yap"> <br /><br />
                        <input type="submit" value="Kaydol">
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
<!-- //login --></body>
</html>

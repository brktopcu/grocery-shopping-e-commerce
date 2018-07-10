<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kaydol.aspx.cs" Inherits="zeytin.Kaydol" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Kaydol</title>
    <link href="CustomCSS/loginStyle.css" rel="stylesheet" />
</head>
<body>
    <!-- login -->
		<div class="w3_login">
			<h3>Kaydol</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  
				  <div class="form">
					
					
				  </div>
				  <div class="form">
					<h2>Lütfen bir hesap oluşturun.</h2>
					<form runat="server" action="#" method="post">
                      <asp:TextBox ID= "ad" runat="server" placeholder="Ad Soyad"></asp:TextBox>
                      <asp:TextBox ID= "parola" runat="server" placeholder="Parola" TextMode="Password"></asp:TextBox>
                      <asp:TextBox ID= "eposta" runat="server" placeholder="Eposta" TextMode="Email"></asp:TextBox>
                      <asp:TextBox ID= "tel" runat="server" placeholder="Telefon Numarası"></asp:TextBox>
                      <asp:TextBox ID= "adres" runat="server" placeholder="Adres" TextMode="MultiLine" style="width:320px; height:150px;"></asp:TextBox>
                        <br />  <br />
					  <input type="submit" value="Kaydol">
					</form>
				  </div>
				  
				</div>
			</div>
		
		</div>
<!-- //login -->
</body>
</html>

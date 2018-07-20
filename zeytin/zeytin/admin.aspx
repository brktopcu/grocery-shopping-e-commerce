<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="zeytin.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>
    <html>
    <head>
        <title>Admin</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css">
    </head>
    <body>


        <form id="admin" runat="server">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <h4 style="text-align: center; text-decoration: underline;">Siparişler:</h4>       
                        <br />
                    </div>
                    <div class="col-md-8">
                       



                    </div>
                </div>
                <asp:Button ID="urunEkle" CssClass="linkbtn" runat="server" Text="Ürün Ekle" />
                <asp:Button ID="tarifEkle" CssClass="linkbtn" runat="server" Text="Tarif Ekle" />
                <br /><br />
                
            </div>
        </form>

    </body>
    </html>



</asp:Content>

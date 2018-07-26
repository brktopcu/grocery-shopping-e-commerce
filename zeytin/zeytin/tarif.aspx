<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="tarif.aspx.cs" Inherits="zeytin.tarif" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <title>Tarifler</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css">
    </head>
    <body>


        <form id="tarifForm" runat="server">
            <div class="container">
                <div style="text-align:center">
                    <asp:Label ID="lbltarifadi" runat="server" Font-Size="XX-Large" Font-Bold="true" Font-Underline="true"></asp:Label>
                </div>
                <br />
                <br />
                <div class="row">
                    <div class="col-md-8">
                        <h3 style="text-align: center; text-decoration: underline;">Malzemeler</h3>
                        <br />
                        <br />
                        <asp:TextBox ID="txtmalzemeler" runat="server" BorderStyle="None" TextMode="MultiLine" Style="overflow: hidden; width: 60%; height: 300px; margin-left: 20%" ReadOnly="True"></asp:TextBox>
                        <br />
                    </div>
                    <div class="col-md-4">
                        <asp:Image ID="imgtarifResmi" runat="server" style="Width:100%;" />
                    </div>
                </div>

                <h3 style="text-align: center; text-decoration: underline;">Yemek Tarifi</h3>
                <asp:TextBox ID="txtyapilisi" runat="server" BorderStyle="None" TextMode="MultiLine" Style="overflow: hidden; width: 80%; height: 700px; margin-left: 10%" ReadOnly="True"></asp:TextBox>
            </div>
        </form>

    </body>
    </html>

</asp:Content>

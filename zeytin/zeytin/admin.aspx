<%@ Page MaintainScrollPositionOnPostback="true" Title="Admin" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="zeytin.admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>
    <html>
    <head>
        <title>Admin</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css">
        <link href="CustomCSS/myStyle.css" rel="stylesheet" />
        <link href="CustomCSS/checkout.css" rel="stylesheet" />

    </head>
    <body>


        <form id="admin" runat="server">
            <div>
                <h4 style="text-align: center; text-decoration: underline;">Siparişler:</h4>
                <br />
                <div class="container">
                    <div style="margin-left: 2%" class="row">
                        <div class="col-md-6">
                            <asp:Button ID="urunEkle" CssClass="linkbtn" runat="server" Text="Ürün Ekle" OnClick="urunEkle_Click" />

                        </div>
                        <br />
                        <br />
                        <div class="col-md-6">
                            <asp:Button ID="tarifEkle" CssClass="linkbtn" runat="server" Text="Tarif Ekle" OnClick="tarifEkle_Click" />

                        </div>
                        <br />
                        <br />
                    </div>
                    <br />
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div style="width: 93%; margin-left: 3%; text-align: center">

                        <asp:GridView ID="grdSiparisler" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" AutoGenerateColumns="False" OnRowCommand="grdSiparisler_RowCommand" CellSpacing="2" ForeColor="Black">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="Sipariş No :" ReadOnly="True" SortExpression="NO:" />
                                <asp:BoundField DataField="adSoyad" HeaderText="Siparişi Veren Kişi" ReadOnly="True" />
                                <asp:BoundField DataField="ePosta" HeaderText="E-Posta" ReadOnly="True" />
                                <asp:BoundField DataField="adres" HeaderText="Adres" ReadOnly="True" />
                                <asp:BoundField DataField="siparisTarihi" HeaderText="Sipariş Tarihi" />
                                <asp:ButtonField ButtonType="Button" HeaderText="Sipariş Detayını Gör" Text="Sipariş Detayı" CommandName="detay" ControlStyle-CssClass="linkbtn">
                                    <ControlStyle CssClass="linkbtn"></ControlStyle>
                                </asp:ButtonField>
                                <asp:ButtonField ButtonType="Button" CommandName="iletildi" Text="İletildi" ControlStyle-CssClass="linkbtn" HeaderText="İletildi Mi">
                                    <ControlStyle CssClass="linkbtn"></ControlStyle>
                                </asp:ButtonField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>


                    </div>
                    <div style="width: 100%">
                        <div class="checkout-right">

                            <table class="timetable_sub">
                                <thead>
                                    <tr>
                                        <th>Ürün</th>
                                        <th>Adedi</th>
                                        <th>Ürün Adı</th>

                                        <th>Birim Fiyatı</th>
                                    </tr>
                                </thead>
                                <asp:Repeater ID="rptsepet" runat="server">
                                    <ItemTemplate>
                                        <tbody>

                                            <tr class="rem1">
                                                <td class="invert-image">
                                                    <a>
                                                        <img style="width: 100px; height: 100px;" src='<%#Eval("resimYolu")%>' alt=" " class="img-responsive"></a>
                                                </td>
                                                <td class="invert">
                                                    <div class="quantity">
                                                        <div class="quantity-select">
                                                            <asp:TextBox ID="txtkackilo" runat="server" Text='<%#Eval("adet")%>' BorderStyle="None" Style="width: 10%; font-size: 12pt; text-align: center" ReadOnly="True"></asp:TextBox><i style="font: initial; font-size: 12pt;"><%#Eval("satilmaSekli") %></i>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="invert"><%#Eval("urunAdi")%></td>

                                                <td class="invert"><%#Eval("urunFiyat")%>&nbsp<i class="fa fa-turkish-lira"></i> </td>

                                            </tr>

                                        </tbody>

                                    </ItemTemplate>
                                </asp:Repeater>
                            </table>
                        </div>
                        <div class="checkout-left">
                            <span><i class="fa fa-turkish-lira"></i></span>
                            <div style="margin-left: 60%" class="col-md-4 checkout-left-basket">
                                <ul>
                                    <li style="font-size: 13pt">Toplam :<span id="toplam" runat="server"></span></li>

                                </ul>
                            </div>
                        </div>

                        <div class="clearfix"></div>

                    </div>
                </div>
            </div>

        </form>

    </body>
    </html>



</asp:Content>

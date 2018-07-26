<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="aktive.aspx.cs" Inherits="zeytin.aktive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <form id="aktivasyonForm" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-6">

                    <h3>Lütfen aktivasyon kodunu girin:</h3>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="aktivasyon" runat="server"></asp:TextBox>
                </div>
                  <div class="col-md-3">
                      <asp:Button ID="aktivasyonGonder" runat="server" Text="Gönder" CssClass="btn" OnClick="aktivasyonGonder_Click" />
                </div>
            </div>
            <br />
            <asp:Label ID="lblAktivasyon" runat="server" Visible="false"></asp:Label>
            <br />
            <br />
        </div>
    </form>
</asp:Content>

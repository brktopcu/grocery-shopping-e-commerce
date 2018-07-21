using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zeytin
{
    public partial class Onay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.MaintainScrollPositionOnPostBack = true;
            if (!IsPostBack)
            {
                lblmesaj.Visible = false;
                try
                {
                    rptsepet.Visible = true;
                    rptsepet.DataSource = index.sepetim.Urunler;
                    rptsepet.DataBind();
                    toplam.InnerText = index.sepetim.AnaToplam.ToString();
                    
                }
                catch (Exception)
                {
                    rptsepet.Visible = false;
                    
                }
                
            }



        }

        protected void btngeridon_Click(object sender, EventArgs e)
        {
            Response.Redirect("/index.aspx");
        }

        protected void btnCikar_Click(object sender, EventArgs e)
        {
            var btn = (Button)sender;
            var currentItem = (RepeaterItem)btn.NamingContainer;
            Label lblid = currentItem.FindControl("lblid") as Label;
            index.sepetim.Cikar(Convert.ToInt32(lblid.Text));
            Response.Redirect("Onay.aspx");
        }

        protected void btnsiparis_Click(object sender, EventArgs e)
        {
            if (Session["Kullanici"] != null)
            {
                if (Session["Sepetim"] != null)
                {
                    lblmesaj.Visible = false;
                    SqlConnection conn = new SqlConnection();
                    conn.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                    SqlCommand cmd1 = new SqlCommand();
                    SqlCommand cmd2 = new SqlCommand();
                    SqlCommand cmd3 = new SqlCommand();

                    conn.Open();
                    cmd2.Connection = conn;
                    cmd1.Connection = conn;
                    cmd3.Connection = conn;

                    cmd2.CommandText = "select id from Kullanicilar where ePosta ='" + Session["Kullanici"] + "'";
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(cmd2);
                    da.Fill(ds);
                    int kullaniciID = Convert.ToInt32(ds.Tables[0].Rows[0]["id"]);
                    cmd1.CommandText = "Insert into Siparis(kullaniciID,siparisTarihi,toplamFiyat) values (@kullaniciID,@siparisTarihi,@toplamFiyat)";
                    SqlDataAdapter da2 = new SqlDataAdapter(cmd1);
                    cmd1.Parameters.AddWithValue("@kullaniciID", kullaniciID);
                    cmd1.Parameters.AddWithValue("@siparisTarihi", DateTime.Today.ToString("g"));
                    cmd1.Parameters.AddWithValue("@toplamFiyat", index.sepetim.AnaToplam);
                    cmd1.ExecuteNonQuery();
                    cmd3.CommandText = "SELECT TOP 1 id FROM Siparis ORDER BY id DESC";
                    DataSet ds2 = new DataSet();
                    SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
                    da3.Fill(ds2);
                    int sonSiparisID = Convert.ToInt32(ds2.Tables[0].Rows[0]["id"]);

                    foreach (sepetUrunler item in index.sepetim.Urunler)
                    {
                        SqlCommand cmd4 = new SqlCommand();
                        cmd4.Connection = conn;
                        cmd4.CommandText = "Insert into SiparisDetayi(siparisID,urunID,urunFiyat,adet) values (@siparisID,@urunID,@urunFiyat,@adet)";
                        cmd4.Parameters.AddWithValue("@siparisID", sonSiparisID);
                        cmd4.Parameters.AddWithValue("@urunID", item.ID);
                        cmd4.Parameters.AddWithValue("@urunFiyat", item.Fiyat);
                        cmd4.Parameters.AddWithValue("@adet", item.KacKilo);
                        cmd4.ExecuteNonQuery();
                    }

                    index.sepetim.Urunler.Clear();
                    Response.Redirect("Onay.aspx");
                    lblmesaj.Visible = true;
                }
                else
                {
                    lblmesaj.Text = "Sepetiniz boş.Lütfen sepete ürün ekleyip tekrar deneyin.";
                    lblmesaj.ForeColor = Color.Red;
                    lblmesaj.Visible = true;
                    divmesaj.Style.Add("text-align","center");
                }
            }

            else
            {
                lblmesaj.Text = "Kullanıcı girişi yapmadan sipariş veremezsiniz.Üye iseniz giriş yapıp tekrar deneyin.Üye değilseniz lütfen üye olun.";
                lblmesaj.ForeColor = Color.Red;
                lblmesaj.Visible = true;
            }
        }
    }
}
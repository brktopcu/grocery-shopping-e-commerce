using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zeytin
{
    public partial class siparislerim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] != null)
            {
                BindGrdSiparisler();
            }
            else
            {
                Response.Redirect("index.aspx");
            }
            
        }

        private void BindGrdSiparisler()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "select s.id,k.adSoyad,k.ePosta,k.adres,s.siparisTarihi from Siparis s inner join Kullanicilar k on k.id= s.kullaniciID where k.ePosta=@ePosta";
            cmd.Parameters.AddWithValue("@ePosta",Session["Kullanici"]);
            conn.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            grdSiparisler.DataSource = ds;
            grdSiparisler.DataBind();
            conn.Close();
        }

        protected void grdSiparisler_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "detay")
            {
                int index1 = Convert.ToInt32(e.CommandArgument);
                GridViewRow selectedRow = grdSiparisler.Rows[index1];
                TableCell detay = selectedRow.Cells[0];
                string secilenid = detay.Text;
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "select siparisID,sd.adet,u.satilmaSekli,u.urunAdi,sd.urunFiyat,s.toplamFiyat,u.resimYolu from Siparis s inner join SiparisDetayi sd on sd.siparisID=s.id inner join Urunler u on u.id= sd.urunID where sd.siparisID=@siparisID";
                cmd.Parameters.AddWithValue("@siparisID", secilenid);
                conn.Open();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                rptsepet.DataSource = ds;
                rptsepet.DataBind();
                toplam.InnerText = ds.Tables[0].Rows[0]["toplamFiyat"].ToString();

            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zeytin
{
    public partial class Kaydol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydol_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Insert into Kullanicilar(adSoyad,ePosta,tel,sifre,adres,aktifMi) values (@adSoyad,@ePosta,@tel,@sifre,@adres,0)";
            conn.Open();
            cmd.Parameters.AddWithValue("@adSoyad",ad.Text);
            cmd.Parameters.AddWithValue("@ePosta",eposta.Text);
            cmd.Parameters.AddWithValue("@tel",tel.Text);
            cmd.Parameters.AddWithValue("@sifre",parola.Text);
            cmd.Parameters.AddWithValue("@adres",adres.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Session["Kullanici"] = eposta.Text;
            Response.Redirect("/index.aspx");

        }
    }
}
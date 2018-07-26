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
    
    public partial class aktive : System.Web.UI.Page
    {

       
        protected void Page_Load(object sender, EventArgs e)
        {
            lblAktivasyon.Visible = false;
            if (Session["Kullanici"]==null)
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void aktivasyonGonder_Click(object sender, EventArgs e)
        {
            
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            
            conn.Open();
            cmd.CommandText = "select aktiveKodu,aktifMi from Kullanicilar where ePosta = @ePosta";
            cmd.Parameters.AddWithValue("@ePosta",Session["Kullanici"]);
            cmd.Connection = conn;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            string aktifMi = ds.Tables[0].Rows[0]["aktifMi"].ToString();
            string aktiveKodu = ds.Tables[0].Rows[0]["aktiveKodu"].ToString();
            if (aktifMi=="1")
            {
                lblAktivasyon.Visible = true;
                lblAktivasyon.Text = "Hesabınız zaten aktif konumda.";
                lblAktivasyon.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                if (aktiveKodu == txtaktivasyon.Text)
                {

                    SqlCommand cmd2 = new SqlCommand();
                    cmd2.CommandText = "update Kullanicilar set aktifMi = 1 where ePosta = @ePosta";
                    cmd2.Parameters.AddWithValue("@ePosta", Session["Kullanici"]);
                    cmd2.Connection = conn;
                    cmd2.ExecuteNonQuery();
                    lblAktivasyon.Visible = true;
                    lblAktivasyon.Text = "Aktivasyon işlemi başarılı.";
                    lblAktivasyon.ForeColor = System.Drawing.Color.Green;


                }

                else
                {
                    lblAktivasyon.Visible = true;
                    lblAktivasyon.Text = "Aktivasyon kodunu yanlış girdiniz.Lütfen tekrar deneyin.";
                    lblAktivasyon.ForeColor = System.Drawing.Color.Red;

                }
            }
            
            
           


           
            conn.Close();
            
        }
    }
}
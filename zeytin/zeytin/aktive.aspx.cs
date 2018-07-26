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
        }

        protected void aktivasyonGonder_Click(object sender, EventArgs e)
        {
            
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            
            conn.Open();
            cmd.CommandText = "Select COUNT(1) from Kullanicilar k where k.aktiveKodu = @aktiveKodu";
            cmd.Parameters.AddWithValue("@aktiveKodu", aktivasyon.Text);
            cmd.Connection = conn;
            int sayi = Convert.ToInt32(cmd.ExecuteScalar());

            if (sayi>=1)
            {
                lblAktivasyon.Visible = true;
                lblAktivasyon.Text = "Aktivasyon işlemi başarılı.";
                lblAktivasyon.ForeColor = System.Drawing.Color.Green;

                SqlCommand cmd2 = new SqlCommand();
                cmd2.CommandText = "update Kullanicilar set aktifMi = 1 where aktiveKodu = @aktiveKodu";
                cmd2.Parameters.AddWithValue("@aktiveKodu", aktivasyon.Text);
                cmd2.Connection = conn;
                cmd2.ExecuteNonQuery();

            }

            else
            {
                lblAktivasyon.Visible = true;
                lblAktivasyon.Text = "Aktivasyon işlemi başarısız.";
                lblAktivasyon.ForeColor = System.Drawing.Color.Red;

            }
            
           


           
            conn.Close();
            
        }
    }
}
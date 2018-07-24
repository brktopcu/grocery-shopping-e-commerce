using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zeytin
{
    public partial class Kaydol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmesaj.Visible = false;
        }

        public void MailYolla(string ePosta,string kod,string adSoyad)
        {
            MailMessage mailMessage = new MailMessage(ConfigurationManager.AppSettings["ePosta"].ToString(),ePosta);
            mailMessage.Subject = "Hesap Aktifleştirme";
            mailMessage.Body = "Sayın "+adSoyad + "\nAktivasyon kodunuz : " + kod+"\nProfilinize girerek hesabınızı aktive edebilirsiniz. "+"\n\n\nSitemize kayıt olduğunuz için teşekkür eder mutlu alışverişler dileriz.\nBizimManav.com ailesi.";
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["ePosta"].ToString(), ConfigurationManager.AppSettings["sifre"].ToString());
            smtp.EnableSsl = true;
            try
            {
                smtp.Send(mailMessage);
            }
            catch (Exception)
            {
                
                throw;
            }
        }


        protected void btnKaydol_Click(object sender, EventArgs e)
        {
            Random generator = new Random();
            string aktiveKodu = generator.Next(0,999999).ToString("D6");
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Insert into Kullanicilar(adSoyad,ePosta,tel,sifre,adres,aktifMi,aktiveKodu) values (@adSoyad,@ePosta,@tel,@sifre,@adres,0,@aktiveKodu)";
            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = conn;
            cmd2.CommandText = "Select COUNT(1) from Kullanicilar k where k.ePosta = @ePosta2";
            conn.Open();
            cmd.Parameters.AddWithValue("@adSoyad",ad.Text);
            cmd.Parameters.AddWithValue("@ePosta",eposta.Text);
            cmd.Parameters.AddWithValue("@tel",tel.Text);
            cmd.Parameters.AddWithValue("@sifre",parola.Text);
            cmd.Parameters.AddWithValue("@adres",adres.Text);
            cmd.Parameters.AddWithValue("@aktiveKodu",aktiveKodu);
            cmd2.Parameters.AddWithValue("@eposta2",eposta.Text);
            int count = Convert.ToInt32(cmd2.ExecuteScalar());
            if (count ==0)
            {
                try
                {
                    if (ad.Text =="" || eposta.Text == "" || tel.Text =="" || parola.Text =="" || adres.Text == "")
                    {
                        lblmesaj.Text = "* Gerekli alanları doldurunuz.";
                        lblmesaj.Visible = true;
                    }
                    else
                    {
                        cmd.ExecuteNonQuery();
                        Session["Kullanici"] = eposta.Text;
                        MailYolla(eposta.Text, aktiveKodu, ad.Text);
                        Response.Redirect("index.aspx");
                    }
                   
                }
                catch (Exception )
                {
                    lblmesaj.Text = "* Bir hata oluştu.";
                    lblmesaj.Visible = true;
                }
                
            }
            else
            {
                lblmesaj.Visible = true;
            }
            
            conn.Close();
           

        }
    }
}
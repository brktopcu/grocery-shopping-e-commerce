using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zeytin
{
    public partial class profilim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmesaj.Visible = false;
            if (!Page.IsPostBack)
            {
                try
                {
                    SqlConnection conn = new SqlConnection();
                    conn.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                    conn.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = conn;
                    cmd.CommandText = "Select * from Kullanicilar k where k.ePosta = @ePosta ";
                    cmd.Parameters.AddWithValue("@ePosta", Session["Kullanici"]);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        txtad.Text = dr[1].ToString();
                        txteposta.Text = dr[2].ToString();
                        txttel.Text = dr[3].ToString();
                        txtparola.Text = dr[4].ToString();
                        txtadres.Text = dr[5].ToString();
                    }
                    dr.Close();
                    conn.Close();
                }
                catch (Exception)
                {
                    Response.Redirect("/index.aspx");
                    throw;
                }

            }
            
            
           

        }

        protected void profilDegistir_Click(object sender, EventArgs e)
        {
            try
            {
            
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                conn.Open();
                cmd.CommandText = "Update Kullanicilar SET adSoyad = @adSoyad , ePosta = @ePosta , tel = @tel , sifre = @sifre , adres = @adres where ePosta = @ePosta2";
                cmd.Parameters.AddWithValue("@adSoyad", txtad.Text);
                cmd.Parameters.AddWithValue("@ePosta", txteposta.Text);
                cmd.Parameters.AddWithValue("@tel", txttel.Text);
                cmd.Parameters.AddWithValue("@sifre", txtparola.Text);
                cmd.Parameters.AddWithValue("@adres", txtadres.Text);
                cmd.Parameters.AddWithValue("@ePosta2", Session["Kullanici"].ToString());
                cmd.ExecuteNonQuery();
                lblmesaj.Visible = true;
                lblmesaj.ForeColor = Color.Green;
                conn.Close();
            }
            catch (Exception)
            {
                lblmesaj.Text = "Bir hata oluştu lütfen tekrar deneyiniz.";
                lblmesaj.Visible = true;
            }

        }

        protected void txtad_TextChanged(object sender, EventArgs e)
        {
          
        }
    }
}
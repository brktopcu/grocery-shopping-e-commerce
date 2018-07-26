using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zeytin.Admin_Sayfalari
{
    public partial class urunEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmesaj.Visible = false;
        }

        protected void btnurunekle_Click(object sender, EventArgs e)
        {
            try
            {
                fupurunresmi.SaveAs(Server.MapPath("images\\" + fupurunresmi.FileName));
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into Urunler(urunAdi,fiyat,urunTuru,varMi,resimYolu,satilmaSekli) values(@urunAdi,@fiyat,@urunTuru,@varMi,@resimYolu,@satilmaSekli) ";
                conn.Open();
                cmd.Parameters.AddWithValue("@urunAdi", txturunadi.Text);
                cmd.Parameters.AddWithValue("@fiyat", Convert.ToDouble(txtfiyat.Text));
                cmd.Parameters.AddWithValue("@urunTuru", Convert.ToInt32(ddlurunturu.SelectedValue));
                cmd.Parameters.AddWithValue("varMi", Convert.ToInt32(ddlvarmi.SelectedValue));
                cmd.Parameters.AddWithValue("@resimYolu", ("images\\" + fupurunresmi.FileName).ToString());
                cmd.Parameters.AddWithValue("@satilmaSekli", ddlsatilmasekli.SelectedValue.ToString());
                cmd.ExecuteNonQuery();
                conn.Close();
                lblmesaj.Visible = true;
            }
            catch (Exception)
            {
                lblmesaj.Text="Ürün kaydedilirken bir hata oluştu.Lütfen tekrar deneyin.";
                lblmesaj.ForeColor = Color.Red;
                lblmesaj.Visible = true;
                throw;
            }
            
        }
    }
}
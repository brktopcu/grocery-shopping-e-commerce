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
    public partial class tarifEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntarifekle_Click(object sender, EventArgs e)
        {
            try
            {
                fuptarifresmi.SaveAs(Server.MapPath("images\\" + fuptarifresmi.FileName));
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "Insert into Tarifler(malzemeler,yapilisi,resimYolu,tarifAdi) values (@malzemeler,@yapilisi,@resimYolu,@tarifAdi)";
                conn.Open();
                cmd.Parameters.AddWithValue("@malzemeler", txtmalzemeler.Text);
                cmd.Parameters.AddWithValue("@yapilisi", txtyapilisi.Text);
                cmd.Parameters.AddWithValue("@resimYolu", ("images\\" + fuptarifresmi.FileName).ToString());
                cmd.Parameters.AddWithValue("@tarifAdi",txttarifadi.Text);
                cmd.ExecuteNonQuery();
                conn.Close();
                lblmesaj.Visible = true;
            }
            catch (Exception)
            {
                lblmesaj.Text = "Tarif kaydedilirken bir hata oluştu.Lütfen tekrar deneyin.";
                lblmesaj.ForeColor = Color.Red;
                lblmesaj.Visible = true;
                throw;
            }
            


        }
    }
}
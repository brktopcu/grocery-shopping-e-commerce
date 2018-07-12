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
    public partial class girisYap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmesaj.Visible = false;
        }

        protected void btngiris_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Select COUNT(1) from Kullanicilar k where k.ePosta = @ePosta and k.sifre = @sifre";
            conn.Open();
            cmd.Parameters.AddWithValue("@ePosta",txteposta.Text);
            cmd.Parameters.AddWithValue("@sifre",txtsifre.Text);
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            if (count ==1)
            {
                Session["Kullanici"] = txteposta.Text;
                Response.Redirect("/index.aspx");
            }
            else
            {
                lblmesaj.Visible = true;
            }
            conn.Close();
        }
    }
}
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
    public partial class tarif : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Select * from Tarifler where id=@tarifid";
            cmd.Parameters.AddWithValue("@tarifid",ConfigurationManager.AppSettings["tarifid"]);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            txtmalzemeler.Text = ds.Tables[0].Rows[0]["malzemeler"].ToString();
            txtyapilisi.Text = ds.Tables[0].Rows[0]["yapilisi"].ToString();
            imgtarifResmi.ImageUrl = ds.Tables[0].Rows[0]["resimYolu"].ToString();
            lbltarifadi.Text = ds.Tables[0].Rows[0]["tarifAdi"].ToString();
        }
    }
}
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
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(!IsPostBack)
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select * from Urunler where varMi = 1";
                cmd.Connection = conn;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                rpturunler.DataSource = dt.DefaultView;
                rpturunler.DataBind();
                conn.Close();


            }
            

        }

        protected void sebze_Click(object sender, EventArgs e)
        {
            rpturunler.Visible = false;
            rptMeyveler.Visible = false;
            rptSebzeler.Visible = true;
            if (IsPostBack)
            {
               

                SqlConnection conn2 = new SqlConnection();
                conn2.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                conn2.Open();
                SqlCommand cmd2 = new SqlCommand();
                cmd2.CommandText = "select * from Urunler where varMi = 1 and urunTuru=1";
                cmd2.Connection = conn2;
                SqlDataAdapter da = new SqlDataAdapter(cmd2);
                DataTable dt = new DataTable();
                da.Fill(dt);
                rptSebzeler.DataSource = dt.DefaultView;
                rptSebzeler.DataBind();
                conn2.Close();
                
            }
        }

        protected void meyve_Click(object sender, EventArgs e)
        {
            rpturunler.Visible = false;
            rptMeyveler.Visible = false;
            rptSebzeler.Visible = true;
            if (IsPostBack)
            {


                SqlConnection conn2 = new SqlConnection();
                conn2.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
                conn2.Open();
                SqlCommand cmd2 = new SqlCommand();
                cmd2.CommandText = "select * from Urunler where varMi = 1 and urunTuru=0";
                cmd2.Connection = conn2;
                SqlDataAdapter da = new SqlDataAdapter(cmd2);
                DataTable dt = new DataTable();
                da.Fill(dt);
                rptSebzeler.DataSource = dt.DefaultView;
                rptSebzeler.DataBind();
                conn2.Close();

            }
        }
    }
}
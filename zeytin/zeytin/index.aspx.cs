using System;
using System.Collections;
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
        int PageNumber1 = 0;

        int PageNumber2 = 0;

        int PageNumber3 =0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.MaintainScrollPositionOnPostBack = true;
            rptPaging1.Visible = true;
            rptPaging2.Visible = false;
            rptPaging3.Visible = false;
            rpturunler.Visible = true;
            rptMeyveler.Visible = false;
            rptSebzeler.Visible = false;
            if (!IsPostBack)
            {
                BindRptUrunler();
            }
            

        }




        protected void sebze_Click(object sender, EventArgs e)
        {
            rptPaging1.Visible = false;
            rptPaging2.Visible = false;
            rptPaging3.Visible = true;
            rpturunler.Visible = false;
            rptMeyveler.Visible = false;
            rptSebzeler.Visible = true;
            if (IsPostBack)
            {
                BindRptSebzeler();
            }
           
        }

        protected void meyve_Click(object sender, EventArgs e)
        {
            rptPaging1.Visible = false;
            rptPaging2.Visible = true;
            rptPaging3.Visible = false;
            rpturunler.Visible = false;
            rptMeyveler.Visible = true;
            rptSebzeler.Visible = false;
           
            if (IsPostBack)
            {
                BindRptMeyveler();
            }
        }
        public static sepet sepetim;
        public static sepetUrunler urunler;
        protected void btnEkle_Click(object sender, EventArgs e)
        {
            
            string UrunID = Convert.ToInt16((((Button)sender).CommandArgument)).ToString();
            var btn = (Button)sender;
            var currentItem = (RepeaterItem)btn.NamingContainer;
            Label lblresimyolu = currentItem.FindControl("lblresimyolu") as Label;
            Label lblurunadi = currentItem.FindControl("lblurunadi") as Label;
            Label lblfiyat = currentItem.FindControl("lblfiyat") as Label;
            TextBox txtKacKilo = currentItem.FindControl("txtkackilo") as TextBox;
            TextBox txtsatisSekli = currentItem.FindControl("txtsatilmasekli") as TextBox;

            if (Session["Sepetim"] == null)
            {
                sepetim = new sepet();
                Session["Sepetim"] = sepetim;
            }
            
            sepetim = (sepet)Session["Sepetim"];
            urunler = new sepetUrunler(Convert.ToInt32(UrunID), lblurunadi.Text, lblresimyolu.Text, Convert.ToDouble(lblfiyat.Text), Convert.ToInt32(txtKacKilo.Text),txtsatisSekli.Text);
            sepetim.Ekle(urunler, Convert.ToInt32(txtKacKilo.Text));
            
        }
        private void BindRptUrunler()
        {
            //Do your database connection stuff and get your data
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            conn.Open();
            cmd.CommandText = "select * from Urunler where varMi = 1";
            cmd.Connection = conn;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);


            //Create the PagedDataSource that will be used in paging
            PagedDataSource pgitems = new PagedDataSource();
            pgitems.DataSource = dt.DefaultView;
            pgitems.AllowPaging = true;

            //Control page size from here 
            pgitems.PageSize = 12;
            pgitems.CurrentPageIndex = PageNumber1;
            if (pgitems.PageCount > 1)
            {
                rptPaging1.Visible = true;
                ArrayList pages = new ArrayList();
                for (int i = 0; i <= pgitems.PageCount - 1; i++)
                {
                    pages.Add((i + 1).ToString());
                }
                rptPaging1.DataSource = pages;
                rptPaging1.DataBind();
            }
            else
            {
                rptPaging1.Visible = false;
            }

            //Finally, set the datasource of the repeater
            rpturunler.DataSource = pgitems;
            rpturunler.DataBind();
            conn.Close();
        }

        private void BindRptMeyveler()
        {
            //Do your database connection stuff and get your data
            SqlConnection conn2 = new SqlConnection();
            conn2.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            conn2.Open();
            SqlCommand cmd2 = new SqlCommand();
            cmd2.CommandText = "select * from Urunler where varMi = 1 and urunTuru=0";
            cmd2.Connection = conn2;
            SqlDataAdapter da = new SqlDataAdapter(cmd2);
            DataTable dt = new DataTable();
            da.Fill(dt);


            //Create the PagedDataSource that will be used in paging
            PagedDataSource pgitems = new PagedDataSource();
            pgitems.DataSource = dt.DefaultView;
            pgitems.AllowPaging = true;

            //Control page size from here 
            pgitems.PageSize = 12;
            pgitems.CurrentPageIndex = PageNumber2;
            if (pgitems.PageCount > 1)
            {
                rptPaging2.Visible = true;
                ArrayList pages = new ArrayList();
                for (int i = 0; i <= pgitems.PageCount - 1; i++)
                {
                    pages.Add((i + 1).ToString());
                }
                rptPaging2.DataSource = pages;
                rptPaging2.DataBind();
            }
            else
            {
                rptPaging2.Visible = false;
            }

            //Finally, set the datasource of the repeater
            rptMeyveler.DataSource = pgitems;
            rptMeyveler.DataBind();
            conn2.Close();
        }

        private void BindRptSebzeler()

        {
            //Do your database connection stuff and get your data
            SqlConnection conn2 = new SqlConnection();
            conn2.ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ConnectionString;
            conn2.Open();
            SqlCommand cmd2 = new SqlCommand();
            cmd2.CommandText = "select * from Urunler where varMi = 1 and urunTuru=1";
            cmd2.Connection = conn2;
            SqlDataAdapter da = new SqlDataAdapter(cmd2);
            DataTable dt = new DataTable();
            da.Fill(dt);


            //Create the PagedDataSource that will be used in paging
            PagedDataSource pgitems = new PagedDataSource();
            pgitems.DataSource = dt.DefaultView;
            pgitems.AllowPaging = true;

            //Control page size from here 
            pgitems.PageSize = 12;
            pgitems.CurrentPageIndex = PageNumber3;
            if (pgitems.PageCount > 1)
            {
                rptPaging3.Visible = true;
                ArrayList pages = new ArrayList();
                for (int i = 0; i <= pgitems.PageCount - 1; i++)
                {
                    pages.Add((i + 1).ToString());
                }
                rptPaging3.DataSource = pages;
                rptPaging3.DataBind();
            }
            else
            {
                rptPaging3.Visible = false;
            }

            //Finally, set the datasource of the repeater
            rptSebzeler.DataSource = pgitems;
            rptSebzeler.DataBind();
            conn2.Close();
        }

        protected void rptPaging1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            rptPaging1.Visible = true;
            rptPaging2.Visible = false;
            rptPaging3.Visible = false;
            rpturunler.Visible = true;
            rptMeyveler.Visible = false;
            rptSebzeler.Visible = false;
            PageNumber1 = Convert.ToInt32(e.CommandArgument) - 1;
            BindRptUrunler();
        }

        protected void rptPaging2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            rptPaging1.Visible = false;
            rptPaging2.Visible = true;
            rptPaging3.Visible = false;
            rpturunler.Visible = false;
            rptMeyveler.Visible = true;
            rptSebzeler.Visible = false;
            PageNumber2 = Convert.ToInt32(e.CommandArgument) - 1;
            BindRptMeyveler();
        }

        protected void rptPaging3_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            rptPaging1.Visible = false;
            rptPaging2.Visible = false;
            rptPaging3.Visible = true;
            rpturunler.Visible = false;
            rptMeyveler.Visible = false;
            rptSebzeler.Visible = true;
            PageNumber3 = Convert.ToInt32(e.CommandArgument) - 1;
            BindRptSebzeler();
        }
    }
}
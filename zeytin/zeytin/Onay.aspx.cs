using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zeytin
{
    public partial class Onay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                
                try
                {
                    rptsepet.Visible = true;
                    rptsepet.DataSource = index.sepetim.Urunler;
                    rptsepet.DataBind();
                    toplam.InnerText = index.sepetim.AnaToplam.ToString();
                }
                catch (Exception)
                {
                    rptsepet.Visible = false;
                    
                }
                
            }



        }

        protected void btngeridon_Click(object sender, EventArgs e)
        {
            Response.Redirect("/index.aspx");
        }

        protected void btnCikar_Click(object sender, EventArgs e)
        {
            var btn = (Button)sender;
            var currentItem = (RepeaterItem)btn.NamingContainer;
            Label lblid = currentItem.FindControl("lblid") as Label;
            index.sepetim.Cikar(Convert.ToInt32(lblid.Text));
            Response.Redirect("Onay.aspx");
        }

    }
}
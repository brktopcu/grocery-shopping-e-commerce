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
                rptsepet.DataSource = index.sepeticerik;
                rptsepet.DataBind();
            }



        }

        protected void btngeridon_Click(object sender, EventArgs e)
        {
            Response.Redirect("/index.aspx");
        }
    }
}
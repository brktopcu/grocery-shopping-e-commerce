using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zeytin
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GirisYapBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("/girisYap.aspx");
        }

        protected void KaydolBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Kaydol.aspx");

        }
    }
}
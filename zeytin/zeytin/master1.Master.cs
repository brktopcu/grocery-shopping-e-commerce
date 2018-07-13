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

            if (Session["Kullanici"]!=null)
            {
                GirisYapBtn.InnerText = Session["Kullanici"].ToString();
                GirisYapBtn.HRef = "profilim.aspx";
                KaydolBtn.InnerText = "Çıkış";   
                KaydolBtn.HRef = "/cikis.aspx";
                divara.Style.Add("margin-left","6%");
                divbtn.Style.Add("margin-left","6%");
            }
            

        }
    }
}
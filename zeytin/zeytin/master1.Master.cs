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
            
            Page.MaintainScrollPositionOnPostBack = true;

            if (Session["Kullanici"]!=null)
            {
                GirisYapBtn.InnerText = Session["Kullanici"].ToString();
                GirisYapBtn.HRef = "profilim.aspx";
                KaydolBtn.InnerText = "Çıkış";   
                KaydolBtn.HRef = "/cikis.aspx";
                lisiparislerim.Visible = true;
                divlogo.Style.Add("max-width", "15%");

                divbtn.Style.Add("margin-left","6%");
                
            }
            else
            {
                lisiparislerim.Visible = false;
                
            }
            if (Session["Admin"]!=null)
            {
                GirisYapBtn.InnerText = Session["Admin"].ToString();
                GirisYapBtn.HRef = "admin.aspx";
                KaydolBtn.InnerText = "Çıkış";
                KaydolBtn.HRef = "/cikis.aspx";

                divbtn.Style.Add("margin-left", "6%");
            }
            

        }
    }
}
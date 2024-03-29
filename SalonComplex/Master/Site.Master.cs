using System;
using System.Net;
using System.Web;
using System.Web.UI.WebControls;
using SalonComplex.SalonBusiness;

namespace SalonComplex.Master
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                // remove cookie if user is not authenticated
                if (Util.IsAnonymous())
                {
                    Util.RemoveCookie("clientCookie");

                    ChangePassword.InnerText = "Register";
                    ChangePassword.HRef = "../Account/Register.aspx";

                    Username.InnerHtml = Util.FormatUsername();
                }
                else
                {
                    Username.InnerHtml = Util.FormatUsername();
                }
            }


        }

        protected void HeadLoginView_ViewChanged(object sender, EventArgs e)
        {

        }



        
    }
}

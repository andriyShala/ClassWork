using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cookie
{
    public partial class _1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie=Request.Cookies["MyCookie"];
            if (cookie!=null)
            {
                Label1.Text = cookie["Name"];
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}
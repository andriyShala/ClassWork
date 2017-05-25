using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cookie
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_OnClick(object sender, EventArgs e)
        {
            HttpCookie cookie=new HttpCookie("MyCookie");
            cookie["Name"] = TextBox1.Text;
            cookie.Expires=DateTime.Now.AddMinutes(3);
            Response.Cookies.Add(cookie);           
        }
    }
}
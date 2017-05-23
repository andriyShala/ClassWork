using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace User_Control
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            myctrl1.BgColor = Color.Red;
           
        }

        protected void myctrl1_OnLogin(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        protected void myctrl1_OnSucceedLogin(object sender, EventArgs e)
        {
           
        }
    }
}
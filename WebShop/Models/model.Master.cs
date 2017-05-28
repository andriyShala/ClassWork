using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebShop
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            myCntrl.Visible =!myCntrl.Visible;
        }

        protected void buttCategory_Click(object sender, EventArgs e)
        {
            myCategory.Visible = !myCategory.Visible;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebShop.Controls
{
    public partial class basket : System.Web.UI.UserControl
    {
        
        public void set(string s)
        {

        }
        int i = 0;
        public object llsadasdsa(object sender,EventArgs e)
        {
            LinkButton1.Text = (i++).ToString();
            return null;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
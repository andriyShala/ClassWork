using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebShop
{
    public partial class CategoryControl : System.Web.UI.UserControl
    {
        public event EventHandler Login;
        DbModel dbModel = new DbModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataTable table = new DataTable();
                table.Columns.Add("Name");
                table.Columns.Add("Href");
                foreach (var item in dbModel.categories)
                {
                    table.Rows.Add(new object[] {item.Name,item.Href});
                }
                DataList.DataSource = table;
                DataList.DataBind();
            }
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            Login(sender, e);
        }
    }
}
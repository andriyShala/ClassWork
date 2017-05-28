using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebShop.Models
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        DbModel dbModel = new DbModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                DataTable table = new DataTable();
                table.Columns.Add("Name");
                table.Columns.Add("Href");
                foreach (var item in dbModel.categories)
                {
                    table.Rows.Add(new object[] { item.Name, item.Href });
                }
                datalist.DataSource = table;
                datalist.DataBind();
            }
        }
        public void master()
        {

        }
        protected void but1_Click(object sender, EventArgs e)
        {
            Button but = ((Button)sender);
            HttpCookie cookie = new HttpCookie("Category");
            cookie["Name"] =but.CommandName;
            
            cookie.Expires = DateTime.Now.AddMinutes(1);
            if (Response.Cookies["Category"] == null)
            {
                Response.Cookies.Add(cookie);
            }
            else
            {
                Response.Cookies.Remove("Category");
                Response.Cookies.Add(cookie);
            }
            Response.Redirect("CategoryItem.aspx");
        }
    }
}
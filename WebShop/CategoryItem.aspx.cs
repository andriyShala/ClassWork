using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebShop
{
    public partial class CategoryItem : System.Web.UI.Page
    {
        DbModel model = new DbModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["Category"];
            if (!IsPostBack || cookie != null)
            {
                if (cookie != null)
                {
                    string name = cookie["Name"];
                    var category = model.categories.Where(cat => cat.Href == name).FirstOrDefault();
                    if (category == null)
                        return;
                    DataTable table = new DataTable();
                    table.Columns.Add("title");
                    table.Columns.Add("price");
                    table.Columns.Add("description");
                    table.Columns.Add("id");
                    foreach (var item in model.wares.Where(x => x.IdCategory == category.Id))
                    {
                        table.Rows.Add(new object[] { item.title, item.price,item.description,item.id});
                    }
                    datalist.DataSource = table;
                    datalist.DataBind();
                    Response.Cookies.Remove("Category");
                }
            }
        }
    }
}
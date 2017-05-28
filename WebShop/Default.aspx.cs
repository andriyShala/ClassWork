using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebShop
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DbModel model = new DbModel();
            if (!IsPostBack)
            {
                
                DataTable table = new DataTable();
                table.Columns.Add("id");
                table.Columns.Add("title");
                table.Columns.Add("price");
                table.Columns.Add("description");
                foreach (var cat in model.categories)
                {
                    int i = 0;
                    foreach (var item in model.wares.Where(x => x.Category.Id == cat.Id))
                    {
                        if (i >= 2)
                            break;
                        table.Rows.Add(new object[] { item.id,item.title,item.price,item.description});
                        i++;
                    }
                }
                datalist.RepeatColumns = 2;
                datalist.DataSource = table;
                datalist.DataBind();
               
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
       
    }
}
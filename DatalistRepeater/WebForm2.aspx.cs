using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatalistRepeater
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Model1 dbmodel = new Model1();
                DataTable table = new DataTable();
                List<char> symbol = new List<char>();
                table.Columns.Add("ALF");
                foreach (var item in dbmodel.Info.GroupBy(x => x.Name))
                {
                    char s = item.Key.ToUpper()[0];
                    if (symbol.Contains(s) == false)
                    {
                        symbol.Add(s);
                        table.Rows.Add(s);
                    }
                }
                DataList1.DataSource = table;
                DataList1.DataBind();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Button bt = sender as Button;
            if(bt!=null)
            {
                Model1 dbmodel = new Model1();
                DataTable table = new DataTable();
                table.Columns.Add("ID");
                table.Columns.Add("Name");
                table.Columns.Add("Address");
                table.Columns.Add("TEL");

                foreach (var item in dbmodel.Info)
                {
                    if (item.Name[0] == bt.Text[0])
                    {
                        table.Rows.Add(new object[] {item.ID,item.Name,item.Address,item.TEL});
                    }
                  
                }
                DataList2.DataSource = table;
                DataList2.DataBind();
            }
        }
    }
}
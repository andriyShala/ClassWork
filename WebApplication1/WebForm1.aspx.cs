using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet dataSet = new DataSet();
                dataSet.ReadXml(Server.MapPath("course.xml"));
                foreach (var items in dataSet.Tables[0].Columns)
                {
                    DropDownList2.Items.Add(items.ToString());
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet dataSet = new DataSet();
            dataSet.ReadXml(Server.MapPath("course.xml"));
            double number = 0;
            try
            {

                number = Convert.ToDouble(TextBox1.Text);
            }
            catch 
            {
                
            }

            TextBox2.Text = (number/
                            Convert.ToDouble(
                                dataSet.Tables[0].Rows[0][DropDownList2.SelectedIndex].ToString().Replace(" ", ""))).ToString();

        }
    }
}
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebShop
{
    public partial class UserPanel : System.Web.UI.Page
    {
        DbModel model = new DbModel();
        int id=-1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                HttpCookie cookie = Request.Cookies["acount"];
                if(cookie["href"]!=null)
                {
                    id = Convert.ToInt32(cookie["href"]);
                }

                foreach (var item in model.categories)
                {
                    DropDownList1.Items.Add(item.Name);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            byte[] mass = FileUpload1.FileBytes;
            if(FileUpload1.FileName.Contains("jpg"))
            if(mass!=null)
            {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["acount"];
            if(cookie!=null)
            id = Convert.ToInt32(cookie["href"]);
            if (id!=-1)
            {
                var category = model.categories.Where(x => x.Name == DropDownList1.SelectedItem.Value).First();
                var acc = model.accounts.Where(x => x.ID == id).First();
                model.wares.Add(new Class.Ware() { accaunt=acc,Category=category,description=TextBox2.Text,title=textBoxTitle.Text
                                ,IdCategory=category.Id,price=Convert.ToInt32(TextBox1.Text),imageName=FileUpload1.FileName,img=FileUpload1.FileBytes});
                model.SaveChanges();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "sctipt", "<script>alert('The successful addition of')</script>");
            }
        }
    }
}
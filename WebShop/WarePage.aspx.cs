using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebShop
{
    public partial class WarePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                HttpCookie cookie = Request.Cookies["ware"];
                if(cookie!=null)
                {
                    int id = Convert.ToInt32(cookie["id"]);
                    loadcontent(id);
                }
            }
        }
        private void loadcontent(int id)
        {
            DbModel model = new DbModel();
            var ware = model.wares.Where(x => x.id == id).First();
            Label1.Text = ware.title;
            LabelPrice.Text = ware.price.ToString();
            setImage(ware.img, ware.imageName);
            TextBox1.Text = ware.description;
        }
        private void setImage(byte[] mass, string name)
        {

            System.Drawing.Image img = g(mass);

            string path = Server.MapPath("~/Image/" + name);
            if (File.Exists(path) == false)
            {
                try
                {
                    img.Save(path);
                }
                catch
                {

                }
            }
            Image1.ImageUrl = "~/Image/" + name;
        }
        public System.Drawing.Image g(byte[] r)
        {
            return (Bitmap)((new ImageConverter()).ConvertFrom(r));
        }
    }
}
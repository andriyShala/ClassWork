using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebShop.Controls
{
    public partial class WareMax : System.Web.UI.UserControl
    {
        int idasasd = 0;
        public basket bak { get; set; }
        public string IDs { get { return Label3.Text; } set { Label3.Text = value; } }
        public string Title { get { return LabelTitle.Text; } set { LabelTitle.Text = value; } }
        public string Price { get { return LabelPrice.Text; } set { LabelPrice.Text = value; } }

        public string Description { get { return Description; } set { Description = value; Descriptions = value; } }
        public string Descriptions
        {
            get { return Label2.Text; }
            set
            {
                if (value.Length > 80)
                    Label2.Text = value.Substring(0, 80);
                else
                    Label2.Text = value;
            }
        }
        DbModel model = new DbModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(IDs);
                idasasd = id;
                var name = model.wares.Where(x => x.id == id).First();
                setImage(name.img, name.imageName);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

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
            Images.ImageUrl = "~/Image/" + name;
        }
        public System.Drawing.Image g(byte[] r)
        {
            return (Bitmap)((new ImageConverter()).ConvertFrom(r));
        }

        protected void LabelTitle_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["ware"];
            if (cookie == null)
            {
                cookie = new HttpCookie("ware");
                cookie["id"] = IDs;
                cookie.Expires = DateTime.Now.AddMinutes(5);
                Response.Cookies.Add(cookie);
            }
            else
            {
                cookie["id"] = IDs;
                cookie.Expires = DateTime.Now.AddMinutes(5);
                Response.Cookies.Remove("ware");
                Response.Cookies.Add(cookie);
            }
            Response.Redirect("~/WarePage.aspx");
        }
    }
}
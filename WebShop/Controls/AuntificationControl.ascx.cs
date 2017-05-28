using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebShop
{
    public partial class AuntificationControl : System.Web.UI.UserControl
    {
        DbModel model = new WebShop.DbModel();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                HttpCookie cookie = Request.Cookies["acount"];
                if (cookie != null)
                {
                    if (cookie["href"] != null)
                    {
                        int id = Convert.ToInt32(cookie["href"]);
                        var ac = model.accounts.Where(x => x.ID == id).FirstOrDefault();
                        if (ac != null)
                        {
                            TextBoxLogin.Text = ac.email;
                            TextBoxPassword.Text = ac.password;
                            Button1_Click(null, null);
                        }
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var s = model.accounts.Where(x => x.email == TextBoxLogin.Text && x.password == x.password).FirstOrDefault();
            if (s == null)
            {
                RequiredFieldValidator1.ErrorMessage = "Неправильний логін або пароль";
                RequiredFieldValidator1.IsValid = false;
            }
            else
            {
                if(RequiredFieldValidator1.IsValid==false)
                    RequiredFieldValidator1.IsValid = true;
                Label1.Visible = false;
                Label2.Visible = false;
                TextBoxLogin.Visible = false;
                TextBoxPassword.Visible = false;
                LinkButton1.Text = TextBoxLogin.Text;
                LinkButton1.Visible = true;
                Button1.Visible = false;
                Button2.Visible = false;
                Button3.Visible = true;
                HttpCookie cookie = new HttpCookie("acount");
                cookie["href"] = s.ID.ToString();
                cookie.Expires = DateTime.Now.AddMinutes(4);
                Response.Cookies.Add(cookie);
                LinkButton1.PostBackUrl = "~/UserPanel.aspx";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("acount");
            cookie["href"] = "";
            cookie.Expires = DateTime.Now.AddSeconds(5);
            Response.Cookies.Add(cookie);
            Label1.Visible = true;
            Label2.Visible = true;
            TextBoxLogin.Visible = true;
            TextBoxPassword.Visible = true;
            TextBoxLogin.Text = "";
            TextBoxPassword.Text = "";
            RequiredFieldValidator1.ErrorMessage = "";
            LinkButton1.Visible = false;
            Button1.Visible = true;
            Button2.Visible = true;
            Button3.Visible = false;
        }
    }
}
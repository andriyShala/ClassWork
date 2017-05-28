using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace User_Control
{
    public partial class UserControl1 : System.Web.UI.UserControl
    {
        private DataSet dSourse;
        private DataTable dMember;
        public  DataTable DataMember { get { return dMember; } set { dMember = value; } }
        public string LoginText { get { return TextBox1.Text; }set { TextBox1.Text = value; } }
        public string PasswordText { get { return TextBox2.Text; } set { TextBox2.Text = value; } }
        public  Color BgColor { get { return Table1.BackColor; }set { Table1.BackColor = value; } }

        protected void Page_Load(object sender, EventArgs e)
        {
           Login+=new EventHandler(LoginIn);
            ErrorLogin+=new EventHandler(MyControl_ErrorLogin);
            SucceedLogin+=new EventHandler(MyControl_SuccedLogin);
        }

        void MyControl_SuccedLogin(object sender, EventArgs e)
        {
            Response.Write("Login Succeeded");
        }

        private void MyControl_ErrorLogin(object sender, EventArgs e)
        {
            Response.Write("Login failed");
        }

        public event EventHandler Loginpublic;
          public event EventHandler Login; event EventHandler ErrorLogin;
        public event EventHandler SucceedLogin;

        public void LoginIn(object sender, EventArgs arg)
        {
            if (TextBox1.Text == "root" && TextBox2.Text == "1234")
            {
                SucceedLogin(sender, arg);
            }
            else
            {
                ErrorLogin(sender, arg);
            }
        }

        protected void btn_ok_Click(object sende, EventArgs e)
        {
            Login(sende, e);
        }

    }
}
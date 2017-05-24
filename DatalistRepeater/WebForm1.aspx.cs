using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatalistRepeater
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            DataList1.EditItemIndex = e.Item.ItemIndex;
            //Code to delete the row represented by ItemIndex
            string index = (string)e.CommandArgument;
            int i = Convert.ToInt32(index);
            SqlDataSource1.DeleteCommand = "delete FROM [Table_1] where id=" + index;
            SqlDataSource1.Delete();
            DataList1.EditItemIndex = -1; //Reset the index
            DataList1.DataBind();
        }

        protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
        {
            DataList1.EditItemIndex = -1;
            DataList1.DataBind();
        }

        protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
        {
            DataList1.EditItemIndex =e.Item.ItemIndex;
            DataList1.DataBind();
        }

        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {

            string name = ((TextBox) e.Item.FindControl("nameTextBox")).Text;
            int price =Convert.ToInt32(((TextBox)e.Item.FindControl("priceTextBox")).Text);
            string index = (string)e.CommandArgument;
            int i = Convert.ToInt32(index);
            SqlDataSource1.UpdateCommand = "Update  [Table_1] Set Name='"+name+"',Price="+price+" where ID=" + index;
            SqlDataSource1.Update();
            DataList1.EditItemIndex = -1; //Reset the index
            DataList1.DataBind();

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToDoApp2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {

            if (nametxt.Text.Equals(""))
            {
                enterlbl.Text = "Please enter your username before you processed";
                return;

            }
            else
            {
                Session["username"] = nametxt.Text;
                Response.Redirect("ManageTasks.aspx");
            }
        }
    }
}
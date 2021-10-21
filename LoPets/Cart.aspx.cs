using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoPets
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["NewData"] != null)
            {
                Label1.Text = "Success";
            }
            else
            {
                Label1.Text = "Failure";
            }
        }
    }
}
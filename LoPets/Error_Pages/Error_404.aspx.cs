using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoPets.Error_Pages
{
    public partial class Error_404 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Text = Server.HtmlDecode("Return to Home &raquo;");
        }

        protected void Button1_Click(object sender, EventArgs e) => Response.Redirect("~/Default.aspx");
    }
}
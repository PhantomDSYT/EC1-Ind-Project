using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoPets
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Product product = new Product("Adjustable Leash", 3000.00);
            Session.Add("NewData", product);
            Response.Redirect("~/Cart.aspx");
        }
    }
}
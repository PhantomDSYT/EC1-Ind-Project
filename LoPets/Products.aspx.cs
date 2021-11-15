using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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

        protected void AddToCart(object sender, EventArgs e)
        {
            string id = (((sender as Button).NamingContainer as RepeaterItem).FindControl("ItemID") as Label).Text;
            Session.Add("NewData", id);
            Response.Redirect("~/Cart.aspx");
        }

    }
}
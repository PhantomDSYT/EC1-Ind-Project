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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Product product = new Product("Dog Harness", 2500.00);
            Session.Add("NewData", product);
            Response.Redirect("~/Cart.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Product product = new Product("Fish Tank", 12000.00);
            Session.Add("NewData", product);
            Response.Redirect("~/Cart.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Product product = new Product("Dog Collar", 2000.00);
            Session.Add("NewData", product);
            Response.Redirect("~/Cart.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Product product = new Product("Fish Toy", 500.00);
            Session.Add("NewData", product);
            Response.Redirect("~/Cart.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Product product = new Product("LED Fish Tank", 45000.00);
            Session.Add("NewData", product);
            Response.Redirect("~/Cart.aspx");
        }
    }
}
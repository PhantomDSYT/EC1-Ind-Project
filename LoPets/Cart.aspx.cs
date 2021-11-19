using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoPets
{
    public partial class Cart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=PHANTOM-LAPTOP\SQLEXPRESS;Initial Catalog=LoPets;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = User.Identity.Name;
            string id = (string)Session["NewData"];
            string name = (string)Session["Name"];
            string price = (string)Session["Price"];
             
            if(!Page.IsPostBack)
            {
                if(Session["NewData"] != null)
                {
                    con.Open();

                    SqlCommand NewCart = new SqlCommand("INSERT INTO [ShoppingCart] ([UserName],[ItemId],[Price],[ItemName]) VALUES (@user, @ID, @Price, @Name)", con);
                    NewCart.Parameters.Add("@user", System.Data.SqlDbType.VarChar).Value = user;
                    NewCart.Parameters.Add("@ID", System.Data.SqlDbType.VarChar).Value = id;
                    NewCart.Parameters.Add("@Price", System.Data.SqlDbType.VarChar).Value = price;
                    NewCart.Parameters.Add("@Name", System.Data.SqlDbType.VarChar).Value = name;
                    NewCart.ExecuteNonQuery();

                    con.Close();
                    Session.Remove("NewData");
                }
                // select sum(SubTotal) as GrandTotal from [ShoppingCart] while (UserName = @user)

                using (System.Data.SqlClient.SqlCommand command = new System.Data.SqlClient.SqlCommand("SELECT SUM(SubTotal) as GrandTotal FROM ShoppingCart WHERE (UserName = @user)", con))
                {
                    command.Parameters.AddWithValue("@user", user);
                    con.Open();
                    object result = command.ExecuteScalar();
                    Label1.Text = result.ToString();
                    con.Close();
                    Session.Add("total", result.ToString());
                }


                //object sum; 
                //if (Session["DataGrid"] != null)
                //{
                //    DataTable gridTable = (DataTable)Session["DataGrid"];
                //    if (Session["NewData"] != null)
                //    {
                //        Product newEntry = (Product)Session["NewData"];
                //        DataRow dr = gridTable.NewRow();
                //        dr["Name"] = newEntry.ProductName;
                //        dr["Price"] = newEntry.ProductPrice;
                //        dr["SubTotal"] = Convert.ToDouble(newEntry.ProductPrice) * Convert.ToDouble(dr["Qty"]);
                //        gridTable.Rows.Add(dr);
                //        Session.Remove("NewData");
                //    }

                //    this.LoadTable();
                //    sum = gridTable.Compute("Sum(SubTotal)", string.Empty);
                //    Label1.Text = sum.ToString();
                //}
                //else
                //{
                //    DataTable dt = new DataTable();
                //    dt.Columns.Add("Name", typeof(string));
                //    dt.Columns.Add("Price", typeof(double));
                //    dt.Columns.Add("Qty", typeof(int));
                //    dt.Columns.Add("SubTotal", typeof(double));
                //    dt.Columns["Qty"].DefaultValue = 1;
                //    Session.Add("DataGrid", dt);
                //    this.LoadTable();
                //}
            }
        }
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            e.Command.Parameters["Id"].Value = 1;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand Insert = new SqlCommand("INSERT INTO [Order] ([ItemID],[UserName],[Quantity]) SELECT [ItemId],[UserName],[Qty] FROM [ShoppingCart] Where(UserName = @user)", con);
            Insert.Parameters.AddWithValue("@user", User.Identity.Name);
            SqlCommand Delete = new SqlCommand("DELETE [ShoppingCart] Where(UserName = @user)", con);
            Delete.Parameters.AddWithValue("@user", User.Identity.Name);
            con.Open();
            Insert.ExecuteNonQuery();
            Delete.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.RawUrl);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
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
            string user = User.Identity.Name;
            SqlDataSource1.SelectParameters.Clear();
            SqlDataSource1.SelectParameters.Add("@UserName", user);           
            if(!Page.IsPostBack)
            {
                object sum;
                if (Session["DataGrid"] != null)
                {
                    DataTable gridTable = (DataTable)Session["DataGrid"];
                    if (Session["NewData"] != null)
                    {
                        Product newEntry = (Product)Session["NewData"];
                        DataRow dr = gridTable.NewRow();
                        dr["Name"] = newEntry.ProductName;
                        dr["Price"] = newEntry.ProductPrice;
                        dr["SubTotal"] = Convert.ToDouble(newEntry.ProductPrice) * Convert.ToDouble(dr["Qty"]);
                        gridTable.Rows.Add(dr);
                        Session.Remove("NewData");
                    }

                    this.LoadTable();
                    sum = gridTable.Compute("Sum(SubTotal)", string.Empty);
                    Label1.Text = sum.ToString();
                }
                else
                {
                    DataTable dt = new DataTable();
                    dt.Columns.Add("Name", typeof(string));
                    dt.Columns.Add("Price", typeof(double));
                    dt.Columns.Add("Qty", typeof(int));
                    dt.Columns.Add("SubTotal", typeof(double));
                    dt.Columns["Qty"].DefaultValue = 1;
                    Session.Add("DataGrid", dt);
                    this.LoadTable();
                }
            }
        }

        protected void LoadTable()
        {
            DataTable gridTable = (DataTable)Session["DataGrid"];
            GridView1.DataSource = gridTable;
            GridView1.DataBind();
        }

        protected void GV_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = (DataTable)Session["DataGrid"];
            dt.Rows.RemoveAt(e.RowIndex);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            this.LoadTable();
            Response.Redirect(Request.RawUrl);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.LoadTable();
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            DataTable dt = (DataTable)Session["DataGrid"];
            GridViewRow row = GridView1.Rows[e.RowIndex];
            dt.Rows[row.DataItemIndex]["Qty"] = ((TextBox)(row.Cells[0].FindControl("Quantity"))).Text;
            GridView1.EditIndex = -1;

            
            double temp1, temp2, temp3;
            DataTable gridTable = (DataTable)Session["DataGrid"];
            foreach (DataRow dr in gridTable.Rows)
            {
                temp1 = Convert.ToDouble(dr["Qty"]);
                temp2 = Convert.ToDouble(dr["Price"]);
                temp3 = temp1 * temp2;
                dr["subTotal"] = temp3;
            }

            this.LoadTable();
            Response.Redirect(Request.RawUrl);
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            this.LoadTable();
        }
    }
}
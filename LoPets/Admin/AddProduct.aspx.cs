using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoPets.Admin
{
    public partial class AddProduct : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=PHANTOM-LAPTOP\SQLEXPRESS;Initial Catalog=LoPets;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateProduct(object sender, EventArgs e)
        {
            
            ProductImg.SaveAs(Request.PhysicalApplicationPath + "/Images/" + ProductImg.FileName.ToString());
            string path = "/Images/" + ProductImg.FileName.ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Items (ItemName, ItemCat, ItemDesc, ItemPrice, ItemImg) values (@Name, @Cat, @Desc, @Price, @Img)");
            cmd.Parameters.Add("@Name", System.Data.SqlDbType.VarChar).Value = ProductName.Text;
            cmd.Parameters.Add("@Cat", System.Data.SqlDbType.VarChar).Value = ProductCategory.SelectedValue;
            cmd.Parameters.Add("@Desc", System.Data.SqlDbType.VarChar).Value = ProductDesc.Text;
            cmd.Parameters.Add("@Price", System.Data.SqlDbType.VarChar).Value = ProductPrice.Text;
            cmd.Parameters.Add("@Img", System.Data.SqlDbType.VarChar).Value = path;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();

        }
    }
}
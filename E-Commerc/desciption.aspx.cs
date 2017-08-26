using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class desciption : System.Web.UI.Page
{
    SqlCommand cmd;
    int id;
    SqlDataAdapter sd;
    DataTable dt;
    String pname;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
        }
        catch ( Exception ex)
        {
            Response.Redirect("Home.aspx");
        }
        repeat();
    }
    public void repeat()
    {
        cmd = new SqlCommand("select category.cat_name, subcategory.subcat_name,pid,sale_products.cat_id,product_name,descript,size,image,sale,real from sale_products  join subcategory on sale_products.subcat_id = subcategory.subcat_id join category on sale_products.cat_id = category.cat_id where pid ='" +id+"' ", con);
        sd = new SqlDataAdapter(cmd);
        dt = new DataTable();
        sd.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();


    }




    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select product_name from sale_products where pid ='" + id + "' ", con);
        sd = new SqlDataAdapter(cmd);
        dt = new DataTable();
        sd.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            pname = dr["product_name"].ToString();
        }
        con.Close();
        HttpCookie cart = new HttpCookie("cart");
      
        if ( cart["aa"] == null)
        {
            cart["aa"] = pname.ToString();
            
            cart.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(cart);
        }
        else
        {
            Response.Cookies["aa"].Value = Response.Cookies["aa"].Value + pname.ToString();
            Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
        }

    }
}   
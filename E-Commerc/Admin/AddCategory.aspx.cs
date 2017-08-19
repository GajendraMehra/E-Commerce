using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admin_AddCategory : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlDataAdapter sd;
    DataTable dt;
    DataSet ds;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        repeat();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        con.Open();
        cmd = new SqlCommand("insert into category values('" +category.Value + "')", con);
        cmd.Parameters.AddWithValue("@cat_name", category.Value);
        cmd.ExecuteNonQuery();
        con.Close();
        repeat();

    }
    public void repeat()
    {
        cmd = new SqlCommand("select *from category", con);
        sd = new SqlDataAdapter(cmd);
        dt = new DataTable();
        
        sd.Fill(dt);
        repeat_cat.DataSource = dt;
        repeat_cat.DataBind();
        

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_AddSub : System.Web.UI.Page
{


    SqlCommand cmd;
    SqlDataAdapter sd;
    DataTable dt;

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        repeat();
        if (!IsPostBack)
        {
            binde();
        }
    }



    public void binde()
    {
        con.Open();
        SqlDataAdapter sd = new SqlDataAdapter("Select * from category", con);
        DataTable ds = new DataTable();
        sd.Fill(ds);
        Dd_cat.DataSource = ds;
        Dd_cat.DataTextField = "cat_name";
        Dd_cat.DataValueField = "cat_id";
        Dd_cat.DataBind();
        con.Close();


    }



    protected void add_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into subcategory values('" + subcategory.Value + "','"+Dd_cat.SelectedValue+"')",con);
        cmd.Parameters.AddWithValue("@subcat_name", subcategory.Value);
        cmd.Parameters.AddWithValue("@cat_id", Dd_cat.SelectedValue);
        cmd.ExecuteNonQuery();


        con.Close();
        repeat();
    }
    public void repeat()
    {
        cmd = new SqlCommand("select *from subcategory", con);
        sd = new SqlDataAdapter(cmd);
        dt = new DataTable();
        sd.Fill(dt);
        repeat_cat.DataSource = dt;
        repeat_cat.DataBind();


    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_AddPrice : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        repeat();
        if (!IsPostBack)
        {
            binf();

        }


    }
    public void repeat()
    {
        SqlCommand cmd = new SqlCommand("select * from sale_products order by pid desc ", con);
        SqlDataAdapter sd = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sd.Fill(dt);
        repeat_details.DataSource = dt;
        repeat_details.DataBind();


    }

    public void binf()
    {
        con.Open();
        SqlDataAdapter sd = new SqlDataAdapter("Select * from category", con);
        DataTable ds = new DataTable();
        sd.Fill(ds);
        cat_dropdown.DataSource = ds;
        cat_dropdown.DataTextField = "cat_name";
        cat_dropdown.DataValueField = "cat_id";
        cat_dropdown.DataBind();
        con.Close();
        cat_dropdown.Items.Insert(0, "select");


    }


    protected void cat_dropdown_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlDataAdapter sd = new SqlDataAdapter("Select * from subcategory where cat_id='" + cat_dropdown.SelectedValue + "'", con);
            DataTable d = new DataTable();
            sd.Fill(d);
            subcatdropdown.DataSource = d;
            subcatdropdown.DataTextField = "subcat_name";
            subcatdropdown.DataValueField = "subcat_id";
            subcatdropdown.DataBind();
            con.Close();
        }
        catch
        {
        }
      
    }
    public void clear()
    {
        cat_dropdown.Text = "select";
        p_des.Text = "";
        p_name.Value = "";
        p_real.Value = "";
        P_sale.Value = "";
        p_size.Value = "";
    }

    protected void save_Click(object sender, EventArgs e)

    {
      
        if (cat_dropdown.Text == "select" )
        {
            label1.Text = "please select category";
        }
        else
        {
            if (img_upload.HasFile)
            {
                con.Open();
                img_upload.PostedFile.SaveAs(Server.MapPath("~/image/") + img_upload.FileName);

                SqlCommand cmd = new SqlCommand("insert_data", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@cat_id", cat_dropdown.SelectedValue);
                cmd.Parameters.AddWithValue("@subcat_id", subcatdropdown.SelectedValue);
                cmd.Parameters.AddWithValue("@product_name", p_name.Value);
                cmd.Parameters.AddWithValue("@descript", p_des.Text);
                cmd.Parameters.AddWithValue("@size", p_size.Value);
                cmd.Parameters.AddWithValue("@sale", P_sale.Value);
                cmd.Parameters.AddWithValue("@real", p_real.Value);
                cmd.Parameters.AddWithValue("@image", "Image/" + img_upload.FileName);
                cmd.ExecuteNonQuery();
                con.Close();
                  repeat();
                clear();
               


            }

        }
    }

}
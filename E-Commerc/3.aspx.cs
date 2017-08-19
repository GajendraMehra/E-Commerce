using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class men : System.Web.UI.Page
{
    SqlCommand cmd,cmd1;
    SqlDataAdapter sd,sd1;
    DataTable dt,dt1;
    DataSet ds,ds1;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        repeat();
    }
    public void repeat()
    {
        con.Open();
        cmd = new SqlCommand("select *from category where cat_id=3", con);
        sd = new SqlDataAdapter(cmd);
        cmd1 = new SqlCommand("select *from sale_products where cat_id=3", con);
        sd1 = new SqlDataAdapter(cmd1);
        dt = new DataTable();
        dt1 = new DataTable();
        ds = new DataSet();
        ds1 = new DataSet();
        sd.Fill(ds);
       sd1.Fill(ds1);
        //  sd.Fill(dt);

        //    sd.Fill(dt);
        dt = ds.Tables[0];
        dt1 = ds1.Tables[0];
        topwell.Text = dt.Rows[0]["cat_name"].ToString();
        // topwell.DataBind();
        rptmencat.DataSource = dt1;
        rptmencat.DataBind();

        con.Close();
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Home : System.Web.UI.Page
{

    SqlCommand cmd;
    SqlDataAdapter sd;
    DataTable dt;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        repeat();
    }
    public void repeat()
    {
        cmd = new SqlCommand("select * from sale_products ", con);
        sd = new SqlDataAdapter(cmd);
        dt = new DataTable();
        sd.Fill(dt);
        rpt.DataSource = dt;
        rpt.DataBind();


    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class MasterPage : System.Web.UI.MasterPage
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

        cmd = new SqlCommand("select *from category ", con);
        sd = new SqlDataAdapter(cmd);
        dt = new DataTable();
        sd.Fill(dt);
        repcat.DataSource = dt;
        repcat.DataBind();



    }

}


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class SignUp : System.Web.UI.Page
{
    SqlCommand cmd;
    int id;
    SqlDataAdapter sd;
    DataTable dt;
    String pname;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        insert();
    }

    public void insert()
    {

        
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into userregistration values(@firstname,@lastname,@email,@password,@address,@city,@state,@pincode,@mobile)", con);
        cmd.Parameters.AddWithValue("@firstname", fname.Value);
        cmd.Parameters.AddWithValue("@lastname", lname.Value);
        cmd.Parameters.AddWithValue("@email", email.Value);
      
        cmd.Parameters.AddWithValue("@password", password.Value);
        cmd.Parameters.AddWithValue("@address", address.Value);
        cmd.Parameters.AddWithValue("@city", city.Value);
        cmd.Parameters.AddWithValue("@state", State.Value);
        cmd.Parameters.AddWithValue("@pincode", pin.Value);
        cmd.Parameters.AddWithValue("@mobile", pno.Value);

        cmd.ExecuteNonQuery();
        con.Close();
    }


  

}
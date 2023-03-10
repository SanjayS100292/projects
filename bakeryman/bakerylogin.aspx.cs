using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

namespace bakeryman
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlConnection conn3 = new MySqlConnection();
            conn3.ConnectionString = "server=127.0.0.1;user id=root;database=bakery";
            conn3.Open();
            MySqlCommand cmd = new MySqlCommand("select * from bakereg where bakename=@username and bakepass =@password", conn3);

            cmd.Parameters.AddWithValue("@username", txtUname.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            MySqlDataReader mdr = cmd.ExecuteReader();
            if (mdr.Read())
            {
                Session["username"] = txtUname.Text;
                Response.Redirect("~/bakeryhome.aspx");
            }
            else
            {
                lblstatus.Text = "username or password incorrect";
                lblstatus.ForeColor = System.Drawing.Color.Red;
            }
            conn3.Close();
        }
    }
}
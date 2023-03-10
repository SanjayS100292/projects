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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                MySqlConnection conn1 = new MySqlConnection();
                conn1.ConnectionString = "server=127.0.0.1;user id=root;database=bakery";
                conn1.Open();
                MySqlCommand cmd = new MySqlCommand("Insert into shopreg(mno,shopuser,shoppass,shoppasscon,address)values(@mobileno,@username,@password,@conpassword,@address)", conn1); //('" + TextBox2.Text + "','" + txtUname.Text + "','" + txtPassword.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "')", conn);
                
                cmd.Parameters.AddWithValue("@mobileno", TextBox2.Text);
                cmd.Parameters.AddWithValue("@username", txtUname.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                cmd.Parameters.AddWithValue("@conpassword", TextBox1.Text);
                cmd.Parameters.AddWithValue("@address", TextBox3.Text);

                cmd.ExecuteNonQuery();
                conn1.Close();
                TextBox2.Text = "";
                txtUname.Text = "";
                txtPassword.Text = "";
                TextBox1.Text = "";
                TextBox3.Text = "";
                
                lblstatus.Text = "SHOP REGISTERED";
                }
            

        }
        }
    }

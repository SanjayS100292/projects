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
    public partial class WebForm32 : System.Web.UI.Page
    {
        string strConnString = "server=127.0.0.1;user id=root;database=bakery";
        string str = null;
        MySqlCommand com;
        byte up;
        protected void btn_update_Click(object sender, EventArgs e)
        {
            
           
            MySqlConnection con = new MySqlConnection(strConnString);
            con.Open();
            str = "select * from adminlogin ";
            com = new MySqlCommand(str, con);
            MySqlDataReader reader = com.ExecuteReader();
            while (reader.Read())
            {
                if (txt_cpassword.Text == reader["Password"].ToString())
                {
                    up = 1;
                }
            }
            reader.Close();
            con.Close();
            if (up == 1)
            {
                con.Open();
                str = "update adminlogin set adminpass=@Password where adminuser='" + Session["adminuser"].ToString() + "'";
                com = new MySqlCommand(str, con);
                com.Parameters.Add(new MySqlParameter("@Password", MySqlDbType.VarChar, 50));
                com.Parameters["@Password"].Value = txt_npassword.Text;
                com.ExecuteNonQuery();
                con.Close();
                lbl_msg.Text = "Password changed Successfully";
            }
            else
            {
                lbl_msg.Text = "Please enter correct Current password";
            }
        }
    }
}
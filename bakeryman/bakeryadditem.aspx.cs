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
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            MySqlConnection conn1 = new MySqlConnection();
            conn1.ConnectionString = "server=127.0.0.1;user id=root;database=bakery";
            conn1.Open();
            MySqlCommand cmd = new MySqlCommand("Insert into item(name,type,price)values(@item,@type,@price)", conn1); 

            cmd.Parameters.AddWithValue("@item", txtboxName.Text);
            cmd.Parameters.AddWithValue("@type", DropDownType.Text);
            cmd.Parameters.AddWithValue("@price", txtboxPrice.Text);
           

            cmd.ExecuteNonQuery();
            conn1.Close();
            txtboxName.Text = "";
            txtboxPrice.Text = "";
      

            lblStatus.Text = "ITEM is ADDED";
        }

    }
}

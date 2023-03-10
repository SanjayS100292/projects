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
    public partial class WebForm34 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection();
            con.ConnectionString = "server=127.0.0.1;user id=root;database=bakery";
            string strSQL = "Select * from odr where odrdate between'" + TextBox1.Text + "'and'" + TextBox2.Text + "'";
            MySqlDataAdapter dt = new MySqlDataAdapter(strSQL, con);
            DataSet ds = new DataSet();
            dt.Fill(ds,"odr");
            con.Close();
            DataView dv = new DataView();
            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind();
        }
}
    }
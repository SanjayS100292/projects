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
    public partial class WebForm31 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection conn1 = new MySqlConnection();
            conn1.ConnectionString = "server=127.0.0.1;user id=root;database=bakery";
            conn1.Open();
            MySqlCommand cmd = new MySqlCommand("Insert into odr select * from ordertbl", conn1);
            cmd.ExecuteNonQuery();
            conn1.Close();
            
        }

      
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
       

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            /*if (e.Row.RowType == DataControlRowType.DataRow && GridView1.EditIndex != e.Row.RowIndex)
            {
                (e.Row.Cells[8].Controls[1] as Button).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            }*/
        }
    }
   
}
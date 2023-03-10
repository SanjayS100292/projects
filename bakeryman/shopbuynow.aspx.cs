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
    public partial class WebForm24 : System.Web.UI.Page
    {
        
        MySqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dta = new DataTable();
                DataRow dr;
                dta.Columns.Add("sno");
                dta.Columns.Add("id");
                dta.Columns.Add("name");
                dta.Columns.Add("quantity");
                dta.Columns.Add("price");
                dta.Columns.Add("totalprice");


                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dta.NewRow();
                        MySqlConnection scon = new MySqlConnection();
                        scon.ConnectionString = "server=127.0.0.1;user id=root;database=bakery";
                        String myquery = "select * from item where id=" + Request.QueryString["id"];
                        MySqlCommand cmd = new MySqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        MySqlDataAdapter da = new MySqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["name"] = ds.Tables[0].Rows[0]["name"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["type"] = ds.Tables[0].Rows[0]["type"].ToString();
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;

                        dta.Rows.Add(dr);
                        GridView1.DataSource = dta;
                        GridView1.DataBind();

                        Session["buyitems"] = dta;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("shopcart.aspx");

                    }
                    else
                    {

                        dta = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dta.Rows.Count;

                        dr = dta.NewRow();
                        MySqlConnection scon = new MySqlConnection();
                        scon.ConnectionString = "server=127.0.0.1;user id=root;database=bakery";
                        String myquery = "select * from item where id=" + Request.QueryString["id"];
                        MySqlCommand cmd = new MySqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        MySqlDataAdapter da = new MySqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["name"] = ds.Tables[0].Rows[0]["name"].ToString(); 
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["type"] = ds.Tables[0].Rows[0]["type"].ToString();
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;
                        dta.Rows.Add(dr);
                        GridView1.DataSource = dta;
                        GridView1.DataBind();

                        Session["buyitems"] = dta;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("shopcart.aspx");

                    }
                }
                else
                {
                    dta = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dta;
                    GridView1.DataBind();
                    
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[4].Text = "Total Amount";
                        GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();

                    }
                    

                }
                //Label2.Text = GridView1.Rows.Count.ToString();
                MultiView1.ActiveViewIndex = 0;
                lblOrderingDate.Text = DateTime.Now.ToShortDateString();
                lblDeliveryDate.Text = DateTime.Now.AddDays(2).ToShortDateString();

            }

        }
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

                i = i + 1;
            }
            return gtotal;
        }

        protected void btnGoToStep2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            lblPayType.Text = "CARD PAYMENT";
        }

        protected void btnBackToStep1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnGoToStep3_Click(object sender, EventArgs e)
        {
            lblorderdate.Text = lblOrderingDate.Text;
            lblcomplitiondate.Text = lblDeliveryDate.Text;
            lblPaymentby.Text = lblPayType.Text;
            MultiView1.ActiveViewIndex = 2;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataTable dt;

            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count-1; i++)
            {
                MySqlConnection s = new MySqlConnection();
                s.ConnectionString = "server=127.0.0.1;user id=root;database=bakery";
                s.Open();
                cmd = new MySqlCommand("insert into ordertbl(odrdate,deldate,name,quantity,price,paytype,id,shopuser) values('" + lblorderdate.Text + "','" + lblcomplitiondate.Text + "','" + dt.Rows[i]["name"] + "','"+ dt.Rows[i]["quantity"] + "','" + dt.Rows[i]["totalprice"] + "','" + lblPaymentby.Text + "'," + dt.Rows[i]["id"] + ",'" + Session["username"] + "')", s);
                cmd.ExecuteNonQuery();
                Response.Redirect("payment1.aspx");
                
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
    }

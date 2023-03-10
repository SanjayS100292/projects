using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bakeryman
{
    public partial class WebForm26 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblCardNumber.Text = Convert.ToString(Session["accno"]);
                lbl_Payto.Text = "yummuybakes@bakes.com";
                lbl_Amount.Text = Convert.ToString(Session["amount"]);
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("payment3.aspx");
        }
    }
}
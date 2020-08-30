using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inventory
{
    public partial class DefaultMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                try
                {
                    if (!string.IsNullOrEmpty(Convert.ToString(Session["name"])))
                    {
                        //ltrsessionname.Text = Session["name"].ToString();
                    }
                    else
                    {
                        Response.Redirect("Login.aspx", false);
                    }
                }
                catch(Exception ex)
                {
                    throw new Exception(ex.Message);
                }
            }

        }
    }
}
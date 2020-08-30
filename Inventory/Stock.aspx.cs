using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inventory
{
    public partial class Stock : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string cs = ConfigurationManager.ConnectionStrings["mydb"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                DataTable dt = this.GetData();
                //Append the HTML string to Placeholder.
                //PlaceHolder1.Controls.Add(new Literal { Text = GetTable(dt) });
            }
        }

        public DataTable GetData(string command = @"select id,invoice,invoice_date,customer_name,mobile,address,sale_date,item_id,sale_price,gst_price,discount,payble from tbl_sale")
        {

            using (con = new SqlConnection(cs))
            {
                using (cmd = new SqlCommand(command, con))
                {

                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        cmd.Connection = con;
                        da.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            da.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }

        public string GetTable(DataTable data)
        {
            StringBuilder html = new StringBuilder();

            //Table start.
            html.Append("<div class='table-responsive'></div>");
            html.Append("<table class='datatables-demo table table-striped table-bordered' runat='server'>");
            html.Append("<thead>");
            html.Append("<tr><th>Sl No.</th><th>Items</th><th>Purchase Item</th><th>Sale Item</th><th>Available Quantity</th></tr>");
            html.Append("</thead>");
            html.Append("<tbody>");
            foreach (DataRow row in data.Rows)
            {
                html.Append("<tr class='odd gradeA'>");
                foreach (DataColumn column in data.Columns)
                {
                    html.Append("<td>");
                    html.Append(row[column.ColumnName]);
                    html.Append("</td>");
                }
                html.Append("<td><a href = '#' id='PrintRecord'><i class='ion ion-md-print'></i></a></td>");
                html.Append("</tr>");
            }

            //Table end.
            html.Append("</tbody>");
            html.Append("</table>");
            return html.ToString();
        }


        protected void RptSubject_OnItemCommand(object sender, RepeaterCommandEventArgs e)
        {
        }
    }
}
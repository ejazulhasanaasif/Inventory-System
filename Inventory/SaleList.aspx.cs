using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inventory
{
    public partial class SaleList : System.Web.UI.Page
    {

        SqlConnection loSqlConnection = null;
        SqlCommand loSqlCommand = null;
        SqlDataAdapter loSqlDataAdapter = null;
        DataTable loDataTable = null;
        string cs = ConfigurationManager.ConnectionStrings["mydb"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindRepeater();


            }
        }

        #region bind data to RepeaterPurchaseList  
        private void BindRepeater()
        {
            try
            {
                loSqlConnection = new SqlConnection(cs);
                loSqlConnection.Open();
                string queryForGrid = "Select id,invoice,sale_date,customer_name,base_price,gst_price,discount,payble from tbl_sale where status <> 0 ";
                loSqlCommand = new SqlCommand(queryForGrid, loSqlConnection);
                loSqlDataAdapter = new SqlDataAdapter(loSqlCommand);
                loDataTable = new DataTable();
                loSqlDataAdapter.Fill(loDataTable);
                rpt.DataSource = loDataTable;
                rpt.DataBind();

            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                if (loSqlConnection.State == ConnectionState.Open)
                {
                    loSqlConnection.Close();
                }
            }
        }
        #endregion

        private void AddPlaceholder()
        {
            DataTable dt = this.GetData();
            //Append the HTML string to Placeholder.
            //PlaceHolder1.Controls.Add(new Literal { Text = GetTable(dt) });
        }
        public DataTable GetData(string command = @"select id,invoice,invoice_date,customer_name,mobile,address,sale_date,item_id,sale_price,base_price,gst_price,discount,payble from tbl_sale")
        {

            using (loSqlConnection = new SqlConnection(cs))
            {
                using (loSqlCommand = new SqlCommand(command, loSqlConnection))
                {

                    using (SqlDataAdapter da = new SqlDataAdapter(loSqlCommand))
                    {
                        loSqlCommand.Connection = loSqlConnection;
                        da.SelectCommand = loSqlCommand;
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
            html.Append("<tr><th>Sl No.</th><th>Invoice Number</th><th>Sale Date</th><th>Customer Name</th><th>List Of Items</th><th>Base Amount</th><th>GST Amount</th><th>Discount</th><th>Payble</th><th>Print</th></tr>");
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
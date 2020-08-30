using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inventory
{
    public partial class ItemList : System.Web.UI.Page
    {
        SqlConnection loSqlConnection = null;
        SqlCommand loSqlCommand = null;
        SqlDataAdapter loSqlDataAdapter = null;
        DataTable loDataTable = null;
        string cs = ConfigurationManager.ConnectionStrings["mydb"].ConnectionString;

        public int itemId { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindRepeater();

                //AddPlaceholder();
            }
        }

        #region bind data to RepeaterItemList  
        private void BindRepeater()
        {
            try
            {
                loSqlConnection = new SqlConnection(cs);
                loSqlConnection.Open();
                string queryForGrid = "Select id,item_name,item_price,gst_percent,hsn_code,status from tbl_item where status <> 0 ";
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

        /// <summary>
        /// Append the HTML string to Placeholder.
        /// </summary>
        private void AddPlaceholder()
        {
            DataTable dt = this.GetData();
            //PlaceHolder1.Controls.Add(new Literal { Text = GetTable1(dt) });
        }

        public DataTable GetData(string command = @"select id,company_name,item_name,gst_percent,item_price,hsn_code,status from tbl_item")
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

        public string GetTable1(DataTable data)
        {
            StringBuilder html = new StringBuilder();
            int slNo = 1;
            //Table start.
            html.Append("<div class='table-responsive'>");
            html.Append("<table class='datatables-demo table table-striped table-bordered' runat='server'>");
            html.Append("<thead>");
            html.Append("<tr><th><input id='chkSelectAll' runat='server' type='checkbox' name='chkSelectAll'></th><th>Sl No.</th><th>Company Name</th><th>Item Name</th><th>GST Percent</th><th>Item Price</th><th>HSN Code</th><th>Status</th><th>Edit</th></tr>");
            html.Append("</thead>");
            html.Append("<tbody>");
            foreach (DataRow row in data.Rows)
            {
                html.Append("<tr class='odd gradeA'>");
                html.Append("<td>");
                html.Append("<input type='checkbox' id='chkSelectSingle' runat='server' name='chkSelectSingle'/>");
                html.Append("</td>");
                html.Append("<td>");
                html.Append(row["id"].ToString());
                html.Append("</td>");
                html.Append("<td>");
                html.Append(row["company_name"].ToString());
                html.Append("</td>");
                html.Append("<td>");
                html.Append(row["item_name"].ToString());
                html.Append("</td>");
                html.Append("<td>");
                html.Append(row["gst_percent"].ToString());
                html.Append("</td>");
                html.Append("<td>");
                html.Append(row["item_price"].ToString());
                html.Append("</td>");
                html.Append("<td>");
                html.Append(row["hsn_code"].ToString());
                html.Append("</td>");
                html.Append("<td>");
                html.Append(row["status"].ToString());
                html.Append("</td>");
                html.Append("<td><a href = 'AddItem.aspx?id=" + row["id"].ToString() + "' id='EditRecord'><i class='fas fa-edit'></i></a></td>");
                html.Append("</tr>");
                slNo = slNo + 1;
            }

            html.Append("</tbody>");
            html.Append("</table>");
            html.Append("</div>");
            return html.ToString();
        }
        public string GetTable(DataTable data)
        {
            StringBuilder html = new StringBuilder();
            int slNo = 1;

            //Table start.
            html.Append("<div class='table-responsive'></div>");
            html.Append("<table class='datatables-demo table table-striped table-bordered' runat='server'>");
            html.Append("<thead>");
            html.Append("<tr><th>Sl No.</th><th>Company Name</th><th>Item Name</th><th>GST Percent</th><th>Item Price</th><th>HSN Code</th><th>Status</th><th>Edit</th><th>Delete</th></tr>");
            html.Append("</thead>");
            html.Append("<tbody>");
            foreach (DataRow row in data.Rows)
            {
                html.Append("<tr class='odd gradeA'>");
                html.Append("<td>" + slNo + "</td>");
                html.Append("<td style='display:none;'>");
                html.Append(row["id"].ToString());
                //html.Append(row[column.ColumnName]);
                html.Append("</td>");
                html.Append("<td>");
                html.Append(row["company_name"].ToString());
                html.Append("</td>");
                html.Append("<td>");
                html.Append(row["item_name"].ToString());
                html.Append("</td>");
                html.Append("<td>");
                html.Append(row["gst_percent"].ToString());
                html.Append("</td>");
                html.Append("<td>");
                html.Append(row["item_price"].ToString());
                html.Append("</td>");
                html.Append("<td>");
                html.Append(row["hsn_code"].ToString());
                html.Append("</td>");
                html.Append("<td>");
                html.Append(row["status"].ToString());
                html.Append("</td>");
                //foreach (DataColumn column in data.Columns)
                //{

                //}
                html.Append("<td><a href ='AddItem.aspx?id=" + row["id"].ToString() + " id='EditRecord'><i class='fas fa-edit'></i></a></td>");
                html.Append("<td><a href ='#' id='DeleteRecord'><i class='fas fa-trash'></i></a></td>");
                html.Append("</tr>");
                slNo = slNo + 1;
            }

            //Table end.
            html.Append("</tbody>");
            html.Append("</table>");
            return html.ToString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                using (loSqlConnection = new SqlConnection(cs))
                {
                    loSqlConnection.Open();
                    string selectItems = "SELECT COUNT(*) from tbl_item WHERE item_name='" + txtItemName.Text + "'";
                    using (loSqlCommand = new SqlCommand(selectItems, loSqlConnection))
                    {
                        using (loSqlDataAdapter = new SqlDataAdapter(loSqlCommand))
                        {
                            using (DataTable loDataTable = new DataTable())
                            {
                                loSqlDataAdapter.Fill(loDataTable);

                                if (int.Parse(loDataTable.Rows[0][0].ToString()) == 0)
                                {
                                    int status = 1;
                                    int c_by = Convert.ToInt32(Session["id"]);
                                    DateTime c_date = Convert.ToDateTime(DateTime.Now.ToString("yyyy-MM-dd hh:MM:ss"));
                                    string saveItems = "INSERT INTO tbl_item(item_name,item_price,gst_percent,hsn_code,status,c_by,c_date) VALUES(@item_name,@item_price,@gst_percent,@hsn_code,@status,@c_by,@c_date)";
                                    using (loSqlCommand = new SqlCommand(saveItems, loSqlConnection))
                                    {
                                        loSqlCommand.Parameters.AddWithValue("@item_name", txtItemName.Text);
                                        loSqlCommand.Parameters.AddWithValue("@item_price", Convert.ToDecimal(txtItemPrice.Text));
                                        loSqlCommand.Parameters.AddWithValue("@gst_percent", Convert.ToInt32(txtGstPercent.Text));
                                        loSqlCommand.Parameters.AddWithValue("@hsn_code", txtHsnCode.Text);
                                        loSqlCommand.Parameters.AddWithValue("@status", status);
                                        loSqlCommand.Parameters.AddWithValue("@c_by", c_by);
                                        loSqlCommand.Parameters.AddWithValue("@c_date", Convert.ToDateTime(c_date));
                                        loSqlCommand.ExecuteNonQuery();
                                        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Data successfully Submitted!!')", true);
                                        ResetControl();
                                        this.BindRepeater();
                                    }
                                }
                                else
                                {
                                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Item Name Allready Exist!!')", true);
                                }
                            }
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        private void ResetControl()
        {
            txtItemName.Text = string.Empty;
            txtItemPrice.Text = string.Empty;
            txtGstPercent.Text = string.Empty;
            txtHsnCode.Text = string.Empty;
        }


        protected void RptSubject_OnItemCommand(object sender, RepeaterCommandEventArgs e)
        {
            try
            {
                int itemId = Convert.ToInt16(e.CommandArgument);
                if (e.CommandName == "EditRecord")
                {
                    Response.Redirect("AddItem.aspx?itemId=" + itemId + "", false);

                }
                else if (e.CommandName == "DeleteRecord")
                {
                    using (loSqlConnection = new SqlConnection(cs))
                    {
                        loSqlConnection.Open();
                        string queryForDelete = "UPDATE tbl_item set status='0' WHERE id=" + itemId + "";
                        using (loSqlCommand = new SqlCommand(queryForDelete, loSqlConnection))
                        {
                            loSqlCommand.ExecuteNonQuery();
                            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Data Deleted Successfully!!')", true);
                            this.BindRepeater();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inventory
{
    public partial class VenderList : System.Web.UI.Page
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

                // AddPlaceholder();
            }

        }

        #region bind data to GridViewVenderList  
        private void BindRepeater()
        {
            try
            {
                loSqlConnection = new SqlConnection(cs);
                loSqlConnection.Open();
                string queryForGrid = "Select id,company_name,vendor_name,mobile,gst_number,address,city,state,pin,status from tbl_vendor where status <> 0";
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
        public DataTable GetData(string command = @"select id,company_name,vendor_name,mobile,gst_number,address,city,state,pin,status from tbl_vendor")
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
            html.Append("<tr><th>Sl No.</th><th>Company Name</th><th>Vendor Name</th><th>Mobile</th><th>Gst Number</th><th>Address</th><th>City</th><th>State</th><th>Pin</th><th>Status</th><th>Edit</th><th>Delete</th></tr>");
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
                html.Append("<td><a href = '#' id='EditRecord'><i class='fas fa-edit'></i></a></td>");
                html.Append("<td><a href = '#' id='DeleteRecord'><i class='fas fa-trash'></i></a></td>");
                html.Append("</tr>");
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
                    string selectItems = "SELECT COUNT(*) from tbl_vendor WHERE vendor_name='" + txtVendorName.Text + "'";
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
                                    string saveVendor = "INSERT INTO tbl_vendor(company_name,vendor_name,mobile,gst_number,address,city,state,pin,status,c_by,c_date) VALUES(@company_name,@vendor_name,@mobile,@gst_number,@address,@city,@state,@pin,@status,@c_by,@c_date)";
                                    using (loSqlCommand = new SqlCommand(saveVendor, loSqlConnection))
                                    {
                                        loSqlCommand.Parameters.AddWithValue("@company_name", txtCompanyName.Text);
                                        loSqlCommand.Parameters.AddWithValue("@vendor_name", txtVendorName.Text);
                                        loSqlCommand.Parameters.AddWithValue("@mobile", txtMobile.Text);
                                        loSqlCommand.Parameters.AddWithValue("@gst_number", txtGstNumber.Text);
                                        loSqlCommand.Parameters.AddWithValue("@address", txtAddress.Text);
                                        loSqlCommand.Parameters.AddWithValue("@city", txtCity.Text);
                                        loSqlCommand.Parameters.AddWithValue("@state", txtState.Text);
                                        loSqlCommand.Parameters.AddWithValue("@pin", txtPin.Text);
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
                                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Vendor Name Allready Exist!!')", true);
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
            txtVendorName.Text = string.Empty;
            txtMobile.Text = string.Empty;
            txtGstNumber.Text = string.Empty;
            txtAddress.Text = string.Empty;
            txtCity.Text = string.Empty;
            txtState.Text = string.Empty;
            txtPin.Text = string.Empty;
        }

        protected void RptSubject_OnItemCommand(object sender, RepeaterCommandEventArgs e)
        {
            try
            {
                int VendorId = Convert.ToInt16(e.CommandArgument);
                if (e.CommandName == "EditRecord")
                {
                    Response.Redirect("AddVendor.aspx?VendorId=" + VendorId + "", false);
                }
                else if (e.CommandName == "DeleteRecord")
                {
                    using (loSqlConnection = new SqlConnection(cs))
                    {
                        loSqlConnection.Open();
                        string queryForDelete = "UPDATE tbl_vendor set status='0' WHERE id=" + VendorId + "";
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
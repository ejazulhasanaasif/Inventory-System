using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class SQLHandler
    {
        public string moSqlConnection { get; set; }

        public SQLHandler()
        {
            moSqlConnection = ConfigurationManager.ConnectionStrings["mydb"].ConnectionString;
        }


        //INSERT /UPDATE/ DELETE
        public bool ExecuteNonQuery(string fsQry, Dictionary<string, object> foParam = null)
        {
            try
            {

                bool fIsSuccess = false;
                SqlCommand loSqlCommand = null;

                using (SqlConnection loSqlConnection = new SqlConnection(moSqlConnection))
                {
                    loSqlCommand = new SqlCommand(fsQry, loSqlConnection);
                    loSqlConnection.Open();
                    loSqlCommand.CommandType = CommandType.Text;
                    if (foParam != null)
                    {
                        foreach (KeyValuePair<string, object> loParam in foParam)
                        {
                            loSqlCommand.Parameters.AddWithValue(loParam.Key, loParam.Value);
                        }
                    }
                    if (Convert.ToInt32(loSqlCommand.ExecuteNonQuery()) > 0)
                    {
                        fIsSuccess = true;
                    }
                    loSqlConnection.Close();
                }
                return fIsSuccess;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        public DataTable FetchData(string fsQry, Dictionary<string, object> foParam = null)
        {
            try
            {
                DataTable loDataTable = null;
                SqlCommand loSqlCommand = null;
                using (SqlConnection loSqlConnection = new SqlConnection(moSqlConnection))
                {
                    loSqlCommand = new SqlCommand(fsQry, loSqlConnection);
                    if (foParam != null)
                    {
                        foreach (KeyValuePair<string, object> loParam in foParam)
                        {
                            loSqlCommand.Parameters.AddWithValue(loParam.Key, loParam.Value);
                        }
                    }
                    using (SqlDataAdapter loSqlDataAdapter = new SqlDataAdapter())
                    {
                        loSqlConnection.Open();
                        loSqlCommand.CommandType = CommandType.Text;
                        loDataTable = new DataTable();
                        loSqlDataAdapter.SelectCommand = loSqlCommand;
                        loSqlDataAdapter.Fill(loDataTable);
                        loSqlConnection.Close();
                    }
                }
                return loDataTable;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}

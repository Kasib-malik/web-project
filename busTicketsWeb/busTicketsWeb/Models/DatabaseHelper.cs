using System;
using System.Configuration;
using System.Data.SqlClient;
using Dapper;
namespace busTicketsWeb.Models
{
    public class DatabaseHelper
    {
        public static string GetConnectionString()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"]?.ConnectionString;

            if (string.IsNullOrEmpty(connectionString))
            {
                throw new Exception("⚠️ Connection string is missing or incorrect. Check Web.config!");
            }

            return connectionString;
        }

        public static SqlConnection GetConnection()
        {
            return new SqlConnection(GetConnectionString());
        }
    }
}

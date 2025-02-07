using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using Dapper;

namespace busTicketsWeb.Models
{
    public class DatabaseHelper
    {
        private static string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        public static IDbConnection GetConnection()
        {
            return new SqlConnection(connectionString);
        }
    }
}

using System.Configuration;
using System.Data.SqlClient;

namespace SimpleCMS.Database
{
    public class Connection
    {
        public static SqlConnection ConnectionString
        {
            get
            {
                var conString = ConfigurationManager.ConnectionStrings["MBCCSchoolConnectionString"].ToString();
                return new SqlConnection(conString);
            }
        }
    }
}
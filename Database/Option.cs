using System;
using System.Data;
using System.Data.SqlClient;

namespace SimpleCMS.Database
{
    public class Option
    {
           public static bool Delete(int id)
        {
            var con = Connection.ConnectionString;

            con.Open();
            var cmd = new SqlCommand("dbo.delete_option", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", id);
            try
            {
                var result = cmd.ExecuteNonQuery();
                Console.WriteLine("Result {0}", result.ToString());
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return false;
            }

            con.Close();

            return true;
        }
           public static bool DeleteByName(string name)
        {
            var con = Connection.ConnectionString;

            con.Open();
            var cmd = new SqlCommand("dbo.delete_optionByName", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", name);
            try
            {
                var result = cmd.ExecuteNonQuery();
                Console.WriteLine("Result {0}", result.ToString());
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return false;
            }

            con.Close();

            return true;
        }

        public static bool Create(string name, string value)
        {
            var con = Connection.ConnectionString;

            con.Open();
            var cmd = new SqlCommand("dbo.create_option", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", name);
            cmd.Parameters.AddWithValue("@Value", value);
            try
            {
                var result = cmd.ExecuteNonQuery();
                Console.WriteLine("Result {0}", result.ToString());
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return false;
            }

            con.Close();

            return true;
        }

        public static bool Update(string name, string value)
        {
            var con = Connection.ConnectionString;

            con.Open();
            var cmd = new SqlCommand("dbo.update_option", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", name);
            cmd.Parameters.AddWithValue("@Value", value);
            try
            {
                var result = cmd.ExecuteNonQuery();
                Console.WriteLine("Result {0}", result.ToString());
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return false;
            }

            con.Close();

            return true;
        }

        public static Models.Option Read(string name)
        {
            var con = Connection.ConnectionString;
            Models.Option option = null;

            con.Open();
            var cmd = new SqlCommand("dbo.read_option", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", name);
            try
            {
                var result = cmd.ExecuteReader();

                if (result.HasRows)
                {
                    while (result.Read())
                    {
                        option = new Models.Option(result.GetInt32(0),result.GetString(1), result.GetString(2));
                        break;
                    }
                }
                else
                {
                    throw new Exception("User not found");
                }
            }
            catch (Exception err)
            {
                throw new Exception(message: $"Unable to fetch user {err.Message}");
            }

            con.Close();

            return option;
        }

    }
}
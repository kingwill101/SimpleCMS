using System;
using System.Data;
using System.Data.SqlClient;

namespace SimpleCMS.Database
{
    public class User
    {
        public static bool Delete(int id)
        {
            var con = Connection.ConnectionString;

            con.Open();
            SqlCommand cmd = new SqlCommand("dbo.delete_user", con);
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

        public static bool Create(string firstNameText, string lastNameText, string email,
            string pw)
        {
            var con = Connection.ConnectionString;

            con.Open();
            var cmd = new SqlCommand("dbo.create_user", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@firstName", firstNameText);
            cmd.Parameters.AddWithValue("@lastName", lastNameText);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@pw", pw);
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

        public static bool Update(int id, string firstNameText, string lastNameText, string email,
            string pw)
        {
            var con = Connection.ConnectionString;

            con.Open();
            var cmd = new SqlCommand("dbo.update_user", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", firstNameText);
            cmd.Parameters.AddWithValue("@firstName", firstNameText);
            cmd.Parameters.AddWithValue("@lastName", lastNameText);
            cmd.Parameters.AddWithValue("@email", email);
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

        public static Models.User Read(int ID)
        {
            var con = Connection.ConnectionString;
            Models.User user = null;

            con.Open();
            SqlCommand cmd = new SqlCommand("dbo.read_user_byId", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", ID);
            try
            {
                var result = cmd.ExecuteReader();

                if (result.HasRows)
                {
                    while (result.Read())
                    {
                        user = new Models.User(result.GetInt32(0), result.GetString(1),
                            result.GetString(2), result.GetString(3));
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

            return user;
        }

        public static Models.User ReadEmail(string email)
        {
            var con = Connection.ConnectionString;
            Models.User user = null;

            con.Open();
            SqlCommand cmd = new SqlCommand("dbo.read_user_byId", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@email", email);
            try
            {
                var result = cmd.ExecuteReader();

                if (result.HasRows)
                {
                    while (result.Read())
                    {
                        user = new Models.User(result.GetInt32(0), result.GetString(1),
                            result.GetString(2), result.GetString(3));
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

            return user;
        }
    }
}
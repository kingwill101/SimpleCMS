using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using SimpleCMS.Exceptions;

namespace SimpleCMS.Database
{
    public class User
    {
        public static bool Delete(int id)
        {
            var con = Connection.ConnectionString;

            con.Open();
            var cmd = new SqlCommand("dbo.delete_user", con);
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

        public static int Create(string firstNameText, string lastNameText, string email,
            string pw, string username, int role = Site.Roles.Contributor)
        {
            var con = Connection.ConnectionString;

            con.Open();
            var cmd = new SqlCommand("dbo.create_user", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@firstName", firstNameText);
            cmd.Parameters.AddWithValue("@lastName", lastNameText);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@pw", pw);
            cmd.Parameters.AddWithValue("@UserName", username);
            cmd.Parameters.AddWithValue("@Role", role);

            try
            {
                
                var userId = (int) cmd.ExecuteScalar();
                return userId;
            }
            catch (Exception err)
            {
                Console.WriteLine($"Registration error: {err.Message}");
                throw new Exception("Unable to complete registration");
            }
        }

        public static bool Update(int id, string firstNameText, string lastNameText, string email,
            string username,
            string pw = null,
            int role = 2)
        {
            var con = Connection.ConnectionString;

            con.Open();
            var cmd = new SqlCommand("dbo.update_user", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", id);
            cmd.Parameters.AddWithValue("@firstName", firstNameText);
            cmd.Parameters.AddWithValue("@lastName", lastNameText);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@Role", role);
            cmd.Parameters.AddWithValue("@Username", username);

            if (!string.IsNullOrEmpty(pw))
            {
                cmd.Parameters.AddWithValue("@Password", pw);
            }

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                return false;
            }

            con.Close();

            return true;
        }

        public static Models.User Read(int id)
        {
            var con = Connection.ConnectionString;
            Models.User user = null;

            con.Open();
            var cmd = new SqlCommand("dbo.read_user_byId", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", id);
            try
            {
                var result = cmd.ExecuteReader();

                if (result.HasRows)
                {
                    while (result.Read())
                    {
                        user = ReaderToUser(result);
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
            var cmd = new SqlCommand("dbo.read_user_byId", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@email", email);
            try
            {
                var result = cmd.ExecuteReader();

                if (result.HasRows)
                {
                    while (result.Read())
                    {
                        user = ReaderToUser(result);
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

        public static Models.User ReaderToUser(SqlDataReader reader)
        {
            return new Models.User(reader.GetInt32(0), reader.GetString(1),
                reader.GetString(2), reader.GetString(3), username: reader.GetString(4), role: reader.GetInt32(5));
        }

        public static List<Models.User> List()
        {
            var con = Connection.ConnectionString;
            var users = new List<Models.User>();

            con.Open();
            var cmd = new SqlCommand("dbo.list_users", con);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                var result = cmd.ExecuteReader();

                if (result.HasRows)
                {
                    while (result.Read())
                    {
                        users.Add(ReaderToUser(result));
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

            return users;
        }

        public static Models.User Login(string name, string password)
        {
            var con = Connection.ConnectionString;
            Models.User user = null;

            con.Open();
            var cmd = new SqlCommand("dbo.read_userByUserNamePw", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Username", name);
            cmd.Parameters.AddWithValue("@Password", password);
            try
            {
                var result = cmd.ExecuteReader();

                if (result.HasRows)
                {
                    while (result.Read())
                    {
                        user = ReaderToUser(result);
                    }
                }
            }
            catch (Exception)
            {
                con.Close();
                throw new DatabaseException();
            }

            if (user == null)
            {
                throw new UserNotFoundException();
            }

            con.Close();

            return user;
        }
    }
}
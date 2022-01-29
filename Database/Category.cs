using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace SimpleCMS.Database
{
    public class Category
    {
        public static bool Delete(int id)
        {
            var con = Connection.ConnectionString;

            con.Open();
            var cmd = new SqlCommand("dbo.delete_category", con);
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

        public static bool Create(string name, string description, bool showMenu)
        {
            var con = Connection.ConnectionString;

            con.Open();
            var cmd = new SqlCommand("dbo.create_category", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", name);
            cmd.Parameters.AddWithValue("@Description", description);
            cmd.Parameters.AddWithValue("@ShowMenu", showMenu);

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

        public static bool Update(int id, string name, string description, bool showMenu = false)
        {
            var con = Connection.ConnectionString;

            con.Open();
            var cmd = new SqlCommand("dbo.update_category", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", id);
            cmd.Parameters.AddWithValue("@Name", name);
            cmd.Parameters.AddWithValue("@Description", description);
            cmd.Parameters.AddWithValue("@ShowMenu", showMenu);

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

        public static Models.Category Read(int id)
        {
            var con = Connection.ConnectionString;
            Models.Category category = null;

            con.Open();
            var cmd = new SqlCommand("dbo.read_categoryById", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", id);
            try
            {
                var result = cmd.ExecuteReader();

                if (result.HasRows)
                {
                    while (result.Read())
                    {
                        category = ReaderToCategory(result);
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

            return category;
        }
        public static List<Models.Category> PostCategories(int id)
        {
            var con = Connection.ConnectionString;
            var category = new List<Models.Category>();

            con.Open();
            var cmd = new SqlCommand("dbo.list_post_categories", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", id);
            try
            {
                var result = cmd.ExecuteReader();

                if (result.HasRows)
                {
                    while (result.Read())
                    {
                        category.Add( ReaderToCategory(result));
                    }
                }
            }
            catch (Exception)
            {
                //ignore
            }
            con.Close();
            return category;
        }

        private static Models.Category ReaderToCategory(SqlDataReader reader)
        {
            return new Models.Category(reader.GetInt32(0), reader.GetString(1),
                reader.GetString(2), reader.GetBoolean(3));
        }

        public static List<Models.Category> List()
        {
            var con = Connection.ConnectionString;
            var users = new List<Models.Category>();
            con.Open();
            var cmd = new SqlCommand("dbo.list_categories", con);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                var result = cmd.ExecuteReader();

                if (result.HasRows)
                {
                    while (result.Read())
                    {
                        users.Add(ReaderToCategory(result));
                    }
                }
            }
            catch (Exception)
            {
                //ignore
            }

            return users;
        }
    }
}
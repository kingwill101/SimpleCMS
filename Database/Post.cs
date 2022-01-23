using System;
using System.Data;
using System.Data.SqlClient;

namespace SimpleCMS.Database
{
    public class Post
    {
        public static bool Delete(int id)
        {
            var con = Connection.ConnectionString;

            con.Open();
            SqlCommand cmd = new SqlCommand("dbo.delete_post", con);
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

        public static bool Create(int userId, string title, string content)
        {
            var con = Connection.ConnectionString;

            con.Open();
            var cmd = new SqlCommand("dbo.create_post", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userID", userId);
            cmd.Parameters.AddWithValue("@title", title);
            cmd.Parameters.AddWithValue("@content", content);
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

        public static bool Update(int id, string title, string content)
        {
            var con = Connection.ConnectionString;

            con.Open();
            var cmd = new SqlCommand("dbo.update_post", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", id);
            cmd.Parameters.AddWithValue("@title", title);
            cmd.Parameters.AddWithValue("@content", content);
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

        public static Models.Post Read(int ID)
        {
            var con = Connection.ConnectionString;
            Models.Post post = null;

            con.Open();
            SqlCommand cmd = new SqlCommand("dbo.read_postById", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", ID);
            try
            {
                var result = cmd.ExecuteReader();

                if (result.HasRows)
                {
                    while (result.Read())
                    {
                        post = new Models.Post(result.GetInt32(0), result.GetInt32(1),
                            result.GetString(2), result.GetString(3));
                        break;
                    }
                }
                else
                {
                    throw new Exception("post not found");
                }
            }
            catch (Exception err)
            {
                throw new Exception(message: $"Unable to fetch post {err.Message}");
            }

            con.Close();

            return post;
        }
    }
}
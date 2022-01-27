using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace SimpleCMS.Database
{
    public static class Post
    {
        public static bool Delete(int id)
        {
            var con = Connection.ConnectionString;

            con.Open();
            var cmd = new SqlCommand("dbo.delete_post", con);
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

        public static int Create(int userId, string title, string content)
        {
            var con = Connection.ConnectionString;
            var newId = -1;
            con.Open();
            var cmd = new SqlCommand("dbo.create_post", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userID", userId);
            cmd.Parameters.AddWithValue("@title", title);
            cmd.Parameters.AddWithValue("@content", content);
            try
            {
                newId = (int) cmd.ExecuteScalar();
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }

            con.Close();
            return newId;
        }

        public static int CountForUser(int userId)
        {
            var con = Connection.ConnectionString;
            var count = -1;
            con.Open();
            var cmd = new SqlCommand("dbo.count_user_posts", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", userId);
            try
            {
                count = (int) cmd.ExecuteScalar();
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }

            con.Close();
            return count;
        }

        public static int CountForCategory(int userId)
        {
            var con = Connection.ConnectionString;
            var count = -1;
            con.Open();
            var cmd = new SqlCommand("dbo.count_category_posts", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", userId);
            try
            {
                count = (int) cmd.ExecuteScalar();
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }

            con.Close();
            return count;
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

        private static Models.Post PostFromReader(IDataRecord reader)
        {
            return new Models.Post(reader.GetInt32(0),
                reader.GetInt32(1),
                reader.GetString(2),
                reader.GetString(3),
                reader.GetInt32(4),
                reader.GetString(5),
                reader.GetDateTime(6),
                reader.GetDateTime(7)
            );
        }

        public static Models.Post Read(int id)
        {
            var con = Connection.ConnectionString;
            Models.Post post = null;

            con.Open();
            var cmd = new SqlCommand("dbo.read_postById", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", id);
            try
            {
                var result = cmd.ExecuteReader();

                if (result.HasRows)
                {
                    while (result.Read())
                    {
                        post = PostFromReader(result);
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

        public static List<Models.Post> ListXPost(int count)
        {
            var con = Connection.ConnectionString;
            var posts = new List<Models.Post>();

            con.Open();
            var cmd = new SqlCommand("dbo.list_x_posts", con);
            cmd.Parameters.AddWithValue("@Limit", count);

            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                var result = cmd.ExecuteReader();

                if (result.HasRows)
                {
                    while (result.Read())
                    {
                        posts.Add(PostFromReader(result));
                    }
                }
                else
                {
                    throw new Exception("Unable to fetch posts");
                }
            }
            catch (Exception err)
            {
                throw new Exception(message: $"Unable to fetch post {err.Message}");
            }

            con.Close();

            return posts;
        }


        public static List<Models.Post> List(int category = -1)
        {
            var con = Connection.ConnectionString;
            var posts = new List<Models.Post>();

            con.Open();

            var commandName = category != -1 ? "dbo.list_category_posts" : "dbo.list_posts";

            var cmd = new SqlCommand(commandName, con);

            cmd.CommandType = CommandType.StoredProcedure;

            if (category != -1)
            {
                cmd.Parameters.AddWithValue("@ID", category);
            }


            try
            {
                var result = cmd.ExecuteReader();

                if (result.HasRows)
                {
                    while (result.Read())
                    {
                        posts.Add(PostFromReader(result));
                    }
                }
                else
                {
                    throw new Exception("Unable to fetch posts");
                }
            }
            catch (Exception err)
            {
                throw new Exception(message: $"Unable to fetch post {err.Message}");
            }

            con.Close();

            return posts;
        }


        public static bool AddCategories(int id, List<int> categoryIds)
        {
            var con = Connection.ConnectionString;
            con.Open();
            var trans = con.BeginTransaction();

            var addCmds = new List<SqlCommand>();

            var clearCmd = new SqlCommand("dbo.deletePostCategories", con);
            clearCmd.CommandType = CommandType.StoredProcedure;
            clearCmd.Parameters.AddWithValue("@ID", id);
            clearCmd.Transaction = trans;

            foreach (var catId in categoryIds)
            {
                var addCmd = new SqlCommand("dbo.create_post_category", con);
                addCmd.CommandType = CommandType.StoredProcedure;
                addCmd.Parameters.AddWithValue("@PostId", id);
                addCmd.Parameters.AddWithValue("@CatgeoryID", catId);
                addCmd.Transaction = trans;

                addCmds.Add(addCmd);
            }

            try
            {
                clearCmd.ExecuteNonQuery();
                foreach (var addCmd in addCmds)
                {
                    addCmd.ExecuteNonQuery();
                }

                trans.Commit();
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
                trans.Rollback();
                con.Close();
                return false;
            }

            con.Close();
            return true;
        }
    }
}
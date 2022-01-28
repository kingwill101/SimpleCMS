using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace SimpleCMS.Database
{
    public class Comment
    {
        public static bool Delete(int id)
        {
            var con = Connection.ConnectionString;

            con.Open();
            var cmd = new SqlCommand("dbo.comment_delete", con);
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

        public static bool Create(int postId, int userId, string content)
        {
            var con = Connection.ConnectionString;

            con.Open();
            var cmd = new SqlCommand("dbo.comment_add", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Content", content);
            cmd.Parameters.AddWithValue("@UserId", userId);
            cmd.Parameters.AddWithValue("@PostId", postId);

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

        public static Models.Comment Read(int id)
        {
            var con = Connection.ConnectionString;
            Models.Comment comment = null;

            con.Open();
            var cmd = new SqlCommand("dbo.comment_read", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", id);
            try
            {
                var result = cmd.ExecuteReader();

                if (result.HasRows)
                {
                    while (result.Read())
                    {
                        comment = ReaderToComment(result);
                        break;
                    }
                }
                else
                {
                    throw new Exception("Comment not found");
                }
            }
            catch (Exception err)
            {
                throw new Exception(message: $"Unable to fetch comment {err.Message}");
            }

            con.Close();

            return comment;
        }
        
        public static List<Models.Comment> PostComments(int id)
        {
            var con = Connection.ConnectionString;
            var category = new List<Models.Comment>();

            con.Open();
            var cmd = new SqlCommand("dbo.list_post_comments", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PostId", id);
            try
            {
                var result = cmd.ExecuteReader();

                if (result.HasRows)
                {
                    while (result.Read())
                    {
                        category.Add( ReaderToComment(result));
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

        private static Models.Comment ReaderToComment(IDataRecord reader)
        {
            return new Models.Comment(reader.GetInt32(0), reader.GetInt32(1),
                reader.GetInt32(2), reader.GetString(3), reader.GetDateTime(4));
        }

        public static List<Models.Comment> List()
        {
            var con = Connection.ConnectionString;
            var comments = new List<Models.Comment>();
            con.Open();
            var cmd = new SqlCommand("dbo.list_commnets", con);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                var result = cmd.ExecuteReader();

                if (result.HasRows)
                {
                    while (result.Read())
                    {
                        comments.Add(ReaderToComment(result));
                    }
                }
            }
            catch (Exception)
            {
                //ignore
            }

            return comments;
        }
    }
}
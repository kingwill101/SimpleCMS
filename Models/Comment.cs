using System;

namespace SimpleCMS.Models
{
    public class Comment
    {
        public int Id { get; }
        public int PostId { get; }
        public int UserId { get; }
        public string Content { get; }
        public DateTime Created { get; }

        public Comment(int id, int postId, int userId, string content, DateTime created)
        {
            Id = id;
            PostId = postId;
            UserId = userId;
            Content = content;
            Created = created;
        }
    }
}
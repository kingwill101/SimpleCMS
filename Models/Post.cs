using System;

namespace SimpleCMS.Models
{
    public class Post
    {
        public int Id { get; }
        public int UserId { get; }
        public string Title { get; }
        public string Content { get; }
        public int Type { get; }
        public string Status { get; }
        public DateTime Created { get; }
        public DateTime Updated { get; }
        public User Author { get; set; }

        public Post(int id, int userId, string title, string content,int type, string status,DateTime created, DateTime updated)
        {
            Id = id;
            UserId = userId;
            Title = title;
            Content = content;
            Type = type;
            Status = status;
            Created = created;
            Updated = updated;
        }
        
        public Post(){}
    }
}
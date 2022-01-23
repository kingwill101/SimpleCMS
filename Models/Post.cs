namespace SimpleCMS.Models
{
    public class Post
    {
        public int Id { get; }
        public int UserId { get; }
        public string Title { get; }
        public string Content { get; }

        public Post(int id, int userId, string title, string content)
        {
            Id = id;
            UserId = userId;
            Title = title;
            Content = content;
        }
    }
}
namespace SimpleCMS.Models
{
    public class PostCategory
    {
        public int Id { get; }
        public int PostId { get; }
        public int CategoryId { get; }

        PostCategory(int id, int postId, int categoryId)
        {
            Id = id;
            PostId = postId;
            CategoryId = categoryId;
        }
    }
}
namespace SimpleCMS.Models
{
    public class Category
    {
        public int Id { get; }
        public string Name { get; }
        public string Description { get; }

        public Category(int id, string name, string description)
        {
            Id = id;
            Name = name;
            Description = description;
        }
    }
}
namespace SimpleCMS.Models
{
    public class Category
    {
        public int Id { get; }
        public string Name { get; }
        public string Description { get; }
        public bool ShowInMenu { get; }

        public Category(int id, string name, string description, bool showInMenu)
        {
            Id = id;
            Name = name;
            Description = description;
            ShowInMenu = showInMenu;
        }
    }
}
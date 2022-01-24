namespace SimpleCMS.Models
{
    public class Option
    {
        public string Name { get; }
        public string Value { get; }
        public int Id { get; }

        public Option(int id, string name, string value)
        {
            Id = id;
            Name = name;
            Value = value;
        }
    }
}
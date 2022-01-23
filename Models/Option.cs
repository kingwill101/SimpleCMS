namespace SimpleCMS.Models
{
    public class Option
    {
        public string Name { get; }
        public string Value { get; }

        public Option(string name, string value)
        {
            Name = name;
            Value = value;
        }
    }
}
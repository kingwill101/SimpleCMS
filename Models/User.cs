namespace SimpleCMS.Models
{
    public class User
    {
        public int Id { get; }
        public string FirstName { get; }
        public string LastName { get; }
        public string Email { get; }
        public int Role { get; }
        public string Username { get; }

        public override string ToString()
        {
            return $"{FirstName} {LastName}";
        }

        public User()
        {
        }

        public User(int id, string firstName, string lastName, string email, int role, string username)
        {
            Id = id;
            FirstName = firstName;
            LastName = lastName;
            Email = email;
            Role = role;
            Username = username;
        }
    }
}
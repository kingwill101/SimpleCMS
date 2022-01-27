using System;
using System.Web.Services.Description;

namespace SimpleCMS.Exceptions
{
    public class UserNotFoundException : Exception
    {
        public UserNotFoundException(string message = "User not found") : base(message)
        {
        }
    }
}
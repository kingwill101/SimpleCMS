using System;
using System.Web.Services.Description;

namespace SimpleCMS.Exceptions
{
    public class DatabaseException : Exception
    {
        public DatabaseException(string message = "Unable to process request, please contact the admin") : base(message)
        {
        }
    }
}
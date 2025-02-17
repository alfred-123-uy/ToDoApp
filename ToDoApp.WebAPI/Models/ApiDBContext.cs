using Microsoft.EntityFrameworkCore;
using System.Data;

namespace ToDoApp.WebAPI.Models
{
    public class ApiDBContext : DbContext
    {
        public ApiDBContext(DbContextOptions option) : base(option)
        {

        }

        public DbSet<Users> users { get; set; }
    }
}

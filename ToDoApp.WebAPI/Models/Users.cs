using System.ComponentModel.DataAnnotations;

namespace ToDoApp.WebAPI.Models
{
    public class Users
    {
        [Key]
        public int userId { get; set; }
        [Required]
        public string userName { get; set; } = string.Empty;
        [Required]
        public string address { get; set; } = string.Empty;
    }
}

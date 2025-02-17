using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ToDoApp.Domain
{
    public class ToDo
    {
        [Key]
        public int ToDoId { get; set; }
        public String Description { get; set; } = "";
    }
}

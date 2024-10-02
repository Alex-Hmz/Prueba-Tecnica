using System.ComponentModel.DataAnnotations;

namespace Prueba2.Models
{
    public class Usuario
    {
        [Key]
        public int userId { get; set; }
        public string? Login { get; set; }
        public string? Nombre { get; set; }
        public string? Paterno { get; set; }
        public string? Materno { get; set; }
    }
}

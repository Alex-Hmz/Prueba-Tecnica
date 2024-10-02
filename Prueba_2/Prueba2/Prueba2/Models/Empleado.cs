using System.ComponentModel.DataAnnotations;

namespace Prueba2.Models
{
    public class Empleado
    {
        [Key]
        public int userId { get; set; }
        public double Sueldo { get; set; }
        public DateTime FechaIngreso { get; set; }
    }
}

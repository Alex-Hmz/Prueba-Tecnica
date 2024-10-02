using Microsoft.AspNetCore.Mvc;
using Prueba2.Data;
using Prueba2.Models;

namespace Prueba2.Controllers
{
    public class EmpleadoController : Controller
    {
        private readonly AppDbContext _context;

        public EmpleadoController(AppDbContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            // Lista de empleados de ejemplo
            /*
            var empleados = new List<Empleado>
            {
                new Empleado { Id = 1, Nombre = "Juan", Paterno = "Pérez", Materno = "García", Sueldo = 15000, FechaIngreso = new System.DateTime(2020, 1, 15) },
                new Empleado { Id = 2, Nombre = "Ana", Paterno = "López", Materno = "Martínez", Sueldo = 20000, FechaIngreso = new System.DateTime(2018, 3, 20) }
            };
            */
            List<Empleado> empleados = _context.Empleado.ToList();

            //var empleados = new List<Empleado>();
            return View(empleados);
        }
    }
}

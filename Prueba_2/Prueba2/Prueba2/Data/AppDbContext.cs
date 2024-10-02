using Prueba2.Models;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace Prueba2.Data
{
    
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {
        }

        // Define aquí tus DbSet, por ejemplo:
        public DbSet<Empleado> Empleado { get; set; }
        public DbSet<Usuario> Usuario { get; set; }
    }
    
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace APP_Api.Models
{
    public class Usuario
    {
        public string IdU { get; set; }
        public string Nombres { get; set; }
        public string Telefono { get; set; }
        public string Correo { get; set; }
        public string Ciudad { get; set; }
        public DateTime FechaIngreso{  get; set; }
    }
}
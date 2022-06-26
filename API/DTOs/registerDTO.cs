using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace API.DTOs
{
    public class registerDTO
    {
        [Required]
        public string email { get; set; }

        [Required]
        public string companyName { get; set; }

        [Required]  
        public string address { get; set; }

        [Required]
        public string password { get; set; }
    }
}
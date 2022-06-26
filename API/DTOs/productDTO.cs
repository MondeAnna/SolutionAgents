using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace API.DTOs
{
    public class productDTO
    {
        [Required]
        public string productName { get; set; }

        [Required]
        public string productType { get; set; }

        [Required]
        public decimal price { get; set; }

        [Required]
        public int quantity { get; set; }

        [Required]
        public int productID { get; set; }
    }
}
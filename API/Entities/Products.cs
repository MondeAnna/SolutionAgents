using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Entities
{
    public class Products
    {
        public int Id { get; set; }

        public string productName { get; set; }

        public string productType { get; set; }

        public decimal price { get; set; }

    }
}
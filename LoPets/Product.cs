using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;

namespace LoPets
{
    public class Product
    {
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public string ProductDesc { get; set;  }
        public double ProductPrice { get; set;  }
        public string ProductImg { get; set; }

        public Product(string name, double price) 
        {
            ProductName = name;
            ProductPrice = price;
        }
    }
}
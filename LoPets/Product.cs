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
        public float ProductPrice { get; set;  }
        public Image ProductImage { get; set; }
    }
}
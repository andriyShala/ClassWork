using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebShop.Class
{
    public class Accaunt
    {
        public Accaunt()
        {
            wares=new HashSet<Class.Ware>();
        }
       public int ID { get; set; }
        public string email { get; set; }
        public string company { get; set; }
        public string password { get; set; }
        public ICollection<Ware> wares { get; set;}
    }
}
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace WebShop.Class
{
    [Table("Categories")]
    public class Category
    {
        public Category()
        {
            Ware = new HashSet<Class.Ware>();
        }
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public string Name { get; set; }
        public string Href { get; set; }
        public ICollection<Ware> Ware { get; set; }
    }
}
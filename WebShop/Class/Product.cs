using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Drawing;
using System.Linq;
using System.Web;

namespace WebShop.Class
{
    [Table("Wares")]
    public class Ware
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int id { get; set; }
        public int? IdCategory { get; set; }
        public string title { get; set; }
        [Column(TypeName = "image")]
        public byte[] img { get; set; }
        public string imageName {get;set;}
        public int price { get; set; }
        public string       description { get; set; }
        public Category Category { get; set; }
        public Accaunt accaunt { get; set; }
    }
}
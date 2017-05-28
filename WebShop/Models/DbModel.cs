namespace WebShop
{
    using WebShop.Class;
    using System;
    using System.Data.Entity;
    using System.Linq;

    public class DbModel : DbContext
    {
        public DbModel()
            : base("name=DbModel")
        {
        }
       public virtual DbSet<Ware> wares { get; set; }
        public virtual DbSet<Accaunt> accounts { get; set; }
        public virtual DbSet<Category> categories { get; set; }
    }
}
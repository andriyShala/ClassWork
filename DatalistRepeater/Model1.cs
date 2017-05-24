namespace DatalistRepeater
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model1")
        {
        }

        public virtual DbSet<Info> Info { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Info>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Info>()
                .Property(e => e.Address)
                .IsUnicode(false);
        }
    }
}

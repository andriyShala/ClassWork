namespace DatalistRepeater
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Info")]
    public partial class Info
    {
        public int ID { get; set; }

        public string Name { get; set; }

        [StringLength(50)]
        public string Address { get; set; }

        public int? TEL { get; set; }
    }
}

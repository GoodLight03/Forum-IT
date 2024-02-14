using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ForumIT.Models
{
    public partial class TblDisable
    {
        [Key]
      
        public int? FkT2 { get; set; }
        public bool? Disable { get; set; }
        public DateTime? LongTime { get; set; }

        public virtual TblBaiViet? FkT2Navigation { get; set; }
    }
}

//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Captone.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class CoachType
    {
        public CoachType()
        {
            this.Coach = new HashSet<Coach>();
            this.Volume = new HashSet<Volume>();
        }
    
        public int CoachTypeID { get; set; }
        public int Seats { get; set; }
    
        public virtual ICollection<Coach> Coach { get; set; }
        public virtual ICollection<Volume> Volume { get; set; }
    }
}

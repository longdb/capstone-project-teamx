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
    
    public partial class Stage
    {
        public int StageID { get; set; }
        public Nullable<int> FromLocation { get; set; }
        public Nullable<int> ToLocation { get; set; }
        public Nullable<double> Duration { get; set; }
        public Nullable<double> Distance { get; set; }
        public Nullable<double> Container { get; set; }
        public Nullable<double> Price { get; set; }
    }
}

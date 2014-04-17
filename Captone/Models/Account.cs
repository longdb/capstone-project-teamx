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
    
    public partial class Account
    {
        public Account()
        {
            this.Comments = new HashSet<Comment>();
            this.Ratings = new HashSet<Rating>();
            this.Requests = new HashSet<Request>();
        }
    
        public string Username { get; set; }
        public string Password { get; set; }
        public string BackupPassword { get; set; }
        public string Role { get; set; }
        public string Email { get; set; }
        public bool BannedStatus { get; set; }
        public int StationID { get; set; }
    
        public virtual ICollection<Comment> Comments { get; set; }
        public virtual ICollection<Rating> Ratings { get; set; }
        public virtual ICollection<Request> Requests { get; set; }
        public virtual Station Station { get; set; }
        public virtual UserInfo UserInfo { get; set; }
    }
}

//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FlodaStore
{
    using System;
    using System.Collections.Generic;
    
    public partial class Client
    {
        public int ClientID { get; set; }
        public string Code { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public string FullName { get; set; }
        public string Avatar { get; set; }
        public string Thump { get; set; }
        public string Mobi { get; set; }
        public Nullable<bool> Gender { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<System.DateTime> CreateTime { get; set; }
        public string ApproveBy { get; set; }
        public Nullable<int> ClientCategoryID { get; set; }
    
        public virtual ClientCategory ClientCategory { get; set; }
    }
}
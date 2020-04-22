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
    
    public partial class Orderer
    {
        public Orderer()
        {
            this.OrderDetails = new HashSet<OrderDetail>();
        }
    
        public int OrderID { get; set; }
        public string Code { get; set; }
        public Nullable<double> Total { get; set; }
        public string Email { get; set; }
        public string FullName { get; set; }
        public Nullable<int> PaymentMethod { get; set; }
        public string Comment { get; set; }
        public Nullable<bool> OrderStatus { get; set; }
        public Nullable<System.DateTime> CreateTime { get; set; }
        public Nullable<bool> DeliverStatus { get; set; }
        public Nullable<bool> ChargeStatus { get; set; }
    
        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
    }
}
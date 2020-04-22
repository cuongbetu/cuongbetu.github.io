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
    
    public partial class ArticleMainCategory
    {
        public ArticleMainCategory()
        {
            this.ArticleCategories = new HashSet<ArticleCategory>();
        }
    
        public int ArticleMainCategoryID { get; set; }
        public string Code { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string Avatar { get; set; }
        public string Thumb { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<int> ViewTime { get; set; }
        public Nullable<int> Position { get; set; }
        public Nullable<System.DateTime> CreateTime { get; set; }
        public string CreateBy { get; set; }
    
        public virtual Account Account { get; set; }
        public virtual ICollection<ArticleCategory> ArticleCategories { get; set; }
    }
}

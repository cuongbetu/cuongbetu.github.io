using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlodaStore
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Load_Data();
            }
        }

        public void Load_Data()
        {
            void Load_Product_List()
            {
                DBEntities db = new DBEntities();
                var data = (from c in db.Products
                            orderby c.Price
                            where c.Status == true
                            select new
                            {
                                c.ProductID,
                                c.Avatar,
                                c.Title,
                                c.OldPrice,
                                c.Price
                            });
                Repeater_ProductList.DataSource = data.Take(8).ToList();
                Repeater_ProductList.DataBind();
            }
            Load_Product_List();

            void Load_Best_Seller(){
                DBEntities db2 = new DBEntities();
                var query = (from b in db2.Products
                             orderby b.Quantity
                             where b.Status == true
                             select new
                             {
                                 b.ProductID,
                                 b.Avatar,
                                 b.Title,
                                 b.OldPrice,
                                 b.Price
                             });
                Repeater_Best_Seller.DataSource = query.Take(8).ToList();
                Repeater_Best_Seller.DataBind();
            }
            Load_Best_Seller();
        }

 
    }
}
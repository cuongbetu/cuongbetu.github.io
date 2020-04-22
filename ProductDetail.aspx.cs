using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace FlodaStore
{
    public partial class ProductDetail : System.Web.UI.Page
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
            int ID = int.Parse(Request.QueryString["id"]);
            DBEntities db = new DBEntities();
            var data = (from c in db.Products
                        where c.Status == true && c.ProductID == ID
                        select new
                        {
                            c.ProductID,
                            c.Avatar,
                            c.Title,
                            c.Price
                        });
            Repeater_Detail.DataSource = data.Take(1).ToList();
            Repeater_Detail.DataBind();
        }
    }
}
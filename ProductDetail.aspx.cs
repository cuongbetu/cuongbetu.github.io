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
                string url = Request.QueryString.ToString();
                if (url.Contains("id"))
                {
                    Load_Data();
                    
                }
                else
                {
                    Response.Redirect("/");
                }
                
            }
        }

        public void Load_Data()
        {
            void Load_Detail(){
                int ID = int.Parse(Request.QueryString["id"]);
                DBEntities db = new DBEntities();
                var data = db.Products.Where(x => x.ProductID == ID).Select(x => new
                {
                    x.Avatar,
                    x.Price,
                    x.Title
                });
                Repeater_Detail.DataSource = data.ToList();
                Repeater_Detail.DataBind();
            }
            Load_Detail();

            void Load_ProductList()
            {
                DBEntities db = new DBEntities();
                var data = db.Products.Where(x => x.Status == true).Select(x => new
                {
                    x.ProductID,
                    x.Avatar,
                    x.Price,
                    x.OldPrice,
                    x.Title
                });
                Repeater_ProductList.DataSource = data.Take(8).ToList();
                Repeater_ProductList.DataBind();
            }
            Load_ProductList();

            void Load_BestSeller()
            {
                DBEntities db = new DBEntities();
                var data = db.Products.Where(x => x.Status == true).OrderBy(x => x.Price).Select(x => new
                {
                    x.ProductID,
                    x.Avatar,
                    x.Title,
                    x.Price
                });
                Repeater_BestSeller.DataSource = data.Take(4).ToList();
                Repeater_BestSeller.DataBind();
            }
            Load_BestSeller();
        }
    }
}
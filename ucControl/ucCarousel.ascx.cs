using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlodaStore.ucControl
{
    public partial class ucCarousel : System.Web.UI.UserControl
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
            DBEntities db = new DBEntities();
            var data = (from c in db.Products
                        where c.Keyword == "carousel"
                        select new
                        {
                            c.ProductID,
                            c.Avatar
                        });

            Repeater_Carousel.DataSource = data.Take(5).ToList();
            Repeater_Carousel.DataBind();
        }
    }
}
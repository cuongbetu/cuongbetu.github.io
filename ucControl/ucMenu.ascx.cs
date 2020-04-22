using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlodaStore.ucControl
{
    public partial class ucMenu : System.Web.UI.UserControl
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
            var data = (from m in db.ProductMainCategories
                        where m.Status == true
                        select new
                        {
                            m.ProductMainCategoryID,
                            m.Title,
                            subMenu = (from c in db.ProductCategories
                                       where c.Status == true
                                       select new
                                       {
                                           c.ProductCategoryID,
                                           c.Title
                                       })
                        });
            Repeater_Main.DataSource = data.ToList();
            Repeater_Main.DataBind();
        }

        protected void LinkButton_Search_Click(object sender, EventArgs e)
        {

        }
    }
}
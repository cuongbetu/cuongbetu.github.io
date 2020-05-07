using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlodaStore
{
    public partial class ProductList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Load_Data();
                LinkButton_SeeMore.CommandArgument = 18.ToString();
            }
        }

        public void Load_Data(int pageSize = 9)
        {


            void Load_ProductList()
            {
                DBEntities db = new DBEntities();
                var data = from c in db.ProductCategories
                           from m in c.Products
                           orderby m.Price
                           where m.Status == true
                           select new
                           {
                               c.ProductCategoryID,
                               m.ProductID,
                               m.Avatar,
                               m.Title,
                               m.OldPrice,
                               m.Price
                           };
                string url = Request.QueryString.ToString();
                if (url.Contains("keyword"))
                {
                    string keyword = Request.QueryString["keyword"].ToString();
                    data = data.Where(x => x.Title.Contains(keyword));
                }


                if (url.Contains("sid"))
                {
                    int sid = int.Parse(Request.QueryString["sid"]);
                    if (sid > 0)
                    {
                        data = data.Where(x => x.ProductCategoryID == sid);
                    }
                }


                Repeater_ProductList.DataSource = data.Take(pageSize).ToList();
                Repeater_ProductList.DataBind();
            }
            Load_ProductList();

            void Load_LeftData()
            {
                DBEntities db = new DBEntities();
                var query = from l in db.Products
                            where l.Status == true
                            orderby Guid.NewGuid()
                            select new
                            {
                                l.ProductID,
                                l.Avatar,
                                l.OldPrice,
                                l.Price,
                                l.Title
                            };
                Repeater_leftData.DataSource = query.Take(5).ToList();
                Repeater_leftData.DataBind();
            }
            Load_LeftData();

            void Load_Category()
            {
                DBEntities db = new DBEntities();
                var data = db.ProductCategories.Where(x => x.Status == true).Select(x => new
                {
                    x.ProductCategoryID,
                    x.Title
                });
                Repeater_Category.DataSource = data.ToList();
                Repeater_Category.DataBind();

            }

            Load_Category();
        }

        protected void LinkButton_SeeMore_Click(object sender, EventArgs e)
        {
            LinkButton LinkButton_SeeMore = sender as LinkButton;
            int pageSize = int.Parse(LinkButton_SeeMore.CommandArgument);

            Load_Data(pageSize);

            LinkButton_SeeMore.CommandArgument = (pageSize + 9).ToString();
        }

        protected void DropDownList_Option_SelectedIndexChanged(object sender, EventArgs e)
        {
            DBEntities db = new DBEntities();
            var data = from c in db.Products
                       where c.Status == true
                       select new
                       {
                           c.ProductID,
                           c.Avatar,
                           c.Title,
                           c.OldPrice,
                           c.Price,
                           c.ViewTime
                       };
            if (DropDownList_Option.SelectedItem.Value == 1.ToString())
            {
                int min = Convert.ToInt32(data.Min(x => x.Price));
                data = data.Where(x => x.Price == min);
                SeeMore.Visible = false;
            }
            else
             if (DropDownList_Option.SelectedItem.Value == 2.ToString())
            {
                int max = Convert.ToInt32(data.Max(x => x.Price));
                data = data.Where(x => x.Price == max);
                SeeMore.Visible = false;
            }
            else
                if (DropDownList_Option.SelectedItem.Value == 3.ToString())
            {
                int viewTime = Convert.ToInt32(data.Max(x => x.ViewTime));
                data = data.Where(x => x.ViewTime == viewTime);
                SeeMore.Visible = false;
            }
            else if (DropDownList_Option.SelectedItem.Value == 0.ToString())
            {
                Load_Data();
                SeeMore.Visible = true;
            }
            else
            {
                return;
            }
            

            Repeater_ProductList.DataSource = data.Take(9).ToList();
            Repeater_ProductList.DataBind();
            
        }
    }
}

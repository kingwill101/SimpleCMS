using System;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SimpleCMS.Dashboard.Posts
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        
        protected void GridView1_OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            //check if the row is the header row
            if (e.Row.RowType == DataControlRowType.Header)
            {
                //add the thead and tbody section programatically
                e.Row.TableSection = TableRowSection.TableHeader;
            }
        }

        protected void Button1_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("CreatePost.aspx");
        }
    }
}
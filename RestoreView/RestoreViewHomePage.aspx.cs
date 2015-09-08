using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestoreView
{
    public partial class RestoreViewHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                String location = locationDropDownList.SelectedValue;

                Session["Location"] = location;

                /* Create Furniture objects.
                Furniture piece1 = new Furniture("Econo Sofa",
                                            "Acme Inc.", 74.99M);
                Furniture piece2 = new Furniture("Pioneer Table",
                                            "Heritage Unit", 866.75M);
                Furniture piece3 = new Furniture("Retro Cabinet",
                                            "Sixties Ltd.", 300.11M);

                // Add objects to session state.
                Session["Furniture1"] = piece1;
                Session["Furniture2"] = piece2;
                Session["Furniture3"] = piece3; */

                
            }

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("DatabaseView.aspx");
        }
    }
}
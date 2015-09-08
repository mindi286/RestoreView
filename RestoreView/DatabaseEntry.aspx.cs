using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace RestoreView
{
    public partial class DatabaseView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dateLabel.Text = "Date Arrived: " + (DateTime.Now.ToString("MMM dd yyyy"));
        }

        protected void dbEntrySubmitButton_Click(object sender, EventArgs e)
        {
            Label1.Text = "Successful";
        }

        protected void dateSoldCalendar_SelectionChanged(object sender, EventArgs e)
        {
            dateSoldLabel.Text = "Date Sold: " + dateSoldCalendar.SelectedDate;
        }

        protected void dateSoldIsTodayLink_Click(object sender, EventArgs e)
        {
            dateSoldLabel.Text = "Date Sold: " + (DateTime.Now.ToString("MMM dd yyyy"));
        }

        protected void selectDateLinkButton_Click(object sender, EventArgs e)
        {
            dateSoldCalendar.Visible = true;
        }

    }
}
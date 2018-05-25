using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard : System.Web.UI.Page
{
    string _sEformsURL = System.Configuration.ConfigurationManager.AppSettings["eFormsURL"];
    protected void Page_Load(object sender, EventArgs e)
    {
        //testing on the server
        lblUsername.Text = System.Web.HttpContext.Current.Request.ServerVariables["LOGON_USER"];

        //Testing on local
        lblUsername.Text = "HACKNEY/spreston";

        lblUsername.Text = lblUsername.Text.Substring(8, lblUsername.Text.Length - 8);

        if (AccessDB.userAccessInt(lblUsername.Text) == true)
        {
            List<Leaver> results = new List<Leaver>();
            results = AccessDB.getLeavers();
            /*grvReactiveDashboard.DataSource = results;
            grvReactiveDashboard.DataBind();*/

            if (results != null)
            {
                lblWarning.Visible = false;
                gvLeaversDashboard.DataSource = results;
                gvLeaversDashboard.DataBind();
            }
            else
            {
                lblWarning.Visible = true;
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Access to this page is denied!. Please contact your Administrator.');location.href='ErrorPage.aspx';", true);
        }
    }


    protected void GridView_grvLeaver_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        
        //only apply rules to the normal rows
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string sRef = e.Row.Cells[0].Text;

            // e.Row.BackColor = System.Drawing.Color.Gold;
            HyperLink myLink = new HyperLink();
            myLink.NavigateUrl = _sEformsURL+ sRef;
            myLink.Text = sRef;
            e.Row.Cells[0].Controls.Add(myLink);
        }
    }
}
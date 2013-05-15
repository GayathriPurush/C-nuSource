using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class WebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //AdRotator1.DataSource = GetAds();
        //AdRotator1.DataBind();


    }

    private DataTable GetAds()
    {
        DataTable dt = new DataTable();
        string sql = "SELECT OrderId,ImageUrl,NavigateUrl,AlternateText,IsAdActive FROM AdsDataTable";
        SqlConnection con = new SqlConnection("Data Source=SEENU-PC\\SQLEXPRESS;Initial Catalog=Sample;Integrated Security=True");

        SqlDataAdapter adsa = new SqlDataAdapter(sql, con);
        adsa.Fill(dt);
        return dt;
    }

    protected void SlideShowTimer_Tick(object sender, EventArgs e)
    {
        AdRotator1.DataSource = GetAds();
        AdRotator1.DataBind();

    }
    protected void AdRotator1_AdCreated(object sender, AdCreatedEventArgs e)
    {

        e.NavigateUrl = "Handler.ashx?AdUrl=" + e.NavigateUrl;

    }


}
<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;


public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {

        string url = context.Request.QueryString["AdUrl"];
        try
        {
            Addhit(url);
        }
        catch
        {
        }
        finally
        {
            context.Response.Redirect(url);
        }
        
        
        
    }


    public int Addhit(string url)
    {
        System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection("Data Source=SEENU-PC\\SQLEXPRESS;Initial Catalog=Sample;Integrated Security=True");

        con.Open();
        System.Data.SqlClient.SqlCommand com = new System.Data.SqlClient.SqlCommand("AddSP", con);
        com.CommandType = System.Data.CommandType.StoredProcedure;
        com.Parameters.Add(new System.Data.SqlClient.SqlParameter("@url", url));
        int res = com.ExecuteNonQuery();
        con.Close();
        return res;
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
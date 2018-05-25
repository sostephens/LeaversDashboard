using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User
/// </summary>
public class User
{
    public string user { get; set; }
    public string role { get; set; }
    public User()
    {

    }

    public string getUsername()
    {
        return System.Web.HttpContext.Current.Request.ServerVariables["LOGON_USER"];
    }
}
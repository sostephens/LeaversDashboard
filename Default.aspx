<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>
<%--<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">--%>
<script runat="server">
  protected override void OnLoad(EventArgs e)
  {
      Response.Redirect("http://www.Hackney.gov.uk");
  }

</script>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 100%;
            width: 100%;
        }
    </style>

    <link href="Content/jquery-ui.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <link href="Content/mystyle.css" rel="stylesheet" />
    <script src="Content/jquery-1.12.4.js"></script>
    <script src="Content/jquery-ui.js"></script>
    <link href="Content/mystyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="headerLogo">
                <div class="wrapper">
                    <div class="site-logo" role="banner">
                        <a href="http://www.hackney.gov.uk/index" title="Link to homepage" accesskey="1">
                        <img src="http://www.hackney.gov.uk/resource/themes/hackney/images/Hackney_Logo_White.png" alt="Hackney" />
                        </a>
                        <span style="font-size: large; font-weight: 500; color: white">Hackney Town Hall - Reactive Repairs Error Page</span>
                        <div role="navigation" class="burger">Menu<img class="burgermenu" alt="menu image" src="http://www.hackney.gov.uk/resource/themes/hackney/images/burger.png"></div>
                    </div>
                    <div class="top-utilities">
                        <ul class="utilities inline-list" role="navigation">
                        </ul>
                    </div>
                </div>

            </div>
            <br />
            <br />
        <div>
            
        </div>
    </div>
    </form>
</body>
</html>
<%--</asp:content>--%>

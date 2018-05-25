<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

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
                        <span style="font-size: large; font-weight: 500; color: white">Hackney eLeavers' Dashboard</span>
                        <div role="navigation" class="burger">Menu<img class="burgermenu" alt="menu image" src="http://www.hackney.gov.uk/resource/themes/hackney/images/burger.png"></div>
                    </div>
                    <div class="top-utilities">
                        <ul class="utilities inline-list" role="navigation">
                        </ul>
                    </div>
                    <asp:Label ID="lblUsername" runat="server" Text="Unknown" CssClass="lblUsername"></asp:Label>
                </div>
            </div>
            <br />
            <br />
        <div class="GridBody">
        <asp:GridView 
            ID="gvLeaversDashboard" 
            DataKeyNames="EMPLOYEE_EMPLOYEE_NUMBER"
            OnRowDataBound="GridView_grvLeaver_RowDataBound"
            AutoGenerateColumns="false"
            CssClass="Grid"
            runat="server">
            <Columns>
                <asp:BoundField DataField="EMPLOYEE_EMPLOYEE_NUMBER" HeaderText="Employee Number" />
                <asp:BoundField DataField="EMPLOYEE_FULL_NAME" HeaderText="Full Name" />
                <asp:BoundField DataField="EMPLOYEE_JOB_TITLE" HeaderText="Job Title" />
                <asp:BoundField DataField="EMPLOYEE_DIRECTORATE" HeaderText="Directorate" />
                <asp:BoundField DataField="EMPLOYEE_DIVISION" HeaderText="Division" />
                <asp:BoundField DataField="MANAGER_FULL_NAME" HeaderText="Manager" />
                <asp:BoundField DataField="DATE_RL_UPDATED" HeaderText="Approval Date" />
                <asp:BoundField DataField="LAST_DAY_OF_SERVICE" HeaderText="Last Day of Service" />
                <asp:BoundField DataField="LAST_WORKING_DAY" HeaderText="Last Working Day" />
            </Columns>
        </asp:GridView>
    </div>
    </div>
        <asp:Label ID="lblWarning" runat="server" Text="No results"></asp:Label>
    </form>
</body>
</html>
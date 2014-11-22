<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<div id="menu-bg" style="border-bottom:solid 1px gray;">
    <div id="top-menu" style="float: left; width: 100%">
        <ul class="menu">
        <%string USER=Session["UserName"].ToString(); %>
        <%if (USER == "Admin")
          { %>
                 <%--<li><a href="<%=Url.Content("~/Settings/Index") %>" class="last"><span>Settings</span></a></li>--%>
                 <li><a href="<%=Url.Content("~/Configuration/Index") %>"><span>Import Info</span></a></li>
                 <li><a href="<%=Url.Content("~/Sales/Export") %>"><span>Export Info</span></a></li>
                 <li><a href="<%=Url.Content("~/Admin/GSP/Index") %>"><span>GSP Info</span></a></li>
                 <li><a href="<%=Url.Content("~/Report/Index") %>"><span>Report</span></a></li>
                 <li><a href="<%=Url.Content("~/Account/Logout") %>"><span>Log Out</span></a></li>                 
            <% }%>
            <%else if (USER == "Private")
             { %>
                <li><a href="<%=Url.Content("~/Private/Index") %>"><span>Basic Entry</span></a></li>             
                <li><a href="<%=Url.Content("~/Reportpvt/Index") %>"><span>Reports</span></a></li> 
                <li><a href="<%=Url.Content("~/Account/Logout") %>"><span>Log Out</span></a></li>         
              <%} %>

        </ul>
    </div>
    <div class="clear">
            </div>
</div>
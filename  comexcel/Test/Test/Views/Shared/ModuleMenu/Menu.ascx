﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<div id="menu-bg" style="border-bottom:solid 1px gray;">
    <div id="top-menu" style="float: left; width: 100%">
        <ul class="menu">
        <%string GROUP = System.Web.HttpContext.Current.Session["Groups"].ToString(); %>
        <%if (GROUP == Test.Utility.AppConstants.Area.ADMIN)
          { %>
                 <%--<li><a href="<%=Url.Content("~/Settings/Index") %>" class="last"><span>Settings</span></a></li>--%>
                 <%--<li><a href="<%=Url.Content("~/Configuration/Index") %>"><span>Import Info</span></a></li>--%>
                 <li><a href="<%=Url.Content("~/Sales/Export") %>"><span>Export Info</span></a></li>
                 <li><a href="<%=Url.Content("~/Private/Index") %>"><span>Export Form</span></a></li>
                 <li><a href="<%=Url.Content("~/Shipping/Index") %>"><span>Shipping Info</span></a></li> 
                 <%--<li><a href="<%=Url.Content("~/Comsales/CSales/Index") %>"><span>Sales Info</span></a></li>--%>
                 <li><a href="<%=Url.Content("~/Sales/Index") %>"><span>Sales Info</span></a></li>    
                 <%--<li><a href="<%=Url.Content("~/Admin/GSP/Index") %>"><span>GSP Info</span></a></li>--%>
                 <li><a href="<%=Url.Content("~/Audit/Index") %>"><span>Audit Info</span></a></li>
                 <li><a href="<%=Url.Content("~/Billing/Index") %>"><span>Billing Info</span></a></li>
                 <li><a href="<%=Url.Content("~/Logistics/Index") %>"><span>Logistics Info</span></a></li>
                 <li><a href="<%=Url.Content("~/Report/Index") %>"><span>Reports</span></a></li>
                 <li><a href="<%=Url.Content("~/User/Index") %>"><span>User Info</span></a></li>
                 <li><a href="<%=Url.Content("~/Account/Logout") %>"><span>Log Out</span></a></li>                 
            <% }%>
            <%else if (GROUP == "Private")
             { %>
                <li><a href="<%=Url.Content("~/Private/Index") %>"><span>Export Form</span></a></li>             
                <li><a href="<%=Url.Content("~/Reportpvt/Index") %>"><span>Reports</span></a></li> 
                <li><a href="<%=Url.Content("~/Account/Logout") %>"><span>Log Out</span></a></li>         
              <%} %>
             <%else if (GROUP == "Sales")
             { %>
                <li><a href="<%=Url.Content("~/Sales/Index") %>"><span>Sales Info</span></a></li>                             
                <li><a href="<%=Url.Content("~/Account/Logout") %>"><span>Log Out</span></a></li>         
              <%} %>
             <%else if (GROUP == "Shipping")
             { %>
                <li><a href="<%=Url.Content("~/Shipping/Index") %>"><span>Shipping Info</span></a></li>                             
                <li><a href="<%=Url.Content("~/Account/Logout") %>"><span>Log Out</span></a></li>         
              <%} %>
             <%else if (GROUP == "ShipNsales")
             { %>
                <li><a href="<%=Url.Content("~/Shipping/Index") %>"><span>Shipping Info</span></a></li> 
                <li><a href="<%=Url.Content("~/Sales/Index") %>"><span>Sales Info</span></a></li>
                <li><a href="<%=Url.Content("~/Logistics/Index") %>"><span>Logistic Info</span></a></li> 
                <li><a href="<%=Url.Content("~/Report/Index") %>"><span>Reports</span></a></li>
                <li><a href="<%=Url.Content("~/Account/Logout") %>"><span>Log Out</span></a></li>
             <%} %>
            <%else if (GROUP == "CustomsAudit")
             { %>
                <li><a href="<%=Url.Content("~/Audit/Index") %>"><span>Audit Info</span></a></li>
                <li><a href="<%=Url.Content("~/Report/Index") %>"><span>Reports</span></a></li>
                <li><a href="<%=Url.Content("~/Account/Logout") %>"><span>Log Out</span></a></li>
             <%} %>
             <%else if (GROUP == "Billing")
             { %>
                <li><a href="<%=Url.Content("~/Shipping/Index") %>"><span>Shipping Info</span></a></li> 
                <li><a href="<%=Url.Content("~/Sales/Index") %>"><span>Sales Info</span></a></li> 
                <li><a href="<%=Url.Content("~/Billing/Index") %>"><span>Billing Info</span></a></li>
                <li><a href="<%=Url.Content("~/Report/Index") %>"><span>Reports</span></a></li>
                <li><a href="<%=Url.Content("~/Account/Logout") %>"><span>Log Out</span></a></li>
             <%} %>
             <%else if (GROUP == Test.Utility.AppConstants.Area.EXPORTALL)
             { %>
                <li><a href="<%=Url.Content("~/Private/Index") %>"><span>Export Form</span></a></li>                             
                <li><a href="<%=Url.Content("~/Shipping/Index") %>"><span>Shipping Info</span></a></li> 
                <li><a href="<%=Url.Content("~/Sales/Index") %>"><span>Sales Info</span></a></li> 
                <li><a href="<%=Url.Content("~/Billing/Index") %>"><span>Billing Info</span></a></li>
                <li><a href="<%=Url.Content("~/Audit/Index") %>"><span>Audit Info</span></a></li>
                <li><a href="<%=Url.Content("~/Report/Index") %>"><span>Reports</span></a></li>
                <li><a href="<%=Url.Content("~/Account/Logout") %>"><span>Log Out</span></a></li>      
              <%} %>  
             <%else if (GROUP == Test.Utility.AppConstants.Area.LOGISTICS)
             { %>
                <li><a href="<%=Url.Content("~/Logistics/Index") %>"><span>Logistic Info</span></a></li>
                <li><a href="<%=Url.Content("~/Report/Index") %>"><span>Reports</span></a></li>
                <li><a href="<%=Url.Content("~/Account/Logout") %>"><span>Log Out</span></a></li>
             <%} %> 
              <%else if (GROUP == Test.Utility.AppConstants.Area.REPORTS)
             { %>                
                <li><a href="<%=Url.Content("~/Report/Index") %>"><span>Reports</span></a></li>
                <li><a href="<%=Url.Content("~/Account/Logout") %>"><span>Log Out</span></a></li>
             <%} %>            
             <%else if (GROUP == null)
              { %>
                   <li><a href="<%=Url.Content("~/Account/Logout") %>"><span>Log Out</span></a></li> 
              <%} %>

        </ul>
    </div>
    <div class="clear"></div>
</div>
<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<div class="page_header" style="float:left;width:110%">Reports</div>
<div class="clear nav_sub_menu">
   <%string GROUP = Session["Groups"].ToString(); %>
   <%if (GROUP == "Admin")
    { %>
         <a href="<%=Url.Content("~/Report/Invoice") %>">Invoice</a>
         <a href="<%=Url.Content("~/Report/AllUDInfo") %>">U/D Information</a>
         <a href="<%=Url.Content("~/Report/InvoiceMonitor") %>">Invoice Monitor</a>
         <a href="<%=Url.Content("~/Report/Salesreport") %>">Sales Reports</a>
         <a href="<%=Url.Content("~/Report/CustomsAuditReport") %>">Customs Audit Reports</a>
         <a href="<%=Url.Content("~/Report/BillingReport") %>">Billing Reports</a>
         <a href="<%=Url.Content("~/Report/LogisticsReport") %>">Logistics Reports</a>
         <a href="<%=Url.Content("~/Report/LogisticsMonitor") %>">Logistics Monitor</a>
         <a href="<%=Url.Content("~/Reportpvt/TTCMInformation") %>">TT & CM Information</a>
         <a href="<%=Url.Content("~/Reportpvt/ExportFormReport") %>">Export Form Report</a>
     <% }%>
     <%else if (GROUP == "ShipNsales")
      { %>
         <a href="<%=Url.Content("~/Report/InvoiceMonitor") %>">Invoice Monitor</a>         
         <a href="<%=Url.Content("~/Report/Salesreport") %>">Sales Report</a>
         <a href="<%=Url.Content("~/Report/LogisticsReport") %>">Logistics Report</a>
         <a href="<%=Url.Content("~/Report/LogisticsMonitor") %>">Logistics Monitor</a>
     <% }%>
     <%else if (GROUP == "Billing")
      { %>         
         <a href="<%=Url.Content("~/Report/BillingReport") %>">Billing Report</a>
      <%} %>
      <%else if (GROUP == "ExportAll")
      { %>
         <a href="<%=Url.Content("~/Report/InvoiceMonitor") %>">Invoice Monitor</a>
         <a href="<%=Url.Content("~/Report/Salesreport") %>">Sales Report</a>
         <a href="<%=Url.Content("~/Report/BillingReport") %>">Billing Report</a>
         <a href="<%=Url.Content("~/Report/CustomsAuditReport") %>">Customs Audit Report</a>
     <% }%>
     <%else if (GROUP == Test.Utility.AppConstants.Area.LOGISTICS)
      { %>
         <a href="<%=Url.Content("~/Report/LogisticsReport") %>">Logistics Report</a>
         <a href="<%=Url.Content("~/Report/LogisticsMonitor") %>">Logistics Monitor</a>
     <%} %>  
      <%else if (GROUP == Test.Utility.AppConstants.Area.REPORTS)
      { %>
         <a href="<%=Url.Content("~/Report/InvoiceMonitor") %>">Invoice Monitor</a>         
         <a href="<%=Url.Content("~/Report/Salesreport") %>">Sales Report</a>
         <a href="<%=Url.Content("~/Report/LogisticsReport") %>">Logistics Report</a>
         <a href="<%=Url.Content("~/Report/LogisticsMonitor") %>">Logistics Monitor</a>
     <%} %>  
</div>



<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<div class="page_header" style="float:left;width:110%">B I L L I N G</div>
<div class="clear nav_sub_menu"> 
<%string GROUP = Session["Groups"].ToString(); %>
   <%if (GROUP == Test.Utility.AppConstants.Area.ADMIN)
    { %>  
        <a href="<%=Url.Content("~/Billing/ExcelFormat") %>">Excel Format</a>
        <a href="<%=Url.Content("~/Billing/BillingImportExcel") %>">Import From Excel</a> 
        <a href="<%=Url.Content("~/Billing/BillingInfo") %>">Billing Information</a> 
     <% }%>
   <%else if (GROUP == Test.Utility.AppConstants.Area.EXPORTALL)
    { %> 
        <a href="<%=Url.Content("~/Billing/BillingInfo") %>">Billing Information</a> 
     <% }%>
   <%else if (GROUP == Test.Utility.AppConstants.Area.BILLING)
    { %>
        <a href="<%=Url.Content("~/Billing/ExcelFormat") %>">Excel Format</a>
        <a href="<%=Url.Content("~/Billing/BillingImportExcel") %>">Import From Excel</a> 
        <a href="<%=Url.Content("~/Billing/BillingInfo") %>">Billing Information</a> 
     <% }%>
</div>
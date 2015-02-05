<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<div class="page_header" style="float:left;width:110%">Sales Entry</div>
<div class="clear nav_sub_menu">
<%string GROUP = System.Web.HttpContext.Current.Session["Groups"].ToString(); %>
   <%if (GROUP == Test.Utility.AppConstants.Area.ADMIN)
    { %>
        <a href="<%=Url.Content("~/Sales/ExcelFormat") %>">Excel Format</a>
        <a href="<%=Url.Content("~/Sales/SalesImportExcel") %>">Import From Excel</a>
        <a href="<%=Url.Content("~/Sales/ComsalesInfo") %>">Sales Information</a> 
    <% }%>
   <%else if (GROUP == Test.Utility.AppConstants.Area.EXPORTALL)
    { %> 
        <a href="<%=Url.Content("~/Sales/ComsalesInfo") %>">Sales Information</a> 
    <% }%>
    <%else if (GROUP == Test.Utility.AppConstants.Area.SHIPPINGnSALES)
    { %> 
        <a href="<%=Url.Content("~/Sales/ExcelFormat") %>">Excel Format</a>
        <a href="<%=Url.Content("~/Sales/SalesImportExcel") %>">Import From Excel</a>
        <a href="<%=Url.Content("~/Sales/ComsalesInfo") %>">Sales Information</a> 
    <% }%>
    <%else if (GROUP == Test.Utility.AppConstants.Area.BILLING)
    { %> 
        <a href="<%=Url.Content("~/Sales/ComsalesInfo") %>">Sales Information</a> 
    <% }%>
</div>
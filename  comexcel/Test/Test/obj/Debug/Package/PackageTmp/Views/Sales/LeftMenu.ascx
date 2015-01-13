<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<div class="page_header" style="float:left;width:110%">Sales Entry</div>
<div class="clear nav_sub_menu">
    <a href="<%=Url.Content("~/Sales/ExcelFormat") %>">Excel Format</a>
    <a href="<%=Url.Content("~/Sales/SalesImportExcel") %>">Import From Excel</a>
    <a href="<%=Url.Content("~/Sales/ComsalesInfo") %>">Sales Information</a> 
</div>
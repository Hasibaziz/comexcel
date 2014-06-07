<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<div class="page_header" style="float:left;width:99%">Import</div>
<div class="clear nav_sub_menu">
    <a href="<%=Url.Content("~/Configuration/ExcelFormat") %>">Excel Format</a>
   <%-- <a href="<%=Url.Content("~/Configuration/Modeinfo") %>">Mode Entry</a>
    <a href="<%=Url.Content("~/Configuration/CategoryName") %>">Category</a>
    <a href="<%=Url.Content("~/Configuration/CategoryDetails") %>">Category Details</a>
    <a href="<%=Url.Content("~/Configuration/UDInfo") %>">U/D Information</a>
    <a href="<%=Url.Content("~/Configuration/BEInfo") %>">B/E Information</a>--%>
    <a href="<%=Url.Content("~/Configuration/ImportExcel") %>">Import Excel</a>
    
</div>

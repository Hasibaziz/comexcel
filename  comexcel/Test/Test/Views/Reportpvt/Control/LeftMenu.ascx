<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<div class="page_header" style="float:left;width:110%">Reports</div>
<div class="clear nav_sub_menu">
     <a href="<%=Url.Content("~/Reportpvt/TTCMInformation") %>">TT & CM Information</a>
     <a href="<%=Url.Content("~/Reportpvt/ExportFormReport") %>">Export Form Report</a>
</div>


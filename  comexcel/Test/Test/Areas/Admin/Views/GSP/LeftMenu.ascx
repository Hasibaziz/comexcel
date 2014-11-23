<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<%--<div class="page_header" style="float:left;width:99%">Basic Entry</div>--%>
<div class="page_header" style="float:left;width:110%">GSP Entry</div>
<div class="clear nav_sub_menu">
   <%-- <a href="<%=Url.Content("~/Admin/GSP/Index") %>">GSP Index</a>--%>
    <a href="<%=Url.Content("~/Admin/GSP/GSPItemInfo") %>">GSP Item Info</a>
    <a href="<%=Url.Content("~/Admin/GSP/GSPItemEntry") %>">GSP Item Entry</a> 
    <a href="<%=Url.Content("~/Admin/GSP/GSPFormInfo") %>">GSP Form Records</a>  
    <a href="<%=Url.Content("~/Admin/GSP/GSPFormDetails") %>">GSP Form Records</a>  
</div>
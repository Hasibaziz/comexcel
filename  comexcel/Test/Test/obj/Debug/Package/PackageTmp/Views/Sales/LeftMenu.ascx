<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<div class="page_header" style="float:left;width:110%">Sales</div>
<div class="clear nav_sub_menu">
    <%--<a href="<%=Url.Content("~/Sales/Export") %>">Export Information</a>--%>
    <a href="<%=Url.Content("~/Sales/ComsalesInfo") %>">Sales Information</a> 
</div>
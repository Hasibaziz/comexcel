<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<div class="page_header" style="float:left;width:99%">Basic Entry</div>
<div class="clear nav_sub_menu">
    <a href="<%=Url.Content("~/Private/Exporter") %>">Exporter Entry</a>
    <a href="<%=Url.Content("~/Private/Consignee") %>">Consignee Entry</a>
    <a href="<%=Url.Content("~/Private/Notifyparty") %>">Notify Party Entry</a>
    <%--<a href="<%=Url.Content("~/Private/CategoryDetails") %>">Category Details</a>
    <a href="<%=Url.Content("~/Private/UDInfo") %>">U/D Information</a>
    <a href="<%=Url.Content("~/Private/BEInfo") %>">B/E Information</a>--%>
   <%-- <a href="<%=Url.Content("~/Private/ImportExcel") %>">Import Excel</a>--%>
    
</div>

<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<%--<div class="page_header" style="float:left;width:99%">Basic Entry</div>--%>
<div class="page_header" style="float:left;width:110%">Basic Entry</div>
<div class="clear nav_sub_menu">
    <a href="<%=Url.Content("~/Private/Exporter") %>">Exporter Entry</a>
    <a href="<%=Url.Content("~/Private/Consignee") %>">Consignee Entry</a>
    <a href="<%=Url.Content("~/Private/Notifyparty") %>">Notify Party Entry</a>
    <a href="<%=Url.Content("~/Private/HSCode") %>">H.S. Code Entry</a>  
    <a href="<%=Url.Content("~/Private/Modeinfo") %>">Local Transport Info</a> 
    <a href="<%=Url.Content("~/Private/Destination") %>">Destination Details</a>   
    <a href="<%=Url.Content("~/Private/ExportForm") %>">Export Form Record</a>   
</div>

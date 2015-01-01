<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<div class="page_header" style="float:left;width:110%">Group & User</div>
<div class="clear nav_sub_menu">   
    <a href="<%=Url.Content("~/User/CreateGroup") %>">Create Group</a> 
    <a href="<%=Url.Content("~/User/CreateUsers") %>">Create Users</a> 
</div>
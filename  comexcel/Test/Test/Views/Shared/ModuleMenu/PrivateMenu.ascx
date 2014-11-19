<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<div id="menu-bg" style="border-bottom:solid 1px gray;">
    <div id="top-menu" style="float: left; width: 100%">
        <ul class="menu">
            <li><a href="<%=Url.Content("~/Private/Index") %>"><span>Basic Entry</span></a></li>             
            <li><a href="<%=Url.Content("~/Reportpvt/Index") %>"><span>Reports</span></a></li> 
            <li><a href="<%=Url.Content("~/Account/Logout") %>"><span>Log Out</span></a></li>           
        </ul>
    </div>
    <div class="clear">
            </div>
</div>
<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
 <div class="logo">
    <div style="font-size: 20px; font-weight: bold; color:#009fff">
         HopLun(Bangladesh) Ltd.</div>
    <div style="font-size: 13px; font-weight: bold; color: White">
       V 2014.0.0.1
    </div>
 </div>

 <div class="logo" style="width:200px">
    <div style="font-size: 18px; font-weight: bold; color:#009fff">
        <%if (Session["ModuleName"] != null)
           { %>
            <% Response.Write(Session["ModuleName"].ToString()); %>
        <%}%>
    </div>
 </div>


<div class="current_user">
    <div style="font-size: 11px; color:White; padding-bottom: 2px;">Developed By: Hasib, HopLun IT Dept.</div>
    <div style="font-size: 11px; font-weight: bold; color:White; padding-bottom: 2px;">
        Log in Time : 
         <%if (Session["LoginDatetime"] != null)
           { %>
            <% Response.Write(Session["LoginDatetime"].ToString()); %>
        <%}%>
    </div>
    <div style="font-size: 11px; font-weight: bold; color:White;">
        Logged in as: 
        <%if (Session["UserName"] != null)
          { %>
            <% Response.Write(Session["UserName"].ToString()); %> | [<a style="text-decoration:none;color:#009fff" href="<%: Url.Content("~/Account/Logout") %>">Logout</a>]
        <%} %>
        </div>
</div>
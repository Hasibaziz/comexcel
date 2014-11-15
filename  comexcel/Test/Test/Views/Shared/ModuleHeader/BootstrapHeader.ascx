<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
 

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container-fluid">
      <div class="navbar-header">
       <%-- <button class="navbar-toggle collapsed" data-target=".navbar-collapse" data-toggle="collapse" type="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        </button>--%>
        <a class="navbar-brand" href="#">Project name</a>
      </div>
  </div>
  <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-right">
            <li>
              <a href="#">Dashboard</a>
            </li>
            <li>
              <a href="#">Settings</a>
            </li>
            <li>
              <a href="#">Profile</a>
            </li>
            <li>
              <a href="#">Help</a>
            </li>
        </ul>
        <form class="navbar-form navbar-right">
            <input class="form-control" type="text" placeholder="Search..."/>
        </form>
  </div>  
</div>

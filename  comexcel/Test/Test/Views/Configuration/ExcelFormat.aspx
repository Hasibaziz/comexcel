<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ExcelFormat
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="mp_left_menu">
   <% Html.RenderPartial("LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container"> 
    <fieldset>  
       <%foreach (string file in Model)
          {%>
            <a>Excel Format For Download: </a><a class="btn btn-mini" <%: Html.ActionLink(file,"Download",new {Action="Download", fn=file})  %>  </a>  <br />
       <%} %>
     </fieldset>
    </div>
</div>
</asp:Content>

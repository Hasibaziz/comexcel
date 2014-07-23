<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Export
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="mp_left_menu">
    <% Html.RenderPartial("LeftMenu"); %>
</div>
<div class="mp_right_content">
    <div class="page_list_container">
        <div style="float: left; width: 100%">
                   
        </div>
        <div style="float: left; width: 100%;">
            <div id="RecordsContainer">
            </div>
        </div>
    </div>
</div>

</asp:Content>

﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Private.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Modeinfo
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="mp_left_menu">
    <% Html.RenderPartial("LeftMenu"); %>
</div>
<div class="mp_right_content">
    <div class="page_list_container">
       <fieldset><div id="RecordsContainer"></div></fieldset>
    </div>
</div>

<script type="text/javascript">

    $(document).ready(function () {

        $('#RecordsContainer').jtable({
            paging: true,
            pageSize: 10,
            sorting: false,
            defaultSorting: 'Name ASC',
            actions: {
                listAction: '<%=Url.Content("~/Private/ModeinfoList") %>',
                createAction: '<%=Url.Content("~/Private/AddUpdateModeInfo") %>'
                //updateAction: '<%=Url.Content("~/Configuration/AddUpdateCategoryName") %>',               
                //deleteAction: '<%=Url.Content("~/Configuration/DeleteServiceName") %>',


            },
            fields: {
                ID: {
                    key: true,
                    create: false,
                    edit: false,
                    list: false
                },
                Name: {
                    title: 'Mode Type',
                    width: '40%'
                },
                Port: {
                    title: 'Port',
                    width: '40%'
                }
            }
        });
        $('#RecordsContainer').jtable('load');
    });
 
</script>

</asp:Content>

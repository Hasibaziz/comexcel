﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    BEInfo
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
                listAction: '<%=Url.Content("~/Configuration/BEInfoList") %>',
                createAction: '<%=Url.Content("~/Configuration/AddUpdateBEInfo") %>'
                //updateAction: '<%=Url.Content("~/Configuration/AddUpdateCategoryName") %>',
               
                //                deleteAction: '<%=Url.Content("~/Configuration/DeleteServiceName") %>',


            },
            fields: {
                Id: {
                    key: true,
                    create: false,
                    edit: false,
                    list: false
                },
                BENo: {
                    title: 'B/E No',
                    width: '40%'
                },
                BEDate: {
                    title: 'B/E Date',
                    width: '40%'
                }
            }
        });
        $('#RecordsContainer').jtable('load');
    });
 
</script>

</asp:Content>

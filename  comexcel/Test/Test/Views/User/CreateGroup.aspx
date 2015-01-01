<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    CreateGroup
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="mp_left_menu">
    <% Html.RenderPartial("LeftMenu"); %>
</div>
<div class="mp_right_content">
    <div class="page_list_container">
        <div id="RecordsContainer"></div>
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
                listAction: '<%=Url.Content("~/User/CreateGroupList") %>',
                deleteAction: '<%=Url.Content("~/User/DeleteCreateGroupInfo") %>',
                updateAction: '<%=Url.Content("~/User/AddUpdateCreateGroup") %>',
                createAction: '<%=Url.Content("~/User/AddUpdateCreateGroup") %>'
            },
            fields: {
                ID: {
                    key: true,
                    create: false,
                    edit: false,
                    list: false
                },
                GroupName: {
                    title: 'Group Name',
                    width: '40%'
                },
                Description: {
                    title: 'Description',
                    width: '50%'
                }
            }
        });
        $('#RecordsContainer').jtable('load');
    });
 
</script>
</asp:Content>

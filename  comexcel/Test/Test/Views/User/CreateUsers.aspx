<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    CreateUsers
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="mp_left_menu">
    <% Html.RenderPartial("LeftMenu"); %>
</div>
<div class="mp_right_content">
    <div class="page_list_container">
        <%--<div id="RecordsContainer" style="width: 580px; margin: auto;"></div>--%>
        <div id="RecordsContainer" ></div>
    </div>
</div>

<script type="text/javascript">

    $(document).ready(function () {

        $('#RecordsContainer').jtable({
            paging: true,
            pageSize: 20,
            sorting: false,
            defaultSorting: 'Name ASC',
            actions: {
                listAction: '<%=Url.Content("~/User/CreateUsersList") %>',
                deleteAction: '<%=Url.Content("~/User/DeleteCreateUsersInfo") %>',
                updateAction: '<%=Url.Content("~/User/AddUpdateCreateUsers") %>',
                createAction: '<%=Url.Content("~/User/AddUpdateCreateUsers") %>'
            },
            fields: {
                ID: {
                    key: true,
                    create: false,
                    edit: false,
                    list: false
                },
                UserName: {
                    title: 'User Name',
                    width: '20%'
                },
                Password: {
                    title: 'User Password',
                    type: 'password',
                    list: false
                },
                FullName: {
                    title: 'Full Name',
                    width: '25%'
                },
                Email: {
                    title: 'Email Address',
                    list: false
                },
                IsActive: {
                    title: 'Status',
                    width: '10%',
                    type: 'checkbox',
                    values: { 'false': 'InActive', 'true': 'Active' },
                    defaultValue: 'false'
                },
                Created: {
                    title: 'Created',
                    width: '10%',
                    type: 'date',
                    displayFormat: 'dd-mm-yy',
                    create: false,
                    edit: false
                },
                GroupID: {
                    title: 'Group Name',
                    width: '30%',
                    options: '<%=Url.Content("~/User/AllCreateGroupList") %>'
                }
            }
        });
        $('#RecordsContainer').jtable('load');
    });
 
</script>

</asp:Content>

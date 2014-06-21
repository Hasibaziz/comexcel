<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    CategoryDetails
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
                pageSize: 15,
                sorting: false,
                defaultSorting: 'Name ASC',
                actions: {
                    listAction: '<%=Url.Content("~/Configuration/CategoryDetailsList") %>',
                    createAction: '<%=Url.Content("~/Configuration/AddUpdateCategoryDetails") %>'
//                    deleteAction: '<%=Url.Content("~/Configuration/DeleteServiceNameDetils") %>',
//                    updateAction: '<%=Url.Content("~/Configuration/AddUpdateServiceNameDetils") %>',
//                    createAction: '<%=Url.Content("~/Configuration/AddUpdateServiceNameDetils") %>'
                },
                fields: {
                    ID: {
                        key: true,
                        create: false,
                        edit: false,
                        list: false
                    },
                    CategoryID: {
                        title: 'Category Name',
                        width: '15%',
                        options: '<%=Url.Content("~/Configuration/AllCategoryNameListItem") %>'
                    },                  
                    Item: {
                        title: 'Item Name',
                        width: '40%'
                    }
                }
            });
            $('#RecordsContainer').jtable('load');
        });
 
    </script>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Private.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    HSCode
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
                    listAction: '<%=Url.Content("~/Private/HSCodeDetailsList") %>',
                    createAction: '<%=Url.Content("~/Private/AddUpdateHSCodeDetails") %>',
                    updateAction: '<%=Url.Content("~/Private/AddUpdateHSCodeDetails") %>'
                    //                    deleteAction: '<%=Url.Content("~/Configuration/DeleteServiceNameDetils") %>',                   
                    //                    createAction: '<%=Url.Content("~/Configuration/AddUpdateServiceNameDetils") %>'
                },
                fields: {
                    ID: {
                        key: true,
                        create: false,
                        edit: false,
                        list: false
                    },
                    HSCode: {
                        title: 'H.S. Code',
                        width: '10%'
                    },
                    HSCodeName: {
                        title: 'HSCode Details',
                        type: 'textarea'
                    },
                    ShortName: {
                        title: 'Short Name',
                        width: '25%'
                    }
                }
            });
            $('#RecordsContainer').jtable('load');
        });
 
    </script>

</asp:Content>

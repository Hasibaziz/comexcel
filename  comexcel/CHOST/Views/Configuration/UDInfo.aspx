<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    UDInfo
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
                    listAction: '<%=Url.Content("~/Configuration/UDInfoList") %>',
                    createAction: '<%=Url.Content("~/Configuration/AddUpdateUDInfo") %>'
                    //                    deleteAction: '<%=Url.Content("~/Configuration/DeleteServiceNameDetils") %>',
                    //                    updateAction: '<%=Url.Content("~/Configuration/AddUpdateServiceNameDetils") %>',
                    //                    createAction: '<%=Url.Content("~/Configuration/AddUpdateServiceNameDetils") %>'
                },
                fields: {
                    Id: {
                        key: true,
                        create: false,
                        edit: false,
                        list: false
                    },
                    UDNo: {
                        title: 'U/D No',
                        width: '15%'
                    },
                    AMDNo: {
                        title: 'AMD No',
                        width: '15%'
                    },
                    AMDDate: {
                        title: 'AMD Date',                       
                        width: '15%'
                    }
                }
            });
            $('#RecordsContainer').jtable('load');
        });
 
    </script>

</asp:Content>

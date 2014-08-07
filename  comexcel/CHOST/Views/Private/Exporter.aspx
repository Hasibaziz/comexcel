<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Private.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Exporter
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
                    listAction: '<%=Url.Content("~/Private/ExporterDetailsList") %>',
                    createAction: '<%=Url.Content("~/Private/AddUpdateExporterDetails") %>',
                    updateAction: '<%=Url.Content("~/Private/AddUpdateExporterDetails") %>'
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
                    ExporterNo: {
                        title: 'Exporter No',
                        width: '10%'                       
                    },
                    ExporterName: {
                        title: 'Exporter Name',
                        type: 'textarea'
                    },
                    RegDetails: {
                        title: 'Registration Details',
                        type: 'textarea'
                    }
                }
            });
            $('#RecordsContainer').jtable('load');
        });
 
    </script>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Private.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ExportForm
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="mp_left_menu">
        <% Html.RenderPartial("LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <fieldset><div id="RecordsContainer">
                 <input type="button" value="Print Report" title="Print"   onclick="printItem()" />
               </div>
     </fieldset>
   </div>
</div>
<script type="text/javascript">
    function printItem() {
        alert("Report");
        window.open("/Private/ExportFormReport");
    }
</script>

<script type="text/javascript">

        $(document).ready(function () {

            $('#RecordsContainer').jtable({
                paging: true,
                pageSize: 15,
                sorting: false,
                defaultSorting: 'Name ASC',
                actions: {
                    listAction: '<%=Url.Content("~/Private/ExportFormDetailsList") %>'
//                    createAction: '<%=Url.Content("~/Private/AddUpdateExporterDetails") %>',
//                    updateAction: '<%=Url.Content("~/Private/AddUpdateExporterDetails") %>'
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
                    ContractNo: {
                        title: 'Contract No',
                        width: '10%'
                    },
                    InvoiceNo: {
                        title: 'Invoice No',
                        width: '10%'
                    },
                    InvoiceDate: {
                        title: 'Invoice Date',
                        width: '10%'
                    },
                    ExporterID: {
                        title: 'Exporter No',
                        width: '10%'
                    },
                    ConsigneeID: {
                        title: 'Consignee No',
                        width: '10%'
                    },
                    NotifyID: {
                        title: 'Notify No',
                        width: '10%'
                    },
                    HSCodeID: {
                        title: 'H.S. Code',
                        width: '10%'
                    },
                    FOBValue: {
                        title: 'FOB Value',
                        width: '10%'
                    },
                    CMValue: {
                        title: 'C.M. Value',
                        width: '10%'
                    }
                }
            });
            $('#RecordsContainer').jtable('load');
        });
 
    </script>

</asp:Content>

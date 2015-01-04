<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ExportFormReport
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="mp_left_menu">
        <% Html.RenderPartial("Control/LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <fieldset><div id="RecordsContainer">
                  <input type="button" value="Export to Excel" title="Print" class="btn btn-primary btn-lg active"   onclick="printItem()" />
               </div>               
     </fieldset>                
   </div>
</div>
<script type="text/javascript">
    function printItem() {
        //alert("Report");
        window.open("/Reportpvt/ExportFormReportonExcel");
    }
</script>
<script type="text/javascript">    
    $(document).ready(function () {

        $('#RecordsContainer').jtable({
            paging: true,
            pageSize: 15,
            sorting: false,
            title: 'Export Form Report',
            defaultSorting: 'Name ASC',
            actions: {
                listAction: '<%=Url.Content("~/Reportpvt/ExportFormReportList") %>'
                //deleteAction: '<%=Url.Content("~/Private/DeleteExportFormEntryDetails") %>'
                //                    createAction: '<%=Url.Content("~/Private/AddUpdateExporterDetails") %>',
                //                    updateAction: '<%=Url.Content("~/Private/AddUpdateExporterDetails") %>' 
                //                    createAction: '<%=Url.Content("~/Configuration/AddUpdateServiceNameDetils") %>'
            },
            fields: {
//                ID: {
//                    key: true,
//                    create: false,
//                    edit: false,
//                    list: false
                //                },
                SL: {
                    title: 'SL',
                    width: '3%'
                },
                InvoiceNo: {
                    title: 'Invoice No',
                    width: '8%'
                },
                InvoiceDate: {
                    title: 'Invoice Date',
                    width: '10%'
                },
                ItemName: {
                    title: 'Item Name',
                    width: '25%'
                },
                ContractNo: {
                    title: 'Contract No',
                    width: '10%'
                },
                ContractDate: {
                    title: 'Contract Date',
                    width: '10%'
                },       
                ExporterID: {
                    title: 'Exporter',
                    width: '6%',
                    options: '<%=Url.Content("~/Private/AllExporterDetails") %>'
                },
                ConsigneeID: {
                    title: 'Consignee No',
                    width: '10%',
                    options: '<%=Url.Content("~/Private/AllConsigneeDetails") %>'
                },              
                HSCode: {
                    title: 'H.S. Code',
                    width: '6%'
                },
                DestinationID: {
                    title: 'Destination',
                    width: '5%',
                    options: '<%=Url.Content("~/Private/AllDestinationDetails") %>'
                },
                Port: {
                    title: 'Port',
                    width: '12%'
                },
                Quantity: {
                    title: 'Qty',
                    width: '5%'
                },
                FOBValue: {
                    title: 'FOB',
                    width: '8%'
                },
                CMValue: {
                    title: 'C.M.',
                    width: '8%'
                },
                ExFactoryDate: {
                    title: 'Ex-Factory',
                    width: '8%'
                }
            }
        });
        $('#RecordsContainer').jtable('load');
    });
 
    </script>

</asp:Content>

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
        <%: Html.ActionLink("Add New Entry", "ExportFormEntry", new { @href = "#", @id = "dialog_link", title = "Receive Item" })%>    
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
                        width: '10%',
                        display: function (data) {
                            return '<a href="/Private/ExporterFormUpdateByInvoiceNo/' + data.record.ID + '">' + data.record.InvoiceNo + '</a>';
                        }
                    },
                    InvoiceDate: {
                        title: 'Invoice Date',
                        width: '10%'
                    },
                    ExporterID: {
                        title: 'Exporter No',
                        width: '10%',
                        options: '<%=Url.Content("~/Private/AllExporterDetails") %>'
                    },
                    ConsigneeID: {
                        title: 'Consignee No',
                        width: '10%',
                        options: '<%=Url.Content("~/Private/AllConsigneeDetails") %>'
                    },
                    NotifyID: {
                        title: 'Notify No',
                        width: '10%',
                        options: '<%=Url.Content("~/Private/AllNotifypartyDetails") %>'
                    },
                    HSCodeID: {
                        title: 'H.S. Code',
                        width: '10%',
                        options: '<%=Url.Content("~/Private/AllHSCodeDetails") %>'
                    },
                    DestinationID: {
                        title: 'Destination',
                        width: '5%',
                        options: '<%=Url.Content("~/Private/AllDestinationDetails") %>'
                    },
                    Quantity: {
                        title: 'Quantity',
                        width: '8%'
                    },
                    FOBValue: {
                        title: 'FOB Value',
                        width: '8%'
                    },
                    CMValue: {
                        title: 'C.M. Value',
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    InvoiceMonitor
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="mp_left_menu">
        <% Html.RenderPartial("Control/LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <fieldset><div id="RecordsContainer">
                  <%-- Invoice No:  <%: Html.TextBoxFor(model => model.InvoiceNo, new { style = "width: 120px;" })%>                 
                   Buyer Name: <%: Html.DropDownListFor(model => model.ConsigneeID, (List<SelectListItem>)ViewData["ConsigneeNo"], "Please Select", new { @class = "validate[required]" })%>                  
                 <input type="button" value="Print Preview" title="Print" class="btn btn-info btn-lg active"  onclick="printPDF()" />--%>
               </div>
               
     </fieldset>                 
   </div>
</div>
<script type="text/javascript">
    $('input#InvoiceNo, #ConsigneeID').change(function () {

        $('#RecordsContainer').jtable({
            paging: true,
            pageSize: 20,
            sorting: false,
            title: 'Invoice List for HLBD/HLHY/Apparel',
            defaultSorting: 'Name ASC',      //+ "&consigneeid=" + $("#ConsigneeID").attr()
            actions: {
                listAction: '/Report/InvoiceSearchByNo?Invno=' + $("#InvoiceNo").val() + "&consigneeid=" + $("#ConsigneeID").val(),                              //+ "&consigneeid=" + $("#ConsigneeID option:selected").text(),
                deleteAction: '<%=Url.Content("~/Private/DeleteExportFormEntryDetails") %>'
            },
            fields: {
                ID: {
                    key: true,
                    create: false,
                    edit: false,
                    list: false
                },
                //                ItemName: {
                //                    title: 'Item Name',
                //                    width: '25%'
                //                },
                ContractNo: {
                    title: 'Contract No',
                    width: '10%'
                },
                ContractDate: {
                    title: 'Contract Date',
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
                    title: 'Exporter',
                    width: '6%',
                    options: '<%=Url.Content("~/Private/AllExporterDetails") %>'
                },
                ConsigneeID: {
                    title: 'Consignee No',
                    width: '10%',
                    options: '<%=Url.Content("~/Private/AllConsigneeDetails") %>'
                },
                //                NotifyID: {
                //                    title: 'Notify No',
                //                    width: '10%',
                //                    options: '<%=Url.Content("~/Private/AllNotifypartyDetails") %>'
                //                },
                //                HSCodeID: {
                //                    title: 'H.S. Code',
                //                    width: '10%',
                //                    options: '<%=Url.Content("~/Private/AllHSCodeDetails") %>'
                //                },
                HSCode: {
                    title: 'H.S.Code',
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
                Incoterm: {
                    title: 'Incoterm',
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

    $(document).ready(function () {

        $('#RecordsContainer').jtable({
            paging: true,
            pageSize: 20,
            sorting: false,
            title: 'Invoice List for HLBD,HLHY,Apparel',
            defaultSorting: 'Name ASC',
            actions: {
                listAction: '<%=Url.Content("~/Report/InvoiceMonitorList") %>'
                //deleteAction: '<%=Url.Content("~/Private/DeleteExportFormEntryDetails") %>'
                //                    createAction: '<%=Url.Content("~/Private/AddUpdateExporterDetails") %>',
                //                    updateAction: '<%=Url.Content("~/Private/AddUpdateExporterDetails") %>' 
                //                    createAction: '<%=Url.Content("~/Configuration/AddUpdateServiceNameDetils") %>'
            },
            fields: {
                ID: {
                    key: true,
                    create: false,
                    edit: false,
                    list: false
                },
                //                ItemName: {
                //                    title: 'Item Name',
                //                    width: '25%'
                //                },
                //                ContractNo: {
                //                    title: 'Contract No',
                //                    width: '10%'
                //                },
                //                ContractDate: {
                //                    title: 'Contract Date',
                //                    width: '10%'
                //                },
                InvoiceNo: {
                    title: 'Invoice No',
                    width: '10%'
                    //                    display: function (data) {
                    //                        return '<a href="/Shipping/ShippingformEntryUpdByInvoiceNo/' + data.record.ID + '">' + data.record.InvoiceNo + '</a>';
                    //                    }
                },
                InvoiceDate: {
                    title: 'Invoice Date',
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
                //                    NotifyID: {
                //                        title: 'Notify No',
                //                        width: '10%',
                //                        options: '<%=Url.Content("~/Private/AllNotifypartyDetails") %>'
                //                    },
                //                    HSCodeID: {
                //                        title: 'H.S. Code',
                //                        width: '10%',
                //                        options: '<%=Url.Content("~/Private/AllHSCodeDetails") %>'
                //                    },
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
                Incoterm: {
                    title: 'Incoterm',
                    width: '5%'
                },
                FOBValue: {
                    title: 'FOB',
                    width: '8%'
                },
                CMValue: {
                    title: 'C.M.',
                    width: '6%'
                },
                ExpNo: {
                    title: 'Exp No',
                    width: '14%'
                }
            }
        });
        $('#RecordsContainer').jtable('load');
    });
 
    </script>


</asp:Content>

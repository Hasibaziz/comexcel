<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.ExportformEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ExportFormApp
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<div class="mp_left_menu">
        <% Html.RenderPartial("LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <fieldset><div id="RecordsContainer">
                 Invoice No:  <%: Html.TextBoxFor(model => model.InvoiceNo, new { style = "width: 120px;" })%>
                 Header Spaces:  <%: Html.TextBoxFor(model => model.HeaderSpaces, new { @Value = "14.6", style = "width: 30px;" })%>
                 Left Spaces:  <%: Html.TextBoxFor(model => model.LeftSpaces, new { @Value = "325", style = "width: 30px;" })%>
                 Item Font Size:  <%: Html.TextBoxFor(model => model.iFontSize, new { @Value = "10", style = "width: 20px;" })%>
                 <%--Buyer Name: <%: Html.DropDownListFor(model => model.ConsigneeID, (List<SelectListItem>)ViewData["ConsigneeNo"], "Please Select", new { @class = "validate[required]" })%>--%>
                 <%--<input type="button" value="Print Preview" title="Print"   onclick="printItem()" />--%>
                 <input type="button" value="Print Preview" title="Print" class="btn btn-info btn-lg active"  onclick="printPDF()" />
                 Buyer Name: <%: Html.DropDownListFor(model => model.ConsigneeID, (List<SelectListItem>)ViewData["ConsigneeNo"], "Please Select", new { @class = "validate[required]" })%>
                  <div>
                   <%: Html.ActionLink("Add New Entry", "ExportFormEntryApp", new { @href = "#", @id = "dialog_link", title = "Receive Item" })%>
                  </div>
               </div>
               
     </fieldset>          
       <%-- <%: Html.ActionLink("Add New Entry", "ExportFormEntry", new { @href = "#", @id = "dialog_link", title = "Receive Item" })%>--%>    
   </div>
</div>
<script type="text/javascript">
    function printItem() {
        //alert("Report");
        window.open("/Private/ExportFormReport");
    }
//   $(function() {
    //       $("#iFontSize").spinner();             //http://jqueryui.com/spinner/#time
//    });
</script>
<script type="text/javascript">
    //    function printPDF() {
    //        //alert("Report");
    //        //window.open("/Private/PDFView");
    //        var headspaces = $('#HeaderSpaces').val();        
    //        //window.location = '/Private/PDFView?headspc=' + headspaces;
    //        window.open =("/Private/PDFView?headspc=" + headspaces); 
    //        //var win = window.location = '/Private/PDFView?headspc=' + headspaces; 
    //        //window.open = (win);  
    //    }
    function printPDF() {
        var headspaces = $('#HeaderSpaces').val();
        var iFSize = $('#iFontSize').val();
        var LeftSpc = $('#LeftSpaces').val();
        var url = "/Private/PDFViewApp?headspc=" + headspaces + "&iFontSize=" + iFSize + "&LeftSpace=" + LeftSpc;
        var win = window.open('', '', 'left=0px, top=0px, width=600px, height=650px, scrollbars=no, status =no, resizable=no');
        win.location.href = url;
        win = null;
        return false;
    } 
</script>
<script type="text/javascript">
    $('input#InvoiceNo, #ConsigneeID').change(function () {

        $('#RecordsContainer').jtable({
            paging: true,
            pageSize: 15,
            sorting: false,
            title: 'Invoice List for Apparel',
            defaultSorting: 'Name ASC',      //+ "&consigneeid=" + $("#ConsigneeID").attr()
            actions: {
                listAction: '/Private/InvoiceSearchByNoApp?Invno=' + $("#InvoiceNo").val() + "&consigneeid=" + $("#ConsigneeID").val()                               //+ "&consigneeid=" + $("#ConsigneeID option:selected").text(),
                //deleteAction: '<%=Url.Content("~/Private/DeleteExportFormEntryDetails") %>'
            },
            fields: {
                ID: {
                    key: true,
                    create: false,
                    edit: false,
                    list: false
                },
                ItemName: {
                    title: 'Item Name',
                    width: '25%',
                    display: function (data) {
                        //var $img = $('<button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="' + data.record.TTNo + '">' + data.record.ItemName + '</button>');
                        var $img = $('<label style="font: normal 11px courier;"  class="jtable-input-label" data-toggle="tooltip" data-placement="left" title="' + data.record.UserName + "\n" + data.record.CurrentDate + '">' + data.record.ItemName + '</label>');
                        return $img;
                    }
                },
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
                        return '<a href="/Private/ExporterFormUpdateByInvoiceNoApp/' + data.record.ID + '">' + data.record.InvoiceNo + '</a>';
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
            pageSize: 15,
            sorting: false,
            title: 'Invoice List for Apparel',
            defaultSorting: 'Name ASC',
            actions: {
                listAction: '<%=Url.Content("~/Private/ExportFormDetailsAppList") %>'
                // deleteAction: '<%=Url.Content("~/Private/DeleteExportFormEntryDetails") %>'
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
                ItemName: {
                    title: 'Item Name',
                    width: '25%',
                    display: function (data) {
                        //var $img = $('<button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="' + data.record.TTNo + '">' + data.record.ItemName + '</button>');
                        var $img = $('<label style="font: normal 11px courier;"  class="jtable-input-label" data-toggle="tooltip" data-placement="left" title="' + data.record.UserName + "\n" + data.record.CurrentDate + '">' + data.record.ItemName + '</label>');
                        return $img;
                    }
                },
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
                        return '<a href="/Private/ExporterFormUpdateByInvoiceNoApp/' + data.record.ID + '">' + data.record.InvoiceNo + '</a>';
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

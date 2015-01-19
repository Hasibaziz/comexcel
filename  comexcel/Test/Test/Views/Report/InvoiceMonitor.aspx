<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    InvoiceMonitor
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<script type="text/javascript">
    function PrintExcel() {
        window.location = "/Report/InvoiceMonitorExcel"
    }
</script>
<div class="mp_left_menu">
        <% Html.RenderPartial("Control/LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <fieldset><div id="RecordsContainer">
                  <%-- Invoice No:  <%: Html.TextBoxFor(model => model.InvoiceNo, new { style = "width: 120px;" })%>                 
                   Buyer Name: <%: Html.DropDownListFor(model => model.ConsigneeID, (List<SelectListItem>)ViewData["ConsigneeNo"], "Please Select", new { @class = "validate[required]" })%>                  
                 <input type="button" value="Print Preview" title="Print" class="btn btn-info btn-lg active"  onclick="printPDF()" />--%>
                 <input type="image" src="../../Content/images/ExportExl.png" value="Export to Excel" title="Export" onclick="PrintExcel()" />
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
                InvoiceNo: {
                    title: 'Invoice No',
                    width: '10%'
                },
                InvoiceDate: {
                    title: 'Invoice Date',
                    width: '10%'
                },
                ExporterNo: {
                    title: 'Exporter',
                    width: '4%'
                },
                BUYERNAME: {
                    title: 'BUYERNAME',
                    width: '10%'
                },
                DESTINATION: {
                    title: 'Destination',
                    width: '5%'
                },
                HSCode: {
                    title: 'H.S. Code',
                    width: '6%'
                },
                MODE: {
                    title: 'MODE',
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
                EXPNo: {
                    title: 'Exp No',
                    width: '14%'
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
            },
            fields: {
                ID: {
                    key: true,
                    create: false,
                    edit: false,
                    list: false
                },               
                InvoiceNo: {
                    title: 'Invoice No',
                    width: '10%'                   
                },
                InvoiceDate: {
                    title: 'Invoice Date',
                    width: '10%'
                },
                ExporterNo: {
                    title: 'Exporter',
                    width: '4%'
                },
                BUYERNAME: {
                    title: 'BUYERNAME',
                    width: '10%'
                },
                DESTINATION: {
                    title: 'Destination',
                    width: '5%'
                },              
                HSCode: {
                    title: 'H.S. Code',
                    width: '6%'
                },                
                MODE: {
                    title: 'MODE',
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
                EXPNo: {
                    title: 'Exp No',
                    width: '14%'
                }
            }
        });
        $('#RecordsContainer').jtable('load');
    });
 
    </script>


</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.ComsalesinfoEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ComsalesInfo
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="mp_left_menu">
        <% Html.RenderPartial("LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <fieldset><div id="RecordsContainer">
                 Invoice No:  <%: Html.TextBoxFor(model => model.InvoiceNo, new { style = "width: 120px;" })%>               
                 <%--<input type="button" value="Export to Excel" title="Print" class="btn btn-info btn-lg active"  onclick="printPDF()" />                --%>
                 <div>
                   <%: Html.ActionLink("Add New Entry", "ComsalesEntry", new { @href = "#", @id = "dialog_link", title = "Receive Item" })%>
                 </div> 
               </div>
     </fieldset>                
   </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {

        $('#RecordsContainer').jtable({
            paging: true,
            pageSize: 15,
            sorting: false,
            title: 'Invoice List for Sales',
            defaultSorting: 'Name ASC',
            actions: {
                listAction: '<%=Url.Content("~/Sales/ComsalsesInfoList") %>'
                //deleteAction: '<%=Url.Content("~/Private/DeleteExportFormEntryDetails") %>'               
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
                    width: '8%',
                    display: function (data) {
                        return '<a href="/Sales/ComsalesEntryUpdByInvoiceNo/' + data.record.ID + '">' + data.record.InvoiceNo + '</a>';
                    }
                },                
                OrderNo: {
                    title: 'Order No',
                    width: '8%'
                },
                StyleNo: {
                    title: 'Style No',
                    width: '10%'
                },
                RevQty: {
                    title: 'RevQty',
                    width: '7%'
                },                
                RevisedFOBValue: {
                    title: 'ShippedFOB',
                    width: '7%'
                },
                RevisedCMValue: {
                    title: 'ShippedC.M.',
                    width: '7%'
                },
                BLNo: {
                    title: 'B/L No',
                    width: '8%'
                },
                BLDate: {
                    title: 'B/L Date',
                    width: '12%'
                },
                ShipbordingDate: {
                    title: 'Ship Bording Date',
                    width: '12%'
                },
                VesselName: {
                    title: 'Vessel Name',
                    width: '9%'
                }
            }
        });
        $('#RecordsContainer').jtable('load');
    });
 $('input#InvoiceNo').change(function () {  

        $('#RecordsContainer').jtable({
            paging: true,
            pageSize: 15,
            sorting: false,
            title: 'Invoice List for Sales',
            defaultSorting: 'Name ASC',
            actions: {
                listAction: '/Sales/CSalesInvoiceSearchByNo?InvNo=' + $("#InvoiceNo").val()
                //deleteAction: '<%=Url.Content("~/Private/DeleteExportFormEntryDetails") %>'               
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
                    width: '8%',
                    display: function (data) {
                        return '<a href="/Sales/ComsalesEntryUpdByInvoiceNo/' + data.record.ID + '">' + data.record.InvoiceNo + '</a>';
                    }
                },
                OrderNo: {
                    title: 'Order No',
                    width: '6%'
                },
                StyleNo: {
                    title: 'Style No',
                    width: '10%'
                },
                RevQty: {
                    title: 'RevQty',
                    width: '5%'
                },
                UnitPrice: {
                    title: 'Unit Price',
                    width: '6%'
                },
                RevisedFOBValue: {
                    title: 'R.FOB',
                    width: '8%'
                },
                RevisedCMValue: {
                    title: 'R C.M.',
                    width: '8%'
                },
                BLNo: {
                    title: 'B/L No',
                    width: '6%'
                },
                BLDate: {
                    title: 'B/L Date',
                    width: '8%'
                }
            }
        });
        $('#RecordsContainer').jtable('load');
    });


 </script>

</asp:Content>

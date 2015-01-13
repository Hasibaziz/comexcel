<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.SalesreportEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Salesreport
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<script type="text/javascript">
    function printItem() {
        //alert("Report");
        window.open("/Report/SalesExcelReport");
    }
    function PrintExcel() {
        EX1 = $("#StartDate").val();
        EX2 = $("#EndDate").val();        
        window.location = "/Report/ExcelReport?EX1=" + EX1 + "&EX2=" + EX2;
    }
</script>
<div class="mp_left_menu">
        <% Html.RenderPartial("Control/LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <fieldset><div id="RecordsContainer">  
                  (Ex-Factory)Start Date:  <%: Html.TextBoxFor(model => model.StartDate, new { style = "width: 120px;" })%>
                  End Date:  <%: Html.TextBoxFor(model => model.EndDate, new {  style = "width: 120px;" })%>
                  <input type="button" value="Search" title="Search" class="btn btn-primary btn-lg active"  id="GetAttenList" /> &nbsp; &nbsp;&nbsp;
                  <%--<input type="button" value="Export to Excel" title="Print" class="btn btn-primary btn-lg active"   onclick="printItem()" />--%>
                  <input type="button" value="Export to Excel" title="Print" class="btn btn-primary btn-lg active"   onclick="PrintExcel()" />
               </div>               
     </fieldset>                
   </div>
</div>

<script type="text/javascript">
$(document).ready(function () {
            $('#RecordsContainer').jtable({
                paging: true,
                columnResizable: true,
                pageSize: 15,
                sorting: false, //Enable sorting                
                title: 'Sales Report',
                defaultSorting: 'Name ASC',
                actions: {
                    listAction: '<%=Url.Content("~/Report/SalesreportList") %>'
                },
                fields: {
//                    ID: {
//                        key: true,
//                        create: false,
//                        edit: false,
//                        list: false
//                    },
                    InvoiceNo: {
                        title: 'Invoice No',                        
                        width: '8%'
                    },
                    InvoiceDate: {
                        title: 'Invoice Date',
                        width: '14%'
                    },                    
                    ContractNo: {
                        title: 'Contract No',
                        width: '10%'
                    },
                    ContractDate: {
                        title: 'Contract Date',
                        width: '10%'
                    },
                    ExporterNo: {
                        title: 'Exporter',
                        width: '4%'
                    },
//                    ExporterID: {
//                        title: 'Exporter',
//                        width: '4%',
//                        options: '<%=Url.Content("~/Private/AllExporterDetails") %>'
//                    },
                    ConsigneeNo: {
                        title: 'Consignee',
                        width: '10%'
                    },
//                    ConsigneeID: {
//                        title: 'Consignee',
//                        width: '10%',
//                        options: '<%=Url.Content("~/Private/AllConsigneeDetails") %>'
//                    },            
                    Name: {
                        title: 'Destination',
                        width: '5%'
                    },
//                    DestinationID: {
//                        title: 'Destination',
//                        width: '5%',
//                        options: '<%=Url.Content("~/Private/AllDestinationDetails") %>'
//                    },
                    TPort: {
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
                    RevQty: {
                        title: 'S.Qty',
                        width: '5%'
                    },
                    RevisedFOBValue: {
                        title: 'S.FOB',
                        width: '8%'
                    },
                    RevisedCMValue: {
                        title: 'S.CM',
                        width: '8%'
                    },                    
                    EXPNo: {
                        title: 'EXP No',
                        width: '8%'
                    },
                    EXPDate: {
                        title: 'EXP Date',
                        width: '6%'
                    },
                    EPNo: {
                        title: 'EP No',
                        width: '5%'
                    },
                    EPDate: {
                        title: 'EP Date',
                        width: '6%'
                    },
                    ExFactoryDate: {
                        title: 'Ex-Factory',
                        width: '8%'
                    }
                }
            });           
            $('#GetAttenList').click(function (e) {
                e.preventDefault();
                $('#RecordsContainer').jtable('load', {
                    StartDate: $('#StartDate').val(),
                    EndDate: $('#EndDate').val()
                });
            });
        }); 
</script>
<script type="text/javascript">
    $(function () {
        $("#StartDate, #EndDate ").datepicker({
            dateFormat: 'dd-mm-yy',
            changeMonth: true,
            changeYear: true,
            yearRange: '-100y:c+nn',
            maxDate: '1d'
        });
    });

</script>
</asp:Content>

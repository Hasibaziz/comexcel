<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Salesreport
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="mp_left_menu">
        <% Html.RenderPartial("Control/LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <fieldset><div id="RecordsContainer">               
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
                    ID: {
                        key: true,
                        create: false,
                        edit: false,
                        list: false
                    },
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
                    ExporterID: {
                        title: 'Exporter',
                        width: '4%',
                        options: '<%=Url.Content("~/Private/AllExporterDetails") %>'
                    },
                    ConsigneeID: {
                        title: 'Consignee',
                        width: '10%',
                        options: '<%=Url.Content("~/Private/AllConsigneeDetails") %>'
                    },             
                    DestinationID: {
                        title: 'Destination',
                        width: '5%',
                        options: '<%=Url.Content("~/Private/AllDestinationDetails") %>'
                    },
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
            $('#RecordsContainer').jtable('load');
        });  
</script>
<script type="text/javascript">
    $.hik.jtable.prototype.options.columnResizable = true;
</script>
</asp:Content>

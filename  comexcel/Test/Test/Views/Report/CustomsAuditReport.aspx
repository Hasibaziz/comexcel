<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    CustomsAuditReport
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
            title: 'Customs Audit Report',
            defaultSorting: 'Name ASC',
            actions: {
                listAction: '<%=Url.Content("~/Report/CustomsAuditReportList") %>'               
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
                    width: '8%'
                },
//                ContractNo: {
//                    title: 'Contract No',
//                    width: '10%'
//                },
//                ContractDate: {
//                    title: 'Contract Date',
//                    width: '10%'
//                },
//                ExporterID: {
//                    title: 'Exporter',
//                    width: '3%',
//                    options: '<%=Url.Content("~/Private/AllExporterDetails") %>'
//                },
//                ConsigneeID: {
//                    title: 'Consignee',
//                    width: '10%',
//                    options: '<%=Url.Content("~/Private/AllConsigneeDetails") %>'
//                },
//                DestinationID: {
//                    title: 'Destination',
//                    width: '5%',
//                    options: '<%=Url.Content("~/Private/AllDestinationDetails") %>'
//                },
                TPort: {
                    title: 'Mode',
                    width: '12%'
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
                    width: '7%'
                },
                EPNo: {
                    title: 'EP No',
                    width: '5%'
                },
                EPDate: {
                    title: 'EP Date',
                    width: '7%'
                },
                ExFactoryDate: {
                    title: 'Ex-Factory',
                    width: '5%'                //8% Perfect
                },
                IRegisterNo: {
                    title: 'ImpRegNo',
                    width: '8%'
                },
                IBond: {
                    title: 'ImpBond',
                    width: '5%'
                },
                TotalFabric: {
                    title: 'ToFabricUsed',
                    width: '8%'
                },
                AdjustReg: {
                    title: 'AdjReg',
                    width: '5%'
                },
                AdjustRegPage: {
                    title: 'AdjRegPage',
                    width: '7%'
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

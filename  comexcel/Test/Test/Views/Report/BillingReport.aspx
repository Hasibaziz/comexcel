<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.ReportBillinInfoEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    BillingReport
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<script type="text/javascript">   
    function PrintExcel() {        
        EX1 = $("#CourierNo").val();        
        window.location = "/Report/BillingReportOnExcel?EX1=" + EX1;
    }
</script>
<div class="mp_left_menu">
        <% Html.RenderPartial("Control/LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <fieldset><div id="RecordsContainer">  
                   Courier No:  <%: Html.TextBoxFor(model => model.CourierNo, new {  style = "width: 120px;" })%>
                  <%--<input type="button" value="Search" title="Search" class="btn btn-primary btn-lg active"  id="GetAttenList" /> &nbsp; &nbsp;&nbsp; --%>
                  <input type="image" src="../../Content/images/Searchimg.png" value="Search" title="Search"  id="GetAttenList" data-toggle="tooltip" data-placement="top"/> &nbsp; &nbsp;&nbsp;
                  <%--<input type="button" value="Export to Excel" title="Print" class="btn btn-primary btn-lg active"   onclick="PrintExcel()" />--%>
                  <input type="image" src="../../Content/images/ExportExl.png" value="Export to Excel" title="Export" onclick="PrintExcel()" />
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
                listAction: '<%=Url.Content("~/Report/BillingReportList") %>'
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
                CONTRACTNO: {
                    title: 'CONTRACTNO',
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
                BUYERNAME: {
                    title: 'BUYERNAME',
                    width: '10%'
                },
                //                    ConsigneeID: {
                //                        title: 'Consignee',
                //                        width: '10%',
                //                        options: '<%=Url.Content("~/Private/AllConsigneeDetails") %>'
                //                    },            
                DESTINATION: {
                    title: 'Destination',
                    width: '5%'
                },
                //                    DestinationID: {
                //                        title: 'Destination',
                //                        width: '5%',
                //                        options: '<%=Url.Content("~/Private/AllDestinationDetails") %>'
                //                    },
                MODE: {
                    title: 'MODE',
                    width: '12%'
                },
//                Quantity: {
//                    title: 'Qty',
//                    width: '5%'
//                },
//                FOBValue: {
//                    title: 'FOB',
//                    width: '8%'
//                },
//                CMValue: {
//                    title: 'C.M.',
//                    width: '8%'
//                },
                QtyPCS: {
                    title: 'Qty(PCS)',
                    width: '5%'
                },
                FOBValueUSD: {
                    title: 'FOBValue(USD)',
                    width: '8%'
                },
                CMValueUSD: {
                    title: 'CMValue(USD)',
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
//                EPNo: {
//                    title: 'EP No',
//                    width: '5%'
//                },
//                EPDate: {
//                    title: 'EP Date',
//                    width: '6%'
//                },
                ExFactoryDate: {
                    title: 'Ex-Factory',
                    width: '8%'
                },
                SBNo: {
                    title: 'SB No',
                    width: '8%'
                },
                SBDate: {
                    title: 'SB Date',
                    width: '8%'
                },
                DocSubmitToFWDR: {
                    title: 'DocSubmitToFWDR',
                    width: '12%'
                }
            }
        });
        // $('#RecordsContainer').jtable('load');
        $('#GetAttenList').click(function (e) {
            e.preventDefault();
            $('#RecordsContainer').jtable('load', {
                CourierNo: $('#CourierNo').val()
            });
        });
    });  
</script>

</asp:Content>

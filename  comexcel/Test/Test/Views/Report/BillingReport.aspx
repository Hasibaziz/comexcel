<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.ReportBillinInfoEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    BillingReport
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<script type="text/javascript">   
    function PrintExcel() {
        EX1 = $("#CourierNo").val();
        SDATE = $("#StartDate").val();
        EDATE = $("#EndDate").val();
        window.location = "/Report/BillingReportOnExcel?Courier=" + EX1 + "&StartDate=" + SDATE + "&EndDate=" + EDATE;
    }
</script>
<div class="mp_left_menu">
        <% Html.RenderPartial("Control/LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <fieldset><div id="RecordsContainer">  
                 <div style=" margin: 0em .5cm 0px 29cm;"> 
                   <a href="#" id="dialog_link" ><img src="../../Content/images/Index.png", alt="Search" /></a> 
                 </div>
                 <div id="dialog" title="Search">
                         Courier No:  <%: Html.TextBoxFor(model => model.CourierNo, new {  style = "width: 120px;" })%>                
                       <div style=" margin: 0em .5cm 0px 0.3cm;">
                         Start Date:  <%: Html.TextBoxFor(model => model.StartDate, new { style = "width: 120px;" })%>
                       </div>
                       <div style=" margin: 0em .5cm 0px 0.4cm;">
                         End Date:  <%: Html.TextBoxFor(model => model.EndDate, new {  style = "width: 120px;" })%>  
                       </div>
                      <%--<input type="button" value="Search" title="Search" class="btn btn-primary btn-lg active"  id="GetAttenList" /> &nbsp; &nbsp;&nbsp; --%>
                      <input type="image" src="../../Content/images/Searchimg.png" value="Search" title="Search"  id="GetAttenList" data-toggle="tooltip" data-placement="top"/> &nbsp; &nbsp;&nbsp;
                      <%--<input type="button" value="Export to Excel" title="Print" class="btn btn-primary btn-lg active"   onclick="PrintExcel()" />--%>
                        <input type="image" src="../../Content/images/ExportExl.png" value="Export to Excel" title="Export" onclick="PrintExcel()" />
                   </div>                         
                </div>
     </fieldset>                   
  </div>
</div>

<script type="text/javascript">
   // $('input#CourierNo, #StartDate, #EndDate').change(function () {  

//        $('#RecordsContainer').jtable({
//            paging: true,
//            columnResizable: true,
//            pageSize: 15,
//            sorting: false, //Enable sorting                
//            title: 'Billing Report',
//            defaultSorting: 'Name ASC',
//            actions: {
//                //listAction: '<%=Url.Content("~/Report/BillingReportList") %>'
//                listAction: '/Report/BillingReportList?courierno=' + $("#CourierNo").val() + "&SDate=" + $("#StartDate").val() + "&EDate=" + $("#EndDate").val()
//            },
//            fields: {
//                //                    ID: {
//                //                        key: true,
//                //                        create: false,
//                //                        edit: false,
//                //                        list: false
//                //                    },
//                InvoiceNo: {
//                    title: 'Invoice No',
//                    width: '8%'
//                },
//                InvoiceDate: {
//                    title: 'Invoice Date',
//                    width: '10%'
//                },
//                ExporterNo: {
//                    title: 'Exporter',
//                    width: '4%'
//                }, 
//                BUYERNAME: {
//                    title: 'BUYERNAME',
//                    width: '10%'
//                },     
//                DESTINATION: {
//                    title: 'Destination',
//                    width: '5%'
//                },
//                MODE: {
//                    title: 'MODE',
//                    width: '10%'
//                },
//                QtyPCS: {
//                    title: 'Qty(PCS)',
//                    width: '5%'
//                },
//                FOBValueUSD: {
//                    title: 'FOB(USD)',
//                    width: '5%'
//                },
//                CMValueUSD: {
//                    title: 'CM(USD)',
//                    width: '5%'
//                },
//                EXPNo: {
//                    title: 'EXP No',
//                    width: '8%'
//                },
//                EXPDate: {
//                    title: 'EXP Date',
//                    width: '6%'
//                },
//                ExFactoryDate: {
//                    title: 'Ex-Factory',
//                    width: '8%'
//                },
//                SBNo: {
//                    title: 'SB No',
//                    width: '8%'
//                },
//                SBDate: {
//                    title: 'SB Date',
//                    width: '8%'
//                },
//                CourierNo: {
//                    title: 'Courier No',
//                    width: '12%'
//                },
//                CourierDate: {
//                    title: 'Courier Date',
//                    width: '12%'
//                }
//            }
//        });
//         $('#RecordsContainer').jtable('load');
////        $('#GetAttenList').click(function (e) {
////            e.preventDefault();
////            $('#RecordsContainer').jtable('load', {
////                CourierNo: $('#CourierNo').val()
////            });
////        });
//    });
    $(document).ready(function () {

        $('#RecordsContainer').jtable({
            paging: true,
            columnResizable: true,
            pageSize: 15,
            sorting: false, //Enable sorting                
            title: 'Billing Report',
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
                MODE: {
                    title: 'MODE',
                    width: '10%'
                },
                QtyPCS: {
                    title: 'Qty(PCS)',
                    width: '5%'
                },
                FOBValueUSD: {
                    title: 'FOB(USD)',
                    width: '5%'
                },
                CMValueUSD: {
                    title: 'CM(USD)',
                    width: '5%'
                },
                EXPNo: {
                    title: 'EXP No',
                    width: '8%'
                },
                EXPDate: {
                    title: 'EXP Date',
                    width: '6%'
                },
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
                CourierNo: {
                    title: 'Courier No',
                    width: '12%'
                },
                CourierDate: {
                    title: 'Courier Date',
                    width: '12%'
                }
            }
        });
        // $('#RecordsContainer').jtable('load');
        $('#GetAttenList').click(function (e) {
            e.preventDefault();
            $('#RecordsContainer').jtable('load', {
                CourierNo: $('#CourierNo').val(),
                StartDate: $('#StartDate').val(),
                EndDate: $('#EndDate').val()
            });
        });
    });   
</script>
 <script type="text/javascript">
     $(document).ready(function () {
         // Dialog
         $('#dialog').dialog({
             autoOpen: false,
             resizable: false,    /// To make the Popup Window Customs resize (Big or Small)
             width: 500,
             modal: true,    // For Background Disable... 
             show: {
                 effect: "blind",
                 duration: 1000
             },
             hide: {
                 effect: "blind",       //effect: "explode",
                 duration: 1000
             },
             buttons: {
                 "Ok": function () {
                     $(this).dialog("close");
                 },
//                 "Cancel": function () {
//                     $(this).dialog("close");
//                 }
             }
         });
         // Dialog Link
         $('#dialog_link').click(function () {
             $('#dialog').dialog('open');
             return false;
         });
     });
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

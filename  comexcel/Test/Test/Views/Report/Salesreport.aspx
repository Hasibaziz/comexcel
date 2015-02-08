<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.SalesreportEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Salesreport
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<script type="text/javascript">
    function printItem() {
        EX1 = $("#StartDate").val();
        EX2 = $("#EndDate").val();  
        //alert("Report");
        //window.open("/Report/SalesReport01");
        window.open("/Report/SalesReport01?EX1=" + EX1 + "&EX2=" + EX2);
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
               <div style=" margin: 0em .5cm 0px 29cm;"> 
                  <a href="#" id="dialog_link" ><img src="../../Content/images/Index.png", alt="Search" /></a> 
               </div>
               <div id="dialog" title="Search"> 
                  <div style=" margin: 0em .5cm 0px 0.3cm;">
                     (Ex-Factory)Start Date:  <%: Html.TextBoxFor(model => model.StartDate, new { style = "width: 120px;" })%>
                  </div>
                  <div style=" margin: 0em .5cm 0px 2.7cm;">
                     End Date:  <%: Html.TextBoxFor(model => model.EndDate, new {  style = "width: 120px;" })%>                  
                  </div>
                  <input type="image" src="../../Content/images/Searchimg.png" value="Search" title="Search"  id="GetAttenList" /> &nbsp; &nbsp;&nbsp;
                  <input type="image" src="../../Content/images/ExportExl.png" value="Export to Excel" title="Print"   onclick="printItem()" />
                  <%--<input type="button" value="Export to Excel" title="Print" class="btn btn-primary btn-lg active"   onclick="PrintExcel()" />--%>
                  <%--<input type="image" src="../../Content/images/ExportExl.png" value="Export to Excel" title="Print" onclick="PrintExcel()" />--%>
                </div>
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

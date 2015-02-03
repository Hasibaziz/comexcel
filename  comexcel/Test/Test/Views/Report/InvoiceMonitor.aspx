<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.ReportBillinInfoEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    InvoiceMonitor
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<script type="text/javascript">    
    function PrintExcel() {
        EX1 = $("#StartDate").val();
        EX2 = $("#EndDate").val();
        window.location = "/Report/InvoiceMonitorExcel?EX1=" + EX1 + "&EX2=" + EX2;
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
                     (Invoice Date)Start Date:  <%: Html.TextBoxFor(model => model.StartDate, new { style = "width: 120px;" })%>
                  </div>
                  <div style=" margin: 0em .5cm 0px 3.2cm;">
                     End Date:  <%: Html.TextBoxFor(model => model.EndDate, new {  style = "width: 120px;" })%>                  
                 </div>
                  <input type="image" src="../../Content/images/Searchimg.png" value="Search" title="Search"  id="GetInvoiceList" /> &nbsp; &nbsp;&nbsp;
                 <input type="image" src="../../Content/images/ExportExl.png" value="Export to Excel" title="Export" onclick="PrintExcel()" />
               </div>
            </div>  
     </fieldset>                 
   </div>
</div>
<script type="text/javascript">    
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
                ExFactoryDate: {
                    title: 'Ex-Factory Date',
                    width: '14%'
                }
            }
        });
        //$('#RecordsContainer').jtable('load');
        $('#GetInvoiceList').click(function (e) {
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

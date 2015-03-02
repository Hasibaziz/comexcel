<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.BillingInfoEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    BillingInfo
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="mp_left_menu">
        <% Html.RenderPartial("LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <fieldset><div id="RecordsContainer">
                 <div style=" margin: 0em .5cm -20px 29cm;"> 
                   <a href="#" id="dialog_link" ><img src="../../Content/images/Index.png", alt="Search" /></a> 
                 </div>
                 <div id="dialog" title="Search">
                 Invoice No:  <%: Html.TextBoxFor(model => model.InvoiceNo, new { style = "width: 120px;" })%>   
                             
                 <%--<input type="button" value="Export to Excel" title="Print" class="btn btn-info btn-lg active"  onclick="printPDF()" /> --%>                 
                 </div>
                 <div>
                   <%: Html.ActionLink("Add New Entry", "BillingEntry", new { @href = "#", @id = "dialog_link", title = "Receive Item" })%>
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
            title: 'Invoice List for Billing',
            defaultSorting: 'Name ASC',
            actions: {
                listAction: '<%=Url.Content("~/Billing/BillingInfoList") %>'
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
                        return '<a href="/Billing/BillingEntryUpdateByInvoiceNo/' + data.record.ID + '">' + data.record.InvoiceNo + '</a>';
                    }
                },
                SBNo: {
                    title: 'SB No',
                    width: '6%',
                    display: function (data) {
                        //var $img = $('<button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="' + data.record.TTNo + '">' + data.record.ItemName + '</button>');
                        var $img = $('<label style="font: normal 11px courier;"  class="jtable-input-label" data-toggle="tooltip" data-placement="left" title="' + data.record.UserName + "\n" + data.record.CurrentDate + '">' + data.record.SBNo + '</label>');
                        return $img;
                    }
                },
                SBDate: {
                    title: 'SB Date',
                    width: '8%'
                },
                DocSubmitDate: {
                    title: 'Doc Submit Date',
                    width: '10%'
                },
                CourierNo: {
                    title: 'Courier No',
                    width: '8%'
                },
                CourierDate: {
                    title: 'Courier Date',
                    width: '8%'
                },
                BuyerCourierNo: {
                    title: 'Buyer Courier No',
                    width: '10%'
                },
                BuyerCourierDate: {
                    title: 'Buyer Courier Date',
                    width: '12%'
                },
                LeadTime: {
                    title: 'Lead Time',
                    width: '8%'
                },
                BankSubmitDate: {
                    title: 'Bank Submit Date',
                    width: '12%'
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
            title: 'Invoice List for Billing',
            defaultSorting: 'Name ASC',
            actions: {
                listAction: '/Billing/BillingInvoiceSearchByNo?InvNo=' + $("#InvoiceNo").val()
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
                        return '<a href="/Billing/BillingEntryUpdateByInvoiceNo/' + data.record.ID + '">' + data.record.InvoiceNo + '</a>';
                    }
                },
                SBNo: {
                    title: 'SB No',
                    width: '6%',
                    display: function (data) {
                        //var $img = $('<button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="' + data.record.TTNo + '">' + data.record.ItemName + '</button>');
                        var $img = $('<label style="font: normal 11px courier;"  class="jtable-input-label" data-toggle="tooltip" data-placement="left" title="' + data.record.UserName + "\n" + data.record.CurrentDate + '">' + data.record.SBNo + '</label>');
                        return $img;
                    }
                },
                SBDate: {
                    title: 'SB Date',
                    width: '8%'
                },
                DocSubmitDate: {
                    title: 'Doc Submit Date',
                    width: '10%'
                },
                CourierNo: {
                    title: 'Courier No',
                    width: '8%'
                },
                CourierDate: {
                    title: 'Courier Date',
                    width: '8%'
                },
                BuyerCourierNo: {
                    title: 'Buyer Courier No',
                    width: '10%'
                },
                BuyerCourierDate: {
                    title: 'Buyer Courier Date',
                    width: '12%'
                },
                LeadTime: {
                    title: 'Lead Time',
                    width: '8%'
                },
                BankSubmitDate: {
                    title: 'Bank Submit Date',
                    width: '12%'
                }
            }
        });
        $('#RecordsContainer').jtable('load');
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
                 "Search": function () {
                     $(this).dialog("close");                   
                 },
                 "Cancel": function () {
                     $(this).dialog("close");
                 }
             }
         });
         // Dialog Link
         $('#dialog_link').click(function () {
             $('#dialog').dialog('open');
             return false;
         });
     });

</script>
</asp:Content>

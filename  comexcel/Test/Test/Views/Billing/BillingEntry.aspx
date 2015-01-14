<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.BillingInfoEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    BillingEntry
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">



<%--************-----------------For Client Side Validation-------------********************--%>
<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>
          <%--**************--------------------------**************************--%>

 <%--*************---------For Making Balloon Validation Check---------------******************--%>
 <link href="<%: Url.Content("~/Content/validationEngine/validationEngine.jquery.css") %>" rel="stylesheet" type="text/css" />
 <script src="<%: Url.Content("~/Scripts/validationEngine/jquery.validationEngine-en.js")  %>" type="text/javascript" ></script>
 <script src="<%: Url.Content("~/Scripts/validationEngine/jquery.validationEngine.js")  %>" type="text/javascript" ></script>
          <%--**************--------------------------**************************--%>

<script src="<%: Url.Content("~/Scripts/Exportform.js") %>" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function () {
    ////////////////***********  For Not to Loose the Cursore Focus from Selecting Date Picker *****///////////////////////
    $.datepicker.setDefaults($.extend({},
            {
                changeMonth: true,
                changeYear: true,
                showStatus: true,
                dateFormat: 'dd-mm-yy',
                duration: 'fast',
                yearRange: '1890:2100'
            }
            )
        );
            $("input#DocsendingDate, #ETADate, #SBDate, #EPDate, #DocSubmitDate, #CourierDate, #BuyerCourierDate, #BankSubmitDate").datepicker({
        onSelect: function () {
            document.all ? $(this).get(0).fireEevent("onChange") :
                            $(this).change();
            this.focus();
        },
        onClose: function (dateText, inst) {
            if (!document.all)
                this.select();
        }
    });    
});
</script>

<script type="text/javascript" >
    $(function () {
        $("#tabs").tabs();
    });

    function frmSuccess(data) {  //Need this Reference: (" jquery.unobtrusive-ajax.js ")       
        if (data.isSuccess) {
            $('<div></div>').html('Check! ' + data.message).dialog({
                modal: true,
                resizable: false,
                title: "Alert",
                dataType: "json",
                width: 430,
                height: 160,
                buttons: {
                    "OK": function () {
                        //closeDialog($(this))
                        $(this).dialog("close");
                        window.location = '<%: Url.Action("BillingInfo") %>'
                    }
                }
            });
            //alert("Check! " + data.message);
        } else {
            //alert("Save Successful");
            //window.location.href = window.location.href;
            $('<div></div>').html('Save Successful').dialog({
                modal: true,
                resizable: false,
                title: "Success",
                dataType: "json",
                width: 200,
                buttons: {
                    "OK": function () {
                        //closeDialog($(this))
                        $("#InvoiceNo").val(" ");
                        $("#SBNo").val(" ");
                        $("#SBDate").val(" ");
                        $("#DocSubmitDate").val(" ");
                        $("#CourierNo").val(" ");

                        $("#CourierDate").val(" ");

                        $("#BuyerCourierNo").val(" ");
                        $("#BuyerCourierDate").val(" ");

                        $("#LeadTime").val(" ");

                        $("#BankSubmitDate").val(" ");
                        $("#ModeStatus").val(" "); 
                                             
                        $(this).dialog("close");
                        $("#SInvoiceNo").focus();
                    }
                }
            });
        }
    }
    $(document).ready(function () {
        // Define a custom validation function.
        //        $.validationEngineLanguage.allRules['test_value'] = {
        //            "func": function (field, rules, i, options) {
        //                return (field.val() == 'test');
        //            },
        //            "alertText": "* Value must be 'test'."
        //        };

        // Initiate the validation engine.
        $('#frmSpID').validationEngine();
        $(function () {
            $("#InvoiceNo option, #SBDate option, #DocSubmitDate option, #CourierDate option, #BuyerCourierDate option").each(function () {
                $(this).attr({ 'title': $(this).html() });
            });
        });
    });
</script>

<div class="mp_left_menu">
        <% Html.RenderPartial("LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <div id="RecordsContainer">
        Invoice No:  <%: Html.TextBoxFor(model => model.SInvoiceNo, new { style = "width: 120px;" })%>  
     </div>
   </div>
<% using (Ajax.BeginForm("BillingEntry", "Billing", null, new AjaxOptions { HttpMethod = "POST", OnSuccess = "frmSuccess" }, new { @id = "frmSpID" }))
   { %>
    <%: Html.ValidationSummary(true) %>
        <%: Html.HiddenFor(model => model.ID) %>
    <fieldset>
        <legend>Billing Information Entry</legend>

        <div class="editor-label01">
            <label for="InvoiceNo">Invoice No:</label>               
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.InvoiceNo, new { @readonly = "true", @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.InvoiceNo) %>
        </div>

        <div class="editor-label01">
            <label for="SBNo">SB No:</label>             
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.SBNo, new { @Value = "C ", @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.SBNo) %>
        </div>

        <div class="editor-label01">
            <label for="SBDate">SB Date:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.SBDate, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.SBDate) %>
        </div>

        <div class="editor-label01">
            <label for="DocSubmitDate">Doc Submit Date:</label>             
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.DocSubmitDate)%>
            <%: Html.ValidationMessageFor(model => model.DocSubmitDate) %>
        </div>

        <div class="editor-label01">
            <label for="CourierNo">HK Courier No:</label>              
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.CourierNo)%>
            <%: Html.ValidationMessageFor(model => model.CourierNo) %>
        </div>

        <div class="editor-label01">
            <label for="CourierDate">HK Courier Date:</label>              
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.CourierDate)%>
            <%: Html.ValidationMessageFor(model => model.CourierDate) %>
        </div>

        <div class="editor-label01">
            <label for="BuyerCourierNo">Buyer Courier No:</label>              
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.BuyerCourierNo)%>
            <%: Html.ValidationMessageFor(model => model.BuyerCourierNo) %>
        </div>

        <div class="editor-label01">
            <label for="BuyerCourierDate">Buyer Courier Date:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.BuyerCourierDate)%>
            <%: Html.ValidationMessageFor(model => model.BuyerCourierDate) %>
        </div>

        <div class="editor-label01">
            <label for="LeadTime">Lead Time:</label>             
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.LeadTime)%>
            <%: Html.ValidationMessageFor(model => model.LeadTime) %>
        </div>

        <div class="editor-label01">
            <label for="BankSubmitDate">Bank Submit Date:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.BankSubmitDate)%>
            <%: Html.ValidationMessageFor(model => model.BankSubmitDate) %>
        </div>             
        <div class="editor-label01">
            <label for="ModeStatus">Mode :</label>            
        </div>
        <div class="editor-field01">
           <%-- <%: Html.DropDownListFor(model => model.ModeStatus, new List<SelectListItem> 
               {  
                 new SelectListItem { Text = " " },
                 new SelectListItem { Text = "AIR PP" },
                 new SelectListItem { Text = "AIR CC" },
                 new SelectListItem { Text = "ROAD PP" },
                 new SelectListItem { Text = "ROAD CC" },
                 new SelectListItem { Text = "SEA PP" },
                 new SelectListItem { Text = "SEA CC" }
                }, new { @class = "validate[required]" })%>--%>
            <%: Html.DropDownListFor(model => model.ModeStatus, new List<SelectListItem> 
               {  
                 new SelectListItem { Text = " " },
                 new SelectListItem { Text = "AIR PP" },
                 new SelectListItem { Text = "AIR CC" },
                 new SelectListItem { Text = "ROAD PP" },
                 new SelectListItem { Text = "ROAD CC" },
                 new SelectListItem { Text = "SEA PP" },
                 new SelectListItem { Text = "SEA CC" }
                })%>
            <%--<%: Html.DropDownListFor(model => model.Mode, Enum.GetValues(typeof(Test.Domain.Model.BillingInfoEntity.ModeStatus)).Cast<Test.Domain.Model.BillingInfoEntity.ModeStatus>().Select(x => new SelectListItem { Value = ((int)x).ToString(), Text = x.ToString() }))%>--%>
            <%: Html.ValidationMessageFor(model => model.ModeStatus)%>
        </div> 

        <p>
            <input type="submit" class="btn btn-info btn-lg active" data-toggle="button" value="Save" />     
            <input type="button" onclick="window.location='<%: Url.Action("BillingInfo") %>'" class="btn btn-default btn-lg" value="Cancel" />   
        </p>
    </fieldset>
    <% } %>
    
    <div>
        <%: Html.ActionLink("Back to List", "BillingInfo")%>
    </div>
</div>

<script type="text/javascript">
    $('input#SInvoiceNo').change(function () {
        var inv = $('#SInvoiceNo').val();
        if (inv == "") {
            $('<div></div>').html('Please Insert Invoice Number!').dialog({
                modal: true,
                resizable: false,
                title: "Message",
                dataType: "json",
                width: 350,
                height: 155,
                buttons: {
                    "OK": function () {
                        //closeDialog($(this))
                        $(this).dialog("close");
                        window.location = '<%: Url.Action("BillingInfo") %>'
                    }
                }
            });
            //alert("Check! " + data.message);
        } 
        else if (inv != "") {
            var Result = $.post('<%: ResolveUrl("~/Billing/InvoiceSrcByNo?invoice=")%>' + $("#SInvoiceNo").attr("value"), function (data) {
                $("#InvoiceNo").val(data.InvoiceNo);
            });

            $('#RecordsContainer').jtable({
                paging: true,
                pageSize: 5,
                sorting: false,
                title: 'Invoice Records',
                defaultSorting: 'Name ASC',
                actions: {
                    listAction: '/Sales/CSalesInvoiceSearchByNo?Invno=' + $("#SInvoiceNo").val()
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
                        width: '8%'
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
                    RevisedFOBValue: {
                        title: 'ShippedFOB',
                        width: '8%'
                    },
                    RevisedCMValue: {
                        title: 'ShippedC.M.',
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
        }
    });   
 </script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#SInvoiceNo').change(function () {
            $('#InvoiceNo').val($(this).val());
        });
    });

</script>
</asp:Content>

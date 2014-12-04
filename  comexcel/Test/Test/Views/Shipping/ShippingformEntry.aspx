<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.ShippinginfoEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ShippingformEntry
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
                        window.location = '<%: Url.Action("ComsalesInfo") %>'
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
                        $("#OrderNo").val(" ");
                        $("#InvoiceNo").val(" ");
                        $("#StyleNo").val(" ");
                        $("#ProductType").val(" ");

                        $("#ShipbordingDate").val(" ");

                        $("#BLNo").val(" ");
                        $("#BLDate").val(" ");

                        $("#RevQty").val(" ");

                        $("#RevisedFOBValue").val(" ");
                        $("#RevisedCMValue").val(" ");
                        $("#CartonQty").val(" ");
                        $("#CBMValue").val(" ");
                        $("#TTLCTN").val(" ");
                        $("#VesselName").val(" ");


                        $(this).dialog("close");
                        $("#InvoiceNo").focus();
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
            $("#InvoiceNo option, #ExFactoryDate option, #EPNo option").each(function () {
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
<% using (Ajax.BeginForm("ShippingformEntry", "Shipping", null, new AjaxOptions { HttpMethod = "POST", OnSuccess = "frmSuccess" }, new { @id = "frmSpID" }))
   { %>
    <%: Html.ValidationSummary(true) %>
       <%: Html.HiddenFor(model => model.ID) %>
<div id="tabs">
        <ul>
          <li><a href="#tabs-1">Shipment Status Info</a></li>
          <li><a href="#tabs-2">Other Info</a></li>                  
        </ul>
    <div id="tabs-1">
      <fieldset>         
             <legend>Shipment Status Info</legend>
        <div class="editor-label01">
            <label for="InvoiceNo">Invoice No:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.InvoiceNo, new { @readonly = "true", @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.InvoiceNo) %>
        </div>
        <div class="editor-label01">
            <label for="EPNo">EP No:</label>               
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.EPNo, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.EPNo) %>
        </div>

        <div class="editor-label01">
            <label for="EPDate">EP Date:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.EPDate) %>
            <%: Html.ValidationMessageFor(model => model.EPDate) %>
        </div>
        <div class="editor-label01">
            <label for="EXPNo">EXP No:</label>             
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.EXPNo) %>
            <%: Html.ValidationMessageFor(model => model.EXPNo) %>
        </div>

        <div class="editor-label01">
            <label for="EXPDate">EXP Date:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.EXPDate) %>
            <%: Html.ValidationMessageFor(model => model.EXPDate) %>
        </div>
        <div class="editor-label01">
            <label for="ExFactoryDate">Ex-Factory Date:</label>             
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.ExFactoryDate, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.ExFactoryDate) %>
        </div>
         <div class="editor-label01">
            <label for="SBNo">SB No:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.SBNo) %>
            <%: Html.ValidationMessageFor(model => model.SBNo) %>
        </div>

        <div class="editor-label01">
            <label for="SBDate">SB Date:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.SBDate) %>
            <%: Html.ValidationMessageFor(model => model.SBDate) %>
        </div>

        </fieldset>
    </div>
    <div id="tabs-2">
      <fieldset>         
             <legend>Other Info</legend>
        <div class="editor-label01">
            <label for="TransportID">Local Transport:</label>             
        </div>
        <div class="editor-field01">
            <%--<%: Html.EditorFor(model => model.TransportID) %>--%>
            <%: Html.DropDownListFor(model => model.TransportID, (List<SelectListItem>)ViewData["Name"], new { @class = "validate[required]" })%>  
            <%: Html.ValidationMessageFor(model => model.TransportID) %>
        </div>
        <div class="editor-label01">
           <label for="CnFAgent">C&F Agent:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.CnFAgent) %>
            <%: Html.ValidationMessageFor(model => model.CnFAgent) %>
        </div>        
         <div class="editor-label01">
           <label for="VesselNo">Vessel No:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.VesselNo) %>
            <%: Html.ValidationMessageFor(model => model.VesselNo) %>
        </div>

        <div class="editor-label01">
            <label for="CargorptDate">Cargo Receive Date:</label>             
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.CargorptDate) %>
            <%: Html.ValidationMessageFor(model => model.CargorptDate) %>
        </div>
      </fieldset>
    </div>
</div>        

    <p>
        <input type="submit" class="btn btn-info btn-lg active" data-toggle="button" value="Save" />     
        <input type="button" onclick="window.location='<%: Url.Action("ShippingInfo") %>'" class="btn btn-default btn-lg" value="Cancel" />   
    </p>
   
<% } %>
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
                        window.location = '<%: Url.Action("ShippingInfo") %>'
                    }
                }
            });
            //alert("Check! " + data.message);
        } else {

            $('#RecordsContainer').jtable({
                paging: true,
                pageSize: 5,
                sorting: false,
                title: 'Invoice Records',
                defaultSorting: 'Name ASC',
                actions: {
                    listAction: '/Shipping/InvoiceSearchByNo?Invno=' + $("#SInvoiceNo").val()
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
                    InvoiceDate: {
                        title: 'Invoice Date',
                        width: '10%'
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
                        width: '6%',
                        options: '<%=Url.Content("~/Private/AllExporterDetails") %>'
                    },
                    ConsigneeID: {
                        title: 'Consignee No',
                        width: '10%',
                        options: '<%=Url.Content("~/Private/AllConsigneeDetails") %>'
                    },
                    TPort: {
                        title: 'Local Port',
                        width: '10%'
                    },
                    Quantity: {
                        title: 'Quantity',
                        width: '6%'
                    },
                    FOBValue: {
                        title: 'FOB Value',
                        width: '6%'
                    },
                    CMValue: {
                        title: 'CM Value',
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

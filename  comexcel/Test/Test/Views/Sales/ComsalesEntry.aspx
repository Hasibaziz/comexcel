<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.ComsalesinfoEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ComsalesEntry
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



<script type="text/javascript" >
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
            $("input#BLDate, #ETADate, #ShipbordingDate").datepicker({
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
        //$('#frmID').validationEngine();
    });
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
                        $("#ETADate").val(" ");
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
        $('#frmSID').validationEngine();
        $(function () {
            $("#InvoiceNo option, #OrderNo option, #EPNo option").each(function () {
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
<% using (Ajax.BeginForm("ComsalesEntry", "Sales", null, new AjaxOptions { HttpMethod = "POST", OnSuccess = "frmSuccess" }, new {@id = "frmSID" }))
   { %>
    <%: Html.ValidationSummary(true) %>   
        <%: Html.HiddenFor(model => model.ID)%>
<div id="tabs">
        <ul>
        <li><a href="#tabs-1">Item Info Entry</a></li>
        <li><a href="#tabs-2">Quantity & Value</a></li>  
        <li><a href="#tabs-3">Shipment Status Info</a></li>    
        <li><a href="#tabs-4">Exception Value</a></li>      
        </ul>
    <div id="tabs-1">
        <div class="editor-label01">           
            <label for="InvoiceNo">Invoice No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.InvoiceNo, new { @readonly = "true", @class = "validate[required]" })%>            
            <%: Html.ValidationMessageFor(model => model.InvoiceNo) %>            
        </div>
        <div class="editor-label01">            
            <label for="OrderNo">Order No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextAreaFor(model => model.OrderNo, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.OrderNo) %>
        </div>
         <div class="editor-label01">           
            <label for="StyleNo">Style No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.StyleNo) %>
            <%: Html.ValidationMessageFor(model => model.StyleNo) %>
        </div>
         <div class="editor-label01">           
            <label for="ProductType">Product Type:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.ProductType) %>
            <%: Html.ValidationMessageFor(model => model.ProductType) %>
        </div>
    </div>
    <div id="tabs-2">
          <div class="editor-label01">           
            <label for="RevQty">Shipped Qty:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.RevQty) %>
            <%: Html.ValidationMessageFor(model => model.RevQty) %>
        </div>
         <div class="editor-label01">            
            <label for="CartonQty">Carton Qty:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.CartonQty, new { style = "width: 60px;" })%>
            <%: Html.ValidationMessageFor(model => model.CartonQty) %>
        </div>
       
        <div class="editor-label01">            
            <label for="RevisedFOBValue">Shipped FOB Value:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.RevisedFOBValue, new { style = "width: 80px;" })%>
            <%: Html.ValidationMessageFor(model => model.RevisedFOBValue) %>
        </div>

        <div class="editor-label01">            
            <label for="RevisedCMValue">Shipped CM Value:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.RevisedCMValue, new { @readonly = "true", style = "width: 80px;" })%>
            <%: Html.ValidationMessageFor(model => model.RevisedCMValue) %>
        </div>
         <div class="editor-label01">           
            <label for="CBMValue">CBM:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.CBMValue) %>
            <%: Html.ValidationMessageFor(model => model.CBMValue) %>
        </div>
    </div>
    <div id="tabs-3">
      <fieldset>        
         <div class="editor-label01">           
            <label for="CBMValue">ETA Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.ETADate)%>
            <%: Html.ValidationMessageFor(model => model.ETADate)%>
        </div>
       <%-- <div class="editor-label01">            
            <label for="TTLCTN">TTL CTN:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.TTLCTN)%>
            <%: Html.ValidationMessageFor(model => model.TTLCTN)%>
        </div>--%>
        <div class="editor-label01">            
            <label for="VesselName">Vessel Name:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.VesselName)%>
            <%: Html.ValidationMessageFor(model => model.VesselName)%>
        </div>        
        <div class="editor-label01">            
            <label for="ShipbordingDate">Shipped on Board Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.ShipbordingDate) %>
            <%: Html.ValidationMessageFor(model => model.ShipbordingDate) %>
        </div>        
               
        <div class="editor-label01">           
            <label for="BLNo">B/L No:</label>
        </div>        
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.BLNo, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.BLNo) %>
        </div>
        <div class="editor-label01">           
            <label for="BLDate">B/L Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.BLDate) %>
            <%: Html.ValidationMessageFor(model => model.BLDate) %>
        </div>           
     </fieldset>
   </div>
   <div id="tabs-4">
      <fieldset>
       <div class="editor-label01">           
            <label for="FinalQty">Final Qty:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.FinalQty, new { style = "width: 80px;" })%>
            <%: Html.ValidationMessageFor(model => model.FinalQty)%>
        </div>      

         <div class="editor-label01">           
            <label for="FinalFOB">Final FOB:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.FinalFOB, new { style = "width: 60px;" })%>
            <%: Html.ValidationMessageFor(model => model.FinalFOB)%>
        </div>      

         <div class="editor-label01">           
            <label for="FinalCM">Final CM:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.FinalCM, new { @readonly = "true", style = "width: 60px;" })%>
            <%: Html.ValidationMessageFor(model => model.FinalCM)%>
        </div>      

         <div class="editor-label01">           
            <label for="Remarks">Remarks:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextAreaFor(model => model.Remarks)%>
            <%: Html.ValidationMessageFor(model => model.Remarks)%>
        </div>      

      </fieldset>
    </div>   
</div>   
    <p>
        <input type="submit" class="btn btn-info btn-lg active" data-toggle="button" value="Save" />     
        <input type="button" onclick="window.location='<%: Url.Action("ComsalesInfo") %>'" class="btn btn-default btn-lg" value="Cancel" />
    </p>  
<% } %>
</div>
<script type="text/javascript">
    //    $('#Invoiceno').click(function () {
    //        var Result = $.post('<%: ResolveUrl("~/CSales/ComsalesEntryUpdByInvoiceNo?ID=")%>' + $('#Invoiceno').attr("value"), function (data) {
    //        });
    //    });

//    $('#Invoiceno').change(function () {
//        var Result = $.post('<%: ResolveUrl("~/CSales/ComsalesEntryUpdByInvoiceNo?ID=")%>' + $("#Invoiceno  > option:selected").attr("value"), function (data) {
//            $("#Destination").html(data.CountryCode);
//            $("#Port").html(data.Port);
//        });
//    });

</script>
<script type="text/javascript">
    $('input#SInvoiceNo').change(function () {
        var inv = $('#SInvoiceNo').val();        
        if (inv == ""){
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
                        window.location = '<%: Url.Action("ComsalesInfo") %>'
                    }
                }
            });
            //alert("Check! " + data.message);
        } 
        else if (inv != "") {
            var Result = $.post('<%: ResolveUrl("~/Sales/SalesInvoiceSrcByNo?invoice=")%>' + $("#SInvoiceNo").attr("value"), function (data) {
                $("#InvoiceNo").val(data.InvoiceNo);
            });
             
            $('#RecordsContainer').jtable({
                paging: true,
                pageSize: 5,
                sorting: false,
                title: 'Invoice Records',
                defaultSorting: 'Name ASC',
                actions: {
                    listAction: '/Sales/InvoiceSearchByNo?Invno=' + $("#SInvoiceNo").val()              
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
                    },                   
                    ExFactoryDate: {
                        title: 'Ex-Factory',
                        width: '8%'
                    },
                    RTransport: {
                        title: 'S.Transport',
                        width: '10%'
                    }
                }
            });
            $('#RecordsContainer').jtable('load');
        }
    });   
 </script>
 <script type="text/javascript">
     $(document).ready(function () {
         $('#RevisedFOBValue').change(function () {
             var cptval = $(this).val();
             var cptfob = parseFloat(cptval).toFixed(2);
             cmcpt = (cptfob * 20) / 100;
             var cmcp = parseFloat(cmcpt).toFixed(2);
             $('#RevisedCMValue').val(cmcp);
             $('#RevisedFOBValue').val(cptfob);
         });

         $('#FinalFOB').change(function () {
             var fFOB = $(this).val();
             var finalFOB = parseFloat(fFOB).toFixed(2);             
             finalCM = (finalFOB * 20) / 100;
             var cmcp = parseFloat(finalCM).toFixed(2);
             $('#FinalCM').val(cmcp);
             $('#FinalFOB').val(finalFOB);
         });

         $('#SInvoiceNo').change(function () {
             $('#InvoiceNo').val($(this).val());
         });
         $('#CargorptDate').change(function () {
             $('#SInvoiceDate').val($(this).val());
         });
         $('#ShipbordingDate').change(function () {
             $('#SailinExBDDate').val($(this).val());
         });


     });

         
   
 </script>

</asp:Content>

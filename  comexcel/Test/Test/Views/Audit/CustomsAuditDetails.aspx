<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.CustomsAuditEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    CustomsAuditDetails
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
<% using (Ajax.BeginForm("CustomsAuditDetails", "Audit", null, new AjaxOptions { HttpMethod = "POST", OnSuccess = "frmSuccess" }, new { @id = "frmSID" }))
   { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Customs Audit Entry</legend>

        <div class="editor-label01">
           <label for="InvoiceNo">Invoice No:</label>           
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.InvoiceNo, new { @readonly = "true", @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.InvoiceNo) %>
        </div>

        <div class="editor-label01">
            <label for="IRegisterNo">Import Register No:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.IRegisterNo, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.IRegisterNo) %>
        </div>

        <div class="editor-label01">
            <label for="IBond">Import Bond:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.IBond, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.IBond) %>
        </div>

        <div class="editor-label01">            
            <label for="TotalFabric">Total Fabric Used:</label> 
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.TotalFabric, new { style = "width: 70px;", @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.TotalFabric) %>
        </div>

        <div class="editor-label01">            
            <label for="AdjustReg">Adjusted in Register:</label> 
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.AdjustReg, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.AdjustReg) %>
        </div>

        <div class="editor-label01">            
            <label for="AdjustRegPage">Adjusted in Register Page:</label> 
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.AdjustRegPage, new {style = "width: 50px;", @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.AdjustRegPage) %>
        </div>       

        <p>
           <input type="submit" class="btn btn-info btn-lg active" data-toggle="button" value="Save" />     
           <input type="button" onclick="window.location='<%: Url.Action("CustomsAuditInfo") %>'" class="btn btn-default btn-lg" value="Cancel" />   
        </p>
    </fieldset>
<% } %>

    <div>
        <%: Html.ActionLink("Back to List", "CustomsAuditInfo")%>
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
                        window.location = '<%: Url.Action("CustomsAuditInfo") %>'
                    }
                }
            });
            //alert("Check! " + data.message);
        } else {

            $('#RecordsContainer').jtable({
                paging: true,
                columnResizable: true,
                pageSize: 5,
                sorting: false,
                title: 'Invoice Records',
                defaultSorting: 'Name ASC',
                actions: {
                    listAction: '/Audit/AuditInvoiceSearchByNo?invoice=' + $("#SInvoiceNo").val()
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
                        width: '12%'
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
                        width: '8%'
                    },                   
                    RevQty: {
                        title: 'Invoice Qty',
                        width: '10%'
                    },
                    RevisedFOBValue: {
                        title: 'Invoice Value(FOB)',
                        width: '15%'
                    },                   
                    EXPNo: {
                        title: 'EXP No',
                        width: '8%'
                    },
                    EXPDate: {
                        title: 'EXP Date',
                        width: '8%'
                    },
                    EPNo: {
                        title: 'EP No',
                        width: '5%'
                    },
                    EPDate: {
                        title: 'EP Date',
                        width: '8%'
                    },
                    ExFactoryDate: {
                        title: 'Ex-Factory',
                        width: '8%'
                    }
                }
            });
            $('#RecordsContainer').jtable('load');
        }
    }); 
        
$('#SInvoiceNo').change(function () {
    $('#InvoiceNo').val($(this).val());
}); 
 </script>
</asp:Content>

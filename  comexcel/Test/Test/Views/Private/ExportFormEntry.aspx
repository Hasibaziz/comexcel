<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Private.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.ExportformEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ExportFormEntry
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<%--************-----------------For Client Side Validation-------------********************--%>
<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>
          <%--**************--------------------------**************************--%>

 <%--*************---------For Making Baloon Validation Check---------------******************--%>
 <link href="<%: Url.Content("~/Content/validationEngine/validationEngine.jquery.css") %>" rel="stylesheet" type="text/css" />
 <script src="<%: Url.Content("~/Scripts/validationEngine/jquery.validationEngine-en.js")  %>" type="text/javascript" ></script>
 <script src="<%: Url.Content("~/Scripts/validationEngine/jquery.validationEngine.js")  %>" type="text/javascript" ></script>
          <%--**************--------------------------**************************--%>


<script type="text/javascript" >
    $(document).ready(function () {
        $("input#InvoiceDate, #ContractDate, #TTDate, #ExpDate, #BLDate, #ExFactoryDate").datepicker({ dateFormat: "dd-mm-yy" });
    });
    $(function () {
        $("#tabs").tabs();
    });
    function frmSuccess(data) {  //Need this Reference: (" jquery.unobtrusive-ajax.js ")       
        if (data.isSuccess) {       
            $('<div></div>').html('Check! ' + data.message).dialog({
                modal: true,
                resizable: false,
                title:"Alert",
                dataType: "json",
                width: 400,
                height: 155,
                buttons: {
                    "OK": function () {
                        //closeDialog($(this))
                        $(this).dialog("close");
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
                        $("#InvoiceDate").val(" ");
                        $("#ContractNo").val(" ");
                        $("#ContractDate").val(" ");
                        $("#TTNo").val(" ");
                        $("#TTDate").val(" ");
                        $("#ExporterID").val(" ");
                        $("#ConsigneeID").val(" ");
                        $("#NotifyID").val(" ");
                        $("#HSCodeID").val(" ");
                        $("#TransportID").val(" ");
                        $("#DestinationID").val(" ");
                        $("#Section").val(" ");
                        $("#CMValue").val(" ");
                        $("#FOBValue").val(" ");
                        $("#Unit").val(" ");
                        $("#Quantity").val(" ");
                        $("#Currency").val(" ");
                        $("#Incoterm").val(" ");
                        $(this).dialog("close");
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
        $('#frmID').validationEngine();
    });

</script>
<div class="mp_left_menu">
        <% Html.RenderPartial("LeftMenu"); %>
</div>

<div class="mp_right_content">
   <div class="page_list_container">
     <div id="RecordsContainer"></div>
   </div>

<% using (Ajax.BeginForm("ExportFormEntry", "Private", null, new AjaxOptions { HttpMethod = "POST", OnSuccess = "frmSuccess" }, new {@id = "frmID" }))
   { %>
    <%: Html.ValidationSummary(true)%>
        <%: Html.HiddenFor(model => model.ID)%>
<div id="tabs">
        <ul>
        <li><a href="#tabs-1">Basic Information</a></li>
        <li><a href="#tabs-2">Quantity & Value</a></li>  
        <li><a href="#tabs-3">Ex-Factory Information</a></li>      
        </ul>
    <div id="tabs-1">
     <fieldset>
        <legend>Basic Information Entry</legend>
        <div class="editor-label01">
          <label for="InvoiceNo">Invoice No:</label>
        </div> 
        <div class="editor-field01">
            <%--<%: Html.TextBoxFor(model => model.InvoiceNo, new { @class = "validate[required, custom[test_value]]" })%>--%>
            <%: Html.TextBoxFor(model => model.InvoiceNo, new { @class = "validate[required]" })%>
            <%--<%: Html.ActionLink("Search", "ExporterFormSearchByInvoiceNo", "Private", new { invoiceno = @Html.DisplayFor(model => model.InvoiceNo) }, null)%>--%>
            <%--<%: Html.ActionLink("Search", "ExporterFormSearchByInvoiceNo" + @Html.DisplayFor(model => model.Name))%>--%>
            <%--<a href="<%: Url.Action("ExporterFormSearchByInvoiceNo", new {@value= @Html.DisplayFor(m => m.Name)}) %>">
              <span>Search</span>
            </a>--%>
            <a id="Invoiceno" href="#"><span>Search</span></a>
            <%--<button id="Invoiceno">Click</button>--%>
            <%: Html.ValidationMessageFor(model => model.InvoiceNo)%>
        </div>
        <div class="editor-label01">
          <label for="InvoiceDate">Invoice Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.InvoiceDate, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.InvoiceDate)%>
        </div>
        <div class="editor-label01">
          <label for="ContractNo">Contract No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.ContractNo)%>
            <%: Html.ValidationMessageFor(model => model.ContractNo)%>
        </div>
        <div class="editor-label01">
          <label for="ContractDate">Contract Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.ContractDate)%>
            <%: Html.ValidationMessageFor(model => model.ContractDate)%>
        </div>
        <div class="editor-label01">
          <label for="TTNo">TT No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.TTNo)%>
            <%: Html.ValidationMessageFor(model => model.TTNo)%>
        </div>
        <div class="editor-label01">
          <label for="TTDate">TT Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.TTDate)%>
            <%: Html.ValidationMessageFor(model => model.TTDate)%>
        </div>       
        <div class="editor-label01">
            <label for="ExporterID">Exporter No:</label>
        </div>
        <div class="editor-field01">
            <%--<%: Html.DropDownListFor(model => model.ExporterID, Model.ExporterName)%>  --%>         
            <%: Html.DropDownListFor(model => model.ExporterID, (List<SelectListItem>)ViewData["ExporterNo"], "Select Exporter", new { @readonly = "true", @class = "Width=250" })%>
            <%: Html.ValidationMessageFor(model => model.ExporterID)%>
        </div>        
        <div class="editor-label01" style="color: Green;">       
            <p id="Exporter" ></p>
        </div>
        <div class="editor-label01">
            <label for="ConsigneeID">Consignee No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.DropDownListFor(model => model.ConsigneeID, (List<SelectListItem>)ViewData["ConsigneeNo"], "Select Consignee", new { @readonly = "true", @class = "Width=250" })%>
            <%: Html.ValidationMessageFor(model => model.ConsigneeID)%>
        </div>
        <div class="editor-label01" style="color: Green;">       
            <p id="ConsigneeName" ></p>
        </div>
        <div class="editor-label01">
            <label for="NotifyID">Notify No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.DropDownListFor(model => model.NotifyID, (List<SelectListItem>)ViewData["NotifyNo"], "Select Notify", new { @readonly = "true", @class = "Width=250" })%>  
            <%: Html.ValidationMessageFor(model => model.NotifyID)%>
        </div>
        <div class="editor-label01" style="color: Green;">       
            <p id="Notify" ></p>
        </div>
        <div class="editor-label01">
            <label for="HSCodeID">HSCode No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.DropDownListFor(model => model.HSCodeID, (List<SelectListItem>)ViewData["HSCode"], "Select HS Code", new { @readonly = "true", @class = "Width=250" })%>  
            <%: Html.ValidationMessageFor(model => model.HSCodeID)%>
        </div>
        <div class="editor-label01" style="color: Green;">       
            <p id="HSCode" ></p>
        </div>
        <div class="editor-label01">
            <label for="TransportID">Local Transport:</label>
        </div>
        <div class="editor-field01">
            <%: Html.DropDownListFor(model => model.TransportID, (List<SelectListItem>)ViewData["Name"], "Transport", new { @readonly = "true", @class = "Width=250" })%>  
            <%: Html.ValidationMessageFor(model => model.TransportID)%>
        </div>
        <div class="editor-label01">
            <label for="DestinationID">Destination Code:</label>
        </div>
        <div class="editor-field01">
            <%: Html.DropDownListFor(model => model.DestinationID, (List<SelectListItem>)ViewData["CountryCode"], "Destination", new { @readonly = "true", @class = "Width=250" })%>  
            <%: Html.ValidationMessageFor(model => model.DestinationID)%>
        </div>
        <div class="editor-label01">
            <label for="Section">Section</label>
        </div>
        <div class="editor-field01">
            <%--<%: Html.DropDownListFor(model => model.Section, new SelectList("Section", "Sections", Model.Section))%>--%>
            <%: Html.DropDownListFor(model => model.Section, Enum.GetValues(typeof(Test.Domain.Model.ExportformEntity.Sections)).Cast<Test.Domain.Model.ExportformEntity.Sections>().Select(x => new SelectListItem { Value = ((int)x).ToString(), Text = x.ToString() }))%>
            <%: Html.ValidationMessageFor(model => model.Section)%>
        </div>
     </fieldset>
    </div>
 
    <div id="tabs-2">
     <fieldset>
        <legend>Quantity & Value Entry</legend>
        <div class="editor-label01">
            <label for="Unit">Unit:</label>
        </div>
        <div class="editor-field01">
           <%--<%: Html.DropDownListFor(model => model.Unit, Enum.GetValues(typeof(Test.Domain.Model.ExportformEntity.Units)).Cast<Test.Domain.Model.ExportformEntity.Units>().Select(x => new SelectListItem { Text = x.ToString(), Value = ((int)x).ToString() }), "Select")%>   Passing DropDown Content--%>
           <%: Html.DropDownListFor(model => model.Unit, Enum.GetValues(typeof(Test.Domain.Model.ExportformEntity.Units)).Cast<Test.Domain.Model.ExportformEntity.Units>().Select(x => new SelectListItem { Value = ((int)x).ToString(), Text = x.ToString() }), "Select")%>
           <%: Html.ValidationMessageFor(model => model.Unit)%>
        </div>
        <div class="editor-label01">
          <label for="Volume">Quantity:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.Quantity)%>
            <%: Html.ValidationMessageFor(model => model.Quantity)%>
        </div>
        <div class="editor-label01">
            <label for="Currency">Currency:</label>
        </div>
        <div class="editor-field01">
           <%--<%: Html.DropDownListFor(model => model.Currency, Enum.GetValues(typeof(Test.Domain.Model.ExportformEntity.Currencies)).Cast<Test.Domain.Model.ExportformEntity.Currencies>().Select(x => new SelectListItem { Text = x.ToString(), Value = ((int)x).ToString() }), "Select")%>  Passing DropDown Content--%>
           <%: Html.DropDownListFor(model => model.Currency, Enum.GetValues(typeof(Test.Domain.Model.ExportformEntity.Currencies)).Cast<Test.Domain.Model.ExportformEntity.Currencies>().Select(x => new SelectListItem { Value = ((int)x).ToString(), Text = x.ToString() }), "Select")%>
           <%: Html.ValidationMessageFor(model => model.Currency)%>
        </div>
        <div class="editor-label01">
            <label for="Inconterm">Incoterm:</label>
        </div>
        <div class="editor-field01">
           <%--<%: Html.DropDownListFor(model => model.Inconterm, Enum.GetValues(typeof(Test.Domain.Model.ExportformEntity.Inconterms)).Cast<Test.Domain.Model.ExportformEntity.Inconterms>().Select(x => new SelectListItem { Text = x.ToString(), Value = ((int)x).ToString() }), "Select")%>   Passing DropDown Content--%>
           <%: Html.DropDownListFor(model => model.Incoterm, Enum.GetValues(typeof(Test.Domain.Model.ExportformEntity.Inconterms)).Cast<Test.Domain.Model.ExportformEntity.Inconterms>().Select(x => new SelectListItem { Value = ((int)x).ToString(), Text = x.ToString() }), "Select")%>
           <%: Html.ValidationMessageFor(model => model.Incoterm)%>
        </div>
        <div class="editor-label01">
            <label for="FOBValue">FOB Value:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.FOBValue)%>
            <%: Html.ValidationMessageFor(model => model.FOBValue)%>
        </div>
        <div class="editor-label01">
            <label for="CMValue">CM Value:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.CMValue)%>
            <%: Html.ValidationMessageFor(model => model.CMValue)%>
        </div> 
        </fieldset>
    </div>  
    <div id="tabs-3">
      <fieldset>
        <legend>Ex-Factory Information Entry</legend>
        <div class="editor-label01">
          <label for="ExpNo">Exp No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.ExpNo)%>
            <%: Html.ValidationMessageFor(model => model.ExpNo)%>
        </div>
        <div class="editor-label01">
          <label for="ExpDate">Exp Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.ExpDate)%>
            <%: Html.ValidationMessageFor(model => model.ExpDate)%>
        </div>
        <div class="editor-label01">
          <label for="BLNo">B/L No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.BLNo)%>
            <%: Html.ValidationMessageFor(model => model.BLNo)%>
        </div>
        <div class="editor-label01">
          <label for="BLDate">B/L Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.BLDate)%>
            <%: Html.ValidationMessageFor(model => model.BLDate)%>
        </div>
        <div class="editor-label01">
          <label for="ExFactoryDate">Ex-Factory Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.ExFactoryDate)%>
            <%: Html.ValidationMessageFor(model => model.ExFactoryDate)%>
        </div>
      </fieldset>
    </div>
   </div>
   <div style="color:Red;"><span id="Message" ></span></div>     
        <p>
            <input type="submit" value="Save" />                                  
            <%--<input type="button" onclick="window.location='<%: Url.Action("ExportForm", new { id = Model.Id }) %>'"  value="Cancel" />    //Passing Parameters--%>
            <input type="button" onclick="window.location='<%: Url.Action("ExportForm") %>'"  value="Cancel" />
        </p>

    
<% } %>

    <div>
        <%: Html.ActionLink("Back to List", "ExportForm")%>
    </div>
</div>

<script type="text/javascript">
    $('#ExporterID').change(function () {
        var Result = $.post('<%: ResolveUrl("~/Private/GetExporterNameByID?expid=")%>' + $("#ExporterID  > option:selected").attr("value"), function (data) {                
            $("#Exporter").html(data.ExporterName);
            //alert(data.ExporterName);
        });
    });
    $('#ConsigneeID').change(function () {
        var Result = $.post('<%: ResolveUrl("~/Private/GetConsigneeNameByID?conid=")%>' + $("#ConsigneeID  > option:selected").attr("value"), function (data) {          
            $("#ConsigneeName").html(data.ConsigneeName);          
        });
    });
    $('#NotifyID').change(function () {
        var Result = $.post('<%: ResolveUrl("~/Private/GetNotifyNameByID?notid=")%>' + $("#NotifyID  > option:selected").attr("value"), function (data) {
            $("#Notify").html(data.NotifyName);
        });
    });
    $('#HSCodeID').change(function () {
        var Result = $.post('<%: ResolveUrl("~/Private/GetHSCodeNameByID?hsid=")%>' + $("#HSCodeID  > option:selected").attr("value"), function (data) {
            $("#HSCode").html(data.ShortName);
        });
    });
</script>
<script type="text/javascript">
    $('#FOBValue').change(function () {
        var X = $(this).val();
        //var DX = parseInt(X);
        var DX = parseFloat(X);
        FOB = (DX * 20) / 100;
        //var number = Number(FOB.replace(/[^0-9\.]+/g, ""));        
        //$("#CMValue").val("$" + FOB);
        $("#CMValue").val(FOB);
    }); 
//// To pass parameter value using the TextBox and the link.      
//   $('#Invoiceno').click(function () {
//        var Inv = $('#InvoiceNo').val();      
//            window.location = '/Private/ExporterFormSearchByInvoiceNo?invoiceno=' + Inv;      
//        });
    $('#Invoiceno').click(function () {
        var Result = $.post('<%: ResolveUrl("~/Private/ExporterFormSearchByInvoiceNo?invoiceno=")%>' + $('#InvoiceNo').attr("value"), function (data) {
            $("#InvoiceNo").val(data.InvoiceNo);
            $("#InvoiceDate").val(data.InvoiceDate);
            $("#ContractNo").val(data.ContractNo);
            $("#ContractDate").val(data.ContractDate);
            $("#TTNo").val(data.TTNo);
            $("#TTDate").val(data.TTDate);
            $("#ExporterID").val(data.ExporterID);
            $("#ExporterID").val(data.ExporterID);
            $("#ConsigneeID").val(data.ConsigneeID);
            $("#NotifyID").val(data.NotifyID);
            $("#HSCodeID").val(data.HSCodeID);
            $("#CountryCode").val(data.CountryCode);
            $("#DestinationID").val(data.DestinationID);
            $("#TransportID").val(data.TransportID);
            $("#Section").val(data.Section);
            $("#Unit").val(data.Unit);
            $("#Quantity").val(data.Quantity);
            $("#Currency").val(data.Currency);
            $("#Incoterm").val(data.Incoterm);
            $("#FOBValue").val(data.FOBValue);
            $("#CMValue").val(data.CMValue);
            $("#ExpNo").val(data.ExpNo);
            $("#ExpDate").val(data.ExpDate);
            $("#BLNo").val(data.BLNo);
            $("#BLDate").val(data.BLDate);
            $("#ExFactoryDate").val(data.ExFactoryDate);
        });
    });   
</script>

</asp:Content>

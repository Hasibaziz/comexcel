<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.ExportformEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ExporterFormUpdateApp
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
//    $(document).ready(function () {
//        $("input#InvoiceDate, #ContractDate, #TTDate, #ExpDate, #BLDate, #ExFactoryDate").datepicker({ dateFormat: "dd-mm-yy" });
//        $(this).focus();
//    });
    $(function () {
        $("#tabs").tabs();
    });
    $(document).ready(function () {
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

<% using (Html.BeginForm("ExportFormEntryApp", "Private", new { @id = "frmID" }))
   { %>
    <%: Html.ValidationSummary(true) %>
        <%: Html.HiddenFor(model => model.ID)%>
<div id="tabs">
        <ul>
        <li><a href="#tabs-1">Basic Information</a></li>
       <%-- <li><a href="#tabs-2">Quantity & Value</a></li>  --%>
        <li><a href="#tabs-3">Ex-Factory Information</a></li>      
        </ul>
    <div id="tabs-1">
     <fieldset>
        <legend>Basic Information Entry</legend>
        <div class="editor-label01">
          <label for="ContractNo">Item Name:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextAreaFor(model => model.ItemName, new {style = "width: 250px; height:50px;", @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.ItemName)%>
        </div>
         <div class="editor-label01">
            <label for="HSCodeID">HSCode No:</label>
        </div>
        <div class="editor-field01">
            <%--<%: Html.DropDownListFor(model => model.HSCodeID, (List<SelectListItem>)ViewData["HSCode"], "Select HS Code", new { @readonly = "true", @class = "validate[required]" })%>  --%>
            <%: Html.TextBoxFor(model => model.HSCode, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.HSCode)%>
        </div>       
        <div class="editor-label01">
            <label for="HSCodeID">HSCode No2:</label>
        </div>
        <div class="editor-field01">
           <%--<%: Html.DropDownListFor(model => model.HSCodesecond, (List<SelectListItem>)ViewData["HSs"], "Select HS Code", new { @readonly = "true" })%>  --%>
           <%: Html.TextBoxFor(model => model.HSCodesecond)%>
           <%-- <%: Html.ValidationMessageFor(model => model.HSCodeID)%>--%>
        </div>
         <div class="editor-label01">
          <label for="InvoiceNo">Invoice No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.InvoiceNo)%>
            <%: Html.ValidationMessageFor(model => model.InvoiceNo)%>
        </div>
        <div class="editor-label01">
          <label for="InvoiceDate">Invoice Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.InvoiceDate)%>
            <%: Html.ValidationMessageFor(model => model.InvoiceDate)%>
        </div>
        <div class="editor-label01">
          <label for="ContractNo">Contract No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextAreaFor(model => model.ContractNo, new { style = "width: 250px; height:30px;", @class = "validate[required]" })%>
            <%--<%: Html.EditorFor(model => model.ContractNo)%>--%>
            <%: Html.ValidationMessageFor(model => model.ContractNo)%>
        </div>
        <div class="editor-label01">
          <label for="ContractDate">Contract Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.ContractDate)%>
            <%: Html.ValidationMessageFor(model => model.ContractDate)%>
        </div>
<div class="New_Right_Begin"> 
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
            <%: Html.DropDownListFor(model => model.ExporterID, (List<SelectListItem>)ViewData["ExporterNo"], "Select Exporter")%>
            <%: Html.ValidationMessageFor(model => model.ExporterID)%>
        </div>        
        <div class="editor-label01" style="color: Green;">       
            <p id="Exporter" ></p>
        </div>
        <div class="editor-label01">
            <label for="ConsigneeID">Consignee No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.DropDownListFor(model => model.ConsigneeID, (List<SelectListItem>)ViewData["ConsigneeNo"], "Select Consignee")%>
            <%: Html.ValidationMessageFor(model => model.ConsigneeID)%>
        </div>
        <div class="editor-label01" style="color: Green;">       
            <p id="ConsigneeName" ></p>
        </div>
        <div class="editor-label01">
            <label for="NotifyID">Notify No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.DropDownListFor(model => model.NotifyID, (List<SelectListItem>)ViewData["NotifyNo"], "Select Notify") %>  
            <%: Html.ValidationMessageFor(model => model.NotifyID)%>
        </div>
        <div class="editor-label01" style="color: Green;">       
            <p id="Notify" ></p>
        </div>
       <%-- <div class="editor-label01">
            <label for="HSCodeID">HSCode No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.DropDownListFor(model => model.HSCodeID, (List<SelectListItem>)ViewData["HSCode"], "Select HS Code", new { @readonly = "true", @class = "Width=250" }) %>  
            <%: Html.ValidationMessageFor(model => model.HSCodeID)%>
        </div>
        <div class="editor-label01" style="color: Green;">       
            <p id="HSCode" ></p>
        </div>
         <div class="editor-label01">
            <label for="HSCodeID">HSCode No2:</label>
        </div>
        <div class="editor-field01">
            <%: Html.DropDownListFor(model => model.HSCodesecond, (List<SelectListItem>)ViewData["HSs"], "Select HS Code", new { @readonly = "true" })%>  
            <%: Html.ValidationMessageFor(model => model.HSCodeID)%>
        </div>--%>
        <div class="editor-label01">
            <label for="TransportID">Local Transport:</label>
        </div>
        <div class="editor-field01">
            <%: Html.DropDownListFor(model => model.TransportID, (List<SelectListItem>)ViewData["Name"], "Transport")%>  
            <%: Html.ValidationMessageFor(model => model.TransportID)%>
        </div>
        <div class="editor-label01">
            <label for="DestinationID">Destination:</label>
        </div>
        <div class="editor-field01">
            <%: Html.DropDownListFor(model => model.DestinationID, (List<SelectListItem>)ViewData["CCode"], "Destination", new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.DestinationID)%>
        </div>
        <div class="editor-label01" style="color: Green;">       
            <p id="Destination" ></p>
            <p id="Port" ></p>
        </div>
        <%--<div style="color: Green; margin: 0.3em 1px 5px 200px;">       
            <p id="Destination" ></p>
        </div>
        <div style="color: Green; margin: -2.0em 1px 5px 250px;">
            <p id="Port" ></p>
        </div>--%>
        <div class="editor-label01">
            <label for="Section">Section</label>
        </div>
        <div class="editor-field01">
            <%--<%: Html.DropDownListFor(model => model.Section, new SelectList("Section", "Sections", Model.Section))%>--%>
            <%: Html.DropDownListFor(model => model.Section, Enum.GetValues(typeof(Test.Domain.Model.ExportformEntity.Sections)).Cast<Test.Domain.Model.ExportformEntity.Sections>().Select(x => new SelectListItem {  Value = ((int)x).ToString(), Text = x.ToString() }),"Select")%>
            <%: Html.ValidationMessageFor(model => model.Section)%>
        </div>
 </div>
     </fieldset>
  <%--  </div>
 
    <div id="tabs-2">--%>
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
<div class="New_Right_BeginQ"> 
        <div class="editor-label01">
            <label for="FOBValue">FOB/CPT Value:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.FOBValue, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.FOBValue)%>
        </div>
        <div class="editor-label01">
            <label for="CMValue">CM Value:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.CMValue, new { @readonly = "readonly" })%>
            <%: Html.ValidationMessageFor(model => model.CMValue)%>
        </div> 
        <div class="editor-label01">
            <label for="FOBValue">CPT-Freight Value:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.CPTFOBValue, new { @readonly = "readonly" })%>
            <%: Html.ValidationMessageFor(model => model.CPTFOBValue)%>
        </div>
        <div class="editor-label01">
            <label for="CMValue">Freight:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.Freight)%>
            <%: Html.ValidationMessageFor(model => model.Freight)%>
        </div>
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
           <%-- <%: Html.ValidationMessageFor(model => model.ExpNo)%>--%>
        </div>
        <div class="editor-label01">
          <label for="ExpDate">Exp Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.ExpDate)%>
           <%-- <%: Html.ValidationMessageFor(model => model.ExpDate)%>--%>
        </div>
        <div class="editor-label01">
          <label for="BLNo">Export Permit No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.EPNo)%>
            <%--<%: Html.ValidationMessageFor(model => model.BLNo)%>--%>
        </div>
        <div class="editor-label01">
          <label for="BLNo">B/L No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.BLNo)%>
            <%--<%: Html.ValidationMessageFor(model => model.BLNo)%>--%>
        </div>
        <div class="editor-label01">
          <label for="BLDate">B/L Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.BLDate)%>
            <%--<%: Html.ValidationMessageFor(model => model.BLDate)%>--%>
        </div>
        <div class="editor-label01">
          <label for="ExFactoryDate">Ex-Factory Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.ExFactoryDate)%>
            <%--<%: Html.ValidationMessageFor(model => model.ExFactoryDate)%>--%>
        </div>
      </fieldset>
    </div>
   </div>     
        <p>
            <input type="submit" id="Submit" class="btn btn-success btn-lg active" value="Update"/>            
            <%--<input type="button" onclick="window.location='<%: Url.Action("ExportForm", new { id = Model.Id }) %>'"  value="Cancel" />    //Passing Parameters--%>
            <input type="button" onclick="window.location='<%: Url.Action("ExportFormApp") %>'" class="btn btn-default btn-lg" value="Cancel" />
        </p>

    
<% } %>   
</div>

<script type="text/javascript">
    $('#ExporterID').bind('focus', function () {
        var Result = $.post('<%: ResolveUrl("~/Private/GetExporterNameByID?expid=")%>' + $("#ExporterID  > option:selected").attr("value"), function (data) {
            $("#Exporter").html(data.ExporterName);
            //alert(data.ExporterName);
        });
    });
    $('#ConsigneeID').bind('focus', function () {
        var Result = $.post('<%: ResolveUrl("~/Private/GetConsigneeNameByID?conid=")%>' + $("#ConsigneeID  > option:selected").attr("value"), function (data) {
            $("#ConsigneeName").html(data.ConsigneeName);
        });
    });
    $('#NotifyID').bind('focus', function () {
        var Result = $.post('<%: ResolveUrl("~/Private/GetNotifyNameByID?notid=")%>' + $("#NotifyID  > option:selected").attr("value"), function (data) {
            $("#Notify").html(data.NotifyName);
        });
    });
    $('#HSCodeID').bind('focus', function () {
        var Result = $.post('<%: ResolveUrl("~/Private/GetHSCodeNameByID?hsid=")%>' + $("#HSCodeID  > option:selected").attr("value"), function (data) {
            $("#HSCode").html(data.ShortName);
        });
    });
    $('#DestinationID').bind('focus', function () {
        var Result = $.post('<%: ResolveUrl("~/Private/GetDestinationID?dsid=")%>' + $("#DestinationID  > option:selected").attr("value"), function (data) {
            $("#Destination").html(data.CountryCode);
            $("#Port").html(data.Port);
        });
    });
    $(document).ready(function () {
        // $("#Incoterm").bind('focus', function () {
        $("#Incoterm").live("focusout", function () {
            var x = $(this).val();
            if (x == 1) {
                $("#CPTFOBValue").attr("disabled", true);
                $("#Freight").attr("disabled", true);
            }
            else {
                $("#CPTFOBValue").prop('disabled', false);
                $("#Freight").prop('disabled', false);
            }
        });
        $('#FOBValue').change(function () {
            var X = $(this).val();
            //var DX = parseInt(X);
            var FOB = parseFloat(X).toFixed(2);
            CM = (FOB * 20) / 100;
            var cmvalue = parseFloat(CM).toFixed(2);
            var fbvalue = parseFloat(FOB).toFixed(2);
            $("#CMValue").val(cmvalue);
            $("#FOBValue").val(fbvalue);
            //            $("#CMValue").attr("disabled", true);
            //            $("#CPTFOBValue").attr("disabled", true);
            $("#Freight").focus();
        });
        $('#Freight').change(function () {
            var Y = $(this).val();
            var X = $('#FOBValue').val();
            //var DX = parseInt(X);
            var fre = parseFloat(Y).toFixed(2);
            cptfob = (X - Y);
            var cf = parseFloat(cptfob).toFixed(2);
            $("#CPTFOBValue").val(cf);
            $("#Freight").val(fre);
        });
    });

</script>

</asp:Content>

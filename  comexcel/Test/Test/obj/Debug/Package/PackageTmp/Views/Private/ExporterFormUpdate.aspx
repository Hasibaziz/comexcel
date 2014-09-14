<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Private.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.ExportformEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ExporterFormUpdate
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script type="text/javascript" >
    $(document).ready(function () {
        $("input#InvoiceDate, #ContractDate, #TTDate, #ExpDate, #BLDate, #ExFactoryDate").datepicker({ dateFormat: "dd-mm-yy" });
    });
    $(function () {
        $("#tabs").tabs();
    });
</script>
<div class="mp_left_menu">
        <% Html.RenderPartial("LeftMenu"); %>
</div>

<div class="mp_right_content">
   <div class="page_list_container">
     <div id="RecordsContainer"></div>
   </div>

<% using (Html.BeginForm("ExportFormEntry", "Private"))
   { %>
    <%: Html.ValidationSummary(true) %>
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
          <label for="ContractNo">Item Name:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextAreaFor(model => model.ItemName, new {style = "width: 250px; height:50px;", @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.ItemName)%>
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
            <%: Html.DropDownListFor(model => model.NotifyID, (List<SelectListItem>)ViewData["NotifyNo"], "Select Notify", new { @readonly = "true", @class = "Width=250" }) %>  
            <%: Html.ValidationMessageFor(model => model.NotifyID)%>
        </div>
        <div class="editor-label01" style="color: Green;">       
            <p id="Notify" ></p>
        </div>
        <div class="editor-label01">
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
           <%-- <%: Html.ValidationMessageFor(model => model.HSCodeID)%>--%>
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
            <%: Html.DropDownListFor(model => model.Section, Enum.GetValues(typeof(Test.Domain.Model.ExportformEntity.Sections)).Cast<Test.Domain.Model.ExportformEntity.Sections>().Select(x => new SelectListItem {  Value = ((int)x).ToString(), Text = x.ToString() }),"Select")%>
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
        <p>
            <input type="submit" id="Submit" value="Update"/>            
            <%--<input type="button" onclick="window.location='<%: Url.Action("ExportForm", new { id = Model.Id }) %>'"  value="Cancel" />    //Passing Parameters--%>
            <input type="button" onclick="window.location='<%: Url.Action("ExportForm") %>'"  value="Cancel" />
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
</script>



</asp:Content>

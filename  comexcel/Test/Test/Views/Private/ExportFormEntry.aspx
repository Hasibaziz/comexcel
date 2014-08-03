<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Private.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.ExportformEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ExportFormEntry
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script type="text/javascript" >
    $(document).ready(function () {
        $("input#InvoiceDate, #ContractDate, #TTDate").datepicker({ dateFormat: "dd-mm-yy" });
    });
</script>
<div class="mp_left_menu">
        <% Html.RenderPartial("LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <fieldset><div id="RecordsContainer"></div></fieldset>
   </div>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Basic Information Entry</legend>
           <%: Html.HiddenFor(model => model.ID)%>
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
            <label for="ExporterID">Exporter No:</label>
        </div>
        <div class="editor-field01">
            <%--<%: Html.DropDownListFor(model => model.ExporterID, Model.ExporterName)%>  --%>         
            <%: Html.DropDownListFor(model => model.ExporterID, (List<SelectListItem>)ViewData["ExporterNo"], "Select Exporter", new { @readonly = "true", @class = "Width=250" })%>
            <%: Html.ValidationMessageFor(model => model.ExporterID)%>
        </div>
        <div class="editor-label01">
            <label for="ConsigneeID">Consignee No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.DropDownListFor(model => model.ConsigneeID, (List<SelectListItem>)ViewData["ConsigneeNo"], "Select Consignee", new { @readonly = "true", @class = "Width=250" })%>
            <%: Html.ValidationMessageFor(model => model.ConsigneeID)%>
        </div>
        <div class="editor-label01">
            <label for="NotifyID">Notify No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.DropDownListFor(model => model.NotifyID, (List<SelectListItem>)ViewData["NotifyNo"], "Select Notify", new { @readonly = "true", @class = "Width=250" }) %>  
            <%: Html.ValidationMessageFor(model => model.NotifyID)%>
        </div>
        <div class="editor-label01">
            <label for="HSCodeID">HSCode No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.DropDownListFor(model => model.HSCodeID, (List<SelectListItem>)ViewData["HSCode"], "Select HS Code", new { @readonly = "true", @class = "Width=250" }) %>  
            <%: Html.ValidationMessageFor(model => model.HSCodeID)%>
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
            <%--<%: Html.DropDownListFor(model => model.SectionID,new SelectList("SectionID","Sections",Model.SectionID))%>--%>
            <%: Html.DropDownListFor(model => model.Section, Enum.GetValues(typeof(Test.Domain.Model.ExportformEntity.Sections)).Cast<Test.Domain.Model.ExportformEntity.Sections>().Select(x => new SelectListItem { Text = x.ToString(), Value = ((int)x).ToString() }),"Select")%>           
            <%: Html.ValidationMessageFor(model => model.Section)%>
        </div>
     </fieldset>
     <fieldset>
        <legend>Quantity & Value Entry</legend>
        <div class="editor-label01">
            <label for="Unit">Unit:</label>
        </div>
        <div class="editor-field01">
           <%: Html.DropDownListFor(model => model.Unit, Enum.GetValues(typeof(Test.Domain.Model.ExportformEntity.Units)).Cast<Test.Domain.Model.ExportformEntity.Units>().Select(x => new SelectListItem { Text = x.ToString(), Value = ((int)x).ToString() }), "Select")%>
            <%: Html.ValidationMessageFor(model => model.Unit)%>
        </div>
        <div class="editor-label01">
          <label for="Volume">Volume:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.Volume)%>
            <%: Html.ValidationMessageFor(model => model.Volume)%>
        </div>
        <div class="editor-label01">
            <label for="Currency">Currency:</label>
        </div>
        <div class="editor-field01">
           <%: Html.DropDownListFor(model => model.Currency, Enum.GetValues(typeof(Test.Domain.Model.ExportformEntity.Currencies)).Cast<Test.Domain.Model.ExportformEntity.Currencies>().Select(x => new SelectListItem { Text = x.ToString(), Value = ((int)x).ToString() }), "Select")%>
            <%: Html.ValidationMessageFor(model => model.Currency)%>
        </div>
        <div class="editor-label01">
            <label for="Inconterm">Inconterm:</label>
        </div>
        <div class="editor-field01">
           <%: Html.DropDownListFor(model => model.Inconterm, Enum.GetValues(typeof(Test.Domain.Model.ExportformEntity.Inconterms)).Cast<Test.Domain.Model.ExportformEntity.Inconterms>().Select(x => new SelectListItem { Text = x.ToString(), Value = ((int)x).ToString() }), "Select")%>
            <%: Html.ValidationMessageFor(model => model.Inconterm)%>
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
        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
<% } %>
<div>
    <%: Html.ActionLink("Back to List", "ExportForm")%>
</div>
</div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Private.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.ExportformEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ExportFormEntry
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script type="text/javascript" >
    $(document).ready(function () {
        $("input#InvoiceDate").datepicker({ dateFormat: "dd-mm-yy" });
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
        <legend>Receiver Item</legend>
           <%: Html.HiddenFor(model => model.ID)%>
        <div class="editor-label01">
          <label for="ItemID">Contract No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.ContractNo)%>
            <%: Html.ValidationMessageFor(model => model.ContractNo)%>
        </div>
        <div class="editor-label01">
          <label for="ItemID">Invoice No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.InvoiceNo)%>
            <%: Html.ValidationMessageFor(model => model.InvoiceNo)%>
        </div>
        <div class="editor-label01">
          <label for="ItemID">InvoiceDate:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.InvoiceDate)%>
            <%: Html.ValidationMessageFor(model => model.InvoiceDate)%>
        </div>
        <div class="editor-label01">
            <label for="ModelID">Exporter No:</label>
        </div>
        <div class="editor-field01">
            <%--<%: Html.DropDownListFor(model => model.ExporterID, Model.ExporterName)%>  --%>         
            <%: Html.DropDownListFor(model => model.ExporterID, (List<SelectListItem>)ViewData["ExporterNo"], "Select Exporter", new { @readonly = "true", @class = "Width=250" })%>
            <%: Html.ValidationMessageFor(model => model.ExporterID)%>
        </div>
        <div class="editor-label01">
            <label for="ModelID">Consignee No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.DropDownListFor(model => model.ConsigneeID, (List<SelectListItem>)ViewData["ConsigneeNo"], "Select Consignee", new { @readonly = "true", @class = "Width=250" })%>
            <%: Html.ValidationMessageFor(model => model.ConsigneeID)%>
        </div>
        <div class="editor-label01">
            <label for="ModelID">Notify No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.DropDownListFor(model => model.NotifyID, (List<SelectListItem>)ViewData["NotifyNo"], "Select Notify", new { @readonly = "true", @class = "Width=250" }) %>  
            <%: Html.ValidationMessageFor(model => model.NotifyID)%>
        </div>
        <div class="editor-label01">
            <label for="ModelID">HSCode No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.DropDownListFor(model => model.HSCodeID, (List<SelectListItem>)ViewData["HSCode"], "Select HS Code", new { @readonly = "true", @class = "Width=250" }) %>  
            <%: Html.ValidationMessageFor(model => model.HSCodeID)%>
        </div>
        <div class="editor-label01">
            <label for="ModelID">Destination:</label>
        </div>
        <div class="editor-field01">
            <%: Html.DropDownListFor(model => model.DestinationID, (List<SelectListItem>)ViewData["CountryCode"], "Destination", new { @readonly = "true", @class = "Width=250" })%>  
            <%: Html.ValidationMessageFor(model => model.DestinationID)%>
        </div>
        <div class="editor-label01">
            <label for="RDate">FOB Value:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.FOBValue)%>
            <%: Html.ValidationMessageFor(model => model.FOBValue)%>
        </div>
        <div class="editor-label01">
            <label for="Chlanno">CM Value:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.CMValue)%>
            <%: Html.ValidationMessageFor(model => model.CMValue)%>
        </div>

        <p>
            <input type="submit" value="Add" />
        </p>
    </fieldset>
<% } %>
<div>
    <%: Html.ActionLink("Back to List", "ExportForm")%>
</div>
</div>
</asp:Content>

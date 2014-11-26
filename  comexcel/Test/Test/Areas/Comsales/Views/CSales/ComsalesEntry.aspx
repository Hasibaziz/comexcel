<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.ComsalesinfoEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ComsalesEntry
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>
<div class="mp_left_menu">
        <% Html.RenderPartial("LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <div id="RecordsContainer"></div>
   </div>
<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>ComsalesinfoEntity</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.InvoiceNo) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.InvoiceNo) %>
            <%: Html.ValidationMessageFor(model => model.InvoiceNo) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.OrderNo) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.OrderNo) %>
            <%: Html.ValidationMessageFor(model => model.OrderNo) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.StyleNo) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.StyleNo) %>
            <%: Html.ValidationMessageFor(model => model.StyleNo) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ProductType) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ProductType) %>
            <%: Html.ValidationMessageFor(model => model.ProductType) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ExFactoryDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ExFactoryDate) %>
            <%: Html.ValidationMessageFor(model => model.ExFactoryDate) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CargorptDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CargorptDate) %>
            <%: Html.ValidationMessageFor(model => model.CargorptDate) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ShipbordingDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ShipbordingDate) %>
            <%: Html.ValidationMessageFor(model => model.ShipbordingDate) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.SailinExBDDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.SailinExBDDate) %>
            <%: Html.ValidationMessageFor(model => model.SailinExBDDate) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.BLNo) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.BLNo) %>
            <%: Html.ValidationMessageFor(model => model.BLNo) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.BLDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.BLDate) %>
            <%: Html.ValidationMessageFor(model => model.BLDate) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DocsendingDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DocsendingDate) %>
            <%: Html.ValidationMessageFor(model => model.DocsendingDate) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ETADate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ETADate) %>
            <%: Html.ValidationMessageFor(model => model.ETADate) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.RevQty) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.RevQty) %>
            <%: Html.ValidationMessageFor(model => model.RevQty) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.UnitPrice) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.UnitPrice) %>
            <%: Html.ValidationMessageFor(model => model.UnitPrice) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.RevisedFOBValue) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.RevisedFOBValue) %>
            <%: Html.ValidationMessageFor(model => model.RevisedFOBValue) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.RevisedCMValue) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.RevisedCMValue) %>
            <%: Html.ValidationMessageFor(model => model.RevisedCMValue) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CartonQty) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CartonQty) %>
            <%: Html.ValidationMessageFor(model => model.CartonQty) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CBMValue) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CBMValue) %>
            <%: Html.ValidationMessageFor(model => model.CBMValue) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ExpNo) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ExpNo) %>
            <%: Html.ValidationMessageFor(model => model.ExpNo) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ExpDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ExpDate) %>
            <%: Html.ValidationMessageFor(model => model.ExpDate) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.SBNo) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.SBNo) %>
            <%: Html.ValidationMessageFor(model => model.SBNo) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.EPNo) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.EPNo) %>
            <%: Html.ValidationMessageFor(model => model.EPNo) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.SBDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.SBDate) %>
            <%: Html.ValidationMessageFor(model => model.SBDate) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.VesselNo) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.VesselNo) %>
            <%: Html.ValidationMessageFor(model => model.VesselNo) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.VesselContractNo) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.VesselContractNo) %>
            <%: Html.ValidationMessageFor(model => model.VesselContractNo) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.AirFreightCost) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.AirFreightCost) %>
            <%: Html.ValidationMessageFor(model => model.AirFreightCost) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Agent) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Agent) %>
            <%: Html.ValidationMessageFor(model => model.Agent) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Remarks) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Remarks) %>
            <%: Html.ValidationMessageFor(model => model.Remarks) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>
</div>

</asp:Content>

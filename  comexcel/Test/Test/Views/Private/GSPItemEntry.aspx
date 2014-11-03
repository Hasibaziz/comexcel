<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Private.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.GSPItemInfoEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    GSPItemEntry
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>


<div class="mp_right_content">
   <div class="page_list_container">
     <div id="RecordsContainer"></div>
   </div>
<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
     <%: Html.HiddenFor(model => model.ID)%>
    <fieldset>
        <legend>GSP Item Entry</legend>

        <div class="editor-label01">           
            <label for="InvoiceNo">Invoice No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.InvoiceNo) %>
            <%: Html.ValidationMessageFor(model => model.InvoiceNo) %>
        </div>

        <div class="editor-label01">
           <label for="OrderNo">Order No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextAreaFor(model => model.OrderNo, new { style = "width: 250px; height:30px;", cols = "25", rows = "5", @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.OrderNo) %>
        </div>

        <div class="editor-label01">
           <label for="ItemDetails">Item Details:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextAreaFor(model => model.ItemDetails, new { style = "width: 250px; height:30px;", cols = "25", rows = "5" })%>
            <%: Html.ValidationMessageFor(model => model.ItemDetails) %>
        </div>

        <div class="editor-label01">
            <label for="StyleNo">Style No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextAreaFor(model => model.StyleNo, new { style = "width: 250px; height:30px;", cols = "25", rows = "5" })%>
            <%: Html.ValidationMessageFor(model => model.StyleNo) %>
        </div>

         <div class="editor-label01">
            <label for="Category">Category:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.Category) %>
            <%: Html.ValidationMessageFor(model => model.Category) %>
        </div>
<div class="New_Right_Begingsp">
         <div class="editor-label01">
            <label for="OurID">Our ID:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.OurID) %>
            <%: Html.ValidationMessageFor(model => model.OurID) %>
        </div>
 
        <div class="editor-label01">            
             <label for="TAGIDNo">TAG/ID No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextAreaFor(model => model.TAGIDNo, new { style = "width: 250px; height:30px;", cols = "25", rows = "5" })%>
            <%: Html.ValidationMessageFor(model => model.TAGIDNo) %>
        </div>

        <%--<div class="editor-label01">
            <%: Html.LabelFor(model => model.BuyerStyle) %>
        </div>
        <div class="editor-field01">
            <%: Html.TextAreaFor(model => model.BuyerStyle, new { style = "width: 250px; height:30px;", cols = "25", rows = "5" })%>
            <%: Html.ValidationMessageFor(model => model.BuyerStyle) %>
        </div>--%>       

        <div class="editor-label01">            
            <label for="ARTNo">ART No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextAreaFor(model => model.ARTNo, new { style = "width: 250px; height:30px;", cols = "25", rows = "5" })%>
            <%: Html.ValidationMessageFor(model => model.ARTNo) %>
        </div>

        <div class="editor-label01">            
            <label for="CustomerPO">Customer PO:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextAreaFor(model => model.CustomerPO, new { style = "width: 250px; height:30px;", cols = "25", rows = "5" })%>
            <%: Html.ValidationMessageFor(model => model.CustomerPO) %>
        </div>

        <div class="editor-label01">           
            <label for="Delivery">Delivery:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.Delivery) %>
            <%: Html.ValidationMessageFor(model => model.Delivery) %>
        </div>
</div>
       
   </fieldset>
   <fieldset>
        <legend>Origin Criterion and Gross Weight or Qty</legend>
        <div class="editor-label01">           
            <label for="Origion">Origion:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.Origion) %>
            <%: Html.ValidationMessageFor(model => model.Origion) %>
        </div>

        <div class="editor-label01">           
             <label for="Quantity">Quantity:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.Quantity) %>
            <%: Html.ValidationMessageFor(model => model.Quantity) %>
        </div>

         <div class="editor-label01">           
             <label for="Quantity">Transhipment:</label>
        </div>
        <div class="editor-field01">
            <%--<%: Html.EditorFor(model => model.Quantity) %>--%>
            <%: Html.DropDownListFor(model => model.TranshipmentID, (List<SelectListItem>)ViewData["CountryName"], "Transhipment")%>
            <%: Html.ValidationMessageFor(model => model.TranshipmentID)%>
        </div>
    </fieldset>
        <p>
           <input type="submit" class="btn btn-info btn-lg active" data-toggle="button" value="Save" />     
           <input type="button" onclick="window.location='<%: Url.Action("GSPItemInfo") %>'" class="btn btn-default btn-lg" value="Cancel" />
        
        </p>
    
<% } %>
        <div>
            <%: Html.ActionLink("Back to List", "Index") %>
        </div>
</div>


</asp:Content>

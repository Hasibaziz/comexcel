<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.ComsalesinfoEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ComsalesEntryUpd
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
    $('input#SInvoiceNo').keyup(function () {
        $('#InvoiceNo').val($(this).val());
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
<% using (Html.BeginForm("ComsalesEntry", "CSales", new { @id = "frmID" }))
   { %>
   <%: Html.ValidationSummary(true) %>   
        <%: Html.HiddenFor(model => model.ID)%>
<div id="tabs">
        <ul>
        <li><a href="#tabs-1">Item Info Entry</a></li>
        <li><a href="#tabs-2">Quantity & Value</a></li>  
        <li><a href="#tabs-3">Shipment Status Info</a></li>          
        </ul>
    <div id="tabs-1">
        <div class="editor-label01">           
            <label for="InvoiceNo">Invoice No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.InvoiceNo, new { @readonly = "true", @class = "validate[required]" })%>            
            <%: Html.ValidationMessageFor(model => model.InvoiceNo) %>
            <a id="Invoiceno" href="#"><span>Search</span></a>
        </div>
        <div class="editor-label01">            
            <label for="OrderNo">Order No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.OrderNo, new { @class = "validate[required]" })%>
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
            <label for="RevQty">Revise Qty:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.RevQty) %>
            <%: Html.ValidationMessageFor(model => model.RevQty) %>
        </div>
         <div class="editor-label01">            
            <label for="CartonQty">Carton Qty:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.CartonQty) %>
            <%: Html.ValidationMessageFor(model => model.CartonQty) %>
        </div>
       
        <div class="editor-label01">            
            <label for="RevisedFOBValue">Revised FOB Value:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.RevisedFOBValue) %>
            <%: Html.ValidationMessageFor(model => model.RevisedFOBValue) %>
        </div>

        <div class="editor-label01">            
            <label for="RevisedCMValue">Revised CM Value:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.RevisedCMValue) %>
            <%: Html.ValidationMessageFor(model => model.RevisedCMValue) %>
        </div>
         <div class="editor-label01">           
            <label for="CBMValue">CBM Value:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.CBMValue) %>
            <%: Html.ValidationMessageFor(model => model.CBMValue) %>
        </div>
    </div>
    <div id="tabs-3">
      <fieldset>
        <legend>Shipment Status Entry</legend>
         <div class="editor-label01">           
            <label for="CBMValue">CBM Value:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.CBMValue)%>
            <%: Html.ValidationMessageFor(model => model.CBMValue)%>
        </div>
        <div class="editor-label01">            
            <label for="TTLCTN">TTL CTN:</label>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.TTLCTN)%>
            <%: Html.ValidationMessageFor(model => model.TTLCTN)%>
        </div>
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
 
    </div>   
</div>   
    <p>
        <input type="submit" id="Submit" class="btn btn-info btn-lg active" value="Update" />     
        <input type="button" onclick="window.location='<%: Url.Action("ComsalesInfo") %>'" class="btn btn-default btn-lg" value="Cancel" />
    </p>  
<% } %>
</div>

</asp:Content>

﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.ShippinginfoEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ShippingformEntryUpd
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
</script>

<div class="mp_left_menu">
        <% Html.RenderPartial("LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <div id="RecordsContainer">       
     </div>
   </div>
<% using (Html.BeginForm("ShippingformEntry", "Shipping", new { @id = "frmSpID" }))
   { %>
    <%: Html.ValidationSummary(true) %>
       <%: Html.HiddenFor(model => model.ID) %>
<div id="tabs">
        <ul>
          <li><a href="#tabs-1">Shipment Status Info</a></li>
          <li><a href="#tabs-2">Other Info</a></li> 
          <li><a href="#tabs-3">Invoice Remarks</a></li>                    
        </ul>
    <div id="tabs-1">
      <fieldset>         
             <legend>Shipment Status Info</legend>
        <div class="editor-label01">
            <label for="InvoiceNo">Invoice No:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.InvoiceNo, new { @readonly = "true", @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.InvoiceNo) %>
        </div>
        <div class="editor-label01">
            <label for="EPNo">EP No:</label>               
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.EPNo, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.EPNo) %>
        </div>

        <div class="editor-label01">
            <label for="EPDate">EP Date:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.EPDate) %>
            <%: Html.ValidationMessageFor(model => model.EPDate) %>
            <span style="color:Red;" class="EPerror"> Invalid Date( dd-mm-yyyy)</span>
        </div>
        <div class="editor-label01">
            <label for="EXPNo">EXP No:</label>             
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.EXPNo) %>
            <%: Html.ValidationMessageFor(model => model.EXPNo) %>
        </div>

        <div class="editor-label01">
            <label for="EXPDate">EXP Date:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.EXPDate) %>
            <%: Html.ValidationMessageFor(model => model.EXPDate) %>
        </div>
        <div class="editor-label01">
            <label for="ExFactoryDate">Ex-Factory Date:</label>             
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.ExFactoryDate, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.ExFactoryDate) %>
            <span style="color:Red;" class="EXerror"> Invalid Date( dd-mm-yyyy)</span>
        </div>
         <div class="editor-label01">
            <label for="SBNo">SB No:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.SBNo) %>
            <%: Html.ValidationMessageFor(model => model.SBNo) %>
        </div>

        <div class="editor-label01">
            <label for="SBDate">SB Date:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.SBDate) %>
            <%: Html.ValidationMessageFor(model => model.SBDate) %>
        </div>

        </fieldset>
    </div>
    <div id="tabs-2">
      <fieldset>         
             <legend>Other Info</legend>
        <div class="editor-label01">
            <label for="TransportID">Local Transport:</label>             
        </div>
        <div class="editor-field01">
            <%--<%: Html.EditorFor(model => model.TransportID) %>--%>
            <%: Html.DropDownListFor(model => model.TransportID, (List<SelectListItem>)ViewData["Name"], new { @class = "validate[required]" })%>  
            <%: Html.ValidationMessageFor(model => model.TransportID) %>
        </div>
        <div class="editor-label01">
           <label for="CnFAgent">C&F Agent:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.CnFAgent) %>
            <%: Html.ValidationMessageFor(model => model.CnFAgent) %>
        </div>        
         <div class="editor-label01">
           <label for="VesselNo">Truck No:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.VesselNo) %>
            <%: Html.ValidationMessageFor(model => model.VesselNo) %>
        </div>

        <div class="editor-label01">
            <label for="CargorptDate">Cargo Receive Date:</label>             
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.CargorptDate) %>
            <%: Html.ValidationMessageFor(model => model.CargorptDate) %>
        </div>
      </fieldset>
    </div>

     <div id="tabs-3">
      <fieldset>         
             <legend>Invoice Remarks</legend>
        <div class="editor-label01">
            <label for="BringBack">Bring Back:</label>             
        </div>
        <div class="editor-field01">
           <%: Html.EditorFor(model => model.BringBack)%>
           <%: Html.ValidationMessageFor(model => model.BringBack)%>
        </div>
        <div class="editor-label01">
           <label for="ShippedOut">Shipped Out:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.ShippedOut)%>
            <%: Html.ValidationMessageFor(model => model.ShippedOut)%>
        </div>        
         <div class="editor-label01">
           <label for="ShippedCancel">Shipped Cancel:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.ShippedCancel)%>
            <%: Html.ValidationMessageFor(model => model.ShippedCancel)%>
        </div>

        <div class="editor-label01">
            <label for="ShippedBack">Shipped Back:</label>             
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.ShippedBack)%>
            <%: Html.ValidationMessageFor(model => model.ShippedBack)%>
        </div>
         <div class="editor-label01">
            <label for="Unshipped">Un-Shipped:</label>             
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.Unshipped)%>
            <%: Html.ValidationMessageFor(model => model.Unshipped)%>
        </div>
      </fieldset>
    </div>

</div>        

    <p>
        <input type="submit" class="btn btn-info btn-lg active" data-toggle="button" value="Update" />     
        <input type="button" onclick="window.location='<%: Url.Action("ShippingInfo") %>'" class="btn btn-default btn-lg" value="Cancel" />   
    </p>
   
<% } %>
</div>
<script type="text/javascript">
    function ValidateDate(dtValue) {
        //var dtRegex = new RegExp(/^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/);
        //var dtRegex = new RegExp(/\b\d{1,2}[\/-]\d{1,2}[\/-]\d{4}\b/);
        var dtRegex = new RegExp(/\d{1,2}[\/-]\b\d{1,2}[\/-]\d{4}\b/);
        return dtRegex.test(dtValue);
    }
    $('.EPerror').hide();
    $('input#EPDate').change(function () {
        var Val_date = $('#EPDate').val();
        //alert(Val_date);
        if ($(this).val().length != 0) {
            if ((ValidateDate(Val_date)))
                $('.EPerror').hide();
            else
                $('.EPerror').show();
        } else {
            $('#EPDate').attr('disabled', true);
        }
    });
    $('.EXerror').hide();
    $('input#ExFactoryDate').change(function () {
        var Val_date = $('#ExFactoryDate').val();
        //alert(Val_date);
        if ($(this).val().length != 0) {
            if ((ValidateDate(Val_date)))
                $('.EXerror').hide();
            else
                $('.EXerror').show();
        } else {
            $('#ExFactoryDate').attr('disabled', true);
        }
    });

</script>
</asp:Content>

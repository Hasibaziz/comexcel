<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.ShippinginfoEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ShippingformEntry
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
        Invoice No:  <%: Html.TextBoxFor(model => model.SInvoiceNo, new { style = "width: 120px;" })%>  
     </div>
   </div>
<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
<div id="tabs">
        <ul>
          <li><a href="#tabs-1">Shipment Status Info</a></li>
          <li><a href="#tabs-2">Other Info</a></li>                  
        </ul>
    <div id="tabs-1">
    </div>
    <div id="tabs-2">
    </div>
</div>

    <fieldset>
        <legend>ShippinginfoEntity</legend>

        <%: Html.HiddenFor(model => model.ID) %>

        <div class="editor-label01">
            <%: Html.LabelFor(model => model.InvoiceNo) %>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.InvoiceNo) %>
            <%: Html.ValidationMessageFor(model => model.InvoiceNo) %>
        </div>

        <div class="editor-label01">
            <%: Html.LabelFor(model => model.EPNo) %>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.EPNo) %>
            <%: Html.ValidationMessageFor(model => model.EPNo) %>
        </div>

        <div class="editor-label01">
            <%: Html.LabelFor(model => model.EPDate) %>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.EPDate) %>
            <%: Html.ValidationMessageFor(model => model.EPDate) %>
        </div>

        <div class="editor-label01">
            <%: Html.LabelFor(model => model.EXPNo) %>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.EXPNo) %>
            <%: Html.ValidationMessageFor(model => model.EXPNo) %>
        </div>

        <div class="editor-label01">
            <%: Html.LabelFor(model => model.EXPDate) %>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.EXPDate) %>
            <%: Html.ValidationMessageFor(model => model.EXPDate) %>
        </div>

        <div class="editor-label01">
            <%: Html.LabelFor(model => model.ExFactoryDate) %>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.ExFactoryDate) %>
            <%: Html.ValidationMessageFor(model => model.ExFactoryDate) %>
        </div>

        <div class="editor-label01">
            <%: Html.LabelFor(model => model.CnFAgent) %>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.CnFAgent) %>
            <%: Html.ValidationMessageFor(model => model.CnFAgent) %>
        </div>

        <div class="editor-label01">
            <%: Html.LabelFor(model => model.TransportID) %>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.TransportID) %>
            <%: Html.ValidationMessageFor(model => model.TransportID) %>
        </div>

        <div class="editor-label01">
            <%: Html.LabelFor(model => model.SBNo) %>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.SBNo) %>
            <%: Html.ValidationMessageFor(model => model.SBNo) %>
        </div>

        <div class="editor-label01">
            <%: Html.LabelFor(model => model.SBDate) %>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.SBDate) %>
            <%: Html.ValidationMessageFor(model => model.SBDate) %>
        </div>

        <div class="editor-label01">
            <%: Html.LabelFor(model => model.VesselNo) %>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.VesselNo) %>
            <%: Html.ValidationMessageFor(model => model.VesselNo) %>
        </div>

        <div class="editor-label01">
            <%: Html.LabelFor(model => model.CargorptDate) %>
        </div>
        <div class="editor-field01">
            <%: Html.EditorFor(model => model.CargorptDate) %>
            <%: Html.ValidationMessageFor(model => model.CargorptDate) %>
        </div>

        <p>
           <input type="submit" class="btn btn-info btn-lg active" data-toggle="button" value="Save" />     
           <input type="button" onclick="window.location='<%: Url.Action("ShippingInfo") %>'" class="btn btn-default btn-lg" value="Cancel" />   
        </p>
    </fieldset>
<% } %>
</div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.BillingInfoEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    BillingEntryUpdate
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="mp_left_menu">
        <% Html.RenderPartial("LeftMenu"); %>
</div>
<div class="mp_right_content">
   <div class="page_list_container">
     <div id="RecordsContainer">       
     </div>
   </div>
<% using (Html.BeginForm("BillingEntry", "Billing", new { @id = "frmSpID" }))
   { %>
    <%: Html.ValidationSummary(true) %>
        <%: Html.HiddenFor(model => model.ID) %>
    <fieldset>
        <legend>Billing Information Entry</legend>

        <div class="editor-label01">
            <label for="InvoiceNo">Invoice No:</label>               
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.InvoiceNo, new { @readonly = "true", @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.InvoiceNo) %>
        </div>

        <div class="editor-label01">
            <label for="SBNo">SB No:</label>             
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.SBNo, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.SBNo) %>
        </div>

        <div class="editor-label01">
            <label for="SBDate">SB Date:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.SBDate, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.SBDate) %>
        </div>

        <div class="editor-label01">
            <label for="DocSubmitDate">Doc Submit Date:</label>             
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.DocSubmitDate, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.DocSubmitDate) %>
        </div>

        <div class="editor-label01">
            <label for="CourierNo">Courier No:</label>              
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.CourierNo, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.CourierNo) %>
        </div>

        <div class="editor-label01">
            <label for="CourierDate">Courier Date:</label>              
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.CourierDate, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.CourierDate) %>
        </div>

        <div class="editor-label01">
            <label for="BuyerCourierNo">Buyer Courier No:</label>              
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.BuyerCourierNo, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.BuyerCourierNo) %>
        </div>

        <div class="editor-label01">
            <label for="BuyerCourierDate">Buyer Courier Date:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.BuyerCourierDate, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.BuyerCourierDate) %>
        </div>

        <div class="editor-label01">
            <label for="LeadTime">Lead Time:</label>             
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.LeadTime, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.LeadTime) %>
        </div>

        <div class="editor-label01">
            <label for="BankSubmitDate">Bank Submit Date:</label>            
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.BankSubmitDate, new { @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.BankSubmitDate) %>
        </div>             

        <p>
            <input type="submit" class="btn btn-info btn-lg active" data-toggle="button" value="Update" />     
            <input type="button" onclick="window.location='<%: Url.Action("BillingInfo") %>'" class="btn btn-default btn-lg" value="Cancel" />   
        </p>
    </fieldset>
    <% } %>   
   
</div>

</asp:Content>

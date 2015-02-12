<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Test.Master" Inherits="System.Web.Mvc.ViewPage<Test.Domain.Model.LogisticsInfoEntity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    LogisticsEntry
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script type="text/javascript">
    $(function () {
        $("#tabs").tabs();
    });

</script>

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>
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
       <%: Html.HiddenFor(model => model.ID) %>

<div id="tabs">
        <ul>
        <li><a href="#tabs-1">Customs Related Cost Entry</a></li>
        <li><a href="#tabs-2">Other Charges</a></li>  
        <li><a href="#tabs-3">Export Charges Entry</a></li>          
        <li><a href="#tabs-4">Date Information</a></li>          
        </ul>
    <div id="tabs-1">
        <div class="editor-label01">            
            <label for="InvoiceNo">Invoice No:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.InvoiceNo, new { style = "width: 120px;", @readonly = "true", @class = "validate[required]" })%>
            <%: Html.ValidationMessageFor(model => model.InvoiceNo) %>
        </div>

        <div class="editor-label01">            
            <label for="ReceitableAmount">Receitable Amount:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.ReceitableAmount, new { style = "width: 60px;" })%>
            <%: Html.ValidationMessageFor(model => model.ReceitableAmount) %>
        </div>

        <div class="editor-label01">            
            <label for="DocProcessFee">DocProcessingFee(Scanning)TAX/VAT/ITC:</label>
        </div>
        <div class="editor-field02">
            <%: Html.TextBoxFor(model => model.DocProcessFee, new { style = "width: 60px;" })%>
            <%: Html.ValidationMessageFor(model => model.DocProcessFee) %>
        </div>
     </div>
     <div id="tabs-2">
        <div class="editor-label01">            
            <label for="SSCertificateFee">Short Shipment Certificate Fee:</label>
        </div>
        <div class="editor-field02">
            <%: Html.TextBoxFor(model => model.SSCertificateFee, new { style = "width: 60px;" })%>
            <%: Html.ValidationMessageFor(model => model.SSCertificateFee) %>
        </div>

        <div class="editor-label01">            
            <label for="SealLockCharge">Seal Lock Charge:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.SealLockCharge, new { style = "width: 60px;" })%>
            <%: Html.ValidationMessageFor(model => model.SealLockCharge) %>
        </div>

        <div class="editor-label01">           
            <label for="AgencyCommission">Agency Commission:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.AgencyCommission, new { style = "width: 60px;" })%>
            <%: Html.ValidationMessageFor(model => model.AgencyCommission) %>
        </div>

        <div class="editor-label01">            
            <label for="DocumentaionCharge">Documentaion Charge:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.DocumentaionCharge, new { style = "width: 60px;" })%>
            <%: Html.ValidationMessageFor(model => model.DocumentaionCharge) %>
        </div>

        <div class="editor-label01">            
            <label for="TransportationCharge">Transportation Charge:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.TransportationCharge, new { style = "width: 60px;" })%>
            <%: Html.ValidationMessageFor(model => model.TransportationCharge) %>
        </div>
     </div>
     <div id="tabs-3">
        <div class="editor-label01">            
            <label for="FactoryLoadingFee">Loading Fee(Factory):</label>
        </div>
        <div class="editor-field02">
            <%: Html.TextBoxFor(model => model.FactoryLoadingFee, new { style = "width: 60px;" })%>
            <%: Html.ValidationMessageFor(model => model.FactoryLoadingFee) %>
        </div>

        <div class="editor-label01">            
            <label for="ForwarderWHUFee">Uploading Fee(Forwarder WH) :</label>
        </div>
        <div class="editor-field02">
            <%: Html.TextBoxFor(model => model.ForwarderWHUFee, new { style = "width: 60px;" })%>
            <%: Html.ValidationMessageFor(model => model.ForwarderWHUFee) %>
        </div>

        <div class="editor-label01">           
            <label for="DemurrageDUNLoadingFee">Truck Demurrage Fee(Delay at Depot) :</label>
        </div>
        <div class="editor-field02">
            <%: Html.TextBoxFor(model => model.DemurrageDUNLoadingFee, new { style = "width: 60px;" })%>
            <%: Html.ValidationMessageFor(model => model.DemurrageDUNLoadingFee) %>
        </div>

        <div class="editor-label01">            
            <label for="CFSMixedCargoLoadingFee">CFS/Depot(MixedCargoLoading) Fee :</label>
        </div>
        <div class="editor-field02">
            <%: Html.TextBoxFor(model => model.CFSMixedCargoLoadingFee, new { style = "width: 60px;" })%>
            <%: Html.ValidationMessageFor(model => model.CFSMixedCargoLoadingFee) %>
        </div>

        <div class="editor-label01">            
            <label for="CustomsMiscCharge">(Customs Misc.Remark Reasons) Charge:</label>
        </div>
        <div class="editor-field02">
            <%: Html.TextBoxFor(model => model.CustomsMiscCharge, new { style = "width: 60px;" })%>
            <%: Html.ValidationMessageFor(model => model.CustomsMiscCharge) %>
        </div>

        <div class="editor-label01">           
            <label for="CustomsRemarkCharge">Customs Remark Charge(Mist. Reasons):</label>
        </div>
        <div class="editor-field02">
            <%: Html.TextBoxFor(model => model.CustomsRemarkCharge, new { style = "width: 60px;" })%>
            <%: Html.ValidationMessageFor(model => model.CustomsRemarkCharge) %>
        </div>
     </div>
     <div id="tabs-4">
        <div class="editor-label01">           
            <label for="CargoHODate">Cargo H/O Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.CargoHODate, new { style = "width: 110px;" })%>
            <%: Html.ValidationMessageFor(model => model.CargoHODate) %>
        </div>

        <div class="editor-label01">            
            <label for="DeadlineSubmission">Deadline(Bill Submission):</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.DeadlineSubmission, new { style = "width: 110px;" })%>
            <%: Html.ValidationMessageFor(model => model.DeadlineSubmission)%>
        </div>

        <div class="editor-label01">           
            <label for="BillrcvdDate">Bill rcvd Date:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.BillrcvdDate, new { style = "width: 110px;" })%>
            <%: Html.ValidationMessageFor(model => model.BillrcvdDate) %>
        </div>

        <div class="editor-label01">            
            <label for="LStatus">Status:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.LStatus, new { style = "width: 80px;" })%>
            <%: Html.ValidationMessageFor(model => model.LStatus) %>
        </div>

        <div class="editor-label01">            
            <label for="ForwarderName">Forwarder Name:</label>
        </div>
        <div class="editor-field01">
            <%: Html.TextBoxFor(model => model.ForwarderName, new { style = "width: 110px;" })%>
            <%: Html.ValidationMessageFor(model => model.ForwarderName) %>
        </div>       
      </div>
</div>
        <p>
            <input type="submit" class="btn btn-info btn-lg active" data-toggle="button" value="Save" />     
            <input type="button" onclick="window.location='<%: Url.Action("LogisticsInfo") %>'" class="btn btn-default btn-lg" value="Cancel" />  
        </p>   
<% } %>
   
</div>
</asp:Content>
